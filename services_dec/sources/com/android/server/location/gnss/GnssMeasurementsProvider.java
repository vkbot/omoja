package com.android.server.location.gnss;

import android.content.Context;
import android.location.GnssMeasurementsEvent;
import android.location.GnssRequest;
import android.location.IGnssMeasurementsListener;
import android.os.Handler;
import android.os.IInterface;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.android.server.location.CallerIdentity;
import com.android.server.location.RemoteListenerHelper;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class GnssMeasurementsProvider extends RemoteListenerHelper<GnssRequest, IGnssMeasurementsListener> {
    private final GnssMeasurementProviderNative mNative;
    private boolean mStartedCollection;
    private boolean mStartedFullTracking;
    private static final String TAG = "GnssMeasProvider";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_is_measurement_supported();

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_start_measurement_collection(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_stop_measurement_collection();

    protected GnssMeasurementsProvider(Context context, Handler handler) {
        this(context, handler, new GnssMeasurementProviderNative());
    }

    public GnssMeasurementsProvider(Context context, Handler handler, GnssMeasurementProviderNative aNative) {
        super(context, handler, TAG);
        this.mNative = aNative;
    }

    void resumeIfStarted() {
        if (DEBUG) {
            Log.d(TAG, "resumeIfStarted");
        }
        if (this.mStartedCollection) {
            this.mNative.startMeasurementCollection(this.mStartedFullTracking);
        }
    }

    @Override // com.android.server.location.RemoteListenerHelper
    public boolean isAvailableInPlatform() {
        return this.mNative.isMeasurementSupported();
    }

    private boolean getMergedFullTracking() {
        int devOptions = Settings.Secure.getInt(this.mContext.getContentResolver(), "development_settings_enabled", 0);
        int enableFullTracking = Settings.Global.getInt(this.mContext.getContentResolver(), "enable_gnss_raw_meas_full_tracking", 0);
        boolean enableFullTrackingBySetting = devOptions == 1 && enableFullTracking == 1;
        if (enableFullTrackingBySetting) {
            return true;
        }
        synchronized (this.mListenerMap) {
            Iterator<RemoteListenerHelper<TRequest, TListener>.IdentifiedListener> it = this.mListenerMap.values().iterator();
            while (it.hasNext()) {
                GnssRequest request = (GnssRequest) it.next().getRequest();
                if (request != null && request.isFullTracking()) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected int registerWithService() {
        boolean enableFullTracking = getMergedFullTracking();
        boolean result = this.mNative.startMeasurementCollection(enableFullTracking);
        if (result) {
            this.mStartedCollection = true;
            this.mStartedFullTracking = enableFullTracking;
            return 0;
        }
        return 4;
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected void unregisterFromService() {
        boolean stopped = this.mNative.stopMeasurementCollection();
        if (stopped) {
            this.mStartedCollection = false;
        }
    }

    public void onMeasurementsAvailable(final GnssMeasurementsEvent event) {
        foreach(new RemoteListenerHelper.ListenerOperation() { // from class: com.android.server.location.gnss.-$$Lambda$GnssMeasurementsProvider$MwKCr2bnxyNYMRRxCkNEyvhkEpg
            @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
            public final void execute(IInterface iInterface, CallerIdentity callerIdentity) throws RemoteException {
                this.f$0.lambda$onMeasurementsAvailable$0$GnssMeasurementsProvider(event, (IGnssMeasurementsListener) iInterface, callerIdentity);
            }
        });
    }

    public /* synthetic */ void lambda$onMeasurementsAvailable$0$GnssMeasurementsProvider(GnssMeasurementsEvent event, IGnssMeasurementsListener listener, CallerIdentity callerIdentity) throws RemoteException {
        if (!hasPermission(this.mContext, callerIdentity)) {
            logPermissionDisabledEventNotReported(TAG, callerIdentity.packageName, "GNSS measurements");
        } else {
            listener.onGnssMeasurementsReceived(event);
        }
    }

    public void onCapabilitiesUpdated(boolean isGnssMeasurementsSupported) {
        setSupported(isGnssMeasurementsSupported);
        updateResult();
    }

    public void onGpsEnabledChanged() {
        tryUpdateRegistrationWithService();
        updateResult();
    }

    @Override // com.android.server.location.RemoteListenerHelper
    protected RemoteListenerHelper.ListenerOperation<IGnssMeasurementsListener> getHandlerOperation(int result) {
        int status;
        switch (result) {
            case 0:
                status = 1;
                break;
            case 1:
            case 2:
            case 4:
                status = 0;
                break;
            case 3:
                status = 2;
                break;
            case 5:
                return null;
            case 6:
                status = 3;
                break;
            default:
                Log.v(TAG, "Unhandled addListener result: " + result);
                return null;
        }
        return new StatusChangedOperation(status);
    }

    private static class StatusChangedOperation implements RemoteListenerHelper.ListenerOperation<IGnssMeasurementsListener> {
        private final int mStatus;

        public StatusChangedOperation(int status) {
            this.mStatus = status;
        }

        @Override // com.android.server.location.RemoteListenerHelper.ListenerOperation
        public void execute(IGnssMeasurementsListener listener, CallerIdentity callerIdentity) throws RemoteException {
            listener.onStatusChanged(this.mStatus);
        }
    }

    public static class GnssMeasurementProviderNative {
        public boolean isMeasurementSupported() {
            return GnssMeasurementsProvider.native_is_measurement_supported();
        }

        public boolean startMeasurementCollection(boolean enableFullTracking) {
            return GnssMeasurementsProvider.native_start_measurement_collection(enableFullTracking);
        }

        public boolean stopMeasurementCollection() {
            return GnssMeasurementsProvider.native_stop_measurement_collection();
        }
    }
}
