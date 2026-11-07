package com.android.server.location.gnss;

import android.content.Context;
import android.location.GnssMeasurementCorrections;
import android.location.GnssRequest;
import android.location.IBatchedLocationCallback;
import android.location.IGnssAntennaInfoListener;
import android.location.IGnssMeasurementsListener;
import android.location.IGnssNavigationMessageListener;
import android.location.IGnssStatusListener;
import android.location.IGpsGeofenceHardware;
import android.location.INetInitiatedListener;
import android.location.Location;
import android.location.LocationManagerInternal;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import com.android.server.location.AppForegroundHelper;
import com.android.server.location.AppOpsHelper;
import com.android.server.location.CallerIdentity;
import com.android.server.location.LocationManagerServiceUtils;
import com.android.server.location.LocationUsageLogger;
import com.android.server.location.RemoteListenerHelper;
import com.android.server.location.SettingsHelper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class GnssManagerService {
    private static final String TAG = "GnssManagerService";
    private final AppForegroundHelper mAppForegroundHelper;
    private final AppOpsHelper mAppOpsHelper;
    private final Context mContext;
    private final ArrayMap<IBinder, LocationManagerServiceUtils.LinkedListener<Void, IGnssAntennaInfoListener>> mGnssAntennaInfoListeners;
    private final GnssAntennaInfoProvider mGnssAntennaInfoProvider;
    private IBatchedLocationCallback mGnssBatchingCallback;
    private LocationManagerServiceUtils.LinkedListener<Void, IBatchedLocationCallback> mGnssBatchingDeathCallback;
    private boolean mGnssBatchingInProgress;
    private final Object mGnssBatchingLock;
    private final GnssBatchingProvider mGnssBatchingProvider;
    private final GnssCapabilitiesProvider mGnssCapabilitiesProvider;
    private final GnssLocationProvider mGnssLocationProvider;
    private final GnssMeasurementCorrectionsProvider mGnssMeasurementCorrectionsProvider;
    private final ArrayMap<IBinder, LocationManagerServiceUtils.LinkedListener<GnssRequest, IGnssMeasurementsListener>> mGnssMeasurementsListeners;
    private final GnssMeasurementsProvider mGnssMeasurementsProvider;
    private final GnssLocationProvider.GnssMetricsProvider mGnssMetricsProvider;
    private final ArrayMap<IBinder, LocationManagerServiceUtils.LinkedListener<Void, IGnssNavigationMessageListener>> mGnssNavigationMessageListeners;
    private final GnssNavigationMessageProvider mGnssNavigationMessageProvider;
    private final ArrayMap<IBinder, LocationManagerServiceUtils.LinkedListener<Void, IGnssStatusListener>> mGnssStatusListeners;
    private final GnssStatusListenerHelper mGnssStatusProvider;
    private final GnssLocationProvider.GnssSystemInfoProvider mGnssSystemInfoProvider;
    private final IGpsGeofenceHardware mGpsGeofenceProxy;
    private LocationManagerInternal mLocationManagerInternal;
    private final LocationUsageLogger mLocationUsageLogger;
    private final INetInitiatedListener mNetInitiatedListener;
    private final SettingsHelper mSettingsHelper;

    public static boolean isGnssSupported() {
        return GnssLocationProvider.isSupported();
    }

    public GnssManagerService(Context context, AppOpsHelper appOpsHelper, SettingsHelper settingsHelper, AppForegroundHelper appForegroundHelper, LocationUsageLogger locationUsageLogger) {
        this(context, appOpsHelper, settingsHelper, appForegroundHelper, locationUsageLogger, null);
    }

    GnssManagerService(Context context, AppOpsHelper appOpsHelper, SettingsHelper settingsHelper, AppForegroundHelper appForegroundHelper, LocationUsageLogger locationUsageLogger, GnssLocationProvider gnssLocationProvider) {
        this.mGnssMeasurementsListeners = new ArrayMap<>();
        this.mGnssAntennaInfoListeners = new ArrayMap<>();
        this.mGnssNavigationMessageListeners = new ArrayMap<>();
        this.mGnssStatusListeners = new ArrayMap<>();
        this.mGnssBatchingLock = new Object();
        this.mGnssBatchingInProgress = false;
        Preconditions.checkState(isGnssSupported());
        this.mContext = context;
        this.mAppOpsHelper = appOpsHelper;
        this.mSettingsHelper = settingsHelper;
        this.mAppForegroundHelper = appForegroundHelper;
        this.mLocationUsageLogger = locationUsageLogger;
        gnssLocationProvider = gnssLocationProvider == null ? new GnssLocationProvider(this.mContext) : gnssLocationProvider;
        this.mGnssLocationProvider = gnssLocationProvider;
        this.mGnssStatusProvider = gnssLocationProvider.getGnssStatusProvider();
        this.mGnssMeasurementsProvider = this.mGnssLocationProvider.getGnssMeasurementsProvider();
        this.mGnssAntennaInfoProvider = this.mGnssLocationProvider.getGnssAntennaInfoProvider();
        this.mGnssMeasurementCorrectionsProvider = this.mGnssLocationProvider.getGnssMeasurementCorrectionsProvider();
        this.mGnssNavigationMessageProvider = this.mGnssLocationProvider.getGnssNavigationMessageProvider();
        this.mGnssSystemInfoProvider = this.mGnssLocationProvider.getGnssSystemInfoProvider();
        this.mGnssMetricsProvider = this.mGnssLocationProvider.getGnssMetricsProvider();
        this.mGnssCapabilitiesProvider = this.mGnssLocationProvider.getGnssCapabilitiesProvider();
        this.mGnssBatchingProvider = this.mGnssLocationProvider.getGnssBatchingProvider();
        this.mNetInitiatedListener = this.mGnssLocationProvider.getNetInitiatedListener();
        this.mGpsGeofenceProxy = this.mGnssLocationProvider.getGpsGeofenceProxy();
    }

    public synchronized void onSystemReady() {
        if (this.mLocationManagerInternal != null) {
            return;
        }
        this.mAppOpsHelper.onSystemReady();
        this.mSettingsHelper.onSystemReady();
        this.mAppForegroundHelper.onSystemReady();
        this.mLocationManagerInternal = (LocationManagerInternal) LocalServices.getService(LocationManagerInternal.class);
        this.mAppForegroundHelper.addListener(new AppForegroundHelper.AppForegroundListener() { // from class: com.android.server.location.gnss.-$$Lambda$GnssManagerService$de6v4jWKxQDC9J4FdGGrfKg2phA
            @Override // com.android.server.location.AppForegroundHelper.AppForegroundListener
            public final void onAppForegroundChanged(int i, boolean z) {
                this.f$0.onAppForegroundChanged(i, z);
            }
        });
    }

    public GnssLocationProvider getGnssLocationProvider() {
        return this.mGnssLocationProvider;
    }

    public IGpsGeofenceHardware getGpsGeofenceProxy() {
        return this.mGpsGeofenceProxy;
    }

    public int getGnssYearOfHardware() {
        return this.mGnssSystemInfoProvider.getGnssYearOfHardware();
    }

    public String getGnssHardwareModelName() {
        return this.mGnssSystemInfoProvider.getGnssHardwareModelName();
    }

    public long getGnssCapabilities() {
        return this.mGnssCapabilitiesProvider.getGnssCapabilities();
    }

    public int getGnssBatchSize(String packageName) {
        int batchSize;
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        synchronized (this.mGnssBatchingLock) {
            batchSize = this.mGnssBatchingProvider.getBatchSize();
        }
        return batchSize;
    }

    public boolean startGnssBatch(long periodNanos, boolean wakeOnFifoFull, String packageName, String featureId) {
        boolean zStart;
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        CallerIdentity identity = CallerIdentity.fromBinder(this.mContext, packageName, featureId);
        if (!this.mAppOpsHelper.checkLocationAccess(identity)) {
            return false;
        }
        synchronized (this.mGnssBatchingLock) {
            if (this.mGnssBatchingInProgress) {
                Log.e(TAG, "startGnssBatch unexpectedly called w/o stopping prior batch");
                stopGnssBatch();
            }
            this.mGnssBatchingInProgress = true;
            zStart = this.mGnssBatchingProvider.start(periodNanos, wakeOnFifoFull);
        }
        return zStart;
    }

    public boolean addGnssBatchingCallback(IBatchedLocationCallback callback, String packageName, String featureId) {
        boolean zLinkToListenerDeathNotificationLocked;
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        CallerIdentity identity = CallerIdentity.fromBinder(this.mContext, packageName, featureId);
        synchronized (this.mGnssBatchingLock) {
            this.mGnssBatchingCallback = callback;
            LocationManagerServiceUtils.LinkedListener<Void, IBatchedLocationCallback> linkedListener = new LocationManagerServiceUtils.LinkedListener<>(null, callback, identity, new Consumer() { // from class: com.android.server.location.gnss.-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$addGnssBatchingCallback$0$GnssManagerService((IBatchedLocationCallback) obj);
                }
            });
            this.mGnssBatchingDeathCallback = linkedListener;
            zLinkToListenerDeathNotificationLocked = linkedListener.linkToListenerDeathNotificationLocked(callback.asBinder());
        }
        return zLinkToListenerDeathNotificationLocked;
    }

    public /* synthetic */ void lambda$addGnssBatchingCallback$0$GnssManagerService(IBatchedLocationCallback listener) {
        stopGnssBatch();
        removeGnssBatchingCallback();
    }

    public void flushGnssBatch(String packageName) {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        synchronized (this.mGnssBatchingLock) {
            this.mGnssBatchingProvider.flush();
        }
    }

    public void removeGnssBatchingCallback() {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        synchronized (this.mGnssBatchingLock) {
            this.mGnssBatchingDeathCallback.unlinkFromListenerDeathNotificationLocked(this.mGnssBatchingCallback.asBinder());
            this.mGnssBatchingCallback = null;
            this.mGnssBatchingDeathCallback = null;
        }
    }

    public boolean stopGnssBatch() {
        boolean zStop;
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        synchronized (this.mGnssBatchingLock) {
            this.mGnssBatchingInProgress = false;
            zStop = this.mGnssBatchingProvider.stop();
        }
        return zStop;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppForegroundChanged(int uid, boolean foreground) {
        synchronized (this.mGnssMeasurementsListeners) {
            updateListenersOnForegroundChangedLocked(this.mGnssMeasurementsListeners, this.mGnssMeasurementsProvider, new Function() { // from class: com.android.server.location.gnss.-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IGnssMeasurementsListener.Stub.asInterface((IBinder) obj);
                }
            }, uid, foreground);
        }
        synchronized (this.mGnssNavigationMessageListeners) {
            updateListenersOnForegroundChangedLocked(this.mGnssNavigationMessageListeners, this.mGnssNavigationMessageProvider, new Function() { // from class: com.android.server.location.gnss.-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IGnssNavigationMessageListener.Stub.asInterface((IBinder) obj);
                }
            }, uid, foreground);
        }
        synchronized (this.mGnssStatusListeners) {
            updateListenersOnForegroundChangedLocked(this.mGnssStatusListeners, this.mGnssStatusProvider, new Function() { // from class: com.android.server.location.gnss.-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IGnssStatusListener.Stub.asInterface((IBinder) obj);
                }
            }, uid, foreground);
        }
        synchronized (this.mGnssAntennaInfoListeners) {
            updateListenersOnForegroundChangedLocked(this.mGnssAntennaInfoListeners, this.mGnssAntennaInfoProvider, new Function() { // from class: com.android.server.location.gnss.-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IGnssAntennaInfoListener.Stub.asInterface((IBinder) obj);
                }
            }, uid, foreground);
        }
    }

    private <TRequest, TListener extends IInterface> void updateListenersOnForegroundChangedLocked(Map<IBinder, LocationManagerServiceUtils.LinkedListener<TRequest, TListener>> gnssDataListeners, RemoteListenerHelper<TRequest, TListener> gnssDataProvider, Function<IBinder, TListener> mapBinderToListener, int uid, boolean foreground) {
        for (Map.Entry<IBinder, LocationManagerServiceUtils.LinkedListener<TRequest, TListener>> entry : gnssDataListeners.entrySet()) {
            LocationManagerServiceUtils.LinkedListener<TRequest, TListener> linkedListener = entry.getValue();
            CallerIdentity callerIdentity = linkedListener.getCallerIdentity();
            TRequest request = linkedListener.getRequest();
            if (callerIdentity.uid == uid) {
                TListener listener = mapBinderToListener.apply(entry.getKey());
                if (foreground || isThrottlingExempt(callerIdentity)) {
                    gnssDataProvider.addListener(request, listener, callerIdentity);
                } else {
                    gnssDataProvider.removeListener(listener);
                }
            }
        }
    }

    private <TListener extends IInterface, TRequest> boolean addGnssDataListenerLocked(TRequest request, TListener listener, String packageName, String featureId, RemoteListenerHelper<TRequest, TListener> gnssDataProvider, ArrayMap<IBinder, LocationManagerServiceUtils.LinkedListener<TRequest, TListener>> gnssDataListeners, Consumer<TListener> binderDeathCallback) {
        int i;
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        CallerIdentity identity = CallerIdentity.fromBinder(this.mContext, packageName, featureId);
        if (!this.mAppOpsHelper.checkLocationAccess(identity)) {
            return false;
        }
        LocationManagerServiceUtils.LinkedListener<TRequest, TListener> linkedListener = new LocationManagerServiceUtils.LinkedListener<>(request, listener, identity, binderDeathCallback);
        IBinder binder = listener.asBinder();
        if (!linkedListener.linkToListenerDeathNotificationLocked(binder)) {
            return false;
        }
        gnssDataListeners.put(binder, linkedListener);
        if (gnssDataProvider == this.mGnssMeasurementsProvider || gnssDataProvider == this.mGnssStatusProvider) {
            LocationUsageLogger locationUsageLogger = this.mLocationUsageLogger;
            if (gnssDataProvider == this.mGnssMeasurementsProvider) {
                i = 2;
            } else {
                i = 3;
            }
            locationUsageLogger.logLocationApiUsage(0, i, packageName, null, true, false, null, this.mAppForegroundHelper.getImportance(identity.uid));
        }
        if (this.mAppForegroundHelper.isAppForeground(identity.uid) || isThrottlingExempt(identity)) {
            gnssDataProvider.addListener(request, listener, identity);
            return true;
        }
        return true;
    }

    private <TRequest, TListener extends IInterface> void removeGnssDataListenerLocked(TListener listener, RemoteListenerHelper<TRequest, TListener> gnssDataProvider, ArrayMap<IBinder, LocationManagerServiceUtils.LinkedListener<TRequest, TListener>> gnssDataListeners) {
        int i;
        if (gnssDataProvider == null) {
            Log.e(TAG, "Can not remove GNSS data listener. GNSS data provider not available.");
            return;
        }
        IBinder binder = listener.asBinder();
        LocationManagerServiceUtils.LinkedListener<TRequest, TListener> linkedListener = gnssDataListeners.remove(binder);
        if (linkedListener == null) {
            return;
        }
        if (gnssDataProvider == this.mGnssMeasurementsProvider || gnssDataProvider == this.mGnssStatusProvider) {
            LocationUsageLogger locationUsageLogger = this.mLocationUsageLogger;
            if (gnssDataProvider == this.mGnssMeasurementsProvider) {
                i = 2;
            } else {
                i = 3;
            }
            locationUsageLogger.logLocationApiUsage(1, i, linkedListener.getCallerIdentity().packageName, null, true, false, null, this.mAppForegroundHelper.getImportance(Binder.getCallingUid()));
        }
        linkedListener.unlinkFromListenerDeathNotificationLocked(binder);
        gnssDataProvider.removeListener(listener);
    }

    public boolean registerGnssStatusCallback(IGnssStatusListener listener, String packageName, String featureId) {
        boolean zAddGnssDataListenerLocked;
        synchronized (this.mGnssStatusListeners) {
            zAddGnssDataListenerLocked = addGnssDataListenerLocked(null, listener, packageName, featureId, this.mGnssStatusProvider, this.mGnssStatusListeners, new Consumer() { // from class: com.android.server.location.gnss.-$$Lambda$WsssLeTVg_jaQ16K-SvqbRc0TV8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.unregisterGnssStatusCallback((IGnssStatusListener) obj);
                }
            });
        }
        return zAddGnssDataListenerLocked;
    }

    public void unregisterGnssStatusCallback(IGnssStatusListener listener) {
        synchronized (this.mGnssStatusListeners) {
            removeGnssDataListenerLocked(listener, this.mGnssStatusProvider, this.mGnssStatusListeners);
        }
    }

    public boolean addGnssMeasurementsListener(GnssRequest request, IGnssMeasurementsListener listener, String packageName, String featureId) {
        boolean zAddGnssDataListenerLocked;
        if (request != null && request.isFullTracking()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.LOCATION_HARDWARE", null);
        }
        synchronized (this.mGnssMeasurementsListeners) {
            zAddGnssDataListenerLocked = addGnssDataListenerLocked(request, listener, packageName, featureId, this.mGnssMeasurementsProvider, this.mGnssMeasurementsListeners, new Consumer() { // from class: com.android.server.location.gnss.-$$Lambda$FxAranobP2o6eVcPEOp8tzZYyLY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.removeGnssMeasurementsListener((IGnssMeasurementsListener) obj);
                }
            });
        }
        return zAddGnssDataListenerLocked;
    }

    public void injectGnssMeasurementCorrections(GnssMeasurementCorrections measurementCorrections, String packageName) {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        this.mGnssMeasurementCorrectionsProvider.injectGnssMeasurementCorrections(measurementCorrections);
    }

    public void removeGnssMeasurementsListener(IGnssMeasurementsListener listener) {
        synchronized (this.mGnssMeasurementsListeners) {
            removeGnssDataListenerLocked(listener, this.mGnssMeasurementsProvider, this.mGnssMeasurementsListeners);
        }
    }

    public boolean addGnssAntennaInfoListener(IGnssAntennaInfoListener listener, String packageName, String featureId) {
        boolean zAddGnssDataListenerLocked;
        synchronized (this.mGnssAntennaInfoListeners) {
            zAddGnssDataListenerLocked = addGnssDataListenerLocked(null, listener, packageName, featureId, this.mGnssAntennaInfoProvider, this.mGnssAntennaInfoListeners, new Consumer() { // from class: com.android.server.location.gnss.-$$Lambda$r0e-CQBWppHmS1rnJk0BvqOj_UE
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.removeGnssAntennaInfoListener((IGnssAntennaInfoListener) obj);
                }
            });
        }
        return zAddGnssDataListenerLocked;
    }

    public void removeGnssAntennaInfoListener(IGnssAntennaInfoListener listener) {
        synchronized (this.mGnssAntennaInfoListeners) {
            removeGnssDataListenerLocked(listener, this.mGnssAntennaInfoProvider, this.mGnssAntennaInfoListeners);
        }
    }

    public boolean addGnssNavigationMessageListener(IGnssNavigationMessageListener listener, String packageName, String featureId) {
        boolean zAddGnssDataListenerLocked;
        synchronized (this.mGnssNavigationMessageListeners) {
            zAddGnssDataListenerLocked = addGnssDataListenerLocked(null, listener, packageName, featureId, this.mGnssNavigationMessageProvider, this.mGnssNavigationMessageListeners, new Consumer() { // from class: com.android.server.location.gnss.-$$Lambda$139-CBKLG1EL-wg1T1KP8tgmIKg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.removeGnssNavigationMessageListener((IGnssNavigationMessageListener) obj);
                }
            });
        }
        return zAddGnssDataListenerLocked;
    }

    public void removeGnssNavigationMessageListener(IGnssNavigationMessageListener listener) {
        synchronized (this.mGnssNavigationMessageListeners) {
            removeGnssDataListenerLocked(listener, this.mGnssNavigationMessageProvider, this.mGnssNavigationMessageListeners);
        }
    }

    public void sendNiResponse(int notifId, int userResponse) {
        try {
            this.mNetInitiatedListener.sendNiResponse(notifId, userResponse);
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException in LocationManagerService.sendNiResponse");
        }
    }

    public void onReportLocation(List<Location> locations) {
        IBatchedLocationCallback gnssBatchingCallback;
        LocationManagerServiceUtils.LinkedListener<Void, IBatchedLocationCallback> gnssBatchingDeathCallback;
        synchronized (this.mGnssBatchingLock) {
            gnssBatchingCallback = this.mGnssBatchingCallback;
            gnssBatchingDeathCallback = this.mGnssBatchingDeathCallback;
        }
        if (gnssBatchingCallback == null || gnssBatchingDeathCallback == null) {
            return;
        }
        int userId = gnssBatchingDeathCallback.getCallerIdentity().userId;
        if (!this.mLocationManagerInternal.isProviderEnabledForUser("gps", userId)) {
            Log.w(TAG, "reportLocationBatch() called without user permission");
            return;
        }
        try {
            gnssBatchingCallback.onLocationBatch(locations);
        } catch (RemoteException e) {
            Log.e(TAG, "reportLocationBatch() failed", e);
        }
    }

    private boolean isThrottlingExempt(CallerIdentity callerIdentity) {
        boolean z = true;
        if (callerIdentity.uid == 1000 || this.mSettingsHelper.getBackgroundThrottlePackageWhitelist().contains(callerIdentity.packageName)) {
            return true;
        }
        synchronized (this) {
            if (this.mLocationManagerInternal == null) {
                z = false;
            }
            Preconditions.checkState(z);
        }
        return this.mLocationManagerInternal.isProviderPackage(callerIdentity.packageName);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        IndentingPrintWriter ipw = new IndentingPrintWriter(pw, "  ");
        if (args.length > 0 && args[0].equals("--gnssmetrics")) {
            GnssLocationProvider.GnssMetricsProvider gnssMetricsProvider = this.mGnssMetricsProvider;
            if (gnssMetricsProvider != null) {
                pw.append((CharSequence) gnssMetricsProvider.getGnssMetricsAsProtoString());
                return;
            }
            return;
        }
        ipw.println("GnssMeasurement Listeners:");
        ipw.increaseIndent();
        synchronized (this.mGnssMeasurementsListeners) {
            for (LocationManagerServiceUtils.LinkedListenerBase listener : this.mGnssMeasurementsListeners.values()) {
                ipw.println(listener);
            }
        }
        ipw.decreaseIndent();
        ipw.println("GnssNavigationMessage Listeners:");
        ipw.increaseIndent();
        synchronized (this.mGnssNavigationMessageListeners) {
            for (LocationManagerServiceUtils.LinkedListenerBase listener2 : this.mGnssNavigationMessageListeners.values()) {
                ipw.println(listener2);
            }
        }
        ipw.decreaseIndent();
        ipw.println("GnssStatus Listeners:");
        ipw.increaseIndent();
        synchronized (this.mGnssStatusListeners) {
            for (LocationManagerServiceUtils.LinkedListenerBase listener3 : this.mGnssStatusListeners.values()) {
                ipw.println(listener3);
            }
        }
        ipw.decreaseIndent();
        synchronized (this.mGnssBatchingLock) {
            if (this.mGnssBatchingInProgress) {
                ipw.println("GNSS batching in progress");
            }
        }
    }
}
