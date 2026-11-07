package com.android.server.broadcastradio.hal2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.broadcastradio.V2_0.AmFmRegionConfig;
import android.hardware.broadcastradio.V2_0.Announcement;
import android.hardware.broadcastradio.V2_0.DabTableEntry;
import android.hardware.broadcastradio.V2_0.IBroadcastRadio;
import android.hardware.broadcastradio.V2_0.ITunerCallback;
import android.hardware.broadcastradio.V2_0.ITunerSession;
import android.hardware.broadcastradio.V2_0.ProgramInfo;
import android.hardware.broadcastradio.V2_0.ProgramListChunk;
import android.hardware.broadcastradio.V2_0.ProgramSelector;
import android.hardware.broadcastradio.V2_0.VendorKeyValue;
import android.hardware.radio.IAnnouncementListener;
import android.hardware.radio.ICloseHandle;
import android.hardware.radio.ProgramList;
import android.hardware.radio.RadioManager;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.MutableInt;
import android.util.Slog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
class RadioModule {
    private static final String TAG = "BcRadio2Srv.module";
    private ITunerSession mHalTunerSession;
    private final Handler mHandler;
    public final RadioManager.ModuleProperties mProperties;
    private final IBroadcastRadio mService;
    private final Object mLock = new Object();
    private Boolean mAntennaConnected = null;
    private RadioManager.ProgramInfo mCurrentProgramInfo = null;
    private final ProgramInfoCache mProgramInfoCache = new ProgramInfoCache(null);
    private ProgramList.Filter mUnionOfAidlProgramFilters = null;
    private final ITunerCallback mHalTunerCallback = new AnonymousClass1();
    private final Set<TunerSession> mAidlTunerSessions = new HashSet();

    interface AidlCallbackRunnable {
        void run(android.hardware.radio.ITunerCallback iTunerCallback) throws RemoteException;
    }

    /* JADX INFO: renamed from: com.android.server.broadcastradio.hal2.RadioModule$1, reason: invalid class name */
    class AnonymousClass1 extends ITunerCallback.Stub {
        AnonymousClass1() {
        }

