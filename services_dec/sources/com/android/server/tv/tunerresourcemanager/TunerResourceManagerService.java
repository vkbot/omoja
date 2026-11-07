package com.android.server.tv.tunerresourcemanager;

import android.app.ActivityManager;
import android.content.Context;
import android.media.IResourceManagerService;
import android.media.tv.TvInputManager;
import android.media.tv.tunerresourcemanager.CasSessionRequest;
import android.media.tv.tunerresourcemanager.IResourcesReclaimListener;
import android.media.tv.tunerresourcemanager.ITunerResourceManager;
import android.media.tv.tunerresourcemanager.ResourceClientProfile;
import android.media.tv.tunerresourcemanager.TunerDemuxRequest;
import android.media.tv.tunerresourcemanager.TunerDescramblerRequest;
import android.media.tv.tunerresourcemanager.TunerFrontendInfo;
import android.media.tv.tunerresourcemanager.TunerFrontendRequest;
import android.media.tv.tunerresourcemanager.TunerLnbRequest;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Slog;
import com.android.server.SystemService;
import com.android.server.connectivity.NetworkAgentInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class TunerResourceManagerService extends SystemService implements IBinder.DeathRecipient {
    public static final int INVALID_CLIENT_ID = -1;
    private static final int MAX_CLIENT_PRIORITY = 1000;
    private ActivityManager mActivityManager;
    private Map<Integer, CasResource> mCasResources;
    private Map<Integer, ClientProfile> mClientProfiles;
    private Map<Integer, FrontendResource> mFrontendResources;
    private Map<Integer, ResourcesReclaimListenerRecord> mListeners;
    private Map<Integer, LnbResource> mLnbResources;
    private final Object mLock;
    private IResourceManagerService mMediaResourceManager;
    private int mNextUnusedClientId;
    private UseCasePriorityHints mPriorityCongfig;
    private int mResourceRequestCount;
    private TvInputManager mTvInputManager;
    private static final String TAG = "TunerResourceManagerService";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    public TunerResourceManagerService(Context context) {
        super(context);
        this.mClientProfiles = new HashMap();
        this.mNextUnusedClientId = 0;
        this.mFrontendResources = new HashMap();
        this.mLnbResources = new HashMap();
        this.mCasResources = new HashMap();
        this.mListeners = new HashMap();
        this.mPriorityCongfig = new UseCasePriorityHints();
        this.mResourceRequestCount = 0;
        this.mLock = new Object();
    }

    @Override // com.android.server.SystemService
    public void onStart() throws Exception {
        onStart(false);
    }

    protected void onStart(boolean isForTesting) throws Exception {
        if (!isForTesting) {
            publishBinderService("tv_tuner_resource_mgr", new BinderService());
        }
        this.mTvInputManager = (TvInputManager) getContext().getSystemService("tv_input");
        this.mActivityManager = (ActivityManager) getContext().getSystemService("activity");
        this.mPriorityCongfig.parse();
        if (this.mMediaResourceManager == null) {
            IBinder mediaResourceManagerBinder = getBinderService("media.resource_manager");
            if (mediaResourceManagerBinder == null) {
                Slog.w(TAG, "Resource Manager Service not available.");
                return;
            }
            try {
                mediaResourceManagerBinder.linkToDeath(this, 0);
                this.mMediaResourceManager = IResourceManagerService.Stub.asInterface(mediaResourceManagerBinder);
            } catch (RemoteException e) {
                Slog.w(TAG, "Could not link to death of native resource manager service.");
            }
        }
    }

    private final class BinderService extends ITunerResourceManager.Stub {
        private BinderService() {
        }

        public void registerClientProfile(ResourceClientProfile profile, IResourcesReclaimListener listener, int[] clientId) throws RemoteException {
            TunerResourceManagerService.this.enforceTrmAccessPermission("registerClientProfile");
            TunerResourceManagerService.this.enforceTunerAccessPermission("registerClientProfile");
            if (profile == null) {
                throw new RemoteException("ResourceClientProfile can't be null");
            }
            if (clientId == null) {
                throw new RemoteException("clientId can't be null!");
            }
            if (listener != null) {
                if (TunerResourceManagerService.this.mPriorityCongfig.isDefinedUseCase(profile.getUseCase())) {
                    synchronized (TunerResourceManagerService.this.mLock) {
                        TunerResourceManagerService.this.registerClientProfileInternal(profile, listener, clientId);
                    }
                    return;
                } else {
                    throw new RemoteException("Use undefined client use case:" + profile.getUseCase());
                }
            }
            throw new RemoteException("IResourcesReclaimListener can't be null!");
        }

        public void unregisterClientProfile(int clientId) throws RemoteException {
            TunerResourceManagerService.this.enforceTrmAccessPermission("unregisterClientProfile");
            synchronized (TunerResourceManagerService.this.mLock) {
                if (!TunerResourceManagerService.this.checkClientExists(clientId)) {
                    Slog.e(TunerResourceManagerService.TAG, "Unregistering non exists client:" + clientId);
                    return;
                }
                TunerResourceManagerService.this.unregisterClientProfileInternal(clientId);
            }
        }

        public boolean updateClientPriority(int clientId, int priority, int niceValue) {
            boolean zUpdateClientPriorityInternal;
            TunerResourceManagerService.this.enforceTrmAccessPermission("updateClientPriority");
            synchronized (TunerResourceManagerService.this.mLock) {
                zUpdateClientPriorityInternal = TunerResourceManagerService.this.updateClientPriorityInternal(clientId, priority, niceValue);
            }
            return zUpdateClientPriorityInternal;
        }

        public void setFrontendInfoList(TunerFrontendInfo[] infos) throws RemoteException {
            TunerResourceManagerService.this.enforceTrmAccessPermission("setFrontendInfoList");
            if (infos != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    TunerResourceManagerService.this.setFrontendInfoListInternal(infos);
                }
                return;
            }
            throw new RemoteException("TunerFrontendInfo can't be null");
        }

        public void updateCasInfo(int casSystemId, int maxSessionNum) {
            TunerResourceManagerService.this.enforceTrmAccessPermission("updateCasInfo");
            synchronized (TunerResourceManagerService.this.mLock) {
                TunerResourceManagerService.this.updateCasInfoInternal(casSystemId, maxSessionNum);
            }
        }

        public void setLnbInfoList(int[] lnbIds) throws RemoteException {
            TunerResourceManagerService.this.enforceTrmAccessPermission("setLnbInfoList");
            if (lnbIds != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    TunerResourceManagerService.this.setLnbInfoListInternal(lnbIds);
                }
                return;
            }
            throw new RemoteException("Lnb id list can't be null");
        }

        public boolean requestFrontend(TunerFrontendRequest request, int[] frontendHandle) throws RemoteException {
            boolean zRequestFrontendInternal;
            TunerResourceManagerService.this.enforceTunerAccessPermission("requestFrontend");
            TunerResourceManagerService.this.enforceTrmAccessPermission("requestFrontend");
            if (frontendHandle != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(request.getClientId())) {
                        throw new RemoteException("Request frontend from unregistered client:" + request.getClientId());
                    }
                    zRequestFrontendInternal = TunerResourceManagerService.this.requestFrontendInternal(request, frontendHandle);
                }
                return zRequestFrontendInternal;
            }
            throw new RemoteException("frontendHandle can't be null");
        }

        public void shareFrontend(int selfClientId, int targetClientId) {
            TunerResourceManagerService.this.enforceTunerAccessPermission("shareFrontend");
            TunerResourceManagerService.this.enforceTrmAccessPermission("shareFrontend");
            if (TunerResourceManagerService.DEBUG) {
                Slog.d(TunerResourceManagerService.TAG, "shareFrontend from " + selfClientId + " with " + targetClientId);
            }
        }

        public boolean requestDemux(TunerDemuxRequest request, int[] demuxHandle) throws RemoteException {
            boolean zRequestDemuxInternal;
            TunerResourceManagerService.this.enforceTunerAccessPermission("requestDemux");
            TunerResourceManagerService.this.enforceTrmAccessPermission("requestDemux");
            if (demuxHandle != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(request.getClientId())) {
                        throw new RemoteException("Request demux from unregistered client:" + request.getClientId());
                    }
                    zRequestDemuxInternal = TunerResourceManagerService.this.requestDemuxInternal(request, demuxHandle);
                }
                return zRequestDemuxInternal;
            }
            throw new RemoteException("demuxHandle can't be null");
        }

        public boolean requestDescrambler(TunerDescramblerRequest request, int[] descramblerHandle) throws RemoteException {
            boolean zRequestDescramblerInternal;
            TunerResourceManagerService.this.enforceDescramblerAccessPermission("requestDescrambler");
            TunerResourceManagerService.this.enforceTrmAccessPermission("requestDescrambler");
            if (descramblerHandle != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(request.getClientId())) {
                        throw new RemoteException("Request descrambler from unregistered client:" + request.getClientId());
                    }
                    zRequestDescramblerInternal = TunerResourceManagerService.this.requestDescramblerInternal(request, descramblerHandle);
                }
                return zRequestDescramblerInternal;
            }
            throw new RemoteException("descramblerHandle can't be null");
        }

        public boolean requestCasSession(CasSessionRequest request, int[] casSessionHandle) throws RemoteException {
            boolean zRequestCasSessionInternal;
            TunerResourceManagerService.this.enforceTrmAccessPermission("requestCasSession");
            if (casSessionHandle != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(request.getClientId())) {
                        throw new RemoteException("Request cas from unregistered client:" + request.getClientId());
                    }
                    zRequestCasSessionInternal = TunerResourceManagerService.this.requestCasSessionInternal(request, casSessionHandle);
                }
                return zRequestCasSessionInternal;
            }
            throw new RemoteException("casSessionHandle can't be null");
        }

        public boolean requestLnb(TunerLnbRequest request, int[] lnbHandle) throws RemoteException {
            boolean zRequestLnbInternal;
            TunerResourceManagerService.this.enforceTunerAccessPermission("requestLnb");
            TunerResourceManagerService.this.enforceTrmAccessPermission("requestLnb");
            if (lnbHandle != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(request.getClientId())) {
                        throw new RemoteException("Request lnb from unregistered client:" + request.getClientId());
                    }
                    zRequestLnbInternal = TunerResourceManagerService.this.requestLnbInternal(request, lnbHandle);
                }
                return zRequestLnbInternal;
            }
            throw new RemoteException("lnbHandle can't be null");
        }

        public void releaseFrontend(int frontendHandle, int clientId) throws RemoteException {
            TunerResourceManagerService.this.enforceTunerAccessPermission("releaseFrontend");
            TunerResourceManagerService.this.enforceTrmAccessPermission("releaseFrontend");
            if (TunerResourceManagerService.this.validateResourceHandle(0, frontendHandle)) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(clientId)) {
                        throw new RemoteException("Release frontend from unregistered client:" + clientId);
                    }
                    int frontendId = TunerResourceManagerService.this.getResourceIdFromHandle(frontendHandle);
                    FrontendResource fe = TunerResourceManagerService.this.getFrontendResource(frontendId);
                    if (fe == null) {
                        throw new RemoteException("Releasing frontend does not exist.");
                    }
                    if (fe.getOwnerClientId() != clientId) {
                        throw new RemoteException("Client is not the current owner of the releasing fe.");
                    }
                    TunerResourceManagerService.this.releaseFrontendInternal(fe);
                }
                return;
            }
            throw new RemoteException("frontendHandle can't be invalid");
        }

        public void releaseDemux(int demuxHandle, int clientId) {
            TunerResourceManagerService.this.enforceTunerAccessPermission("releaseDemux");
            TunerResourceManagerService.this.enforceTrmAccessPermission("releaseDemux");
            if (TunerResourceManagerService.DEBUG) {
                Slog.d(TunerResourceManagerService.TAG, "releaseDemux(demuxHandle=" + demuxHandle + ")");
            }
        }

        public void releaseDescrambler(int descramblerHandle, int clientId) {
            TunerResourceManagerService.this.enforceTunerAccessPermission("releaseDescrambler");
            TunerResourceManagerService.this.enforceTrmAccessPermission("releaseDescrambler");
            if (TunerResourceManagerService.DEBUG) {
                Slog.d(TunerResourceManagerService.TAG, "releaseDescrambler(descramblerHandle=" + descramblerHandle + ")");
            }
        }

        public void releaseCasSession(int casSessionHandle, int clientId) throws RemoteException {
            TunerResourceManagerService.this.enforceTrmAccessPermission("releaseCasSession");
            if (TunerResourceManagerService.this.validateResourceHandle(4, casSessionHandle)) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    if (!TunerResourceManagerService.this.checkClientExists(clientId)) {
                        throw new RemoteException("Release cas from unregistered client:" + clientId);
                    }
                    int casSystemId = TunerResourceManagerService.this.getClientProfile(clientId).getInUseCasSystemId();
                    CasResource cas = TunerResourceManagerService.this.getCasResource(casSystemId);
                    if (cas == null) {
                        throw new RemoteException("Releasing cas does not exist.");
                    }
                    if (!cas.getOwnerClientIds().contains(Integer.valueOf(clientId))) {
                        throw new RemoteException("Client is not the current owner of the releasing cas.");
                    }
                    TunerResourceManagerService.this.releaseCasSessionInternal(cas, clientId);
                }
                return;
            }
            throw new RemoteException("casSessionHandle can't be invalid");
        }

        public void releaseLnb(int lnbHandle, int clientId) throws RemoteException {
            TunerResourceManagerService.this.enforceTunerAccessPermission("releaseLnb");
            TunerResourceManagerService.this.enforceTrmAccessPermission("releaseLnb");
            if (!TunerResourceManagerService.this.validateResourceHandle(3, lnbHandle)) {
                throw new RemoteException("lnbHandle can't be invalid");
            }
            if (!TunerResourceManagerService.this.checkClientExists(clientId)) {
                throw new RemoteException("Release lnb from unregistered client:" + clientId);
            }
            int lnbId = TunerResourceManagerService.this.getResourceIdFromHandle(lnbHandle);
            LnbResource lnb = TunerResourceManagerService.this.getLnbResource(lnbId);
            if (lnb == null) {
                throw new RemoteException("Releasing lnb does not exist.");
            }
            if (lnb.getOwnerClientId() == clientId) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    TunerResourceManagerService.this.releaseLnbInternal(lnb);
                }
                return;
            }
            throw new RemoteException("Client is not the current owner of the releasing lnb.");
        }

        public boolean isHigherPriority(ResourceClientProfile challengerProfile, ResourceClientProfile holderProfile) throws RemoteException {
            boolean zIsHigherPriorityInternal;
            TunerResourceManagerService.this.enforceTrmAccessPermission("isHigherPriority");
            if (challengerProfile != null && holderProfile != null) {
                synchronized (TunerResourceManagerService.this.mLock) {
                    zIsHigherPriorityInternal = TunerResourceManagerService.this.isHigherPriorityInternal(challengerProfile, holderProfile);
                }
                return zIsHigherPriorityInternal;
            }
            throw new RemoteException("Client profiles can't be null.");
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        if (DEBUG) {
            Slog.w(TAG, "Native media resource manager service has died");
        }
        synchronized (this.mLock) {
            this.mMediaResourceManager = null;
        }
    }

    protected void registerClientProfileInternal(ResourceClientProfile profile, IResourcesReclaimListener listener, int[] clientId) {
        int pid;
        IResourceManagerService iResourceManagerService;
        if (DEBUG) {
            Slog.d(TAG, "registerClientProfile(clientProfile=" + profile + ")");
        }
        clientId[0] = -1;
        if (this.mTvInputManager == null) {
            Slog.e(TAG, "TvInputManager is null. Can't register client profile.");
            return;
        }
        int i = this.mNextUnusedClientId;
        this.mNextUnusedClientId = i + 1;
        clientId[0] = i;
        if (profile.getTvInputSessionId() == null) {
            pid = Binder.getCallingPid();
        } else {
            pid = this.mTvInputManager.getClientPid(profile.getTvInputSessionId());
        }
        if (profile.getTvInputSessionId() != null && (iResourceManagerService = this.mMediaResourceManager) != null) {
            try {
                iResourceManagerService.overridePid(Binder.getCallingPid(), pid);
            } catch (RemoteException e) {
                Slog.e(TAG, "Could not overridePid in resourceManagerSercice, remote exception: " + e);
            }
        }
        ClientProfile clientProfile = new ClientProfile.Builder(clientId[0]).tvInputSessionId(profile.getTvInputSessionId()).useCase(profile.getUseCase()).processId(pid).build();
        clientProfile.setPriority(getClientPriority(profile.getUseCase(), pid));
        addClientProfile(clientId[0], clientProfile, listener);
    }

    protected void unregisterClientProfileInternal(int clientId) {
        if (DEBUG) {
            Slog.d(TAG, "unregisterClientProfile(clientId=" + clientId + ")");
        }
        removeClientProfile(clientId);
        IResourceManagerService iResourceManagerService = this.mMediaResourceManager;
        if (iResourceManagerService != null) {
            try {
                iResourceManagerService.overridePid(Binder.getCallingPid(), -1);
            } catch (RemoteException e) {
                Slog.e(TAG, "Could not overridePid in resourceManagerSercice when unregister, remote exception: " + e);
            }
        }
    }

    protected boolean updateClientPriorityInternal(int clientId, int priority, int niceValue) {
        if (DEBUG) {
            Slog.d(TAG, "updateClientPriority(clientId=" + clientId + ", priority=" + priority + ", niceValue=" + niceValue + ")");
        }
        ClientProfile profile = getClientProfile(clientId);
        if (profile == null) {
            Slog.e(TAG, "Can not find client profile with id " + clientId + " when trying to update the client priority.");
            return false;
        }
        profile.setPriority(priority);
        profile.setNiceValue(niceValue);
        return true;
    }

    protected void setFrontendInfoListInternal(TunerFrontendInfo[] infos) {
        if (DEBUG) {
            Slog.d(TAG, "updateFrontendInfo:");
            for (TunerFrontendInfo tunerFrontendInfo : infos) {
                Slog.d(TAG, tunerFrontendInfo.toString());
            }
        }
        Set<Integer> updatingFrontendIds = new HashSet<>(getFrontendResources().keySet());
        for (int i = 0; i < infos.length; i++) {
            if (getFrontendResource(infos[i].getId()) != null) {
                if (DEBUG) {
                    Slog.d(TAG, "Frontend id=" + infos[i].getId() + "exists.");
                }
                updatingFrontendIds.remove(Integer.valueOf(infos[i].getId()));
            } else {
                FrontendResource newFe = new FrontendResource.Builder(infos[i].getId()).type(infos[i].getFrontendType()).exclusiveGroupId(infos[i].getExclusiveGroupId()).build();
                addFrontendResource(newFe);
            }
        }
        Iterator<Integer> it = updatingFrontendIds.iterator();
        while (it.hasNext()) {
            int removingId = it.next().intValue();
            removeFrontendResource(removingId);
        }
    }

    protected void setLnbInfoListInternal(int[] lnbIds) {
        if (DEBUG) {
            for (int i : lnbIds) {
                Slog.d(TAG, "updateLnbInfo(lnbId=" + i + ")");
            }
        }
        Set<Integer> updatingLnbIds = new HashSet<>(getLnbResources().keySet());
        for (int i2 = 0; i2 < lnbIds.length; i2++) {
            if (getLnbResource(lnbIds[i2]) != null) {
                if (DEBUG) {
                    Slog.d(TAG, "Lnb id=" + lnbIds[i2] + "exists.");
                }
                updatingLnbIds.remove(Integer.valueOf(lnbIds[i2]));
            } else {
                LnbResource newLnb = new LnbResource.Builder(lnbIds[i2]).build();
                addLnbResource(newLnb);
            }
        }
        Iterator<Integer> it = updatingLnbIds.iterator();
        while (it.hasNext()) {
            int removingId = it.next().intValue();
            removeLnbResource(removingId);
        }
    }

    protected void updateCasInfoInternal(int casSystemId, int maxSessionNum) {
        if (DEBUG) {
            Slog.d(TAG, "updateCasInfo(casSystemId=" + casSystemId + ", maxSessionNum=" + maxSessionNum + ")");
        }
        if (maxSessionNum == 0) {
            removeCasResource(casSystemId);
            return;
        }
        CasResource cas = getCasResource(casSystemId);
        if (cas != null) {
            if (cas.getUsedSessionNum() > maxSessionNum) {
                int releasingCasResourceNum = cas.getUsedSessionNum() - maxSessionNum;
                releaseLowerPriorityClientCasResources(releasingCasResourceNum);
            }
            cas.updateMaxSessionNum(maxSessionNum);
            return;
        }
        addCasResource(new CasResource.Builder(casSystemId).maxSessionNum(maxSessionNum).build());
    }

    protected boolean requestFrontendInternal(TunerFrontendRequest request, int[] frontendHandle) {
        int priority;
        if (DEBUG) {
            Slog.d(TAG, "requestFrontend(request=" + request + ")");
        }
        frontendHandle[0] = -1;
        ClientProfile requestClient = getClientProfile(request.getClientId());
        int grantingFrontendId = -1;
        int inUseLowestPriorityFrId = -1;
        int currentLowestPriority = NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE;
        for (FrontendResource fr : getFrontendResources().values()) {
            if (fr.getType() == request.getFrontendType()) {
                if (!fr.isInUse()) {
                    if (fr.getExclusiveGroupMemberFeIds().isEmpty()) {
                        grantingFrontendId = fr.getId();
                        break;
                    }
                    if (grantingFrontendId < 0) {
                        grantingFrontendId = fr.getId();
                    }
                } else if (grantingFrontendId < 0 && currentLowestPriority > (priority = getOwnerClientPriority(fr.getOwnerClientId()))) {
                    inUseLowestPriorityFrId = fr.getId();
                    currentLowestPriority = priority;
                }
            }
        }
        if (grantingFrontendId > -1) {
            frontendHandle[0] = generateResourceHandle(0, grantingFrontendId);
            updateFrontendClientMappingOnNewGrant(grantingFrontendId, request.getClientId());
            return true;
        }
        if (inUseLowestPriorityFrId <= -1 || requestClient.getPriority() <= currentLowestPriority || !reclaimResource(getFrontendResource(inUseLowestPriorityFrId).getOwnerClientId(), 0)) {
            return false;
        }
        frontendHandle[0] = generateResourceHandle(0, inUseLowestPriorityFrId);
        updateFrontendClientMappingOnNewGrant(inUseLowestPriorityFrId, request.getClientId());
        return true;
    }

    protected boolean requestLnbInternal(TunerLnbRequest request, int[] lnbHandle) {
        if (DEBUG) {
            Slog.d(TAG, "requestLnb(request=" + request + ")");
        }
        lnbHandle[0] = -1;
        ClientProfile requestClient = getClientProfile(request.getClientId());
        int grantingLnbId = -1;
        int inUseLowestPriorityLnbId = -1;
        int currentLowestPriority = NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE;
        for (LnbResource lnb : getLnbResources().values()) {
            if (!lnb.isInUse()) {
                grantingLnbId = lnb.getId();
                break;
            }
            int priority = getOwnerClientPriority(lnb.getOwnerClientId());
            if (currentLowestPriority > priority) {
                inUseLowestPriorityLnbId = lnb.getId();
                currentLowestPriority = priority;
            }
        }
        if (grantingLnbId > -1) {
            lnbHandle[0] = generateResourceHandle(3, grantingLnbId);
            updateLnbClientMappingOnNewGrant(grantingLnbId, request.getClientId());
            return true;
        }
        if (inUseLowestPriorityLnbId <= -1 || requestClient.getPriority() <= currentLowestPriority || !reclaimResource(getLnbResource(inUseLowestPriorityLnbId).getOwnerClientId(), 3)) {
            return false;
        }
        lnbHandle[0] = generateResourceHandle(3, inUseLowestPriorityLnbId);
        updateLnbClientMappingOnNewGrant(inUseLowestPriorityLnbId, request.getClientId());
        return true;
    }

    protected boolean requestCasSessionInternal(CasSessionRequest request, int[] casSessionHandle) {
        if (DEBUG) {
            Slog.d(TAG, "requestCasSession(request=" + request + ")");
        }
        CasResource cas = getCasResource(request.getCasSystemId());
        if (cas == null) {
            cas = new CasResource.Builder(request.getCasSystemId()).maxSessionNum(Integer.MAX_VALUE).build();
            addCasResource(cas);
        }
        casSessionHandle[0] = -1;
        ClientProfile requestClient = getClientProfile(request.getClientId());
        int lowestPriorityOwnerId = -1;
        int currentLowestPriority = NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE;
        if (!cas.isFullyUsed()) {
            casSessionHandle[0] = generateResourceHandle(4, cas.getSystemId());
            updateCasClientMappingOnNewGrant(request.getCasSystemId(), request.getClientId());
            return true;
        }
        Iterator<Integer> it = cas.getOwnerClientIds().iterator();
        while (it.hasNext()) {
            int ownerId = it.next().intValue();
            int priority = getOwnerClientPriority(ownerId);
            if (currentLowestPriority > priority) {
                lowestPriorityOwnerId = ownerId;
                currentLowestPriority = priority;
            }
        }
        if (lowestPriorityOwnerId <= -1 || requestClient.getPriority() <= currentLowestPriority || !reclaimResource(lowestPriorityOwnerId, 4)) {
            return false;
        }
        casSessionHandle[0] = generateResourceHandle(4, cas.getSystemId());
        updateCasClientMappingOnNewGrant(request.getCasSystemId(), request.getClientId());
        return true;
    }

    protected boolean isHigherPriorityInternal(ResourceClientProfile challengerProfile, ResourceClientProfile holderProfile) {
        int challengerPid;
        int holderPid;
        if (DEBUG) {
            Slog.d(TAG, "isHigherPriority(challengerProfile=" + challengerProfile + ", holderProfile=" + challengerProfile + ")");
        }
        if (this.mTvInputManager == null) {
            Slog.e(TAG, "TvInputManager is null. Can't compare the priority.");
            return true;
        }
        if (challengerProfile.getTvInputSessionId() == null) {
            challengerPid = Binder.getCallingPid();
        } else {
            challengerPid = this.mTvInputManager.getClientPid(challengerProfile.getTvInputSessionId());
        }
        if (holderProfile.getTvInputSessionId() == null) {
            holderPid = Binder.getCallingPid();
        } else {
            holderPid = this.mTvInputManager.getClientPid(holderProfile.getTvInputSessionId());
        }
        int challengerPriority = getClientPriority(challengerProfile.getUseCase(), challengerPid);
        int holderPriority = getClientPriority(holderProfile.getUseCase(), holderPid);
        return challengerPriority > holderPriority;
    }

    protected void releaseFrontendInternal(FrontendResource fe) {
        if (DEBUG) {
            Slog.d(TAG, "releaseFrontend(id=" + fe.getId() + ")");
        }
        updateFrontendClientMappingOnRelease(fe);
    }

    protected void releaseLnbInternal(LnbResource lnb) {
        if (DEBUG) {
            Slog.d(TAG, "releaseLnb(lnbId=" + lnb.getId() + ")");
        }
        updateLnbClientMappingOnRelease(lnb);
    }

    protected void releaseCasSessionInternal(CasResource cas, int ownerClientId) {
        if (DEBUG) {
            Slog.d(TAG, "releaseCasSession(sessionResourceId=" + cas.getSystemId() + ")");
        }
        updateCasClientMappingOnRelease(cas, ownerClientId);
    }

    protected boolean requestDemuxInternal(TunerDemuxRequest request, int[] demuxHandle) {
        if (DEBUG) {
            Slog.d(TAG, "requestDemux(request=" + request + ")");
        }
        demuxHandle[0] = generateResourceHandle(1, 0);
        return true;
    }

    protected boolean requestDescramblerInternal(TunerDescramblerRequest request, int[] descramblerHandle) {
        if (DEBUG) {
            Slog.d(TAG, "requestDescrambler(request=" + request + ")");
        }
        descramblerHandle[0] = generateResourceHandle(2, 0);
        return true;
    }

    protected class ResourcesReclaimListenerRecord implements IBinder.DeathRecipient {
        private final int mClientId;
        private final IResourcesReclaimListener mListener;

        public ResourcesReclaimListenerRecord(IResourcesReclaimListener listener, int clientId) {
            this.mListener = listener;
            this.mClientId = clientId;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (TunerResourceManagerService.this.mLock) {
                TunerResourceManagerService.this.removeClientProfile(this.mClientId);
            }
        }

        public int getId() {
            return this.mClientId;
        }

        public IResourcesReclaimListener getListener() {
            return this.mListener;
        }
    }

    private void addResourcesReclaimListener(int clientId, IResourcesReclaimListener listener) {
        if (listener == null) {
            if (DEBUG) {
                Slog.w(TAG, "Listener is null when client " + clientId + " registered!");
                return;
            }
            return;
        }
        ResourcesReclaimListenerRecord record = new ResourcesReclaimListenerRecord(listener, clientId);
        try {
            listener.asBinder().linkToDeath(record, 0);
            this.mListeners.put(Integer.valueOf(clientId), record);
        } catch (RemoteException e) {
            Slog.w(TAG, "Listener already died.");
        }
    }

    protected boolean reclaimResource(int reclaimingClientId, int resourceType) {
        if (DEBUG) {
            Slog.d(TAG, "Reclaiming resources because higher priority client request resource type " + resourceType);
        }
        try {
            this.mListeners.get(Integer.valueOf(reclaimingClientId)).getListener().onReclaimResources();
            ClientProfile profile = getClientProfile(reclaimingClientId);
            reclaimingResourcesFromClient(profile);
            return true;
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to reclaim resources on client " + reclaimingClientId, e);
            return false;
        }
    }

    protected int getClientPriority(int useCase, int pid) {
        if (DEBUG) {
            Slog.d(TAG, "getClientPriority useCase=" + useCase + ", pid=" + pid + ")");
        }
        if (isForeground(pid)) {
            return this.mPriorityCongfig.getForegroundPriority(useCase);
        }
        return this.mPriorityCongfig.getBackgroundPriority(useCase);
    }

    protected boolean isForeground(int pid) {
        List<ActivityManager.RunningAppProcessInfo> appProcesses;
        ActivityManager activityManager = this.mActivityManager;
        if (activityManager == null || (appProcesses = activityManager.getRunningAppProcesses()) == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo appProcess : appProcesses) {
            if (appProcess.pid == pid && appProcess.importance == 100) {
                return true;
            }
        }
        return false;
    }

    private void updateFrontendClientMappingOnNewGrant(int grantingId, int ownerClientId) {
        FrontendResource grantingFrontend = getFrontendResource(grantingId);
        ClientProfile ownerProfile = getClientProfile(ownerClientId);
        grantingFrontend.setOwner(ownerClientId);
        ownerProfile.useFrontend(grantingId);
        Iterator<Integer> it = grantingFrontend.getExclusiveGroupMemberFeIds().iterator();
        while (it.hasNext()) {
            int exclusiveGroupMember = it.next().intValue();
            getFrontendResource(exclusiveGroupMember).setOwner(ownerClientId);
            ownerProfile.useFrontend(exclusiveGroupMember);
        }
    }

    private void updateFrontendClientMappingOnRelease(FrontendResource releasingFrontend) {
        ClientProfile ownerProfile = getClientProfile(releasingFrontend.getOwnerClientId());
        releasingFrontend.removeOwner();
        ownerProfile.releaseFrontend(releasingFrontend.getId());
        Iterator<Integer> it = releasingFrontend.getExclusiveGroupMemberFeIds().iterator();
        while (it.hasNext()) {
            int exclusiveGroupMember = it.next().intValue();
            getFrontendResource(exclusiveGroupMember).removeOwner();
            ownerProfile.releaseFrontend(exclusiveGroupMember);
        }
    }

    private void updateLnbClientMappingOnNewGrant(int grantingId, int ownerClientId) {
        LnbResource grantingLnb = getLnbResource(grantingId);
        ClientProfile ownerProfile = getClientProfile(ownerClientId);
        grantingLnb.setOwner(ownerClientId);
        ownerProfile.useLnb(grantingId);
    }

    private void updateLnbClientMappingOnRelease(LnbResource releasingLnb) {
        ClientProfile ownerProfile = getClientProfile(releasingLnb.getOwnerClientId());
        releasingLnb.removeOwner();
        ownerProfile.releaseLnb(releasingLnb.getId());
    }

    private void updateCasClientMappingOnNewGrant(int grantingId, int ownerClientId) {
        CasResource grantingCas = getCasResource(grantingId);
        ClientProfile ownerProfile = getClientProfile(ownerClientId);
        grantingCas.setOwner(ownerClientId);
        ownerProfile.useCas(grantingId);
    }

    private void updateCasClientMappingOnRelease(CasResource releasingCas, int ownerClientId) {
        ClientProfile ownerProfile = getClientProfile(ownerClientId);
        releasingCas.removeOwner(ownerClientId);
        ownerProfile.releaseCas();
    }

    private int getOwnerClientPriority(int clientId) {
        return getClientProfile(clientId).getPriority();
    }

    protected FrontendResource getFrontendResource(int frontendId) {
        return this.mFrontendResources.get(Integer.valueOf(frontendId));
    }

    protected Map<Integer, FrontendResource> getFrontendResources() {
        return this.mFrontendResources;
    }

    private void addFrontendResource(FrontendResource newFe) {
        for (FrontendResource fe : getFrontendResources().values()) {
            if (fe.getExclusiveGroupId() == newFe.getExclusiveGroupId()) {
                newFe.addExclusiveGroupMemberFeId(fe.getId());
                newFe.addExclusiveGroupMemberFeIds(fe.getExclusiveGroupMemberFeIds());
                Iterator<Integer> it = fe.getExclusiveGroupMemberFeIds().iterator();
                while (it.hasNext()) {
                    int excGroupmemberFeId = it.next().intValue();
                    getFrontendResource(excGroupmemberFeId).addExclusiveGroupMemberFeId(newFe.getId());
                }
                fe.addExclusiveGroupMemberFeId(newFe.getId());
                break;
            }
        }
        this.mFrontendResources.put(Integer.valueOf(newFe.getId()), newFe);
    }

    private void removeFrontendResource(int removingId) {
        FrontendResource fe = getFrontendResource(removingId);
        if (fe == null) {
            return;
        }
        if (fe.isInUse()) {
            releaseFrontendInternal(fe);
        }
        Iterator<Integer> it = fe.getExclusiveGroupMemberFeIds().iterator();
        while (it.hasNext()) {
            int excGroupmemberFeId = it.next().intValue();
            getFrontendResource(excGroupmemberFeId).removeExclusiveGroupMemberFeId(fe.getId());
        }
        this.mFrontendResources.remove(Integer.valueOf(removingId));
    }

    protected LnbResource getLnbResource(int lnbId) {
        return this.mLnbResources.get(Integer.valueOf(lnbId));
    }

    protected Map<Integer, LnbResource> getLnbResources() {
        return this.mLnbResources;
    }

    private void addLnbResource(LnbResource newLnb) {
        this.mLnbResources.put(Integer.valueOf(newLnb.getId()), newLnb);
    }

    private void removeLnbResource(int removingId) {
        LnbResource lnb = getLnbResource(removingId);
        if (lnb == null) {
            return;
        }
        if (lnb.isInUse()) {
            releaseLnbInternal(lnb);
        }
        this.mLnbResources.remove(Integer.valueOf(removingId));
    }

    protected CasResource getCasResource(int systemId) {
        return this.mCasResources.get(Integer.valueOf(systemId));
    }

    protected Map<Integer, CasResource> getCasResources() {
        return this.mCasResources;
    }

    private void addCasResource(CasResource newCas) {
        this.mCasResources.put(Integer.valueOf(newCas.getSystemId()), newCas);
    }

    private void removeCasResource(int removingId) {
        CasResource cas = getCasResource(removingId);
        if (cas == null) {
            return;
        }
        Iterator<Integer> it = cas.getOwnerClientIds().iterator();
        while (it.hasNext()) {
            int ownerId = it.next().intValue();
            getClientProfile(ownerId).releaseCas();
        }
        this.mCasResources.remove(Integer.valueOf(removingId));
    }

    private void releaseLowerPriorityClientCasResources(int releasingCasResourceNum) {
    }

    protected ClientProfile getClientProfile(int clientId) {
        return this.mClientProfiles.get(Integer.valueOf(clientId));
    }

    private void addClientProfile(int clientId, ClientProfile profile, IResourcesReclaimListener listener) {
        this.mClientProfiles.put(Integer.valueOf(clientId), profile);
        addResourcesReclaimListener(clientId, listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeClientProfile(int clientId) {
        reclaimingResourcesFromClient(getClientProfile(clientId));
        this.mClientProfiles.remove(Integer.valueOf(clientId));
        this.mListeners.remove(Integer.valueOf(clientId));
    }

    private void reclaimingResourcesFromClient(ClientProfile profile) {
        for (Integer feId : profile.getInUseFrontendIds()) {
            getFrontendResource(feId.intValue()).removeOwner();
        }
        for (Integer lnbId : profile.getInUseLnbIds()) {
            getLnbResource(lnbId.intValue()).removeOwner();
        }
        if (profile.getInUseCasSystemId() != -1) {
            getCasResource(profile.getInUseCasSystemId()).removeOwner(profile.getId());
        }
        profile.reclaimAllResources();
    }

    protected boolean checkClientExists(int clientId) {
        return this.mClientProfiles.keySet().contains(Integer.valueOf(clientId));
    }

    private int generateResourceHandle(int resourceType, int resourceId) {
        int i = ((resourceType & 255) << 24) | (resourceId << 16);
        int i2 = this.mResourceRequestCount;
        this.mResourceRequestCount = i2 + 1;
        return i | (i2 & 65535);
    }

    protected int getResourceIdFromHandle(int resourceHandle) {
        if (resourceHandle == -1) {
            return resourceHandle;
        }
        return (16711680 & resourceHandle) >> 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateResourceHandle(int resourceType, int resourceHandle) {
        if (resourceHandle == -1 || (((-16777216) & resourceHandle) >> 24) != resourceType) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceTrmAccessPermission(String apiName) {
        getContext().enforceCallingOrSelfPermission("android.permission.TUNER_RESOURCE_ACCESS", "TunerResourceManagerService: " + apiName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceTunerAccessPermission(String apiName) {
        getContext().enforceCallingPermission("android.permission.ACCESS_TV_TUNER", "TunerResourceManagerService: " + apiName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceDescramblerAccessPermission(String apiName) {
        getContext().enforceCallingPermission("android.permission.ACCESS_TV_DESCRAMBLER", "TunerResourceManagerService: " + apiName);
    }
}
