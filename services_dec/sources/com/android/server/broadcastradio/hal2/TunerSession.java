package com.android.server.broadcastradio.hal2;

import android.graphics.Bitmap;
import android.hardware.broadcastradio.V2_0.ConfigFlag;
import android.hardware.broadcastradio.V2_0.ITunerSession;
import android.hardware.radio.ITuner;
import android.hardware.radio.ITunerCallback;
import android.hardware.radio.ProgramList;
import android.hardware.radio.ProgramSelector;
import android.hardware.radio.RadioManager;
import android.os.RemoteException;
import android.util.MutableBoolean;
import android.util.MutableInt;
import android.util.Slog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class TunerSession extends ITuner.Stub {
    private static final String TAG = "BcRadio2Srv.session";
    private static final String kAudioDeviceName = "Radio tuner source";
    final ITunerCallback mCallback;
    private final ITunerSession mHwSession;
    private final RadioModule mModule;
    private final Object mLock = new Object();
    private boolean mIsClosed = false;
    private boolean mIsMuted = false;
    private ProgramInfoCache mProgramInfoCache = null;
    private RadioManager.BandConfig mDummyConfig = null;

    TunerSession(RadioModule module, ITunerSession hwSession, ITunerCallback callback) {
        Objects.requireNonNull(module);
        this.mModule = module;
        Objects.requireNonNull(hwSession);
        this.mHwSession = hwSession;
        Objects.requireNonNull(callback);
        this.mCallback = callback;
    }

    public void close() {
        close(null);
    }

    public void close(Integer error) {
        synchronized (this.mLock) {
            if (this.mIsClosed) {
                return;
            }
            if (error != null) {
                try {
                    this.mCallback.onError(error.intValue());
                } catch (RemoteException ex) {
                    Slog.w(TAG, "mCallback.onError() failed: ", ex);
                }
            }
            this.mIsClosed = true;
            this.mModule.onTunerSessionClosed(this);
        }
    }

    public boolean isClosed() {
        return this.mIsClosed;
    }

    private void checkNotClosedLocked() {
        if (this.mIsClosed) {
            throw new IllegalStateException("Tuner is closed, no further operations are allowed");
        }
    }

    public void setConfiguration(final RadioManager.BandConfig config) {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            Objects.requireNonNull(config);
            this.mDummyConfig = config;
            Slog.i(TAG, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.x");
            this.mModule.fanoutAidlCallback(new RadioModule.AidlCallbackRunnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$TunerSession$Q1jB_2_HaoKI-bs-SvZQ_1kfSsk
                @Override // com.android.server.broadcastradio.hal2.RadioModule.AidlCallbackRunnable
                public final void run(ITunerCallback iTunerCallback) {
                    iTunerCallback.onConfigurationChanged(config);
                }
            });
        }
    }

    public RadioManager.BandConfig getConfiguration() {
        RadioManager.BandConfig bandConfig;
        synchronized (this.mLock) {
            checkNotClosedLocked();
            bandConfig = this.mDummyConfig;
        }
        return bandConfig;
    }

    public void setMuted(boolean mute) {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            if (this.mIsMuted == mute) {
                return;
            }
            this.mIsMuted = mute;
            Slog.w(TAG, "Mute via RadioService is not implemented - please handle it via app");
        }
    }

    public boolean isMuted() {
        boolean z;
        synchronized (this.mLock) {
            checkNotClosedLocked();
            z = this.mIsMuted;
        }
        return z;
    }

    public void step(boolean directionDown, boolean skipSubChannel) throws RemoteException {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            int halResult = this.mHwSession.step(!directionDown);
            Convert.throwOnError("step", halResult);
        }
    }

    public void scan(boolean directionDown, boolean skipSubChannel) throws RemoteException {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            int halResult = this.mHwSession.scan(!directionDown, skipSubChannel);
            Convert.throwOnError("step", halResult);
        }
    }

    public void tune(ProgramSelector selector) throws RemoteException {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            int halResult = this.mHwSession.tune(Convert.programSelectorToHal(selector));
            Convert.throwOnError("tune", halResult);
        }
    }

    public void cancel() {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            final ITunerSession iTunerSession = this.mHwSession;
            Objects.requireNonNull(iTunerSession);
            Utils.maybeRethrow(new Utils.VoidFuncThrowingRemoteException() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8
                @Override // com.android.server.broadcastradio.hal2.Utils.VoidFuncThrowingRemoteException
                public final void exec() throws RemoteException {
                    iTunerSession.cancel();
                }
            });
        }
    }

    public void cancelAnnouncement() {
        Slog.i(TAG, "Announcements control doesn't involve cancelling at the HAL level in 2.x");
    }

    public Bitmap getImage(int id) {
        return this.mModule.getImage(id);
    }

    public boolean startBackgroundScan() {
        Slog.i(TAG, "Explicit background scan trigger is not supported with HAL 2.x");
        this.mModule.fanoutAidlCallback(new RadioModule.AidlCallbackRunnable() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs
            @Override // com.android.server.broadcastradio.hal2.RadioModule.AidlCallbackRunnable
            public final void run(ITunerCallback iTunerCallback) {
                iTunerCallback.onBackgroundScanComplete();
            }
        });
        return true;
    }

    public void startProgramListUpdates(ProgramList.Filter filter) throws RemoteException {
        if (filter == null) {
            filter = new ProgramList.Filter(new HashSet(), new HashSet(), true, false);
        }
        synchronized (this.mLock) {
            checkNotClosedLocked();
            this.mProgramInfoCache = new ProgramInfoCache(filter);
        }
        this.mModule.onTunerSessionProgramListFilterChanged(this);
    }

    ProgramList.Filter getProgramListFilter() {
        ProgramList.Filter filter;
        synchronized (this.mLock) {
            filter = this.mProgramInfoCache == null ? null : this.mProgramInfoCache.getFilter();
        }
        return filter;
    }

    void onMergedProgramListUpdateFromHal(ProgramList.Chunk mergedChunk) {
        synchronized (this.mLock) {
            if (this.mProgramInfoCache == null) {
                return;
            }
            List<ProgramList.Chunk> clientUpdateChunks = this.mProgramInfoCache.filterAndApplyChunk(mergedChunk);
            if (clientUpdateChunks == null) {
                try {
                    this.mCallback.onProgramListUpdated(mergedChunk);
                } catch (RemoteException ex) {
                    Slog.w(TAG, "onMergedProgramListUpdateFromHal mCallback.onProgramListUpdated() failed: ", ex);
                }
            }
            dispatchClientUpdateChunks(clientUpdateChunks);
        }
    }

    void updateProgramInfoFromHalCache(ProgramInfoCache halCache) {
        synchronized (this.mLock) {
            if (this.mProgramInfoCache == null) {
                return;
            }
            List<ProgramList.Chunk> clientUpdateChunks = this.mProgramInfoCache.filterAndUpdateFrom(halCache, true);
            dispatchClientUpdateChunks(clientUpdateChunks);
        }
    }

    private void dispatchClientUpdateChunks(List<ProgramList.Chunk> chunks) {
        if (chunks == null) {
            return;
        }
        for (ProgramList.Chunk chunk : chunks) {
            try {
                this.mCallback.onProgramListUpdated(chunk);
            } catch (RemoteException ex) {
                Slog.w(TAG, "mCallback.onProgramListUpdated() failed: ", ex);
            }
        }
    }

    public void stopProgramListUpdates() throws RemoteException {
        synchronized (this.mLock) {
            checkNotClosedLocked();
            this.mProgramInfoCache = null;
        }
        this.mModule.onTunerSessionProgramListFilterChanged(this);
    }

    public boolean isConfigFlagSupported(int flag) {
        try {
            isConfigFlagSet(flag);
            return true;
        } catch (IllegalStateException e) {
            return true;
        } catch (UnsupportedOperationException e2) {
            return false;
        }
    }

    public boolean isConfigFlagSet(int flag) {
        boolean z;
        Slog.v(TAG, "isConfigFlagSet " + ConfigFlag.toString(flag));
        synchronized (this.mLock) {
            checkNotClosedLocked();
            final MutableInt halResult = new MutableInt(1);
            final MutableBoolean flagState = new MutableBoolean(false);
            try {
                this.mHwSession.isConfigFlagSet(flag, new ITunerSession.isConfigFlagSetCallback() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw
                    @Override // android.hardware.broadcastradio.V2_0.ITunerSession.isConfigFlagSetCallback
                    public final void onValues(int i, boolean z2) {
                        TunerSession.lambda$isConfigFlagSet$2(halResult, flagState, i, z2);
                    }
                });
                Convert.throwOnError("isConfigFlagSet", halResult.value);
                z = flagState.value;
            } catch (RemoteException ex) {
                throw new RuntimeException("Failed to check flag " + ConfigFlag.toString(flag), ex);
            }
        }
        return z;
    }

    static /* synthetic */ void lambda$isConfigFlagSet$2(MutableInt halResult, MutableBoolean flagState, int result, boolean value) {
        halResult.value = result;
        flagState.value = value;
    }

    public void setConfigFlag(int flag, boolean value) throws RemoteException {
        Slog.v(TAG, "setConfigFlag " + ConfigFlag.toString(flag) + " = " + value);
        synchronized (this.mLock) {
            checkNotClosedLocked();
            int halResult = this.mHwSession.setConfigFlag(flag, value);
            Convert.throwOnError("setConfigFlag", halResult);
        }
    }

    public Map setParameters(final Map parameters) {
        Map<String, String> mapVendorInfoFromHal;
        synchronized (this.mLock) {
            checkNotClosedLocked();
            mapVendorInfoFromHal = Convert.vendorInfoFromHal((List) Utils.maybeRethrow(new Utils.FuncThrowingRemoteException() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg
                @Override // com.android.server.broadcastradio.hal2.Utils.FuncThrowingRemoteException
                public final Object exec() {
                    return this.f$0.lambda$setParameters$3$TunerSession(parameters);
                }
            }));
        }
        return mapVendorInfoFromHal;
    }

    public /* synthetic */ ArrayList lambda$setParameters$3$TunerSession(Map parameters) throws RemoteException {
        return this.mHwSession.setParameters(Convert.vendorInfoToHal(parameters));
    }

    public Map getParameters(final List<String> keys) {
        Map<String, String> mapVendorInfoFromHal;
        synchronized (this.mLock) {
            checkNotClosedLocked();
            mapVendorInfoFromHal = Convert.vendorInfoFromHal((List) Utils.maybeRethrow(new Utils.FuncThrowingRemoteException() { // from class: com.android.server.broadcastradio.hal2.-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0
                @Override // com.android.server.broadcastradio.hal2.Utils.FuncThrowingRemoteException
                public final Object exec() {
                    return this.f$0.lambda$getParameters$4$TunerSession(keys);
                }
            }));
        }
        return mapVendorInfoFromHal;
    }

    public /* synthetic */ ArrayList lambda$getParameters$4$TunerSession(List keys) throws RemoteException {
        return this.mHwSession.getParameters(Convert.listToArrayList(keys));
    }
}