        @Override // android.hardware.broadcastradio.V2_0.ITunerCallback
        public void onTuneFailed(final int result, final ProgramSelector programSelector) {
            RadioModule.this.lockAndFireLater(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTuneFailed$1$RadioModule$1(programSelector, result);
                }
            });
        }

        public /* synthetic */ void lambda$onTuneFailed$1$RadioModule$1(ProgramSelector programSelector, final int result) {
            final android.hardware.radio.ProgramSelector csel = Convert.programSelectorFromHal(programSelector);
            RadioModule.this.lambda$fanoutAidlCallback$4$RadioModule(new AidlCallbackRunnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$59H6y7GZA-_7GDPEgL2E26h7WiE
                @Override // com.android.server.broadcastradio.hal2.RadioModule.AidlCallbackRunnable
                public final void run(android.hardware.radio.ITunerCallback iTunerCallback) {
                    iTunerCallback.onTuneFailed(result, csel);
                }
            });
        }

        @Override // android.hardware.broadcastradio.V2_0.ITunerCallback
        public void onCurrentProgramInfoChanged(final ProgramInfo halProgramInfo) {
            RadioModule.this.lockAndFireLater(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCurrentProgramInfoChanged$3$RadioModule$1(halProgramInfo);
                }
            });
        }

        public /* synthetic */ void lambda$onCurrentProgramInfoChanged$3$RadioModule$1(ProgramInfo halProgramInfo) {
            RadioModule.this.mCurrentProgramInfo = Convert.programInfoFromHal(halProgramInfo);
            RadioModule.this.lambda$fanoutAidlCallback$4$RadioModule(new AidlCallbackRunnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk
                @Override // com.android.server.broadcastradio.hal2.RadioModule.AidlCallbackRunnable
                public final void run(android.hardware.radio.ITunerCallback iTunerCallback) throws RemoteException {
                    this.f$0.lambda$onCurrentProgramInfoChanged$2$RadioModule$1(iTunerCallback);
                }
            });
        }

        public /* synthetic */ void lambda$onCurrentProgramInfoChanged$2$RadioModule$1(android.hardware.radio.ITunerCallback cb) throws RemoteException {
            cb.onCurrentProgramInfoChanged(RadioModule.this.mCurrentProgramInfo);
        }

        @Override // android.hardware.broadcastradio.V2_0.ITunerCallback
        public void onProgramListUpdated(final ProgramListChunk programListChunk) {
            RadioModule.this.lockAndFireLater(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$Q9In82r88efLEVUPMv89BQpdOKw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onProgramListUpdated$4$RadioModule$1(programListChunk);
                }
            });
        }

        public /* synthetic */ void lambda$onProgramListUpdated$4$RadioModule$1(ProgramListChunk programListChunk) {
            ProgramList.Chunk chunk = Convert.programListChunkFromHal(programListChunk);
            RadioModule.this.mProgramInfoCache.filterAndApplyChunk(chunk);
            for (TunerSession tunerSession : RadioModule.this.mAidlTunerSessions) {
                tunerSession.onMergedProgramListUpdateFromHal(chunk);
            }
        }

        @Override // android.hardware.broadcastradio.V2_0.ITunerCallback
        public void onAntennaStateChange(final boolean connected) {
            RadioModule.this.lockAndFireLater(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$Ww9WbwXtHkvUYLPjJrKd8ZUbLi8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAntennaStateChange$6$RadioModule$1(connected);
                }
            });
        }

        public /* synthetic */ void lambda$onAntennaStateChange$6$RadioModule$1(final boolean connected) {
            RadioModule.this.mAntennaConnected = Boolean.valueOf(connected);
            RadioModule.this.lambda$fanoutAidlCallback$4$RadioModule(new AidlCallbackRunnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$9BTBKKHgjgdB708VSt0TZ7v6eaQ
                @Override // com.android.server.broadcastradio.hal2.RadioModule.AidlCallbackRunnable
                public final void run(android.hardware.radio.ITunerCallback iTunerCallback) {
                    iTunerCallback.onAntennaState(connected);
                }
            });
        }

        @Override // android.hardware.broadcastradio.V2_0.ITunerCallback
        public void onParametersUpdated(final ArrayList<VendorKeyValue> parameters) {
            RadioModule.this.lockAndFireLater(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$kba0y1l8j_kbzfkV_fSYCbVt6AQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onParametersUpdated$8$RadioModule$1(parameters);
                }
            });
        }

        public /* synthetic */ void lambda$onParametersUpdated$8$RadioModule$1(ArrayList parameters) {
            final Map<String, String> cparam = Convert.vendorInfoFromHal(parameters);
            RadioModule.this.lambda$fanoutAidlCallback$4$RadioModule(new AidlCallbackRunnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$1$x698a0D6TrXUq_pmZydNJ1RNU7E
                @Override // com.android.server.broadcastradio.hal2.RadioModule.AidlCallbackRunnable
                public final void run(android.hardware.radio.ITunerCallback iTunerCallback) {
                    iTunerCallback.onParametersUpdated(cparam);
                }
            });
        }
    }

    RadioModule(IBroadcastRadio service, RadioManager.ModuleProperties properties) {
        Objects.requireNonNull(properties);
        this.mProperties = properties;
        Objects.requireNonNull(service);
        this.mService = service;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public static RadioModule tryLoadingModule(int idx, String fqName) {
        try {
            IBroadcastRadio service = IBroadcastRadio.getService(fqName);
            if (service == null) {
                return null;
            }
            final Mutable<AmFmRegionConfig> amfmConfig = new Mutable<>();
            service.getAmFmRegionConfig(false, new IBroadcastRadio.getAmFmRegionConfigCallback() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is
                @Override // android.hardware.broadcastradio.V2_0.IBroadcastRadio.getAmFmRegionConfigCallback
                public final void onValues(int i, AmFmRegionConfig amFmRegionConfig) {
                    RadioModule.lambda$tryLoadingModule$0(amfmConfig, i, amFmRegionConfig);
                }
            });
            final Mutable<List<DabTableEntry>> dabConfig = new Mutable<>();
            service.getDabRegionConfig(new IBroadcastRadio.getDabRegionConfigCallback() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA
                @Override // android.hardware.broadcastradio.V2_0.IBroadcastRadio.getDabRegionConfigCallback
                public final void onValues(int i, ArrayList arrayList) {
                    RadioModule.lambda$tryLoadingModule$1(dabConfig, i, arrayList);
                }
            });
            RadioManager.ModuleProperties prop = Convert.propertiesFromHal(idx, fqName, service.getProperties(), amfmConfig.value, dabConfig.value);
            return new RadioModule(service, prop);
        } catch (RemoteException ex) {
            Slog.e(TAG, "failed to load module " + fqName, ex);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void lambda$tryLoadingModule$0(Mutable amfmConfig, int result, AmFmRegionConfig amFmRegionConfig) {
        if (result == 0) {
            amfmConfig.value = amFmRegionConfig;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void lambda$tryLoadingModule$1(Mutable dabConfig, int result, ArrayList arrayList) {
        if (result == 0) {
            dabConfig.value = arrayList;
        }
    }

    public IBroadcastRadio getService() {
        return this.mService;
    }

    public TunerSession openSession(android.hardware.radio.ITunerCallback userCb) throws RemoteException {
        TunerSession tunerSession;
        synchronized (this.mLock) {
            if (this.mHalTunerSession == null) {
                final Mutable<ITunerSession> hwSession = new Mutable<>();
                this.mService.openSession(this.mHalTunerCallback, new IBroadcastRadio.openSessionCallback() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$PbMDkfYDR1vn12EtbZSZscvNDM8
                    @Override // android.hardware.broadcastradio.V2_0.IBroadcastRadio.openSessionCallback
                    public final void onValues(int i, ITunerSession iTunerSession) {
                        RadioModule.lambda$openSession$2(hwSession, i, iTunerSession);
                    }
                });
                ITunerSession iTunerSession = hwSession.value;
                Objects.requireNonNull(iTunerSession);
                this.mHalTunerSession = iTunerSession;
            }
            tunerSession = new TunerSession(this, this.mHalTunerSession, userCb);
            this.mAidlTunerSessions.add(tunerSession);
            if (this.mAntennaConnected != null) {
                userCb.onAntennaState(this.mAntennaConnected.booleanValue());
            }
            if (this.mCurrentProgramInfo != null) {
                userCb.onCurrentProgramInfoChanged(this.mCurrentProgramInfo);
            }
        }
        return tunerSession;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void lambda$openSession$2(Mutable hwSession, int result, ITunerSession iTunerSession) {
        Convert.throwOnError("openSession", result);
        hwSession.value = iTunerSession;
    }

    public void closeSessions(Integer error) {
        TunerSession[] tunerSessions;
        synchronized (this.mLock) {
            tunerSessions = new TunerSession[this.mAidlTunerSessions.size()];
            this.mAidlTunerSessions.toArray(tunerSessions);
            this.mAidlTunerSessions.clear();
        }
        for (TunerSession tunerSession : tunerSessions) {
            tunerSession.close(error);
        }
    }

    private ProgramList.Filter buildUnionOfTunerSessionFiltersLocked() {
        Set<Integer> idTypes = null;
        Set<android.hardware.radio.ProgramSelector.Identifier> ids = null;
        boolean includeCategories = false;
        boolean excludeModifications = true;
        for (TunerSession tunerSession : this.mAidlTunerSessions) {
            ProgramList.Filter filter = tunerSession.getProgramListFilter();
            if (filter != null) {
                if (idTypes == null) {
                    idTypes = new HashSet<>(filter.getIdentifierTypes());
                    ids = new HashSet<>(filter.getIdentifiers());
                    includeCategories = filter.areCategoriesIncluded();
                    excludeModifications = filter.areModificationsExcluded();
                } else {
                    if (!idTypes.isEmpty()) {
                        if (filter.getIdentifierTypes().isEmpty()) {
                            idTypes.clear();
                        } else {
                            idTypes.addAll(filter.getIdentifierTypes());
                        }
                    }
                    if (!ids.isEmpty()) {
                        if (filter.getIdentifiers().isEmpty()) {
                            ids.clear();
                        } else {
                            ids.addAll(filter.getIdentifiers());
                        }
                    }
                    includeCategories |= filter.areCategoriesIncluded();
                    excludeModifications &= filter.areModificationsExcluded();
                }
            }
        }
        if (idTypes == null) {
            return null;
        }
        return new ProgramList.Filter(idTypes, ids, includeCategories, excludeModifications);
    }

    void onTunerSessionProgramListFilterChanged(TunerSession session) {
        synchronized (this.mLock) {
            onTunerSessionProgramListFilterChangedLocked(session);
        }
    }

    private void onTunerSessionProgramListFilterChangedLocked(TunerSession session) {
        ProgramList.Filter newFilter = buildUnionOfTunerSessionFiltersLocked();
        if (newFilter == null) {
            if (this.mUnionOfAidlProgramFilters == null) {
                return;
            }
            this.mUnionOfAidlProgramFilters = null;
            try {
                this.mHalTunerSession.stopProgramListUpdates();
                return;
            } catch (RemoteException ex) {
                Slog.e(TAG, "mHalTunerSession.stopProgramListUpdates() failed: ", ex);
                return;
            }
        }
        if (newFilter.equals(this.mUnionOfAidlProgramFilters)) {
            if (session != null) {
                session.updateProgramInfoFromHalCache(this.mProgramInfoCache);
            }
        } else {
            this.mUnionOfAidlProgramFilters = newFilter;
            try {
                int halResult = this.mHalTunerSession.startProgramListUpdates(Convert.programFilterToHal(newFilter));
                Convert.throwOnError("startProgramListUpdates", halResult);
            } catch (RemoteException ex2) {
                Slog.e(TAG, "mHalTunerSession.startProgramListUpdates() failed: ", ex2);
            }
        }
    }

    void onTunerSessionClosed(TunerSession tunerSession) {
        synchronized (this.mLock) {
            onTunerSessionsClosedLocked(tunerSession);
        }
    }

    private void onTunerSessionsClosedLocked(TunerSession... tunerSessions) {
        for (TunerSession tunerSession : tunerSessions) {
            this.mAidlTunerSessions.remove(tunerSession);
        }
        onTunerSessionProgramListFilterChanged(null);
        if (this.mAidlTunerSessions.isEmpty() && this.mHalTunerSession != null) {
            Slog.v(TAG, "closing HAL tuner session");
            try {
                this.mHalTunerSession.close();
            } catch (RemoteException ex) {
                Slog.e(TAG, "mHalTunerSession.close() failed: ", ex);
            }
            this.mHalTunerSession = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockAndFireLater(final Runnable r) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$tYabuulPwbVXcGUDicZUG2Lh3f8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$lockAndFireLater$3$RadioModule(r);
            }
        });
    }

    public /* synthetic */ void lambda$lockAndFireLater$3$RadioModule(Runnable r) {
        synchronized (this.mLock) {
            r.run();
        }
    }

    void fanoutAidlCallback(final AidlCallbackRunnable runnable) {
        lockAndFireLater(new Runnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$tiXDbuKN6VpLu_LpIYLaGBekDJU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fanoutAidlCallback$4$RadioModule(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: fanoutAidlCallbackLocked, reason: merged with bridge method [inline-methods] */
    public void lambda$fanoutAidlCallback$4$RadioModule(AidlCallbackRunnable runnable) {
        List<TunerSession> deadSessions = null;
        for (TunerSession tunerSession : this.mAidlTunerSessions) {
            try {
                runnable.run(tunerSession.mCallback);
            } catch (DeadObjectException e) {
                Slog.e(TAG, "Removing dead TunerSession");
                if (deadSessions == null) {
                    deadSessions = new ArrayList<>();
                }
                deadSessions.add(tunerSession);
            } catch (RemoteException ex) {
                Slog.e(TAG, "Failed to invoke ITunerCallback: ", ex);
            }
        }
        if (deadSessions != null) {
            onTunerSessionsClosedLocked((TunerSession[]) deadSessions.toArray(new TunerSession[deadSessions.size()]));
        }
    }

    public ICloseHandle addAnnouncementListener(int[] enabledTypes, IAnnouncementListener listener) throws RemoteException {
        ArrayList<Byte> enabledList = new ArrayList<>();
        for (int type : enabledTypes) {
            enabledList.add(Byte.valueOf((byte) type));
        }
        final MutableInt halResult = new MutableInt(1);
        final Mutable<android.hardware.broadcastradio.V2_0.ICloseHandle> hwCloseHandle = new Mutable<>();
        android.hardware.broadcastradio.V2_0.IAnnouncementListener hwListener = new AnonymousClass2(listener);
        synchronized (this.mService) {
            this.mService.registerAnnouncementListener(enabledList, hwListener, new IBroadcastRadio.registerAnnouncementListenerCallback() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$QlTfH9411GzmESnxSlsnKbLa8hw
                @Override // android.hardware.broadcastradio.V2_0.IBroadcastRadio.registerAnnouncementListenerCallback
                public final void onValues(int i, android.hardware.broadcastradio.V2_0.ICloseHandle iCloseHandle) {
                    RadioModule.lambda$addAnnouncementListener$5(halResult, hwCloseHandle, i, iCloseHandle);
                }
            });
        }
        Convert.throwOnError("addAnnouncementListener", halResult.value);
        return new ICloseHandle.Stub() { // from class: com.android.server.broadcastradio.hal2.RadioModule.3
            public void close() {
                try {
                    ((android.hardware.broadcastradio.V2_0.ICloseHandle) hwCloseHandle.value).close();
                } catch (RemoteException ex) {
                    Slog.e(RadioModule.TAG, "Failed closing announcement listener", ex);
                }
                hwCloseHandle.value = null;
            }
        };
    }

    /* JADX INFO: renamed from: com.android.server.broadcastradio.hal2.RadioModule$2, reason: invalid class name */
    class AnonymousClass2 extends android.hardware.broadcastradio.V2_0.IAnnouncementListener.Stub {
        final /* synthetic */ IAnnouncementListener val$listener;

        AnonymousClass2(IAnnouncementListener iAnnouncementListener) {
            this.val$listener = iAnnouncementListener;
        }

        @Override // android.hardware.broadcastradio.V2_0.IAnnouncementListener
        public void onListUpdated(ArrayList<Announcement> hwAnnouncements) throws RemoteException {
            this.val$listener.onListUpdated((List) hwAnnouncements.stream().map(new Function() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Convert.announcementFromHal((Announcement) obj);
                }
            }).collect(Collectors.toList()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void lambda$addAnnouncementListener$5(MutableInt halResult, Mutable hwCloseHandle, int result, android.hardware.broadcastradio.V2_0.ICloseHandle iCloseHandle) {
        halResult.value = result;
        hwCloseHandle.value = iCloseHandle;
    }

    Bitmap getImage(final int id) {
        byte[] rawImage;
        if (id == 0) {
            throw new IllegalArgumentException("Image ID is missing");
        }
        synchronized (this.mService) {
            List<Byte> rawList = (List) Utils.maybeRethrow(new Utils.FuncThrowingRemoteException() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$RadioModule$7jNXPMuvH-DQ1rLv9_WZ2s1UiPQ
                @Override // com.android.server.broadcastradio.hal2.Utils.FuncThrowingRemoteException
                public final Object exec() {
                    return this.f$0.lambda$getImage$6$RadioModule(id);
                }
            });
            rawImage = new byte[rawList.size()];
            for (int i = 0; i < rawList.size(); i++) {
                rawImage[i] = rawList.get(i).byteValue();
            }
        }
        if (rawImage.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(rawImage, 0, rawImage.length);
    }

    public /* synthetic */ ArrayList lambda$getImage$6$RadioModule(int id) throws RemoteException {
        return this.mService.getImage(id);
    }
}
