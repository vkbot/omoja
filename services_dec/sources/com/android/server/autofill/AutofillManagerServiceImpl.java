package com.android.server.autofill;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.ActivityTaskManager;
import android.app.IActivityTaskManager;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.metrics.LogMaker;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.autofill.AutofillServiceInfo;
import android.service.autofill.FieldClassification;
import android.service.autofill.FillEventHistory;
import android.service.autofill.FillResponse;
import android.service.autofill.UserData;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.LocalLog;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.autofill.IAutoFillManagerClient;
import com.android.internal.logging.MetricsLogger;
import com.android.server.LocalServices;
import com.android.server.autofill.ui.AutoFillUI;
import com.android.server.contentcapture.ContentCaptureManagerInternal;
import com.android.server.infra.AbstractPerUserSystemService;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.job.controllers.JobStatus;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
final class AutofillManagerServiceImpl extends AbstractPerUserSystemService<AutofillManagerServiceImpl, AutofillManagerService> {
    private static final int MAX_ABANDONED_SESSION_MILLIS = 30000;
    private static final int MAX_SESSION_ID_CREATE_TRIES = 2048;
    private static final String TAG = "AutofillManagerServiceImpl";
    private static final Random sRandom = new Random();
    private FillEventHistory mAugmentedAutofillEventHistory;
    private final AutofillManagerService.AutofillCompatState mAutofillCompatState;
    private RemoteCallbackList<IAutoFillManagerClient> mClients;
    private final ContentCaptureManagerInternal mContentCaptureManagerInternal;
    private final AutofillManagerService.DisabledInfoCache mDisabledInfoCache;
    private FillEventHistory mEventHistory;
    private final FieldClassificationStrategy mFieldClassificationStrategy;
    private final Handler mHandler;
    private AutofillServiceInfo mInfo;
    private final InputMethodManagerInternal mInputMethodManagerInternal;
    private long mLastPrune;
    private final MetricsLogger mMetricsLogger;
    private RemoteAugmentedAutofillService mRemoteAugmentedAutofillService;
    private ServiceInfo mRemoteAugmentedAutofillServiceInfo;
    private RemoteInlineSuggestionRenderService mRemoteInlineSuggestionRenderService;
    private final SparseArray<Session> mSessions;
    private final AutoFillUI mUi;
    private final LocalLog mUiLatencyHistory;
    private UserData mUserData;
    private final LocalLog mWtfHistory;

    AutofillManagerServiceImpl(AutofillManagerService master, Object lock, LocalLog uiLatencyHistory, LocalLog wtfHistory, int userId, AutoFillUI ui, AutofillManagerService.AutofillCompatState autofillCompatState, boolean disabled, AutofillManagerService.DisabledInfoCache disableCache) {
        super(master, lock, userId);
        this.mMetricsLogger = new MetricsLogger();
        this.mHandler = new Handler(Looper.getMainLooper(), null, true);
        this.mSessions = new SparseArray<>();
        this.mLastPrune = 0L;
        this.mUiLatencyHistory = uiLatencyHistory;
        this.mWtfHistory = wtfHistory;
        this.mUi = ui;
        this.mFieldClassificationStrategy = new FieldClassificationStrategy(getContext(), userId);
        this.mAutofillCompatState = autofillCompatState;
        this.mInputMethodManagerInternal = (InputMethodManagerInternal) LocalServices.getService(InputMethodManagerInternal.class);
        this.mContentCaptureManagerInternal = (ContentCaptureManagerInternal) LocalServices.getService(ContentCaptureManagerInternal.class);
        this.mDisabledInfoCache = disableCache;
        updateLocked(disabled);
    }

    boolean sendActivityAssistDataToContentCapture(IBinder activityToken, Bundle data) {
        ContentCaptureManagerInternal contentCaptureManagerInternal = this.mContentCaptureManagerInternal;
        if (contentCaptureManagerInternal != null) {
            contentCaptureManagerInternal.sendActivityAssistData(getUserId(), activityToken, data);
            return true;
        }
        return false;
    }

    void onBackKeyPressed() {
        RemoteAugmentedAutofillService remoteService = getRemoteAugmentedAutofillServiceLocked();
        if (remoteService != null) {
            remoteService.onDestroyAutofillWindowsRequest();
        }
    }

    @Override // com.android.server.infra.AbstractPerUserSystemService
    protected boolean updateLocked(boolean disabled) {
        destroySessionsLocked();
        boolean enabledChanged = super.updateLocked(disabled);
        if (enabledChanged) {
            if (!isEnabledLocked()) {
                int sessionCount = this.mSessions.size();
                for (int i = sessionCount - 1; i >= 0; i--) {
                    Session session = this.mSessions.valueAt(i);
                    session.removeSelfLocked();
                }
            }
            sendStateToClients(false);
        }
        updateRemoteAugmentedAutofillService();
        updateRemoteInlineSuggestionRenderServiceLocked();
        return enabledChanged;
    }

    @Override // com.android.server.infra.AbstractPerUserSystemService
    protected ServiceInfo newServiceInfoLocked(ComponentName serviceComponent) throws PackageManager.NameNotFoundException {
        AutofillServiceInfo autofillServiceInfo = new AutofillServiceInfo(getContext(), serviceComponent, this.mUserId);
        this.mInfo = autofillServiceInfo;
        return autofillServiceInfo.getServiceInfo();
    }

    String[] getUrlBarResourceIdsForCompatMode(String packageName) {
        return this.mAutofillCompatState.getUrlBarResourceIds(packageName, this.mUserId);
    }

    int addClientLocked(IAutoFillManagerClient client, ComponentName componentName) {
        if (this.mClients == null) {
            this.mClients = new RemoteCallbackList<>();
        }
        this.mClients.register(client);
        if (isEnabledLocked()) {
            return 1;
        }
        if (componentName != null && isAugmentedAutofillServiceAvailableLocked() && isWhitelistedForAugmentedAutofillLocked(componentName)) {
            return 8;
        }
        return 0;
    }

    void removeClientLocked(IAutoFillManagerClient client) {
        RemoteCallbackList<IAutoFillManagerClient> remoteCallbackList = this.mClients;
        if (remoteCallbackList != null) {
            remoteCallbackList.unregister(client);
        }
    }

    void setAuthenticationResultLocked(Bundle data, int sessionId, int authenticationId, int uid) {
        Session session;
        if (isEnabledLocked() && (session = this.mSessions.get(sessionId)) != null && uid == session.uid) {
            session.setAuthenticationResultLocked(data, authenticationId);
        }
    }

    void setHasCallback(int sessionId, int uid, boolean hasIt) {
        Session session;
        if (isEnabledLocked() && (session = this.mSessions.get(sessionId)) != null && uid == session.uid) {
            synchronized (this.mLock) {
                session.setHasCallbackLocked(hasIt);
            }
        }
    }

