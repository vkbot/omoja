package com.android.server.location.gnss;

import android.content.Context;
import android.location.GnssAntennaInfo;
import android.location.IGnssAntennaInfoListener;
import android.os.Handler;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.location.CallerIdentity;
import com.android.server.location.RemoteListenerHelper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class GnssAntennaInfoProvider extends RemoteListenerHelper<Void, IGnssAntennaInfoListener> {
    private boolean mIsListeningStarted;
    private final GnssAntennaInfoProviderNative mNative;
    private static final String TAG = "GnssAntennaInfoProvider";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_is_antenna_info_supported();

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_start_antenna_info_listening();

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_stop_antenna_info_listening();

    protected GnssAntennaInfoProvider(Context context, Handler handler) {
        this(context, handler, new GnssAntennaInfoProviderNative());
    }

    public GnssAntennaInfoProvider(Context context, Handler handler, GnssAntennaInfoProviderNative aNative) {
        super(context, handler, TAG);
        this.mNative = aNative;
    }

    void resumeIfStarted() {
        if (DEBUG) {
            Log.d(TAG, "resumeIfStarted");
        }
        if (this.mIsListeningStarted) {
            this.mNative.startAntennaInfoListening();
        }
    }

    @Override // com.android.server.location.RemoteListenerHelper
    public boolean isAvailableInPlatform() {
        return this.mNative.isAntennaInfoSupported();
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected int registerWithService() {
        boolean started = this.mNative.startAntennaInfoListening();
        if (started) {
            this.mIsListeningStarted = true;
            return 0;
        }
        return 4;
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected void unregisterFromService() {
        boolean stopped = this.mNative.stopAntennaInfoListening();
        if (stopped) {
            this.mIsListeningStarted = false;
        }
    }

    public void onCapabilitiesUpdated(boolean isAntennaInfoSupported) {
        setSupported(isAntennaInfoSupported);
        updateResult();
    }

    public void onGpsEnabledChanged() {
        tryUpdateRegistrationWithService();
        updateResult();
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected RemoteListenerHelper.ListenerOperation<IGnssAntennaInfoListener> getHandlerOperation(int result) {
        return new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssAntennaInfoProvider$6tStkOUFQdyPwrIlenWNx1CLtUg
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) throws RemoteException {
                GnssAntennaInfoProvider.lambda$getHandlerOperation$0((IGnssAntennaInfoListener) iInterface, callerIdentity);
            }
        };
    }

    static /* synthetic */ void lambda$getHandlerOperation$0(IGnssAntennaInfoListener listener, CallerIdentity callerIdentity) throws RemoteException {
    }

    public void onGnssAntennaInfoAvailable(final List<GnssAntennaInfo> gnssAntennaInfos) {
        foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssAntennaInfoProvider$jWS_iJ6LE00DEMXMePHMZafshRk
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) throws RemoteException {
                this.f$0.lambda$onGnssAntennaInfoAvailable$1$GnssAntennaInfoProvider(gnssAntennaInfos, (IGnssAntennaInfoListener) iInterface, callerIdentity);
            }
        });
    }

    public /* synthetic */ void lambda$onGnssAntennaInfoAvailable$1$GnssAntennaInfoProvider(List gnssAntennaInfos, IGnssAntennaInfoListener listener, CallerIdentity callerIdentity) throws RemoteException {
        if (!hasPermission(this.mContext, callerIdentity)) {
            logPermissionDisabledEventNotReported(TAG, callerIdentity.packageName, "GNSS antenna info");
        } else {
            listener.onGnssAntennaInfoReceived(gnssAntennaInfos);
        }
    }

    public static class GnssAntennaInfoProviderNative {
        public boolean isAntennaInfoSupported() {
            return GnssAntennaInfoProvider.native_is_antenna_info_supported();
        }

        public boolean startAntennaInfoListening() {
            return GnssAntennaInfoProvider.native_start_antenna_info_listening();
        }

        public boolean stopAntennaInfoListening() {
            return GnssAntennaInfoProvider.native_stop_antenna_info_listening();
        }
    }
}
