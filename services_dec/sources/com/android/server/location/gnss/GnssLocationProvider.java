package com.android.server.location.gnss;

import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.hardware.location.GeofenceHardwareImpl;
import android.location.FusedBatchOptions;
import android.location.GnssAntennaInfo;
import android.location.GnssMeasurementsEvent;
import android.location.GnssNavigationMessage;
import android.location.GnssStatus;
import android.location.IGpsGeofenceHardware;
import android.location.INetInitiatedListener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.PowerSaveState;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.WorkSource;
import android.provider.Settings;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Log;
import android.util.TimeUtils;
import com.android.internal.app.IBatteryStats;
import com.android.internal.location.GpsNetInitiatedHandler;
import com.android.internal.location.ProviderProperties;
import com.android.internal.location.ProviderRequest;
import com.android.internal.location.gnssmetrics.GnssMetrics;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.DeviceIdleInternal;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.UiModeManagerService;
import com.android.server.location.AbstractLocationProvider;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class GnssLocationProvider extends AbstractLocationProvider implements NtpTimeHelper.InjectNtpTimeCallback, GnssSatelliteBlacklistHelper.GnssSatelliteBlacklistCallback {
    private static final int AGPS_REF_LOCATION_TYPE_GSM_CELLID = 1;
    private static final int AGPS_REF_LOCATION_TYPE_UMTS_CELLID = 2;
    private static final int AGPS_RIL_REQUEST_SETID_IMSI = 1;
    private static final int AGPS_RIL_REQUEST_SETID_MSISDN = 2;
    private static final int AGPS_SETID_TYPE_IMSI = 1;
    private static final int AGPS_SETID_TYPE_MSISDN = 2;
    private static final int AGPS_SETID_TYPE_NONE = 0;
    private static final int AGPS_SUPL_MODE_MSA = 2;
    private static final int AGPS_SUPL_MODE_MSB = 1;
    private static final String ALARM_TIMEOUT = "com.android.internal.location.ALARM_TIMEOUT";
    private static final String ALARM_WAKEUP = "com.android.internal.location.ALARM_WAKEUP";
    private static final String DOWNLOAD_EXTRA_WAKELOCK_KEY = "GnssLocationProviderPsdsDownload";
    private static final int DOWNLOAD_PSDS_DATA = 6;
    private static final int DOWNLOAD_PSDS_DATA_FINISHED = 11;
    private static final long DOWNLOAD_PSDS_DATA_TIMEOUT_MS = 60000;
    private static final int ELAPSED_REALTIME_HAS_TIMESTAMP_NS = 1;
    private static final int ELAPSED_REALTIME_HAS_TIME_UNCERTAINTY_NS = 2;
    private static final int EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER = 3;
    public static final int GPS_CAPABILITY_ANTENNA_INFO = 2048;
    public static final int GPS_CAPABILITY_GEOFENCING = 32;
    public static final int GPS_CAPABILITY_LOW_POWER_MODE = 256;
    public static final int GPS_CAPABILITY_MEASUREMENTS = 64;
    public static final int GPS_CAPABILITY_MEASUREMENT_CORRECTIONS = 1024;
    private static final int GPS_CAPABILITY_MSA = 4;
    private static final int GPS_CAPABILITY_MSB = 2;
    public static final int GPS_CAPABILITY_NAV_MESSAGES = 128;
    private static final int GPS_CAPABILITY_ON_DEMAND_TIME = 16;
    public static final int GPS_CAPABILITY_SATELLITE_BLACKLIST = 512;
    private static final int GPS_CAPABILITY_SCHEDULING = 1;
    private static final int GPS_CAPABILITY_SINGLE_SHOT = 8;
    private static final int GPS_DELETE_ALL = 65535;
    private static final int GPS_DELETE_ALMANAC = 2;
    private static final int GPS_DELETE_CELLDB_INFO = 32768;
    private static final int GPS_DELETE_EPHEMERIS = 1;
    private static final int GPS_DELETE_HEALTH = 64;
    private static final int GPS_DELETE_IONO = 16;
    private static final int GPS_DELETE_POSITION = 4;
    private static final int GPS_DELETE_RTI = 1024;
    private static final int GPS_DELETE_SADATA = 512;
    private static final int GPS_DELETE_SVDIR = 128;
    private static final int GPS_DELETE_SVSTEER = 256;
    private static final int GPS_DELETE_TIME = 8;
    private static final int GPS_DELETE_UTC = 32;
    private static final int GPS_GEOFENCE_AVAILABLE = 2;
    private static final int GPS_GEOFENCE_ERROR_GENERIC = -149;
    private static final int GPS_GEOFENCE_ERROR_ID_EXISTS = -101;
    private static final int GPS_GEOFENCE_ERROR_ID_UNKNOWN = -102;
    private static final int GPS_GEOFENCE_ERROR_INVALID_TRANSITION = -103;
    private static final int GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES = 100;
    private static final int GPS_GEOFENCE_OPERATION_SUCCESS = 0;
    private static final int GPS_GEOFENCE_UNAVAILABLE = 1;
    private static final int GPS_POLLING_THRESHOLD_INTERVAL = 10000;
    private static final int GPS_POSITION_MODE_MS_ASSISTED = 2;
    private static final int GPS_POSITION_MODE_MS_BASED = 1;
    private static final int GPS_POSITION_MODE_STANDALONE = 0;
    private static final int GPS_POSITION_RECURRENCE_PERIODIC = 0;
    private static final int GPS_POSITION_RECURRENCE_SINGLE = 1;
    private static final int GPS_STATUS_ENGINE_OFF = 4;
    private static final int GPS_STATUS_ENGINE_ON = 3;
    private static final int GPS_STATUS_NONE = 0;
    private static final int GPS_STATUS_SESSION_BEGIN = 1;
    private static final int GPS_STATUS_SESSION_END = 2;
    private static final int INITIALIZE_HANDLER = 13;
    private static final int INJECT_NTP_TIME = 5;
    private static final float ITAR_SPEED_LIMIT_METERS_PER_SECOND = 400.0f;
    private static final int LOCATION_HAS_ALTITUDE = 2;
    private static final int LOCATION_HAS_BEARING = 8;
    private static final int LOCATION_HAS_BEARING_ACCURACY = 128;
    private static final int LOCATION_HAS_HORIZONTAL_ACCURACY = 16;
    private static final int LOCATION_HAS_LAT_LONG = 1;
    private static final int LOCATION_HAS_SPEED = 4;
    private static final int LOCATION_HAS_SPEED_ACCURACY = 64;
    private static final int LOCATION_HAS_VERTICAL_ACCURACY = 32;
    private static final int LOCATION_INVALID = 0;
    private static final long LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS = 15000;
    private static final long LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS = 2000;
    private static final long LOCATION_UPDATE_DURATION_MILLIS = 10000;
    private static final long LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS = 1000;
    private static final long MAX_RETRY_INTERVAL = 14400000;
    private static final int NO_FIX_TIMEOUT = 60000;
    private static final int REPORT_LOCATION = 17;
    private static final int REPORT_SV_STATUS = 18;
    private static final int REQUEST_LOCATION = 16;
    private static final long RETRY_INTERVAL = 300000;
    private static final int SET_REQUEST = 3;
    private static final int STATE_DOWNLOADING = 1;
    private static final int STATE_IDLE = 2;
    private static final int STATE_PENDING_NETWORK = 0;
    private static final String TAG = "GnssLocationProvider";
    private static final int TCP_MAX_PORT = 65535;
    private static final int TCP_MIN_PORT = 0;
    private static final int UPDATE_LOW_POWER_MODE = 1;
    private static final String WAKELOCK_KEY = "GnssLocationProvider";
    private static final long WAKELOCK_TIMEOUT_MILLIS = 30000;
    private final AlarmManager mAlarmManager;
    private final AppOpsManager mAppOps;
    private final IBatteryStats mBatteryStats;
    private final BroadcastReceiver mBroadcastReceiver;
    private String mC2KServerHost;
    private int mC2KServerPort;
    private WorkSource mClientSource;
    private final Context mContext;
    private final DeviceIdleInternal.StationaryListener mDeviceIdleStationaryListener;
    private boolean mDisableGpsForPowerManager;
    private int mDownloadPsdsDataPending;
    private final PowerManager.WakeLock mDownloadPsdsWakeLock;
    private int mFixInterval;
    private long mFixRequestTime;
    private final LocationChangeListener mFusedLocationListener;
    private GeofenceHardwareImpl mGeofenceHardwareImpl;
    private final GnssAntennaInfoProvider mGnssAntennaInfoProvider;
    private final GnssBatchingProvider mGnssBatchingProvider;
    private final GnssCapabilitiesProvider mGnssCapabilitiesProvider;
    private GnssConfiguration mGnssConfiguration;
    private final GnssGeofenceProvider mGnssGeofenceProvider;
    private final GnssMeasurementCorrectionsProvider mGnssMeasurementCorrectionsProvider;
    private final GnssMeasurementsProvider mGnssMeasurementsProvider;
    private GnssMetrics mGnssMetrics;
    private final GnssNavigationMessageProvider mGnssNavigationMessageProvider;
    private final GnssStatusListenerHelper mGnssStatusListenerHelper;
    private GnssVisibilityControl mGnssVisibilityControl;
    private boolean mGpsEnabled;
    private Handler mHandler;
    private volatile String mHardwareModelName;
    private volatile int mHardwareYear;
    private volatile boolean mIsDeviceStationary;
    private volatile boolean mItarSpeedLimitExceeded;
    private long mLastFixTime;
    private GnssPositionMode mLastPositionMode;
    private final LocationExtras mLocationExtras;
    private final Object mLock;
    private final Looper mLooper;
    private boolean mLowPowerMode;
    private final GpsNetInitiatedHandler mNIHandler;
    private boolean mNavigating;
    private final INetInitiatedListener mNetInitiatedListener;
    private final GnssNetworkConnectivityHandler mNetworkConnectivityHandler;
    private final LocationChangeListener mNetworkLocationListener;
    private byte[] mNmeaBuffer;
    private final NtpTimeHelper mNtpTimeHelper;
    private int mPositionMode;
    private final PowerManager mPowerManager;
    private ProviderRequest mProviderRequest;
    private final ExponentialBackOff mPsdsBackOff;
    private boolean mShutdown;
    private boolean mStarted;
    private long mStartedChangedElapsedRealtime;
    private boolean mSuplEsEnabled;
    private String mSuplServerHost;
    private int mSuplServerPort;
    private boolean mSupportsPsds;
    private int mTimeToFirstFix;
    private final PendingIntent mTimeoutIntent;
    private volatile int mTopHalCapabilities;
    private final PowerManager.WakeLock mWakeLock;
    private final PendingIntent mWakeupIntent;
    private WorkSource mWorkSource;
    private static final boolean DEBUG = Log.isLoggable("GnssLocationProvider", 3);
    private static final boolean VERBOSE = Log.isLoggable("GnssLocationProvider", 2);
    private static final ProviderProperties PROPERTIES = new ProviderProperties(false, true, false, false, true, true, true, 3, 1);
    private static boolean sIsInitialized = false;
    private static boolean sStaticTestOverride = false;

    public interface GnssMetricsProvider {
        String getGnssMetricsAsProtoString();
    }

    public interface GnssSystemInfoProvider {
        String getGnssHardwareModelName();

        int getGnssYearOfHardware();
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    private @interface NativeEntryPoint {
    }

    private static native void class_init_native();

    private native void native_agps_ni_message(byte[] bArr, int i);

    private native void native_agps_set_id(int i, String str);

    private native void native_agps_set_ref_location_cellid(int i, int i2, int i3, int i4, int i5);

    private native void native_cleanup();

    private native void native_delete_aiding_data(int i);

    private native String native_get_internal_state();

    private native boolean native_init();

    private static native void native_init_once(boolean z);

    private native void native_inject_best_location(int i, double d, double d2, double d3, float f, float f2, float f3, float f4, float f5, float f6, long j, int i2, long j2, double d4);

    private native void native_inject_location(double d, double d2, float f);

    private native void native_inject_psds_data(byte[] bArr, int i);

    private native void native_inject_time(long j, long j2, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean native_is_gnss_visibility_control_supported();

    private static native boolean native_is_supported();

    private native int native_read_nmea(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_send_ni_response(int i, int i2);

    private native void native_set_agps_server(int i, String str, int i2);

    private native boolean native_set_position_mode(int i, int i2, int i3, int i4, int i5, boolean z);

    private native boolean native_start();

    private native boolean native_stop();

    private native boolean native_supports_psds();

    private static class GpsRequest {
        public ProviderRequest request;
        public WorkSource source;

        public GpsRequest(ProviderRequest request, WorkSource source) {
            this.request = request;
            this.source = source;
        }
    }

    private static class LocationExtras {
        private final Bundle mBundle = new Bundle();
        private int mMaxCn0;
        private int mMeanCn0;
        private int mSvCount;

        public void set(int svCount, int meanCn0, int maxCn0) {
            synchronized (this) {
                this.mSvCount = svCount;
                this.mMeanCn0 = meanCn0;
                this.mMaxCn0 = maxCn0;
            }
            setBundle(this.mBundle);
        }

        public void reset() {
            set(0, 0, 0);
        }

        public void setBundle(Bundle extras) {
            if (extras != null) {
                synchronized (this) {
                    extras.putInt("satellites", this.mSvCount);
                    extras.putInt("meanCn0", this.mMeanCn0);
                    extras.putInt("maxCn0", this.mMaxCn0);
                }
            }
        }

        public Bundle getBundle() {
            Bundle bundle;
            synchronized (this) {
                bundle = new Bundle(this.mBundle);
            }
            return bundle;
        }
    }

    public GnssStatusListenerHelper getGnssStatusProvider() {
        return this.mGnssStatusListenerHelper;
    }

    public IGpsGeofenceHardware getGpsGeofenceProxy() {
        return this.mGnssGeofenceProvider;
    }

    public GnssMeasurementsProvider getGnssMeasurementsProvider() {
        return this.mGnssMeasurementsProvider;
    }

    public GnssMeasurementCorrectionsProvider getGnssMeasurementCorrectionsProvider() {
        return this.mGnssMeasurementCorrectionsProvider;
    }

    public GnssAntennaInfoProvider getGnssAntennaInfoProvider() {
        return this.mGnssAntennaInfoProvider;
    }

    public GnssNavigationMessageProvider getGnssNavigationMessageProvider() {
        return this.mGnssNavigationMessageProvider;
    }

    public /* synthetic */ void lambda$new$0$GnssLocationProvider(boolean isStationary) {
        this.mIsDeviceStationary = isStationary;
        this.mHandler.sendEmptyMessage(1);
    }

    public /* synthetic */ void lambda$onUpdateSatelliteBlacklist$1$GnssLocationProvider(int[] constellations, int[] svids) {
        this.mGnssConfiguration.setSatelliteBlacklist(constellations, svids);
    }

    @Override // com.android.server.location.gnss.GnssSatelliteBlacklistHelper.GnssSatelliteBlacklistCallback
    public void onUpdateSatelliteBlacklist(final int[] constellations, final int[] svids) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onUpdateSatelliteBlacklist$1$GnssLocationProvider(constellations, svids);
            }
        });
        this.mGnssMetrics.resetConstellationTypes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void subscriptionOrCarrierConfigChanged() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "received SIM related action: ");
        }
        TelephonyManager phone = (TelephonyManager) this.mContext.getSystemService("phone");
        CarrierConfigManager configManager = (CarrierConfigManager) this.mContext.getSystemService("carrier_config");
        int ddSubId = SubscriptionManager.getDefaultDataSubscriptionId();
        if (SubscriptionManager.isValidSubscriptionId(ddSubId)) {
            phone = phone.createForSubscriptionId(ddSubId);
        }
        String mccMnc = phone.getSimOperator();
        boolean isKeepLppProfile = false;
        if (!TextUtils.isEmpty(mccMnc)) {
            if (DEBUG) {
                Log.d("GnssLocationProvider", "SIM MCC/MNC is available: " + mccMnc);
            }
            if (configManager != null) {
                PersistableBundle b = SubscriptionManager.isValidSubscriptionId(ddSubId) ? configManager.getConfigForSubId(ddSubId) : null;
                if (b != null) {
                    isKeepLppProfile = b.getBoolean("gps.persist_lpp_mode_bool");
                }
            }
            if (!isKeepLppProfile) {
                SystemProperties.set("persist.sys.gps.lpp", "");
            } else {
                this.mGnssConfiguration.loadPropertiesFromCarrierConfig();
                String lpp_profile = this.mGnssConfiguration.getLppProfile();
                if (lpp_profile != null) {
                    SystemProperties.set("persist.sys.gps.lpp", lpp_profile);
                }
            }
            reloadGpsProperties();
            return;
        }
        if (DEBUG) {
            Log.d("GnssLocationProvider", "SIM MCC/MNC is still not available");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLowPowerMode() {
        boolean z = false;
        boolean disableGpsForPowerManager = this.mPowerManager.isDeviceIdleMode() && this.mIsDeviceStationary;
        PowerSaveState result = this.mPowerManager.getPowerSaveState(1);
        int i = result.locationMode;
        if (i == 1 || i == 2) {
            if (result.batterySaverEnabled && !this.mPowerManager.isInteractive()) {
                z = true;
            }
            disableGpsForPowerManager |= z;
        }
        if (disableGpsForPowerManager != this.mDisableGpsForPowerManager) {
            this.mDisableGpsForPowerManager = disableGpsForPowerManager;
            updateEnabled();
            updateRequirements();
        }
    }

    public static void setIsSupportedForTest(boolean override) {
        sStaticTestOverride = override;
    }

    public static boolean isSupported() {
        if (sStaticTestOverride) {
            return true;
        }
        ensureInitialized();
        return native_is_supported();
    }

    private static synchronized void ensureInitialized() {
        if (!sIsInitialized) {
            class_init_native();
        }
        sIsInitialized = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadGpsProperties() {
        this.mGnssConfiguration.reloadGpsProperties();
        setSuplHostPort();
        this.mC2KServerHost = this.mGnssConfiguration.getC2KHost();
        this.mC2KServerPort = this.mGnssConfiguration.getC2KPort(0);
        this.mNIHandler.setEmergencyExtensionSeconds(this.mGnssConfiguration.getEsExtensionSec());
        boolean z = this.mGnssConfiguration.getSuplEs(0) == 1;
        this.mSuplEsEnabled = z;
        this.mNIHandler.setSuplEsEnabled(z);
        GnssVisibilityControl gnssVisibilityControl = this.mGnssVisibilityControl;
        if (gnssVisibilityControl != null) {
            gnssVisibilityControl.onConfigurationUpdated(this.mGnssConfiguration);
        }
    }

    public GnssLocationProvider(Context context) {
        super(FgThread.getExecutor(), context);
        this.mLock = new Object();
        this.mPsdsBackOff = new ExponentialBackOff(300000L, 14400000L);
        this.mDownloadPsdsDataPending = 0;
        this.mFixInterval = 1000;
        this.mLowPowerMode = false;
        this.mFixRequestTime = 0L;
        this.mTimeToFirstFix = 0;
        this.mWorkSource = null;
        this.mDisableGpsForPowerManager = false;
        this.mIsDeviceStationary = false;
        this.mSuplServerPort = 0;
        this.mSuplEsEnabled = false;
        this.mLocationExtras = new LocationExtras();
        this.mNetworkLocationListener = new NetworkLocationListener();
        this.mFusedLocationListener = new FusedLocationListener();
        this.mClientSource = new WorkSource();
        this.mHardwareYear = 0;
        this.mItarSpeedLimitExceeded = false;
        this.mDeviceIdleStationaryListener = new DeviceIdleInternal.StationaryListener() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g
            public final void onDeviceStationaryChanged(boolean z) {
                this.f$0.lambda$new$0$GnssLocationProvider(z);
            }
        };
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.location.gnss.GnssLocationProvider.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (GnssLocationProvider.DEBUG) {
                    Log.d("GnssLocationProvider", "receive broadcast intent, action: " + action);
                }
                if (action == null) {
                    return;
                }
                switch (action) {
                    case "com.android.internal.location.ALARM_WAKEUP":
                        GnssLocationProvider.this.startNavigating();
                        return;
                    case "com.android.internal.location.ALARM_TIMEOUT":
                        GnssLocationProvider.this.hibernate();
                        return;
                    case "android.os.action.DEVICE_IDLE_MODE_CHANGED":
                        DeviceIdleInternal deviceIdleService = (DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class);
                        if (GnssLocationProvider.this.mPowerManager.isDeviceIdleMode()) {
                            deviceIdleService.registerStationaryListener(GnssLocationProvider.this.mDeviceIdleStationaryListener);
                            break;
                        } else {
                            deviceIdleService.unregisterStationaryListener(GnssLocationProvider.this.mDeviceIdleStationaryListener);
                            break;
                        }
                        break;
                    case "android.os.action.POWER_SAVE_MODE_CHANGED":
                    case "android.intent.action.SCREEN_OFF":
                    case "android.intent.action.SCREEN_ON":
                        break;
                    case "android.telephony.action.CARRIER_CONFIG_CHANGED":
                    case "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED":
                        GnssLocationProvider.this.subscriptionOrCarrierConfigChanged();
                        return;
                    default:
                        return;
                }
                GnssLocationProvider.this.mHandler.sendEmptyMessage(1);
            }
        };
        this.mNetInitiatedListener = new INetInitiatedListener.Stub() { // from class: com.android.server.location.gnss.GnssLocationProvider.9
            public boolean sendNiResponse(int notificationId, int userResponse) {
                if (GnssLocationProvider.DEBUG) {
                    Log.d("GnssLocationProvider", "sendNiResponse, notifId: " + notificationId + ", response: " + userResponse);
                }
                GnssLocationProvider.this.native_send_ni_response(notificationId, userResponse);
                FrameworkStatsLog.write(124, 2, notificationId, 0, false, false, false, 0, 0, (String) null, (String) null, 0, 0, GnssLocationProvider.this.mSuplEsEnabled, GnssLocationProvider.this.isGpsEnabled(), userResponse);
                return true;
            }
        };
        this.mNmeaBuffer = new byte[120];
        ensureInitialized();
        this.mContext = context;
        this.mLooper = FgThread.getHandler().getLooper();
        PowerManager powerManager = (PowerManager) this.mContext.getSystemService("power");
        this.mPowerManager = powerManager;
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "GnssLocationProvider");
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(true);
        PowerManager.WakeLock wakeLockNewWakeLock2 = this.mPowerManager.newWakeLock(1, DOWNLOAD_EXTRA_WAKELOCK_KEY);
        this.mDownloadPsdsWakeLock = wakeLockNewWakeLock2;
        wakeLockNewWakeLock2.setReferenceCounted(true);
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        this.mWakeupIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(ALARM_WAKEUP), 0);
        this.mTimeoutIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(ALARM_TIMEOUT), 0);
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        this.mBatteryStats = IBatteryStats.Stub.asInterface(ServiceManager.getService("batterystats"));
        this.mHandler = new ProviderHandler(this.mLooper);
        this.mGnssConfiguration = new GnssConfiguration(this.mContext);
        this.mGnssCapabilitiesProvider = new GnssCapabilitiesProvider();
        this.mNIHandler = new GpsNetInitiatedHandler(context, this.mNetInitiatedListener, this.mSuplEsEnabled);
        this.mNetworkConnectivityHandler = new GnssNetworkConnectivityHandler(context, new GnssNetworkConnectivityHandler.GnssNetworkListener() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$48m7ukf99eMCKhVUjqljxXFFvWw
            @Override // com.android.server.location.gnss.GnssNetworkConnectivityHandler.GnssNetworkListener
            public final void onNetworkAvailable() {
                this.f$0.onNetworkAvailable();
            }
        }, this.mLooper, this.mNIHandler);
        this.mGnssStatusListenerHelper = new GnssStatusListenerHelper(this.mContext, this.mHandler) { // from class: com.android.server.location.gnss.GnssLocationProvider.2
            @Override // com.android.server.location.RemoteListenerHelper
            protected boolean isAvailableInPlatform() {
                return GnssLocationProvider.isSupported();
            }

            @Override // com.android.server.location.RemoteListenerHelper
            protected boolean isGpsEnabled() {
                return GnssLocationProvider.this.isGpsEnabled();
            }
        };
        this.mGnssMeasurementsProvider = new GnssMeasurementsProvider(this.mContext, this.mHandler) { // from class: com.android.server.location.gnss.GnssLocationProvider.3
            @Override // com.android.server.location.RemoteListenerHelper
            protected boolean isGpsEnabled() {
                return GnssLocationProvider.this.isGpsEnabled();
            }
        };
        this.mGnssMeasurementCorrectionsProvider = new GnssMeasurementCorrectionsProvider(this.mHandler);
        this.mGnssAntennaInfoProvider = new GnssAntennaInfoProvider(this.mContext, this.mHandler) { // from class: com.android.server.location.gnss.GnssLocationProvider.4
            @Override // com.android.server.location.RemoteListenerHelper
            protected boolean isGpsEnabled() {
                return GnssLocationProvider.this.isGpsEnabled();
            }
        };
        this.mGnssNavigationMessageProvider = new GnssNavigationMessageProvider(this.mContext, this.mHandler) { // from class: com.android.server.location.gnss.GnssLocationProvider.5
            @Override // com.android.server.location.RemoteListenerHelper
            protected boolean isGpsEnabled() {
                return GnssLocationProvider.this.isGpsEnabled();
            }
        };
        this.mGnssMetrics = new GnssMetrics(this.mContext, this.mBatteryStats);
        this.mNtpTimeHelper = new NtpTimeHelper(this.mContext, this.mLooper, this);
        final GnssSatelliteBlacklistHelper gnssSatelliteBlacklistHelper = new GnssSatelliteBlacklistHelper(this.mContext, this.mLooper, this);
        this.mGnssBatchingProvider = new GnssBatchingProvider();
        this.mGnssGeofenceProvider = new GnssGeofenceProvider();
        this.mContext.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.location.gnss.GnssLocationProvider.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (getSendingUserId() == -1) {
                    GnssLocationProvider.this.mShutdown = true;
                    GnssLocationProvider.this.updateEnabled();
                }
            }
        }, UserHandle.ALL, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"), null, this.mHandler);
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("location_mode"), true, new ContentObserver(this.mHandler) { // from class: com.android.server.location.gnss.GnssLocationProvider.7
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                GnssLocationProvider.this.updateEnabled();
            }
        }, -1);
        setProperties(PROPERTIES);
        setAllowed(true);
        sendMessage(13, 0, null);
        Handler handler = this.mHandler;
        Objects.requireNonNull(gnssSatelliteBlacklistHelper);
        handler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y
            @Override // java.lang.Runnable
            public final void run() {
                gnssSatelliteBlacklistHelper.updateSatelliteBlacklist();
            }
        });
    }

    @Override // com.android.server.location.gnss.NtpTimeHelper.InjectNtpTimeCallback
    public void injectTime(long time, long timeReference, int uncertainty) {
        native_inject_time(time, timeReference, uncertainty);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNetworkAvailable() {
        this.mNtpTimeHelper.onNetworkAvailable();
        if (this.mDownloadPsdsDataPending == 0 && this.mSupportsPsds) {
            psdsDownloadRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRequestLocation(boolean independentFromGnss, boolean isUserEmergency) {
        final String provider;
        final LocationChangeListener locationListener;
        if (isRequestLocationRateLimited()) {
            if (DEBUG) {
                Log.d("GnssLocationProvider", "RequestLocation is denied due to too frequent requests.");
                return;
            }
            return;
        }
        ContentResolver resolver = this.mContext.getContentResolver();
        long durationMillis = Settings.Global.getLong(resolver, "gnss_hal_location_request_duration_millis", 10000L);
        if (durationMillis == 0) {
            Log.i("GnssLocationProvider", "GNSS HAL location request is disabled by Settings.");
            return;
        }
        final LocationManager locationManager = (LocationManager) this.mContext.getSystemService("location");
        LocationRequest locationRequest = new LocationRequest().setInterval(1000L).setFastestInterval(1000L);
        if (independentFromGnss) {
            provider = "network";
            locationListener = this.mNetworkLocationListener;
            locationRequest.setQuality(201);
        } else {
            provider = "fused";
            locationListener = this.mFusedLocationListener;
            locationRequest.setQuality(100);
        }
        locationRequest.setProvider(provider);
        if (this.mNIHandler.getInEmergency()) {
            GnssConfiguration.HalInterfaceVersion halVersion = this.mGnssConfiguration.getHalInterfaceVersion();
            if (isUserEmergency || halVersion.mMajor < 2) {
                locationRequest.setLocationSettingsIgnored(true);
                durationMillis *= 3;
            }
        }
        Log.i("GnssLocationProvider", String.format("GNSS HAL Requesting location updates from %s provider for %d millis.", provider, Long.valueOf(durationMillis)));
        try {
            locationManager.requestLocationUpdates(locationRequest, locationListener, this.mHandler.getLooper());
            LocationChangeListener.access$1208(locationListener);
            this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$JndfaKf2MNdn0UzX-g2bR-w7fzA
                @Override // java.lang.Runnable
                public final void run() {
                    GnssLocationProvider.lambda$handleRequestLocation$2(locationListener, provider, locationManager);
                }
            }, durationMillis);
        } catch (IllegalArgumentException e) {
            Log.w("GnssLocationProvider", "Unable to request location.", e);
        }
    }

    static /* synthetic */ void lambda$handleRequestLocation$2(LocationChangeListener locationListener, String provider, LocationManager locationManager) {
        if (LocationChangeListener.access$1206(locationListener) == 0) {
            Log.i("GnssLocationProvider", String.format("Removing location updates from %s provider.", provider));
            locationManager.removeUpdates(locationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void injectBestLocation(Location location) {
        if (location.isFromMockProvider()) {
            return;
        }
        if (DEBUG) {
            Log.d("GnssLocationProvider", "injectBestLocation: " + location);
        }
        int gnssLocationFlags = (location.hasAltitude() ? 2 : 0) | 1 | (location.hasSpeed() ? 4 : 0) | (location.hasBearing() ? 8 : 0) | (location.hasAccuracy() ? 16 : 0) | (location.hasVerticalAccuracy() ? 32 : 0) | (location.hasSpeedAccuracy() ? 64 : 0) | (location.hasBearingAccuracy() ? 128 : 0);
        double latitudeDegrees = location.getLatitude();
        double longitudeDegrees = location.getLongitude();
        double altitudeMeters = location.getAltitude();
        float speedMetersPerSec = location.getSpeed();
        float bearingDegrees = location.getBearing();
        float horizontalAccuracyMeters = location.getAccuracy();
        float verticalAccuracyMeters = location.getVerticalAccuracyMeters();
        float speedAccuracyMetersPerSecond = location.getSpeedAccuracyMetersPerSecond();
        float bearingAccuracyDegrees = location.getBearingAccuracyDegrees();
        long timestamp = location.getTime();
        int elapsedRealtimeFlags = (location.hasElapsedRealtimeUncertaintyNanos() ? 2 : 0) | 1;
        long elapsedRealtimeNanos = location.getElapsedRealtimeNanos();
        double elapsedRealtimeUncertaintyNanos = location.getElapsedRealtimeUncertaintyNanos();
        native_inject_best_location(gnssLocationFlags, latitudeDegrees, longitudeDegrees, altitudeMeters, speedMetersPerSec, bearingDegrees, horizontalAccuracyMeters, verticalAccuracyMeters, speedAccuracyMetersPerSecond, bearingAccuracyDegrees, timestamp, elapsedRealtimeFlags, elapsedRealtimeNanos, elapsedRealtimeUncertaintyNanos);
    }

    private boolean isRequestLocationRateLimited() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDownloadPsdsData() {
        if (!this.mSupportsPsds) {
            Log.d("GnssLocationProvider", "handleDownloadPsdsData() called when PSDS not supported");
            return;
        }
        if (this.mDownloadPsdsDataPending == 1) {
            return;
        }
        if (!this.mNetworkConnectivityHandler.isDataNetworkConnected()) {
            this.mDownloadPsdsDataPending = 0;
            return;
        }
        this.mDownloadPsdsDataPending = 1;
        synchronized (this.mLock) {
            this.mDownloadPsdsWakeLock.acquire(60000L);
        }
        Log.i("GnssLocationProvider", "WakeLock acquired by handleDownloadPsdsData()");
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$iQJ1BU-U60yAaoxpxAujpx-GZq4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleDownloadPsdsData$3$GnssLocationProvider();
            }
        });
    }

    public /* synthetic */ void lambda$handleDownloadPsdsData$3$GnssLocationProvider() {
        GpsPsdsDownloader psdsDownloader = new GpsPsdsDownloader(this.mGnssConfiguration.getProperties());
        byte[] data = psdsDownloader.downloadPsdsData();
        if (data != null) {
            if (DEBUG) {
                Log.d("GnssLocationProvider", "calling native_inject_psds_data");
            }
            native_inject_psds_data(data, data.length);
            this.mPsdsBackOff.reset();
        }
        sendMessage(11, 0, null);
        if (data == null) {
            this.mHandler.sendEmptyMessageDelayed(6, this.mPsdsBackOff.nextBackoffMillis());
        }
        synchronized (this.mLock) {
            if (this.mDownloadPsdsWakeLock.isHeld()) {
                this.mDownloadPsdsWakeLock.release();
                if (DEBUG) {
                    Log.d("GnssLocationProvider", "WakeLock released by handleDownloadPsdsData()");
                }
            } else {
                Log.e("GnssLocationProvider", "WakeLock expired before release in handleDownloadPsdsData()");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void injectLocation(Location location) {
        if (!location.isFromMockProvider() && location.hasAccuracy()) {
            if (DEBUG) {
                Log.d("GnssLocationProvider", "injectLocation: " + location);
            }
            native_inject_location(location.getLatitude(), location.getLongitude(), location.getAccuracy());
        }
    }

    private void setSuplHostPort() {
        this.mSuplServerHost = this.mGnssConfiguration.getSuplHost();
        int suplPort = this.mGnssConfiguration.getSuplPort(0);
        this.mSuplServerPort = suplPort;
        String str = this.mSuplServerHost;
        if (str != null && suplPort > 0 && suplPort <= 65535) {
            native_set_agps_server(1, str, suplPort);
        }
    }

    private int getSuplMode(boolean agpsEnabled) {
        int suplMode;
        if (!agpsEnabled || (suplMode = this.mGnssConfiguration.getSuplMode(0)) == 0 || !hasCapability(2) || (suplMode & 1) == 0) {
            return 0;
        }
        return 1;
    }

    private void setGpsEnabled(boolean enabled) {
        synchronized (this.mLock) {
            this.mGpsEnabled = enabled;
        }
    }

    private void handleEnable() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "handleEnable");
        }
        boolean inited = native_init();
        if (inited) {
            setGpsEnabled(true);
            this.mSupportsPsds = native_supports_psds();
            String str = this.mSuplServerHost;
            if (str != null) {
                native_set_agps_server(1, str, this.mSuplServerPort);
            }
            String str2 = this.mC2KServerHost;
            if (str2 != null) {
                native_set_agps_server(2, str2, this.mC2KServerPort);
            }
            this.mGnssMeasurementsProvider.onGpsEnabledChanged();
            this.mGnssNavigationMessageProvider.onGpsEnabledChanged();
            this.mGnssAntennaInfoProvider.onGpsEnabledChanged();
            this.mGnssBatchingProvider.enable();
            GnssVisibilityControl gnssVisibilityControl = this.mGnssVisibilityControl;
            if (gnssVisibilityControl != null) {
                gnssVisibilityControl.onGpsEnabledChanged(true);
                return;
            }
            return;
        }
        setGpsEnabled(false);
        Log.w("GnssLocationProvider", "Failed to enable location provider");
    }

    private void handleDisable() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "handleDisable");
        }
        setGpsEnabled(false);
        updateClientUids(new WorkSource());
        stopNavigating();
        this.mAlarmManager.cancel(this.mWakeupIntent);
        this.mAlarmManager.cancel(this.mTimeoutIntent);
        GnssVisibilityControl gnssVisibilityControl = this.mGnssVisibilityControl;
        if (gnssVisibilityControl != null) {
            gnssVisibilityControl.onGpsEnabledChanged(false);
        }
        this.mGnssBatchingProvider.disable();
        native_cleanup();
        this.mGnssAntennaInfoProvider.onGpsEnabledChanged();
        this.mGnssMeasurementsProvider.onGpsEnabledChanged();
        this.mGnssNavigationMessageProvider.onGpsEnabledChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEnabled() {
        boolean enabled = ((LocationManager) this.mContext.getSystemService(LocationManager.class)).isLocationEnabledForUser(UserHandle.CURRENT);
        boolean enabled2 = enabled & (!this.mDisableGpsForPowerManager);
        ProviderRequest providerRequest = this.mProviderRequest;
        boolean enabled3 = (enabled2 | (providerRequest != null && providerRequest.reportLocation && this.mProviderRequest.locationSettingsIgnored)) & (!this.mShutdown);
        if (enabled3 == isGpsEnabled()) {
            return;
        }
        if (enabled3) {
            handleEnable();
        } else {
            handleDisable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGpsEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mGpsEnabled;
        }
        return z;
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void onSetRequest(ProviderRequest request) {
        sendMessage(3, 0, new GpsRequest(request, request.workSource));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetRequest(ProviderRequest request, WorkSource source) {
        this.mProviderRequest = request;
        this.mWorkSource = source;
        updateEnabled();
        updateRequirements();
    }

    private void updateRequirements() {
        if (this.mProviderRequest == null || this.mWorkSource == null) {
            return;
        }
        if (DEBUG) {
            Log.d("GnssLocationProvider", "setRequest " + this.mProviderRequest);
        }
        if (this.mProviderRequest.reportLocation && isGpsEnabled()) {
            updateClientUids(this.mWorkSource);
            this.mFixInterval = (int) this.mProviderRequest.interval;
            this.mLowPowerMode = this.mProviderRequest.lowPowerMode;
            if (this.mFixInterval != this.mProviderRequest.interval) {
                Log.w("GnssLocationProvider", "interval overflow: " + this.mProviderRequest.interval);
                this.mFixInterval = Integer.MAX_VALUE;
            }
            if (this.mStarted && hasCapability(1)) {
                if (!setPositionMode(this.mPositionMode, 0, this.mFixInterval, 0, 0, this.mLowPowerMode)) {
                    Log.e("GnssLocationProvider", "set_position_mode failed in updateRequirements");
                    return;
                }
                return;
            } else {
                if (!this.mStarted) {
                    startNavigating();
                    return;
                }
                this.mAlarmManager.cancel(this.mTimeoutIntent);
                if (this.mFixInterval >= NO_FIX_TIMEOUT) {
                    this.mAlarmManager.set(2, SystemClock.elapsedRealtime() + 60000, this.mTimeoutIntent);
                    return;
                }
                return;
            }
        }
        updateClientUids(new WorkSource());
        stopNavigating();
        this.mAlarmManager.cancel(this.mWakeupIntent);
        this.mAlarmManager.cancel(this.mTimeoutIntent);
    }

    private boolean setPositionMode(int mode, int recurrence, int minInterval, int preferredAccuracy, int preferredTime, boolean lowPowerMode) {
        GnssPositionMode positionMode = new GnssPositionMode(mode, recurrence, minInterval, preferredAccuracy, preferredTime, lowPowerMode);
        GnssPositionMode gnssPositionMode = this.mLastPositionMode;
        if (gnssPositionMode != null && gnssPositionMode.equals(positionMode)) {
            return true;
        }
        boolean result = native_set_position_mode(mode, recurrence, minInterval, preferredAccuracy, preferredTime, lowPowerMode);
        if (result) {
            this.mLastPositionMode = positionMode;
        } else {
            this.mLastPositionMode = null;
        }
        return result;
    }

    private void updateClientUids(WorkSource source) {
        if (source.equals(this.mClientSource)) {
            return;
        }
        try {
            this.mBatteryStats.noteGpsChanged(this.mClientSource, source);
        } catch (RemoteException e) {
            Log.w("GnssLocationProvider", "RemoteException", e);
        }
        List<WorkSource.WorkChain>[] diffs = WorkSource.diffChains(this.mClientSource, source);
        if (diffs != null) {
            List<WorkSource.WorkChain> newChains = diffs[0];
            List<WorkSource.WorkChain> goneChains = diffs[1];
            if (newChains != null) {
                for (WorkSource.WorkChain newChain : newChains) {
                    this.mAppOps.startOpNoThrow(2, newChain.getAttributionUid(), newChain.getAttributionTag());
                }
            }
            if (goneChains != null) {
                for (WorkSource.WorkChain goneChain : goneChains) {
                    this.mAppOps.finishOp(2, goneChain.getAttributionUid(), goneChain.getAttributionTag());
                }
            }
            this.mClientSource.transferWorkChains(source);
        }
        WorkSource[] changes = this.mClientSource.setReturningDiffs(source);
        if (changes != null) {
            WorkSource newWork = changes[0];
            WorkSource goneWork = changes[1];
            if (newWork != null) {
                for (int i = 0; i < newWork.size(); i++) {
                    this.mAppOps.startOpNoThrow(2, newWork.getUid(i), newWork.getPackageName(i));
                }
            }
            if (goneWork != null) {
                for (int i2 = 0; i2 < goneWork.size(); i2++) {
                    this.mAppOps.finishOp(2, goneWork.getUid(i2), goneWork.getPackageName(i2));
                }
            }
        }
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void onExtraCommand(int uid, int pid, String command, Bundle extras) {
        long identity = Binder.clearCallingIdentity();
        try {
            if ("delete_aiding_data".equals(command)) {
                deleteAidingData(extras);
            } else if ("force_time_injection".equals(command)) {
                requestUtcTime();
            } else if ("force_psds_injection".equals(command)) {
                if (this.mSupportsPsds) {
                    psdsDownloadRequest();
                }
            } else {
                Log.w("GnssLocationProvider", "sendExtraCommand: unknown command " + command);
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private void deleteAidingData(Bundle extras) {
        int flags;
        if (extras == null) {
            flags = 65535;
        } else {
            flags = extras.getBoolean("ephemeris") ? 0 | 1 : 0;
            if (extras.getBoolean("almanac")) {
                flags |= 2;
            }
            if (extras.getBoolean("position")) {
                flags |= 4;
            }
            if (extras.getBoolean("time")) {
                flags |= 8;
            }
            if (extras.getBoolean("iono")) {
                flags |= 16;
            }
            if (extras.getBoolean("utc")) {
                flags |= 32;
            }
            if (extras.getBoolean("health")) {
                flags |= 64;
            }
            if (extras.getBoolean("svdir")) {
                flags |= 128;
            }
            if (extras.getBoolean("svsteer")) {
                flags |= 256;
            }
            if (extras.getBoolean("sadata")) {
                flags |= 512;
            }
            if (extras.getBoolean("rti")) {
                flags |= 1024;
            }
            if (extras.getBoolean("celldb-info")) {
                flags |= 32768;
            }
            if (extras.getBoolean("all")) {
                flags |= 65535;
            }
        }
        if (flags != 0) {
            native_delete_aiding_data(flags);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNavigating() {
        boolean agpsEnabled;
        String mode;
        if (!this.mStarted) {
            if (DEBUG) {
                Log.d("GnssLocationProvider", "startNavigating");
            }
            this.mTimeToFirstFix = 0;
            this.mLastFixTime = 0L;
            setStarted(true);
            this.mPositionMode = 0;
            if (this.mItarSpeedLimitExceeded) {
                Log.i("GnssLocationProvider", "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported.");
            }
            if (Settings.Global.getInt(this.mContext.getContentResolver(), "assisted_gps_enabled", 1) == 0) {
                agpsEnabled = false;
            } else {
                agpsEnabled = true;
            }
            int suplMode = getSuplMode(agpsEnabled);
            this.mPositionMode = suplMode;
            if (DEBUG) {
                if (suplMode != 0) {
                    if (suplMode == 1) {
                        mode = "MS_BASED";
                    } else if (suplMode == 2) {
                        mode = "MS_ASSISTED";
                    } else {
                        mode = UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
                    }
                } else {
                    mode = "standalone";
                }
                Log.d("GnssLocationProvider", "setting position_mode to " + mode);
            }
            int interval = hasCapability(1) ? this.mFixInterval : 1000;
            boolean z = this.mProviderRequest.lowPowerMode;
            this.mLowPowerMode = z;
            if (!setPositionMode(this.mPositionMode, 0, interval, 0, 0, z)) {
                setStarted(false);
                Log.e("GnssLocationProvider", "set_position_mode failed in startNavigating()");
            } else {
                if (!native_start()) {
                    setStarted(false);
                    Log.e("GnssLocationProvider", "native_start failed in startNavigating()");
                    return;
                }
                this.mLocationExtras.reset();
                this.mFixRequestTime = SystemClock.elapsedRealtime();
                if (!hasCapability(1) && this.mFixInterval >= NO_FIX_TIMEOUT) {
                    this.mAlarmManager.set(2, SystemClock.elapsedRealtime() + 60000, this.mTimeoutIntent);
                }
            }
        }
    }

    private void stopNavigating() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "stopNavigating");
        }
        if (this.mStarted) {
            setStarted(false);
            native_stop();
            this.mLastFixTime = 0L;
            this.mLastPositionMode = null;
            this.mLocationExtras.reset();
        }
    }

    private void setStarted(boolean started) {
        if (this.mStarted != started) {
            this.mStarted = started;
            this.mStartedChangedElapsedRealtime = SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hibernate() {
        stopNavigating();
        this.mAlarmManager.cancel(this.mTimeoutIntent);
        this.mAlarmManager.cancel(this.mWakeupIntent);
        long now = SystemClock.elapsedRealtime();
        this.mAlarmManager.set(2, ((long) this.mFixInterval) + now, this.mWakeupIntent);
    }

    private boolean hasCapability(int capability) {
        return (this.mTopHalCapabilities & capability) != 0;
    }

    private void reportLocation(boolean z, Location location) {
        sendMessage(17, z ? 1 : 0, location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReportLocation(boolean hasLatLong, Location location) {
        if (location.hasSpeed()) {
            this.mItarSpeedLimitExceeded = location.getSpeed() > ITAR_SPEED_LIMIT_METERS_PER_SECOND;
        }
        if (this.mItarSpeedLimitExceeded) {
            Log.i("GnssLocationProvider", "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked.");
            if (this.mStarted) {
                this.mGnssMetrics.logReceivedLocationStatus(false);
                return;
            }
            return;
        }
        if (VERBOSE) {
            Log.v("GnssLocationProvider", "reportLocation " + location.toString());
        }
        location.setExtras(this.mLocationExtras.getBundle());
        reportLocation(location);
        if (this.mStarted) {
            this.mGnssMetrics.logReceivedLocationStatus(hasLatLong);
            if (hasLatLong) {
                if (location.hasAccuracy()) {
                    this.mGnssMetrics.logPositionAccuracyMeters(location.getAccuracy());
                }
                if (this.mTimeToFirstFix > 0) {
                    int timeBetweenFixes = (int) (SystemClock.elapsedRealtime() - this.mLastFixTime);
                    this.mGnssMetrics.logMissedReports(this.mFixInterval, timeBetweenFixes);
                }
            }
        } else {
            long locationAfterStartedFalseMillis = SystemClock.elapsedRealtime() - this.mStartedChangedElapsedRealtime;
            if (locationAfterStartedFalseMillis > LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS) {
                String logMessage = "Unexpected GNSS Location report " + TimeUtils.formatDuration(locationAfterStartedFalseMillis) + " after location turned off";
                if (locationAfterStartedFalseMillis > LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS) {
                    Log.e("GnssLocationProvider", logMessage);
                } else {
                    Log.w("GnssLocationProvider", logMessage);
                }
            }
        }
        long locationAfterStartedFalseMillis2 = SystemClock.elapsedRealtime();
        this.mLastFixTime = locationAfterStartedFalseMillis2;
        if (this.mTimeToFirstFix == 0 && hasLatLong) {
            this.mTimeToFirstFix = (int) (locationAfterStartedFalseMillis2 - this.mFixRequestTime);
            if (DEBUG) {
                Log.d("GnssLocationProvider", "TTFF: " + this.mTimeToFirstFix);
            }
            if (this.mStarted) {
                this.mGnssMetrics.logTimeToFirstFixMilliSecs(this.mTimeToFirstFix);
            }
            this.mGnssStatusListenerHelper.onFirstFix(this.mTimeToFirstFix);
        }
        if (this.mStarted && !hasCapability(1) && this.mFixInterval < NO_FIX_TIMEOUT) {
            this.mAlarmManager.cancel(this.mTimeoutIntent);
        }
        if (!hasCapability(1) && this.mStarted && this.mFixInterval > 10000) {
            if (DEBUG) {
                Log.d("GnssLocationProvider", "got fix, hibernating");
            }
            hibernate();
        }
    }

    private void reportStatus(int status) {
        if (DEBUG) {
            Log.v("GnssLocationProvider", "reportStatus status: " + status);
        }
        boolean wasNavigating = this.mNavigating;
        if (status == 1) {
            this.mNavigating = true;
        } else if (status == 2 || status == 4) {
            this.mNavigating = false;
        }
        boolean z = this.mNavigating;
        if (wasNavigating != z) {
            this.mGnssStatusListenerHelper.onStatusChanged(z);
        }
    }

    private static class SvStatusInfo {
        private float[] mBasebandCn0s;
        private float[] mCn0s;
        private float[] mSvAzimuths;
        private float[] mSvCarrierFreqs;
        private int mSvCount;
        private float[] mSvElevations;
        private int[] mSvidWithFlags;

        private SvStatusInfo() {
        }
    }

    private void reportSvStatus(int svCount, int[] svidWithFlags, float[] cn0s, float[] svElevations, float[] svAzimuths, float[] svCarrierFreqs, float[] basebandCn0s) {
        SvStatusInfo svStatusInfo = new SvStatusInfo();
        svStatusInfo.mSvCount = svCount;
        svStatusInfo.mSvidWithFlags = svidWithFlags;
        svStatusInfo.mCn0s = cn0s;
        svStatusInfo.mSvElevations = svElevations;
        svStatusInfo.mSvAzimuths = svAzimuths;
        svStatusInfo.mSvCarrierFreqs = svCarrierFreqs;
        svStatusInfo.mBasebandCn0s = basebandCn0s;
        sendMessage(18, 0, svStatusInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReportSvStatus(SvStatusInfo info) {
        this.mGnssStatusListenerHelper.onSvStatusChanged(info.mSvCount, info.mSvidWithFlags, info.mCn0s, info.mSvElevations, info.mSvAzimuths, info.mSvCarrierFreqs, info.mBasebandCn0s);
        this.mGnssMetrics.logCn0(info.mCn0s, info.mSvCount, info.mSvCarrierFreqs);
        if (VERBOSE) {
            Log.v("GnssLocationProvider", "SV count: " + info.mSvCount);
        }
        GnssStatus gnssStatus = GnssStatus.wrap(info.mSvCount, info.mSvidWithFlags, info.mCn0s, info.mSvElevations, info.mSvAzimuths, info.mSvCarrierFreqs, info.mBasebandCn0s);
        int usedInFixCount = 0;
        int maxCn0 = 0;
        int meanCn0 = 0;
        for (int i = 0; i < gnssStatus.getSatelliteCount(); i++) {
            if (gnssStatus.usedInFix(i)) {
                usedInFixCount++;
                if (gnssStatus.getCn0DbHz(i) > maxCn0) {
                    maxCn0 = (int) gnssStatus.getCn0DbHz(i);
                }
                meanCn0 = (int) (meanCn0 + gnssStatus.getCn0DbHz(i));
                this.mGnssMetrics.logConstellationType(gnssStatus.getConstellationType(i));
            }
            if (VERBOSE) {
                StringBuilder sb = new StringBuilder();
                sb.append("svid: ");
                sb.append(gnssStatus.getSvid(i));
                sb.append(" cn0: ");
                sb.append(gnssStatus.getCn0DbHz(i));
                sb.append(" basebandCn0: ");
                sb.append(gnssStatus.getBasebandCn0DbHz(i));
                sb.append(" elev: ");
                sb.append(gnssStatus.getElevationDegrees(i));
                sb.append(" azimuth: ");
                sb.append(gnssStatus.getAzimuthDegrees(i));
                sb.append(" carrier frequency: ");
                sb.append(gnssStatus.getCn0DbHz(i));
                sb.append(gnssStatus.hasEphemerisData(i) ? " E" : "  ");
                sb.append(gnssStatus.hasAlmanacData(i) ? " A" : "  ");
                sb.append(gnssStatus.usedInFix(i) ? "U" : "");
                sb.append(gnssStatus.hasCarrierFrequencyHz(i) ? "F" : "");
                sb.append(gnssStatus.hasBasebandCn0DbHz(i) ? "B" : "");
                Log.v("GnssLocationProvider", sb.toString());
            }
        }
        if (usedInFixCount > 0) {
            meanCn0 /= usedInFixCount;
        }
        this.mLocationExtras.set(usedInFixCount, meanCn0, maxCn0);
        this.mGnssMetrics.logSvStatus(gnssStatus);
    }

    private void reportAGpsStatus(int agpsType, int agpsStatus, byte[] suplIpAddr) {
        this.mNetworkConnectivityHandler.onReportAGpsStatus(agpsType, agpsStatus, suplIpAddr);
    }

    private void reportNmea(long timestamp) {
        if (!this.mItarSpeedLimitExceeded) {
            byte[] bArr = this.mNmeaBuffer;
            int length = native_read_nmea(bArr, bArr.length);
            String nmea = new String(this.mNmeaBuffer, 0, length);
            this.mGnssStatusListenerHelper.onNmeaReceived(timestamp, nmea);
        }
    }

    private void reportMeasurementData(final GnssMeasurementsEvent event) {
        if (!this.mItarSpeedLimitExceeded) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$YuOqG3Bhqp1DBq9X5jGhJw-oqXY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportMeasurementData$4$GnssLocationProvider(event);
                }
            });
        }
    }

    public /* synthetic */ void lambda$reportMeasurementData$4$GnssLocationProvider(GnssMeasurementsEvent event) {
        this.mGnssMeasurementsProvider.onMeasurementsAvailable(event);
    }

    private void reportAntennaInfo(final List<GnssAntennaInfo> antennaInfos) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$Zz5jVrpy8EhDlqdMUEeszS7227Q
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportAntennaInfo$5$GnssLocationProvider(antennaInfos);
            }
        });
    }

    public /* synthetic */ void lambda$reportAntennaInfo$5$GnssLocationProvider(List antennaInfos) {
        this.mGnssAntennaInfoProvider.onGnssAntennaInfoAvailable(antennaInfos);
    }

    private void reportNavigationMessage(final GnssNavigationMessage event) {
        if (!this.mItarSpeedLimitExceeded) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$AWbsxwPlXUZ5pm0cAYhVesC6VAA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportNavigationMessage$6$GnssLocationProvider(event);
                }
            });
        }
    }

    public /* synthetic */ void lambda$reportNavigationMessage$6$GnssLocationProvider(GnssNavigationMessage event) {
        this.mGnssNavigationMessageProvider.onNavigationMessageAvailable(event);
    }

    private void setTopHalCapabilities(final int topHalCapabilities) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$fZsexTbhhXxbzu9E9XIT682MN4A
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setTopHalCapabilities$7$GnssLocationProvider(topHalCapabilities);
            }
        });
    }

    public /* synthetic */ void lambda$setTopHalCapabilities$7$GnssLocationProvider(int topHalCapabilities) {
        this.mTopHalCapabilities = topHalCapabilities;
        if (hasCapability(16)) {
            this.mNtpTimeHelper.enablePeriodicTimeInjection();
            requestUtcTime();
        }
        this.mGnssMeasurementsProvider.onCapabilitiesUpdated(hasCapability(64));
        this.mGnssNavigationMessageProvider.onCapabilitiesUpdated(hasCapability(128));
        restartRequests();
        this.mGnssAntennaInfoProvider.onCapabilitiesUpdated(hasCapability(2048));
        this.mGnssCapabilitiesProvider.setTopHalCapabilities(this.mTopHalCapabilities);
    }

    private void setSubHalMeasurementCorrectionsCapabilities(final int subHalCapabilities) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setSubHalMeasurementCorrectionsCapabilities$8$GnssLocationProvider(subHalCapabilities);
            }
        });
    }

    public /* synthetic */ void lambda$setSubHalMeasurementCorrectionsCapabilities$8$GnssLocationProvider(int subHalCapabilities) {
        if (!this.mGnssMeasurementCorrectionsProvider.onCapabilitiesUpdated(subHalCapabilities)) {
            return;
        }
        this.mGnssCapabilitiesProvider.setSubHalMeasurementCorrectionsCapabilities(subHalCapabilities);
    }

    private void restartRequests() {
        Log.i("GnssLocationProvider", "restartRequests");
        restartLocationRequest();
        this.mGnssAntennaInfoProvider.resumeIfStarted();
        this.mGnssMeasurementsProvider.resumeIfStarted();
        this.mGnssNavigationMessageProvider.resumeIfStarted();
        this.mGnssBatchingProvider.resumeIfStarted();
        this.mGnssGeofenceProvider.resumeIfStarted();
    }

    private void restartLocationRequest() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "restartLocationRequest");
        }
        setStarted(false);
        updateRequirements();
    }

    private void setGnssYearOfHardware(int yearOfHardware) {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "setGnssYearOfHardware called with " + yearOfHardware);
        }
        this.mHardwareYear = yearOfHardware;
    }

    private void setGnssHardwareModelName(String modelName) {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "setGnssModelName called with " + modelName);
        }
        this.mHardwareModelName = modelName;
    }

    private void reportGnssServiceDied() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "reportGnssServiceDied");
        }
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$_LVWlhOAi4e7kGM8i4gvAEODq6Y
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGnssServiceDied$9$GnssLocationProvider();
            }
        });
    }

    public /* synthetic */ void lambda$reportGnssServiceDied$9$GnssLocationProvider() {
        setupNativeGnssService(true);
        reloadGpsProperties();
        if (isGpsEnabled()) {
            setGpsEnabled(false);
            updateEnabled();
        }
    }

    public GnssSystemInfoProvider getGnssSystemInfoProvider() {
        return new GnssSystemInfoProvider() { // from class: com.android.server.location.gnss.GnssLocationProvider.8
            @Override // com.android.server.location.gnss.GnssLocationProvider.GnssSystemInfoProvider
            public int getGnssYearOfHardware() {
                return GnssLocationProvider.this.mHardwareYear;
            }

            @Override // com.android.server.location.gnss.GnssLocationProvider.GnssSystemInfoProvider
            public String getGnssHardwareModelName() {
                return GnssLocationProvider.this.mHardwareModelName;
            }
        };
    }

    public GnssBatchingProvider getGnssBatchingProvider() {
        return this.mGnssBatchingProvider;
    }

    public GnssMetricsProvider getGnssMetricsProvider() {
        return new GnssMetricsProvider() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$rqhQl-FjuYDwRh9wlhB1OdAWgzI
            @Override // com.android.server.location.gnss.GnssLocationProvider.GnssMetricsProvider
            public final String getGnssMetricsAsProtoString() {
                return this.f$0.lambda$getGnssMetricsProvider$10$GnssLocationProvider();
            }
        };
    }

    public /* synthetic */ String lambda$getGnssMetricsProvider$10$GnssLocationProvider() {
        return this.mGnssMetrics.dumpGnssMetricsAsProtoString();
    }

    public GnssCapabilitiesProvider getGnssCapabilitiesProvider() {
        return this.mGnssCapabilitiesProvider;
    }

    private void reportLocationBatch(Location[] locationArray) {
        List<Location> locations = new ArrayList<>(Arrays.asList(locationArray));
        if (DEBUG) {
            Log.d("GnssLocationProvider", "Location batch of size " + locationArray.length + " reported");
        }
        reportLocation(locations);
    }

    private void psdsDownloadRequest() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "psdsDownloadRequest");
        }
        sendMessage(6, 0, null);
    }

    private static int getGeofenceStatus(int status) {
        if (status == GPS_GEOFENCE_ERROR_GENERIC) {
            return 5;
        }
        if (status == 0) {
            return 0;
        }
        if (status != 100) {
            switch (status) {
                case GPS_GEOFENCE_ERROR_INVALID_TRANSITION /* -103 */:
                    return 4;
                case GPS_GEOFENCE_ERROR_ID_UNKNOWN /* -102 */:
                    return 3;
                case GPS_GEOFENCE_ERROR_ID_EXISTS /* -101 */:
                    return 2;
                default:
                    return -1;
            }
        }
        return 1;
    }

    private void reportGeofenceTransition(final int geofenceId, final Location location, final int transition, final long transitionTimestamp) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGeofenceTransition$11$GnssLocationProvider(geofenceId, location, transition, transitionTimestamp);
            }
        });
    }

    public /* synthetic */ void lambda$reportGeofenceTransition$11$GnssLocationProvider(int geofenceId, Location location, int transition, long transitionTimestamp) {
        if (this.mGeofenceHardwareImpl == null) {
            this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this.mContext);
        }
        this.mGeofenceHardwareImpl.reportGeofenceTransition(geofenceId, location, transition, transitionTimestamp, 0, FusedBatchOptions.SourceTechnologies.GNSS);
    }

    private void reportGeofenceStatus(final int status, final Location location) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$PnjxzvZoft2260U6u0c4ExEgvdk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGeofenceStatus$12$GnssLocationProvider(status, location);
            }
        });
    }

    public /* synthetic */ void lambda$reportGeofenceStatus$12$GnssLocationProvider(int status, Location location) {
        if (this.mGeofenceHardwareImpl == null) {
            this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this.mContext);
        }
        int monitorStatus = 1;
        if (status == 2) {
            monitorStatus = 0;
        }
        this.mGeofenceHardwareImpl.reportGeofenceMonitorStatus(0, monitorStatus, location, FusedBatchOptions.SourceTechnologies.GNSS);
    }

    private void reportGeofenceAddStatus(final int geofenceId, final int status) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$vUevSagVGcJiG8NrsQ14SLZKO50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGeofenceAddStatus$13$GnssLocationProvider(geofenceId, status);
            }
        });
    }

    public /* synthetic */ void lambda$reportGeofenceAddStatus$13$GnssLocationProvider(int geofenceId, int status) {
        if (this.mGeofenceHardwareImpl == null) {
            this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this.mContext);
        }
        this.mGeofenceHardwareImpl.reportGeofenceAddStatus(geofenceId, getGeofenceStatus(status));
    }

    private void reportGeofenceRemoveStatus(final int geofenceId, final int status) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGeofenceRemoveStatus$14$GnssLocationProvider(geofenceId, status);
            }
        });
    }

    public /* synthetic */ void lambda$reportGeofenceRemoveStatus$14$GnssLocationProvider(int geofenceId, int status) {
        if (this.mGeofenceHardwareImpl == null) {
            this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this.mContext);
        }
        this.mGeofenceHardwareImpl.reportGeofenceRemoveStatus(geofenceId, getGeofenceStatus(status));
    }

    private void reportGeofencePauseStatus(final int geofenceId, final int status) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$8UU_TCemTTDKpCEUtWtOYCOByNI
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGeofencePauseStatus$15$GnssLocationProvider(geofenceId, status);
            }
        });
    }

    public /* synthetic */ void lambda$reportGeofencePauseStatus$15$GnssLocationProvider(int geofenceId, int status) {
        if (this.mGeofenceHardwareImpl == null) {
            this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this.mContext);
        }
        this.mGeofenceHardwareImpl.reportGeofencePauseStatus(geofenceId, getGeofenceStatus(status));
    }

    private void reportGeofenceResumeStatus(final int geofenceId, final int status) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.gnss.-$$Lambda$GnssLocationProvider$cCbSI3WH-hk01YLpadxIdeJ2l-s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$reportGeofenceResumeStatus$16$GnssLocationProvider(geofenceId, status);
            }
        });
    }

    public /* synthetic */ void lambda$reportGeofenceResumeStatus$16$GnssLocationProvider(int geofenceId, int status) {
        if (this.mGeofenceHardwareImpl == null) {
            this.mGeofenceHardwareImpl = GeofenceHardwareImpl.getInstance(this.mContext);
        }
        this.mGeofenceHardwareImpl.reportGeofenceResumeStatus(geofenceId, getGeofenceStatus(status));
    }

    public INetInitiatedListener getNetInitiatedListener() {
        return this.mNetInitiatedListener;
    }

    public void reportNiNotification(int notificationId, int niType, int notifyFlags, int timeout, int defaultResponse, String requestorId, String text, int requestorIdEncoding, int textEncoding) {
        Log.i("GnssLocationProvider", "reportNiNotification: entered");
        Log.i("GnssLocationProvider", "notificationId: " + notificationId + ", niType: " + niType + ", notifyFlags: " + notifyFlags + ", timeout: " + timeout + ", defaultResponse: " + defaultResponse);
        StringBuilder sb = new StringBuilder();
        sb.append("requestorId: ");
        sb.append(requestorId);
        sb.append(", text: ");
        sb.append(text);
        sb.append(", requestorIdEncoding: ");
        sb.append(requestorIdEncoding);
        sb.append(", textEncoding: ");
        sb.append(textEncoding);
        Log.i("GnssLocationProvider", sb.toString());
        GpsNetInitiatedHandler.GpsNiNotification notification = new GpsNetInitiatedHandler.GpsNiNotification();
        notification.notificationId = notificationId;
        notification.niType = niType;
        notification.needNotify = (notifyFlags & 1) != 0;
        notification.needVerify = (notifyFlags & 2) != 0;
        notification.privacyOverride = (notifyFlags & 4) != 0;
        notification.timeout = timeout;
        notification.defaultResponse = defaultResponse;
        notification.requestorId = requestorId;
        notification.text = text;
        notification.requestorIdEncoding = requestorIdEncoding;
        notification.textEncoding = textEncoding;
        this.mNIHandler.handleNiNotification(notification);
        FrameworkStatsLog.write(124, 1, notification.notificationId, notification.niType, notification.needNotify, notification.needVerify, notification.privacyOverride, notification.timeout, notification.defaultResponse, notification.requestorId, notification.text, notification.requestorIdEncoding, notification.textEncoding, this.mSuplEsEnabled, isGpsEnabled(), 0);
    }

    private void requestSetID(int flags) {
        TelephonyManager phone = (TelephonyManager) this.mContext.getSystemService("phone");
        int type = 0;
        String setId = null;
        int ddSubId = SubscriptionManager.getDefaultDataSubscriptionId();
        if (SubscriptionManager.isValidSubscriptionId(ddSubId)) {
            phone = phone.createForSubscriptionId(ddSubId);
        }
        if ((flags & 1) == 1) {
            setId = phone.getSubscriberId();
            if (setId != null) {
                type = 1;
            }
        } else if ((flags & 2) == 2 && (setId = phone.getLine1Number()) != null) {
            type = 2;
        }
        native_agps_set_id(type, setId == null ? "" : setId);
    }

    private void requestLocation(boolean z, boolean z2) {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "requestLocation. independentFromGnss: " + z + ", isUserEmergency: " + z2);
        }
        sendMessage(16, z ? 1 : 0, Boolean.valueOf(z2));
    }

    private void requestUtcTime() {
        if (DEBUG) {
            Log.d("GnssLocationProvider", "utcTimeRequest");
        }
        sendMessage(5, 0, null);
    }

    private void requestRefLocation() {
        int type;
        TelephonyManager phone = (TelephonyManager) this.mContext.getSystemService("phone");
        int phoneType = phone.getPhoneType();
        if (phoneType == 1) {
            GsmCellLocation gsm_cell = (GsmCellLocation) phone.getCellLocation();
            if (gsm_cell == null || phone.getNetworkOperator() == null || phone.getNetworkOperator().length() <= 3) {
                Log.e("GnssLocationProvider", "Error getting cell location info.");
                return;
            }
            int mcc = Integer.parseInt(phone.getNetworkOperator().substring(0, 3));
            int mnc = Integer.parseInt(phone.getNetworkOperator().substring(3));
            int networkType = phone.getNetworkType();
            if (networkType == 3 || networkType == 8 || networkType == 9 || networkType == 10 || networkType == 15) {
                type = 2;
            } else {
                type = 1;
            }
            native_agps_set_ref_location_cellid(type, mcc, mnc, gsm_cell.getLac(), gsm_cell.getCid());
            return;
        }
        if (phoneType == 2) {
            Log.e("GnssLocationProvider", "CDMA not supported.");
        }
    }

    private void reportNfwNotification(String proxyAppPackageName, byte protocolStack, String otherProtocolStackName, byte requestor, String requestorId, byte responseType, boolean inEmergencyMode, boolean isCachedLocation) {
        GnssVisibilityControl gnssVisibilityControl = this.mGnssVisibilityControl;
        if (gnssVisibilityControl == null) {
            Log.e("GnssLocationProvider", "reportNfwNotification: mGnssVisibilityControl is not initialized.");
        } else {
            gnssVisibilityControl.reportNfwNotification(proxyAppPackageName, protocolStack, otherProtocolStackName, requestor, requestorId, responseType, inEmergencyMode, isCachedLocation);
        }
    }

    boolean isInEmergencySession() {
        return this.mNIHandler.getInEmergency();
    }

    private void sendMessage(int message, int arg, Object obj) {
        this.mWakeLock.acquire(30000L);
        if (DEBUG) {
            Log.d("GnssLocationProvider", "WakeLock acquired by sendMessage(" + messageIdAsString(message) + ", " + arg + ", " + obj + ")");
        }
        this.mHandler.obtainMessage(message, arg, 1, obj).sendToTarget();
    }

    private final class ProviderHandler extends Handler {
        public ProviderHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int message = msg.what;
            if (message == 1) {
                GnssLocationProvider.this.updateLowPowerMode();
            } else if (message == 3) {
                GpsRequest gpsRequest = (GpsRequest) msg.obj;
                GnssLocationProvider.this.handleSetRequest(gpsRequest.request, gpsRequest.source);
            } else if (message == 11) {
                GnssLocationProvider.this.mDownloadPsdsDataPending = 2;
            } else if (message == 13) {
                handleInitialize();
            } else if (message == 5) {
                GnssLocationProvider.this.mNtpTimeHelper.retrieveAndInjectNtpTime();
            } else if (message != 6) {
                switch (message) {
                    case 16:
                        GnssLocationProvider.this.handleRequestLocation(msg.arg1 == 1, ((Boolean) msg.obj).booleanValue());
                        break;
                    case 17:
                        GnssLocationProvider.this.handleReportLocation(msg.arg1 == 1, (Location) msg.obj);
                        break;
                    case 18:
                        GnssLocationProvider.this.handleReportSvStatus((SvStatusInfo) msg.obj);
                        break;
                }
            } else {
                GnssLocationProvider.this.handleDownloadPsdsData();
            }
            if (msg.arg2 == 1) {
                GnssLocationProvider.this.mWakeLock.release();
                if (GnssLocationProvider.DEBUG) {
                    Log.d("GnssLocationProvider", "WakeLock released by handleMessage(" + GnssLocationProvider.this.messageIdAsString(message) + ", " + msg.arg1 + ", " + msg.obj + ")");
                }
            }
        }

        private void handleInitialize() {
            GnssLocationProvider.this.setupNativeGnssService(false);
            if (GnssLocationProvider.native_is_gnss_visibility_control_supported()) {
                GnssLocationProvider.this.mGnssVisibilityControl = new GnssVisibilityControl(GnssLocationProvider.this.mContext, GnssLocationProvider.this.mLooper, GnssLocationProvider.this.mNIHandler);
            }
            GnssLocationProvider.this.reloadGpsProperties();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(GnssLocationProvider.ALARM_WAKEUP);
            intentFilter.addAction(GnssLocationProvider.ALARM_TIMEOUT);
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
            intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
            GnssLocationProvider.this.mContext.registerReceiver(GnssLocationProvider.this.mBroadcastReceiver, intentFilter, null, this);
            GnssLocationProvider.this.mNetworkConnectivityHandler.registerNetworkCallbacks();
            LocationManager locManager = (LocationManager) GnssLocationProvider.this.mContext.getSystemService("location");
            LocationRequest request = LocationRequest.createFromDeprecatedProvider("passive", 0L, 0.0f, false);
            request.setHideFromAppOps(true);
            locManager.requestLocationUpdates(request, new NetworkLocationListener(), getLooper());
            GnssLocationProvider.this.updateEnabled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class LocationChangeListener implements LocationListener {
        private int mNumLocationUpdateRequest;

        private LocationChangeListener() {
        }

        static /* synthetic */ int access$1206(LocationChangeListener x0) {
            int i = x0.mNumLocationUpdateRequest - 1;
            x0.mNumLocationUpdateRequest = i;
            return i;
        }

        static /* synthetic */ int access$1208(LocationChangeListener x0) {
            int i = x0.mNumLocationUpdateRequest;
            x0.mNumLocationUpdateRequest = i + 1;
            return i;
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
        }
    }

    private final class NetworkLocationListener extends LocationChangeListener {
        private NetworkLocationListener() {
            super();
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if ("network".equals(location.getProvider())) {
                GnssLocationProvider.this.injectLocation(location);
            }
        }
    }

    private final class FusedLocationListener extends LocationChangeListener {
        private FusedLocationListener() {
            super();
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if ("fused".equals(location.getProvider())) {
                GnssLocationProvider.this.injectBestLocation(location);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String messageIdAsString(int message) {
        if (message == 3) {
            return "SET_REQUEST";
        }
        if (message == 11) {
            return "DOWNLOAD_PSDS_DATA_FINISHED";
        }
        if (message == 13) {
            return "INITIALIZE_HANDLER";
        }
        if (message == 5) {
            return "INJECT_NTP_TIME";
        }
        if (message != 6) {
            switch (message) {
                case 16:
                    return "REQUEST_LOCATION";
                case 17:
                    return "REPORT_LOCATION";
                case 18:
                    return "REPORT_SV_STATUS";
                default:
                    return "<Unknown>";
            }
        }
        return "DOWNLOAD_PSDS_DATA";
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        StringBuilder s = new StringBuilder();
        s.append("mStarted=");
        s.append(this.mStarted);
        s.append("   (changed ");
        TimeUtils.formatDuration(SystemClock.elapsedRealtime() - this.mStartedChangedElapsedRealtime, s);
        s.append(" ago)");
        s.append('\n');
        s.append("mFixInterval=");
        s.append(this.mFixInterval);
        s.append('\n');
        s.append("mLowPowerMode=");
        s.append(this.mLowPowerMode);
        s.append('\n');
        s.append("mGnssAntennaInfoProvider.isRegistered()=");
        s.append(this.mGnssAntennaInfoProvider.isRegistered());
        s.append('\n');
        s.append("mGnssMeasurementsProvider.isRegistered()=");
        s.append(this.mGnssMeasurementsProvider.isRegistered());
        s.append('\n');
        s.append("mGnssNavigationMessageProvider.isRegistered()=");
        s.append(this.mGnssNavigationMessageProvider.isRegistered());
        s.append('\n');
        s.append("mDisableGpsForPowerManager=");
        s.append(this.mDisableGpsForPowerManager);
        s.append('\n');
        s.append("mTopHalCapabilities=0x");
        s.append(Integer.toHexString(this.mTopHalCapabilities));
        s.append(" ( ");
        if (hasCapability(1)) {
            s.append("SCHEDULING ");
        }
        if (hasCapability(2)) {
            s.append("MSB ");
        }
        if (hasCapability(4)) {
            s.append("MSA ");
        }
        if (hasCapability(8)) {
            s.append("SINGLE_SHOT ");
        }
        if (hasCapability(16)) {
            s.append("ON_DEMAND_TIME ");
        }
        if (hasCapability(32)) {
            s.append("GEOFENCING ");
        }
        if (hasCapability(64)) {
            s.append("MEASUREMENTS ");
        }
        if (hasCapability(128)) {
            s.append("NAV_MESSAGES ");
        }
        if (hasCapability(256)) {
            s.append("LOW_POWER_MODE ");
        }
        if (hasCapability(512)) {
            s.append("SATELLITE_BLACKLIST ");
        }
        if (hasCapability(1024)) {
            s.append("MEASUREMENT_CORRECTIONS ");
        }
        if (hasCapability(2048)) {
            s.append("ANTENNA_INFO ");
        }
        s.append(")\n");
        if (hasCapability(1024)) {
            s.append("SubHal=MEASUREMENT_CORRECTIONS[");
            s.append(this.mGnssMeasurementCorrectionsProvider.toStringCapabilities());
            s.append("]\n");
        }
        s.append(this.mGnssMetrics.dumpGnssMetricsAsText());
        s.append("native internal state: \n");
        s.append("  ");
        s.append(native_get_internal_state());
        s.append("\n");
        pw.append((CharSequence) s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupNativeGnssService(boolean reinitializeGnssServiceHandle) {
        native_init_once(reinitializeGnssServiceHandle);
        boolean isInitialized = native_init();
        if (!isInitialized) {
            Log.w("GnssLocationProvider", "Native initialization failed.");
        } else {
            native_cleanup();
        }
    }
}