    long startSessionLocked(IBinder activityToken, int taskId, int uid, IBinder appCallbackToken, AutofillId autofillId, Rect virtualBounds, AutofillValue value, boolean hasCallback, ComponentName componentName, boolean compatMode, boolean bindInstantServiceAllowed, int flags) {
        boolean forAugmentedAutofillOnly;
        boolean forAugmentedAutofillOnly2 = (flags & 8) != 0;
        if (isEnabledLocked() || forAugmentedAutofillOnly2) {
            if (!forAugmentedAutofillOnly2 && isAutofillDisabledLocked(componentName)) {
                if (isWhitelistedForAugmentedAutofillLocked(componentName)) {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "startSession(" + componentName + "): disabled by service but whitelisted for augmented autofill");
                    }
                    forAugmentedAutofillOnly = true;
                } else {
                    if (Helper.sDebug) {
                        Slog.d(TAG, "startSession(" + componentName + "): ignored because disabled by service and not whitelisted for augmented autofill");
                    }
                    IAutoFillManagerClient client = IAutoFillManagerClient.Stub.asInterface(appCallbackToken);
                    try {
                        client.setSessionFinished(4, (List) null);
                    } catch (RemoteException e) {
                        Slog.w(TAG, "Could not notify " + componentName + " that it's disabled: " + e);
                    }
                    return 2147483647L;
                }
            } else {
                forAugmentedAutofillOnly = forAugmentedAutofillOnly2;
            }
            if (Helper.sVerbose) {
                Slog.v(TAG, "startSession(): token=" + activityToken + ", flags=" + flags + ", forAugmentedAutofillOnly=" + forAugmentedAutofillOnly);
            }
            pruneAbandonedSessionsLocked();
            boolean forAugmentedAutofillOnly3 = forAugmentedAutofillOnly;
            Session newSession = createSessionByTokenLocked(activityToken, taskId, uid, appCallbackToken, hasCallback, componentName, compatMode, bindInstantServiceAllowed, forAugmentedAutofillOnly, flags);
            if (newSession == null) {
                return 2147483647L;
            }
            AutofillServiceInfo autofillServiceInfo = this.mInfo;
            String servicePackageName = autofillServiceInfo == null ? null : autofillServiceInfo.getServiceInfo().packageName;
            String historyItem = "id=" + newSession.id + " uid=" + uid + " a=" + componentName.toShortString() + " s=" + servicePackageName + " u=" + this.mUserId + " i=" + autofillId + " b=" + virtualBounds + " hc=" + hasCallback + " f=" + flags + " aa=" + forAugmentedAutofillOnly3;
            ((AutofillManagerService) this.mMaster).logRequestLocked(historyItem);
            newSession.updateLocked(autofillId, virtualBounds, value, 1, flags);
            if (forAugmentedAutofillOnly3) {
                long result = 4294967296L | ((long) newSession.id);
                return result;
            }
            return newSession.id;
        }
        return 0L;
    }

    private void pruneAbandonedSessionsLocked() {
        long now = System.currentTimeMillis();
        if (this.mLastPrune < now - 30000) {
            this.mLastPrune = now;
            if (this.mSessions.size() > 0) {
                new PruneTask().execute(new Void[0]);
            }
        }
    }

    void setAutofillFailureLocked(int sessionId, int uid, List<AutofillId> ids) {
        if (!isEnabledLocked()) {
            return;
        }
        Session session = this.mSessions.get(sessionId);
        if (session == null || uid != session.uid) {
            Slog.v(TAG, "setAutofillFailure(): no session for " + sessionId + "(" + uid + ")");
            return;
        }
        session.setAutofillFailureLocked(ids);
    }

    void finishSessionLocked(int sessionId, int uid) {
        if (!isEnabledLocked()) {
            return;
        }
        Session session = this.mSessions.get(sessionId);
        if (session == null || uid != session.uid) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "finishSessionLocked(): no session for " + sessionId + "(" + uid + ")");
                return;
            }
            return;
        }
        session.logContextCommitted();
        boolean finished = session.showSaveLocked();
        if (Helper.sVerbose) {
            Slog.v(TAG, "finishSessionLocked(): session finished on save? " + finished);
        }
        if (finished) {
            session.removeSelfLocked();
        }
    }

    void cancelSessionLocked(int sessionId, int uid) {
        if (!isEnabledLocked()) {
            return;
        }
        Session session = this.mSessions.get(sessionId);
        if (session == null || uid != session.uid) {
            Slog.w(TAG, "cancelSessionLocked(): no session for " + sessionId + "(" + uid + ")");
            return;
        }
        session.removeSelfLocked();
    }

    void disableOwnedAutofillServicesLocked(int uid) {
        Slog.i(TAG, "disableOwnedServices(" + uid + "): " + this.mInfo);
        AutofillServiceInfo autofillServiceInfo = this.mInfo;
        if (autofillServiceInfo == null) {
            return;
        }
        ServiceInfo serviceInfo = autofillServiceInfo.getServiceInfo();
        if (serviceInfo.applicationInfo.uid != uid) {
            Slog.w(TAG, "disableOwnedServices(): ignored when called by UID " + uid + " instead of " + serviceInfo.applicationInfo.uid + " for service " + this.mInfo);
            return;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            String autoFillService = getComponentNameLocked();
            ComponentName componentName = serviceInfo.getComponentName();
            if (componentName.equals(ComponentName.unflattenFromString(autoFillService))) {
                this.mMetricsLogger.action(1135, componentName.getPackageName());
                Settings.Secure.putStringForUser(getContext().getContentResolver(), "autofill_service", null, this.mUserId);
                destroySessionsLocked();
            } else {
                Slog.w(TAG, "disableOwnedServices(): ignored because current service (" + serviceInfo + ") does not match Settings (" + autoFillService + ")");
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private Session createSessionByTokenLocked(IBinder activityToken, int taskId, int uid, IBinder appCallbackToken, boolean hasCallback, ComponentName componentName, boolean compatMode, boolean bindInstantServiceAllowed, boolean forAugmentedAutofillOnly, int flags) {
        AutofillManagerServiceImpl autofillManagerServiceImpl = this;
        int tries = 0;
        while (true) {
            int tries2 = tries + 1;
            if (tries2 > 2048) {
                Slog.w(TAG, "Cannot create session in 2048 tries");
                return null;
            }
            int sessionId = Math.abs(sRandom.nextInt());
            if (sessionId == 0 || sessionId == Integer.MAX_VALUE || autofillManagerServiceImpl.mSessions.indexOfKey(sessionId) >= 0) {
                autofillManagerServiceImpl = autofillManagerServiceImpl;
                tries = tries2;
            } else {
                autofillManagerServiceImpl.assertCallerLocked(componentName, compatMode);
                AutofillServiceInfo autofillServiceInfo = autofillManagerServiceImpl.mInfo;
                ComponentName serviceComponentName = autofillServiceInfo == null ? null : autofillServiceInfo.getServiceInfo().getComponentName();
                Session newSession = new Session(this, autofillManagerServiceImpl.mUi, getContext(), autofillManagerServiceImpl.mHandler, autofillManagerServiceImpl.mUserId, autofillManagerServiceImpl.mLock, sessionId, taskId, uid, activityToken, appCallbackToken, hasCallback, autofillManagerServiceImpl.mUiLatencyHistory, autofillManagerServiceImpl.mWtfHistory, serviceComponentName, componentName, compatMode, bindInstantServiceAllowed, forAugmentedAutofillOnly, flags, autofillManagerServiceImpl.mInputMethodManagerInternal);
                this.mSessions.put(newSession.id, newSession);
                return newSession;
            }
        }
    }

    private void assertCallerLocked(ComponentName componentName, boolean compatMode) {
        String callingPackage;
        String packageName = componentName.getPackageName();
        PackageManager pm = getContext().getPackageManager();
        int callingUid = Binder.getCallingUid();
        try {
            int packageUid = pm.getPackageUidAsUser(packageName, UserHandle.getCallingUserId());
            if (callingUid != packageUid && !((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).hasRunningActivity(callingUid, packageName)) {
                String[] packages = pm.getPackagesForUid(callingUid);
                if (packages != null) {
                    callingPackage = packages[0];
                } else {
                    callingPackage = "uid-" + callingUid;
                }
                Slog.w(TAG, "App (package=" + callingPackage + ", UID=" + callingUid + ") passed component (" + componentName + ") owned by UID " + packageUid);
                LogMaker log = new LogMaker(948).setPackageName(callingPackage).addTaggedData(908, getServicePackageName()).addTaggedData(949, componentName == null ? "null" : componentName.flattenToShortString());
                if (compatMode) {
                    log.addTaggedData(1414, 1);
                }
                this.mMetricsLogger.write(log);
                throw new SecurityException("Invalid component: " + componentName);
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new SecurityException("Could not verify UID for " + componentName);
        }
    }

    boolean restoreSession(int sessionId, int uid, IBinder activityToken, IBinder appCallback) {
        Session session = this.mSessions.get(sessionId);
        if (session == null || uid != session.uid) {
            return false;
        }
        session.switchActivity(activityToken, appCallback);
        return true;
    }

    boolean updateSessionLocked(int sessionId, int uid, AutofillId autofillId, Rect virtualBounds, AutofillValue value, int action, int flags) {
        Session session = this.mSessions.get(sessionId);
        if (session == null || session.uid != uid) {
            if ((flags & 1) != 0) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "restarting session " + sessionId + " due to manual request on " + autofillId);
                    return true;
                }
                return true;
            }
            if (Helper.sVerbose) {
                Slog.v(TAG, "updateSessionLocked(): session gone for " + sessionId + "(" + uid + ")");
            }
            return false;
        }
        session.updateLocked(autofillId, virtualBounds, value, action, flags);
        return false;
    }

    void removeSessionLocked(int sessionId) {
        this.mSessions.remove(sessionId);
    }

    ArrayList<Session> getPreviousSessionsLocked(Session session) {
        int size = this.mSessions.size();
        ArrayList<Session> previousSessions = null;
        for (int i = 0; i < size; i++) {
            Session previousSession = this.mSessions.valueAt(i);
            if (previousSession.taskId == session.taskId && previousSession.id != session.id && (previousSession.getSaveInfoFlagsLocked() & 4) != 0) {
                if (previousSessions == null) {
                    previousSessions = new ArrayList<>(size);
                }
                previousSessions.add(previousSession);
            }
        }
        return previousSessions;
    }

    void handleSessionSave(Session session) {
        synchronized (this.mLock) {
            if (this.mSessions.get(session.id) == null) {
                Slog.w(TAG, "handleSessionSave(): already gone: " + session.id);
                return;
            }
            session.callSaveLocked();
        }
    }

    void onPendingSaveUi(int operation, IBinder token) {
        if (Helper.sVerbose) {
            Slog.v(TAG, "onPendingSaveUi(" + operation + "): " + token);
        }
        synchronized (this.mLock) {
            int sessionCount = this.mSessions.size();
            for (int i = sessionCount - 1; i >= 0; i--) {
                Session session = this.mSessions.valueAt(i);
                if (session.isSaveUiPendingForTokenLocked(token)) {
                    session.onPendingSaveUi(operation, token);
                    return;
                }
            }
            if (Helper.sDebug) {
                Slog.d(TAG, "No pending Save UI for token " + token + " and operation " + DebugUtils.flagsToString(AutofillManager.class, "PENDING_UI_OPERATION_", operation));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.infra.AbstractPerUserSystemService
    public void handlePackageUpdateLocked(String packageName) {
        ServiceInfo serviceInfo = this.mFieldClassificationStrategy.getServiceInfo();
        if (serviceInfo != null && serviceInfo.packageName.equals(packageName)) {
            resetExtServiceLocked();
        }
    }

    void resetExtServiceLocked() {
        if (Helper.sVerbose) {
            Slog.v(TAG, "reset autofill service.");
        }
        this.mFieldClassificationStrategy.reset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroyLocked() {
        if (Helper.sVerbose) {
            Slog.v(TAG, "destroyLocked()");
        }
        resetExtServiceLocked();
        int numSessions = this.mSessions.size();
        ArraySet<RemoteFillService> remoteFillServices = new ArraySet<>(numSessions);
        for (int i = 0; i < numSessions; i++) {
            RemoteFillService remoteFillService = this.mSessions.valueAt(i).destroyLocked();
            if (remoteFillService != null) {
                remoteFillServices.add(remoteFillService);
            }
        }
        this.mSessions.clear();
        for (int i2 = 0; i2 < remoteFillServices.size(); i2++) {
            remoteFillServices.valueAt(i2).destroy();
        }
        sendStateToClients(true);
        RemoteCallbackList<IAutoFillManagerClient> remoteCallbackList = this.mClients;
        if (remoteCallbackList != null) {
            remoteCallbackList.kill();
            this.mClients = null;
        }
    }

    void setLastResponse(int sessionId, FillResponse response) {
        synchronized (this.mLock) {
            this.mEventHistory = new FillEventHistory(sessionId, response.getClientState());
        }
    }

    void setLastAugmentedAutofillResponse(int sessionId) {
        synchronized (this.mLock) {
            this.mAugmentedAutofillEventHistory = new FillEventHistory(sessionId, null);
        }
    }

    void resetLastResponse() {
        synchronized (this.mLock) {
            this.mEventHistory = null;
        }
    }

    void resetLastAugmentedAutofillResponse() {
        synchronized (this.mLock) {
            this.mAugmentedAutofillEventHistory = null;
        }
    }

    private boolean isValidEventLocked(String method, int sessionId) {
        FillEventHistory fillEventHistory = this.mEventHistory;
        if (fillEventHistory == null) {
            Slog.w(TAG, method + ": not logging event because history is null");
            return false;
        }
        if (sessionId != fillEventHistory.getSessionId()) {
            if (Helper.sDebug) {
                Slog.d(TAG, method + ": not logging event for session " + sessionId + " because tracked session is " + this.mEventHistory.getSessionId());
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    void setAuthenticationSelected(int sessionId, Bundle clientState) {
        synchronized (this.mLock) {
            try {
                if (isValidEventLocked("setAuthenticationSelected()", sessionId)) {
                    this.mEventHistory.addEvent(new FillEventHistory.Event(2, null, clientState, null, null, null, null, null, null, null, null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    void logDatasetAuthenticationSelected(String selectedDataset, int sessionId, Bundle clientState) {
        synchronized (this.mLock) {
            try {
                if (isValidEventLocked("logDatasetAuthenticationSelected()", sessionId)) {
                    this.mEventHistory.addEvent(new FillEventHistory.Event(1, selectedDataset, clientState, null, null, null, null, null, null, null, null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    void logSaveShown(int sessionId, Bundle clientState) {
        synchronized (this.mLock) {
            try {
                if (isValidEventLocked("logSaveShown()", sessionId)) {
                    this.mEventHistory.addEvent(new FillEventHistory.Event(3, null, clientState, null, null, null, null, null, null, null, null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    void logDatasetSelected(String selectedDataset, int sessionId, Bundle clientState) {
        synchronized (this.mLock) {
            try {
                if (isValidEventLocked("logDatasetSelected()", sessionId)) {
                    this.mEventHistory.addEvent(new FillEventHistory.Event(0, selectedDataset, clientState, null, null, null, null, null, null, null, null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    void logDatasetShown(int sessionId, Bundle clientState) {
        synchronized (this.mLock) {
            try {
                if (isValidEventLocked("logDatasetShown", sessionId)) {
                    this.mEventHistory.addEvent(new FillEventHistory.Event(5, null, clientState, null, null, null, null, null, null, null, null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void logAugmentedAutofillAuthenticationSelected(int sessionId, String selectedDataset, Bundle clientState) throws Throwable {
        synchronized (this.mLock) {
            try {
                try {
                    if (this.mAugmentedAutofillEventHistory != null && this.mAugmentedAutofillEventHistory.getSessionId() == sessionId) {
                        this.mAugmentedAutofillEventHistory.addEvent(new FillEventHistory.Event(1, selectedDataset, clientState, null, null, null, null, null, null, null, null));
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void logAugmentedAutofillSelected(int sessionId, String suggestionId, Bundle clientState) throws Throwable {
        synchronized (this.mLock) {
            try {
                try {
                    if (this.mAugmentedAutofillEventHistory != null && this.mAugmentedAutofillEventHistory.getSessionId() == sessionId) {
                        this.mAugmentedAutofillEventHistory.addEvent(new FillEventHistory.Event(0, suggestionId, clientState, null, null, null, null, null, null, null, null));
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void logAugmentedAutofillShown(int sessionId, Bundle clientState) throws Throwable {
        synchronized (this.mLock) {
            try {
                try {
                    if (this.mAugmentedAutofillEventHistory != null && this.mAugmentedAutofillEventHistory.getSessionId() == sessionId) {
                        this.mAugmentedAutofillEventHistory.addEvent(new FillEventHistory.Event(5, null, clientState, null, null, null, null, null, null, null, null));
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    void logContextCommittedLocked(int sessionId, Bundle clientState, ArrayList<String> selectedDatasets, ArraySet<String> ignoredDatasets, ArrayList<AutofillId> changedFieldIds, ArrayList<String> changedDatasetIds, ArrayList<AutofillId> manuallyFilledFieldIds, ArrayList<ArrayList<String>> manuallyFilledDatasetIds, ComponentName appComponentName, boolean compatMode) {
        logContextCommittedLocked(sessionId, clientState, selectedDatasets, ignoredDatasets, changedFieldIds, changedDatasetIds, manuallyFilledFieldIds, manuallyFilledDatasetIds, null, null, appComponentName, compatMode);
    }

    void logContextCommittedLocked(int sessionId, Bundle clientState, ArrayList<String> selectedDatasets, ArraySet<String> ignoredDatasets, ArrayList<AutofillId> changedFieldIds, ArrayList<String> changedDatasetIds, ArrayList<AutofillId> manuallyFilledFieldIds, ArrayList<ArrayList<String>> manuallyFilledDatasetIds, ArrayList<AutofillId> detectedFieldIdsList, ArrayList<FieldClassification> detectedFieldClassificationsList, ComponentName appComponentName, boolean compatMode) {
        FieldClassification[] detectedFieldClassifications;
        if (isValidEventLocked("logDatasetNotSelected()", sessionId)) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "logContextCommitted() with FieldClassification: id=" + sessionId + ", selectedDatasets=" + selectedDatasets + ", ignoredDatasetIds=" + ignoredDatasets + ", changedAutofillIds=" + changedFieldIds + ", changedDatasetIds=" + changedDatasetIds + ", manuallyFilledFieldIds=" + manuallyFilledFieldIds + ", detectedFieldIds=" + detectedFieldIdsList + ", detectedFieldClassifications=" + detectedFieldClassificationsList + ", appComponentName=" + appComponentName.toShortString() + ", compatMode=" + compatMode);
            }
            AutofillId[] detectedFieldsIds = null;
            if (detectedFieldIdsList == null) {
                detectedFieldClassifications = null;
            } else {
                AutofillId[] detectedFieldsIds2 = new AutofillId[detectedFieldIdsList.size()];
                detectedFieldIdsList.toArray(detectedFieldsIds2);
                FieldClassification[] detectedFieldClassifications2 = new FieldClassification[detectedFieldClassificationsList.size()];
                detectedFieldClassificationsList.toArray(detectedFieldClassifications2);
                int numberFields = detectedFieldsIds2.length;
                int totalSize = 0;
                float totalScore = 0.0f;
                int i = 0;
                while (i < numberFields) {
                    FieldClassification fc = detectedFieldClassifications2[i];
                    List<FieldClassification.Match> matches = fc.getMatches();
                    int size = matches.size();
                    totalSize += size;
                    AutofillId[] detectedFieldsIds3 = detectedFieldsIds2;
                    for (int j = 0; j < size; j++) {
                        totalScore += matches.get(j).getScore();
                    }
                    i++;
                    detectedFieldsIds2 = detectedFieldsIds3;
                }
                int averageScore = (int) ((100.0f * totalScore) / totalSize);
                this.mMetricsLogger.write(Helper.newLogMaker(1273, appComponentName, getServicePackageName(), sessionId, compatMode).setCounterValue(numberFields).addTaggedData(1274, Integer.valueOf(averageScore)));
                detectedFieldClassifications = detectedFieldClassifications2;
                detectedFieldsIds = detectedFieldsIds2;
            }
            this.mEventHistory.addEvent(new FillEventHistory.Event(4, null, clientState, selectedDatasets, ignoredDatasets, changedFieldIds, changedDatasetIds, manuallyFilledFieldIds, manuallyFilledDatasetIds, detectedFieldsIds, detectedFieldClassifications));
        }
    }

    FillEventHistory getFillEventHistory(int callingUid) {
        synchronized (this.mLock) {
            if (this.mEventHistory != null && isCalledByServiceLocked("getFillEventHistory", callingUid)) {
                return this.mEventHistory;
            }
            if (this.mAugmentedAutofillEventHistory != null && isCalledByAugmentedAutofillServiceLocked("getFillEventHistory", callingUid)) {
                return this.mAugmentedAutofillEventHistory;
            }
            return null;
        }
    }

    UserData getUserData() {
        UserData userData;
        synchronized (this.mLock) {
            userData = this.mUserData;
        }
        return userData;
    }

    UserData getUserData(int callingUid) {
        synchronized (this.mLock) {
            if (isCalledByServiceLocked("getUserData", callingUid)) {
                return this.mUserData;
            }
            return null;
        }
    }

    void setUserData(int callingUid, UserData userData) {
        synchronized (this.mLock) {
            if (isCalledByServiceLocked("setUserData", callingUid)) {
                this.mUserData = userData;
                int numberFields = userData == null ? 0 : userData.getCategoryIds().length;
                this.mMetricsLogger.write(new LogMaker(1272).setPackageName(getServicePackageName()).addTaggedData(914, Integer.valueOf(numberFields)));
            }
        }
    }

    private boolean isCalledByServiceLocked(String methodName, int callingUid) {
        int serviceUid = getServiceUidLocked();
        if (serviceUid != callingUid) {
            Slog.w(TAG, methodName + "() called by UID " + callingUid + ", but service UID is " + serviceUid);
            return false;
        }
        return true;
    }

    int getSupportedSmartSuggestionModesLocked() {
        return ((AutofillManagerService) this.mMaster).getSupportedSmartSuggestionModesLocked();
    }

    @Override // com.android.server.infra.AbstractPerUserSystemService
    protected void dumpLocked(String prefix, PrintWriter pw) {
        super.dumpLocked(prefix, pw);
        String prefix2 = prefix + "  ";
        pw.print(prefix);
        pw.print("UID: ");
        pw.println(getServiceUidLocked());
        pw.print(prefix);
        pw.print("Autofill Service Info: ");
        if (this.mInfo == null) {
            pw.println("N/A");
        } else {
            pw.println();
            this.mInfo.dump(prefix2, pw);
        }
        pw.print(prefix);
        pw.print("Default component: ");
        pw.println(getContext().getString(R.string.config_deviceSpecificAudioService));
        pw.print(prefix);
        pw.println("mAugmentedAutofillNamer: ");
        pw.print(prefix2);
        ((AutofillManagerService) this.mMaster).mAugmentedAutofillResolver.dumpShort(pw, this.mUserId);
        pw.println();
        if (this.mRemoteAugmentedAutofillService != null) {
            pw.print(prefix);
            pw.println("RemoteAugmentedAutofillService: ");
            this.mRemoteAugmentedAutofillService.dump(prefix2, pw);
        }
        if (this.mRemoteAugmentedAutofillServiceInfo != null) {
            pw.print(prefix);
            pw.print("RemoteAugmentedAutofillServiceInfo: ");
            pw.println(this.mRemoteAugmentedAutofillServiceInfo);
        }
        pw.print(prefix);
        pw.print("Field classification enabled: ");
        pw.println(isFieldClassificationEnabledLocked());
        pw.print(prefix);
        pw.print("Compat pkgs: ");
        ArrayMap<String, Long> compatPkgs = getCompatibilityPackagesLocked();
        if (compatPkgs == null) {
            pw.println("N/A");
        } else {
            pw.println(compatPkgs);
        }
        pw.print(prefix);
        pw.print("Inline Suggestions Enabled: ");
        pw.println(isInlineSuggestionsEnabled());
        pw.print(prefix);
        pw.print("Last prune: ");
        pw.println(this.mLastPrune);
        this.mDisabledInfoCache.dump(this.mUserId, prefix, pw);
        int size = this.mSessions.size();
        if (size == 0) {
            pw.print(prefix);
            pw.println("No sessions");
        } else {
            pw.print(prefix);
            pw.print(size);
            pw.println(" sessions:");
            for (int i = 0; i < size; i++) {
                pw.print(prefix);
                pw.print("#");
                pw.println(i + 1);
                this.mSessions.valueAt(i).dumpLocked(prefix2, pw);
            }
        }
        pw.print(prefix);
        pw.print("Clients: ");
        if (this.mClients == null) {
            pw.println("N/A");
        } else {
            pw.println();
            this.mClients.dump(pw, prefix2);
        }
        FillEventHistory fillEventHistory = this.mEventHistory;
        if (fillEventHistory == null || fillEventHistory.getEvents() == null || this.mEventHistory.getEvents().size() == 0) {
            pw.print(prefix);
            pw.println("No event on last fill response");
        } else {
            pw.print(prefix);
            pw.println("Events of last fill response:");
            pw.print(prefix);
            int numEvents = this.mEventHistory.getEvents().size();
            for (int i2 = 0; i2 < numEvents; i2++) {
                FillEventHistory.Event event = this.mEventHistory.getEvents().get(i2);
                pw.println("  " + i2 + ": eventType=" + event.getType() + " datasetId=" + event.getDatasetId());
            }
        }
        pw.print(prefix);
        pw.print("User data: ");
        if (this.mUserData == null) {
            pw.println("N/A");
        } else {
            pw.println();
            this.mUserData.dump(prefix2, pw);
        }
        pw.print(prefix);
        pw.println("Field Classification strategy: ");
        this.mFieldClassificationStrategy.dump(prefix2, pw);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroySessionsLocked() {
        if (this.mSessions.size() == 0) {
            this.mUi.destroyAll(null, null, false);
        } else {
            while (this.mSessions.size() > 0) {
                this.mSessions.valueAt(0).forceRemoveSelfLocked();
            }
        }
    }

    void destroySessionsForAugmentedAutofillOnlyLocked() {
        int sessionCount = this.mSessions.size();
        for (int i = sessionCount - 1; i >= 0; i--) {
            this.mSessions.valueAt(i).forceRemoveSelfIfForAugmentedAutofillOnlyLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroyFinishedSessionsLocked() {
        int sessionCount = this.mSessions.size();
        for (int i = sessionCount - 1; i >= 0; i--) {
            Session session = this.mSessions.valueAt(i);
            if (session.isSavingLocked()) {
                if (Helper.sDebug) {
                    Slog.d(TAG, "destroyFinishedSessionsLocked(): " + session.id);
                }
                session.forceRemoveSelfLocked();
            } else {
                session.destroyAugmentedAutofillWindowsLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void listSessionsLocked(ArrayList<String> output) {
        String service;
        String augmentedService;
        int numSessions = this.mSessions.size();
        if (numSessions <= 0) {
            return;
        }
        for (int i = 0; i < numSessions; i++) {
            int id = this.mSessions.keyAt(i);
            AutofillServiceInfo autofillServiceInfo = this.mInfo;
            if (autofillServiceInfo == null) {
                service = "no_svc";
            } else {
                service = autofillServiceInfo.getServiceInfo().getComponentName().flattenToShortString();
            }
            ServiceInfo serviceInfo = this.mRemoteAugmentedAutofillServiceInfo;
            if (serviceInfo == null) {
                augmentedService = "no_aug";
            } else {
                augmentedService = serviceInfo.getComponentName().flattenToShortString();
            }
            output.add(String.format("%d:%s:%s", Integer.valueOf(id), service, augmentedService));
        }
    }

    ArrayMap<String, Long> getCompatibilityPackagesLocked() {
        AutofillServiceInfo autofillServiceInfo = this.mInfo;
        if (autofillServiceInfo != null) {
            return autofillServiceInfo.getCompatibilityPackages();
        }
        return null;
    }

    boolean isInlineSuggestionsEnabled() {
        AutofillServiceInfo autofillServiceInfo = this.mInfo;
        if (autofillServiceInfo != null) {
            return autofillServiceInfo.isInlineSuggestionsEnabled();
        }
        return false;
    }

    RemoteAugmentedAutofillService getRemoteAugmentedAutofillServiceLocked() {
        if (this.mRemoteAugmentedAutofillService == null) {
            String serviceName = ((AutofillManagerService) this.mMaster).mAugmentedAutofillResolver.getServiceName(this.mUserId);
            if (serviceName == null) {
                if (((AutofillManagerService) this.mMaster).verbose) {
                    Slog.v(TAG, "getRemoteAugmentedAutofillServiceLocked(): not set");
                }
                return null;
            }
            Pair<ServiceInfo, ComponentName> pair = RemoteAugmentedAutofillService.getComponentName(serviceName, this.mUserId, ((AutofillManagerService) this.mMaster).mAugmentedAutofillResolver.isTemporary(this.mUserId));
            if (pair == null) {
                return null;
            }
            this.mRemoteAugmentedAutofillServiceInfo = (ServiceInfo) pair.first;
            ComponentName componentName = (ComponentName) pair.second;
            if (Helper.sVerbose) {
                Slog.v(TAG, "getRemoteAugmentedAutofillServiceLocked(): " + componentName);
            }
            RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks callbacks = new RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks() { // from class: com.android.server.autofill.AutofillManagerServiceImpl.1
                @Override // com.android.server.autofill.RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks
                public void resetLastResponse() {
                    AutofillManagerServiceImpl.this.resetLastAugmentedAutofillResponse();
                }

                @Override // com.android.server.autofill.RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks
                public void setLastResponse(int sessionId) {
                    AutofillManagerServiceImpl.this.setLastAugmentedAutofillResponse(sessionId);
                }

                @Override // com.android.server.autofill.RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks
                public void logAugmentedAutofillShown(int sessionId, Bundle clientState) throws Throwable {
                    AutofillManagerServiceImpl.this.logAugmentedAutofillShown(sessionId, clientState);
                }

                @Override // com.android.server.autofill.RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks
                public void logAugmentedAutofillSelected(int sessionId, String suggestionId, Bundle clientState) throws Throwable {
                    AutofillManagerServiceImpl.this.logAugmentedAutofillSelected(sessionId, suggestionId, clientState);
                }

                @Override // com.android.server.autofill.RemoteAugmentedAutofillService.RemoteAugmentedAutofillServiceCallbacks
                public void logAugmentedAutofillAuthenticationSelected(int sessionId, String suggestionId, Bundle clientState) throws Throwable {
                    AutofillManagerServiceImpl.this.logAugmentedAutofillAuthenticationSelected(sessionId, suggestionId, clientState);
                }

                public void onServiceDied(RemoteAugmentedAutofillService service) {
                    Slog.w(AutofillManagerServiceImpl.TAG, "remote augmented autofill service died");
                    RemoteAugmentedAutofillService remoteService = AutofillManagerServiceImpl.this.mRemoteAugmentedAutofillService;
                    if (remoteService != null) {
                        remoteService.unbind();
                    }
                    AutofillManagerServiceImpl.this.mRemoteAugmentedAutofillService = null;
                }
            };
            this.mRemoteAugmentedAutofillService = new RemoteAugmentedAutofillService(getContext(), componentName, this.mUserId, callbacks, ((AutofillManagerService) this.mMaster).isInstantServiceAllowed(), ((AutofillManagerService) this.mMaster).verbose, ((AutofillManagerService) this.mMaster).mAugmentedServiceIdleUnbindTimeoutMs, ((AutofillManagerService) this.mMaster).mAugmentedServiceRequestTimeoutMs);
        }
        return this.mRemoteAugmentedAutofillService;
    }

    void updateRemoteAugmentedAutofillService() {
        synchronized (this.mLock) {
            if (this.mRemoteAugmentedAutofillService != null) {
                if (Helper.sVerbose) {
                    Slog.v(TAG, "updateRemoteAugmentedAutofillService(): destroying old remote service");
                }
                destroySessionsForAugmentedAutofillOnlyLocked();
                this.mRemoteAugmentedAutofillService.unbind();
                this.mRemoteAugmentedAutofillService = null;
                this.mRemoteAugmentedAutofillServiceInfo = null;
                resetAugmentedAutofillWhitelistLocked();
            }
            boolean available = isAugmentedAutofillServiceAvailableLocked();
            if (Helper.sVerbose) {
                Slog.v(TAG, "updateRemoteAugmentedAutofillService(): " + available);
            }
            if (available) {
                this.mRemoteAugmentedAutofillService = getRemoteAugmentedAutofillServiceLocked();
            }
        }
    }

    private boolean isAugmentedAutofillServiceAvailableLocked() {
        if (((AutofillManagerService) this.mMaster).verbose) {
            Slog.v(TAG, "isAugmentedAutofillService(): setupCompleted=" + isSetupCompletedLocked() + ", disabled=" + isDisabledByUserRestrictionsLocked() + ", augmentedService=" + ((AutofillManagerService) this.mMaster).mAugmentedAutofillResolver.getServiceName(this.mUserId));
        }
        if (!isSetupCompletedLocked() || isDisabledByUserRestrictionsLocked() || ((AutofillManagerService) this.mMaster).mAugmentedAutofillResolver.getServiceName(this.mUserId) == null) {
            return false;
        }
        return true;
    }

    boolean isAugmentedAutofillServiceForUserLocked(int callingUid) {
        ServiceInfo serviceInfo = this.mRemoteAugmentedAutofillServiceInfo;
        return serviceInfo != null && serviceInfo.applicationInfo.uid == callingUid;
    }

    boolean setAugmentedAutofillWhitelistLocked(List<String> packages, List<ComponentName> activities, int callingUid) {
        String serviceName;
        if (!isCalledByAugmentedAutofillServiceLocked("setAugmentedAutofillWhitelistLocked", callingUid)) {
            return false;
        }
        if (((AutofillManagerService) this.mMaster).verbose) {
            Slog.v(TAG, "setAugmentedAutofillWhitelistLocked(packages=" + packages + ", activities=" + activities + ")");
        }
        whitelistForAugmentedAutofillPackages(packages, activities);
        ServiceInfo serviceInfo = this.mRemoteAugmentedAutofillServiceInfo;
        if (serviceInfo != null) {
            serviceName = serviceInfo.getComponentName().flattenToShortString();
        } else {
            Slog.e(TAG, "setAugmentedAutofillWhitelistLocked(): no service");
            serviceName = "N/A";
        }
        LogMaker log = new LogMaker(1721).addTaggedData(908, serviceName);
        if (packages != null) {
            log.addTaggedData(1722, Integer.valueOf(packages.size()));
        }
        if (activities != null) {
            log.addTaggedData(1723, Integer.valueOf(activities.size()));
        }
        this.mMetricsLogger.write(log);
        return true;
    }

    private boolean isCalledByAugmentedAutofillServiceLocked(String methodName, int callingUid) {
        RemoteAugmentedAutofillService service = getRemoteAugmentedAutofillServiceLocked();
        if (service == null) {
            Slog.w(TAG, methodName + "() called by UID " + callingUid + ", but there is no augmented autofill service defined for user " + getUserId());
            return false;
        }
        if (getAugmentedAutofillServiceUidLocked() != callingUid) {
            Slog.w(TAG, methodName + "() called by UID " + callingUid + ", but service UID is " + getAugmentedAutofillServiceUidLocked() + " for user " + getUserId());
            return false;
        }
        return true;
    }

    private int getAugmentedAutofillServiceUidLocked() {
        ServiceInfo serviceInfo = this.mRemoteAugmentedAutofillServiceInfo;
        if (serviceInfo == null) {
            if (((AutofillManagerService) this.mMaster).verbose) {
                Slog.v(TAG, "getAugmentedAutofillServiceUid(): no mRemoteAugmentedAutofillServiceInfo");
                return -1;
            }
            return -1;
        }
        return serviceInfo.applicationInfo.uid;
    }

    boolean isWhitelistedForAugmentedAutofillLocked(ComponentName componentName) {
        return ((AutofillManagerService) this.mMaster).mAugmentedAutofillState.isWhitelisted(this.mUserId, componentName);
    }

    private void whitelistForAugmentedAutofillPackages(List<String> packages, List<ComponentName> components) {
        synchronized (this.mLock) {
            if (((AutofillManagerService) this.mMaster).verbose) {
                Slog.v(TAG, "whitelisting packages: " + packages + "and activities: " + components);
            }
            ((AutofillManagerService) this.mMaster).mAugmentedAutofillState.setWhitelist(this.mUserId, packages, components);
        }
    }

    void resetAugmentedAutofillWhitelistLocked() {
        if (((AutofillManagerService) this.mMaster).verbose) {
            Slog.v(TAG, "resetting augmented autofill whitelist");
        }
        ((AutofillManagerService) this.mMaster).mAugmentedAutofillState.resetWhitelist(this.mUserId);
    }

    private void sendStateToClients(boolean resetClient) {
        boolean resetSession;
        boolean isEnabled;
        synchronized (this.mLock) {
            if (this.mClients == null) {
                return;
            }
            RemoteCallbackList<IAutoFillManagerClient> clients = this.mClients;
            int userClientCount = clients.beginBroadcast();
            for (int i = 0; i < userClientCount; i++) {
                try {
                    IAutoFillManagerClient client = (IAutoFillManagerClient) clients.getBroadcastItem(i);
                    try {
                        synchronized (this.mLock) {
                            if (!resetClient) {
                                try {
                                    resetSession = isClientSessionDestroyedLocked(client);
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            isEnabled = isEnabledLocked();
                        }
                        int flags = 0;
                        if (isEnabled) {
                            flags = 0 | 1;
                        }
                        if (resetSession) {
                            flags |= 2;
                        }
                        if (resetClient) {
                            flags |= 4;
                        }
                        if (Helper.sDebug) {
                            flags |= 8;
                        }
                        if (Helper.sVerbose) {
                            flags |= 16;
                        }
                        client.setState(flags);
                    } catch (RemoteException e) {
                    }
                } catch (Throwable th2) {
                    clients.finishBroadcast();
                    throw th2;
                }
            }
            clients.finishBroadcast();
        }
    }

    private boolean isClientSessionDestroyedLocked(IAutoFillManagerClient client) {
        int sessionCount = this.mSessions.size();
        for (int i = 0; i < sessionCount; i++) {
            Session session = this.mSessions.valueAt(i);
            if (session.getClient().equals(client)) {
                return session.isDestroyed();
            }
        }
        return true;
    }

    void disableAutofillForApp(String packageName, long duration, int sessionId, boolean compatMode) {
        synchronized (this.mLock) {
            long expiration = SystemClock.elapsedRealtime() + duration;
            if (expiration < 0) {
                expiration = JobStatus.NO_LATEST_RUNTIME;
            }
            this.mDisabledInfoCache.addDisabledAppLocked(this.mUserId, packageName, expiration);
            int intDuration = duration > 2147483647L ? Integer.MAX_VALUE : (int) duration;
            this.mMetricsLogger.write(Helper.newLogMaker(1231, packageName, getServicePackageName(), sessionId, compatMode).addTaggedData(1145, Integer.valueOf(intDuration)));
        }
    }

    void disableAutofillForActivity(ComponentName componentName, long duration, int sessionId, boolean compatMode) {
        int intDuration;
        synchronized (this.mLock) {
            long expiration = SystemClock.elapsedRealtime() + duration;
            if (expiration < 0) {
                expiration = JobStatus.NO_LATEST_RUNTIME;
            }
            this.mDisabledInfoCache.addDisabledActivityLocked(this.mUserId, componentName, expiration);
            if (duration > 2147483647L) {
                intDuration = Integer.MAX_VALUE;
            } else {
                intDuration = (int) duration;
            }
            LogMaker log = new LogMaker(1232).setComponentName(componentName).addTaggedData(908, getServicePackageName()).addTaggedData(1145, Integer.valueOf(intDuration)).addTaggedData(1456, Integer.valueOf(sessionId));
            if (compatMode) {
                log.addTaggedData(1414, 1);
            }
            this.mMetricsLogger.write(log);
        }
    }

    private boolean isAutofillDisabledLocked(ComponentName componentName) {
        return this.mDisabledInfoCache.isAutofillDisabledLocked(this.mUserId, componentName);
    }

    boolean isFieldClassificationEnabled(int callingUid) {
        synchronized (this.mLock) {
            if (!isCalledByServiceLocked("isFieldClassificationEnabled", callingUid)) {
                return false;
            }
            return isFieldClassificationEnabledLocked();
        }
    }

    boolean isFieldClassificationEnabledLocked() {
        return Settings.Secure.getIntForUser(getContext().getContentResolver(), "autofill_field_classification", 1, this.mUserId) == 1;
    }

    FieldClassificationStrategy getFieldClassificationStrategy() {
        return this.mFieldClassificationStrategy;
    }

    String[] getAvailableFieldClassificationAlgorithms(int callingUid) {
        synchronized (this.mLock) {
            if (!isCalledByServiceLocked("getFCAlgorithms()", callingUid)) {
                return null;
            }
            return this.mFieldClassificationStrategy.getAvailableAlgorithms();
        }
    }

    String getDefaultFieldClassificationAlgorithm(int callingUid) {
        synchronized (this.mLock) {
            if (!isCalledByServiceLocked("getDefaultFCAlgorithm()", callingUid)) {
                return null;
            }
            return this.mFieldClassificationStrategy.getDefaultAlgorithm();
        }
    }

    private void updateRemoteInlineSuggestionRenderServiceLocked() {
        if (this.mRemoteInlineSuggestionRenderService != null) {
            if (Helper.sVerbose) {
                Slog.v(TAG, "updateRemoteInlineSuggestionRenderService(): destroying old remote service");
            }
            this.mRemoteInlineSuggestionRenderService = null;
        }
        this.mRemoteInlineSuggestionRenderService = getRemoteInlineSuggestionRenderServiceLocked();
    }

    RemoteInlineSuggestionRenderService getRemoteInlineSuggestionRenderServiceLocked() {
        if (this.mRemoteInlineSuggestionRenderService == null) {
            ComponentName componentName = RemoteInlineSuggestionRenderService.getServiceComponentName(getContext(), this.mUserId);
            if (componentName == null) {
                Slog.w(TAG, "No valid component found for InlineSuggestionRenderService");
                return null;
            }
            this.mRemoteInlineSuggestionRenderService = new RemoteInlineSuggestionRenderService(getContext(), componentName, "android.service.autofill.InlineSuggestionRenderService", this.mUserId, new InlineSuggestionRenderCallbacksImpl(), ((AutofillManagerService) this.mMaster).isBindInstantServiceAllowed(), ((AutofillManagerService) this.mMaster).verbose);
        }
        return this.mRemoteInlineSuggestionRenderService;
    }

    private class InlineSuggestionRenderCallbacksImpl implements RemoteInlineSuggestionRenderService.InlineSuggestionRenderCallbacks {
        private InlineSuggestionRenderCallbacksImpl() {
        }

        public void onServiceDied(RemoteInlineSuggestionRenderService service) {
            Slog.w(AutofillManagerServiceImpl.TAG, "remote service died: " + service);
            AutofillManagerServiceImpl.this.mRemoteInlineSuggestionRenderService = null;
        }
    }

    void onSwitchInputMethod() {
        synchronized (this.mLock) {
            int sessionCount = this.mSessions.size();
            for (int i = 0; i < sessionCount; i++) {
                Session session = this.mSessions.valueAt(i);
                session.onSwitchInputMethodLocked();
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AutofillManagerServiceImpl: [userId=");
        sb.append(this.mUserId);
        sb.append(", component=");
        AutofillServiceInfo autofillServiceInfo = this.mInfo;
        sb.append(autofillServiceInfo != null ? autofillServiceInfo.getServiceInfo().getComponentName() : null);
        sb.append("]");
        return sb.toString();
    }

    private class PruneTask extends AsyncTask<Void, Void, Void> {
        private PruneTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... ignored) {
            int numSessionsToRemove;
            SparseArray<IBinder> sessionsToRemove;
            synchronized (AutofillManagerServiceImpl.this.mLock) {
                numSessionsToRemove = AutofillManagerServiceImpl.this.mSessions.size();
                sessionsToRemove = new SparseArray<>(numSessionsToRemove);
                for (int i = 0; i < numSessionsToRemove; i++) {
                    Session session = (Session) AutofillManagerServiceImpl.this.mSessions.valueAt(i);
                    sessionsToRemove.put(session.id, session.getActivityTokenLocked());
                }
            }
            IActivityTaskManager atm = ActivityTaskManager.getService();
            int i2 = 0;
            while (i2 < numSessionsToRemove) {
                try {
                    if (atm.getActivityClassForToken(sessionsToRemove.valueAt(i2)) != null) {
                        sessionsToRemove.removeAt(i2);
                        i2--;
                        numSessionsToRemove--;
                    }
                } catch (RemoteException e) {
                    Slog.w(AutofillManagerServiceImpl.TAG, "Cannot figure out if activity is finished", e);
                }
                i2++;
            }
            synchronized (AutofillManagerServiceImpl.this.mLock) {
                for (int i3 = 0; i3 < numSessionsToRemove; i3++) {
                    Session sessionToRemove = (Session) AutofillManagerServiceImpl.this.mSessions.get(sessionsToRemove.keyAt(i3));
                    if (sessionToRemove != null && sessionsToRemove.valueAt(i3) == sessionToRemove.getActivityTokenLocked()) {
                        if (sessionToRemove.isSavingLocked()) {
                            if (Helper.sVerbose) {
                                Slog.v(AutofillManagerServiceImpl.TAG, "Session " + sessionToRemove.id + " is saving");
                            }
                        } else {
                            if (Helper.sDebug) {
                                Slog.i(AutofillManagerServiceImpl.TAG, "Prune session " + sessionToRemove.id + " (" + sessionToRemove.getActivityTokenLocked() + ")");
                            }
                            sessionToRemove.removeSelfLocked();
                        }
                    }
                }
            }
            return null;
        }
    }
}
