package com.android.server.stats.pull;

import android.app.ActivityManagerInternal;
import android.app.AppOpsManager;
import android.app.INotificationManager;
import android.app.ProcessMemoryState;
import android.app.RuntimeAppOpAccessMessage;
import android.app.StatsManager;
import android.bluetooth.BluetoothActivityEnergyInfo;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.UidTraffic;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.UserInfo;
import android.hardware.face.FaceManager;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.health.V2_0.HealthInfo;
import android.hardware.health.V2_0.IHealth;
import android.icu.util.TimeZone;
import android.net.ConnectivityManager;
import android.net.INetworkStatsService;
import android.net.INetworkStatsSession;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.NetworkStats;
import android.net.NetworkTemplate;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.CoolingDevice;
import android.os.Debug;
import android.os.Environment;
import android.os.IBinder;
import android.os.IStoraged;
import android.os.IThermalEventListener;
import android.os.IThermalService;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.StatFs;
import android.os.SynchronousResultReceiver;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Temperature;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.connectivity.WifiActivityEnergyInfo;
import android.os.storage.DiskInfo;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.telephony.ModemActivityInfo;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.MathUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.StatsEvent;
import android.util.proto.ProtoOutputStream;
import com.android.internal.app.procstats.IProcessStats;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.BatterySipper;
import com.android.internal.os.BatteryStatsHelper;
import com.android.internal.os.BinderCallsStats;
import com.android.internal.os.KernelCpuSpeedReader;
import com.android.internal.os.KernelCpuThreadReader;
import com.android.internal.os.KernelCpuThreadReaderDiff;
import com.android.internal.os.KernelCpuThreadReaderSettingsObserver;
import com.android.internal.os.KernelCpuUidTimeReader;
import com.android.internal.os.KernelWakelockReader;
import com.android.internal.os.KernelWakelockStats;
import com.android.internal.os.LooperStats;
import com.android.internal.os.PowerProfile;
import com.android.internal.os.ProcessCpuTracker;
import com.android.internal.os.StoragedUidIoStatsReader;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.BatteryService;
import com.android.server.BinderCallsStatsService;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.am.MemoryStatUtil;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.job.JobSchedulerShellCommand;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.SnoozeHelper;
import com.android.server.role.RoleManagerInternal;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.stats.pull.netstats.NetworkStatsExt;
import com.android.server.stats.pull.netstats.SubInfo;
import com.android.server.storage.DiskStatsFileLogger;
import com.android.server.storage.DiskStatsLoggingService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import libcore.io.IoUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class StatsPullAtomService extends SystemService {
    private static final long APP_OPS_SAMPLING_INITIALIZATION_DELAY_MILLIS = 45000;
    private static final int APP_OPS_SIZE_ESTIMATE = 2000;
    private static final String APP_OPS_TARGET_COLLECTION_SIZE = "app_ops_target_collection_size";
    private static final String COMMON_PERMISSION_PREFIX = "android.permission.";
    private static final int CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES = 8;
    private static final String DANGEROUS_PERMISSION_STATE_SAMPLE_RATE = "dangerous_permission_state_sample_rate";
    private static final boolean DEBUG = true;
    private static final int DIMENSION_KEY_SIZE_HARD_LIMIT = 800;
    private static final int DIMENSION_KEY_SIZE_SOFT_LIMIT = 500;
    private static final long EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS = 2000;
    private static final int MAX_BATTERY_STATS_HELPER_FREQUENCY_MS = 1000;
    private static final int MAX_PROCSTATS_RAW_SHARD_SIZE = 58982;
    private static final int MAX_PROCSTATS_SHARDS = 5;
    private static final int MAX_PROCSTATS_SHARD_SIZE = 49152;
    private static final long MILLIS_PER_SEC = 1000;
    private static final long MILLI_AMP_HR_TO_NANO_AMP_SECS = 3600000000L;
    private static final int MIN_CPU_TIME_PER_UID_FREQ = 10;
    private static final int OP_FLAGS_PULLED = 9;
    private static final String RESULT_RECEIVER_CONTROLLER_KEY = "controller_activity";
    private static final String TAG = "StatsPullAtomService";
    private final Object mAppOpsLock;
    private int mAppOpsSamplingRate;
    private final Object mAppSizeLock;
    private final Object mAppsOnExternalStorageInfoLock;
    private final Object mAttributedAppOpsLock;
    private File mBaseDir;
    private BatteryStatsHelper mBatteryStatsHelper;
    private final Object mBatteryStatsHelperLock;
    private long mBatteryStatsHelperTimestampMs;
    private final Object mBinderCallsStatsExceptionsLock;
    private final Object mBinderCallsStatsLock;
    private final Object mBluetoothActivityInfoLock;
    private final Object mBluetoothBytesTransferLock;
    private final Object mBuildInformationLock;
    private final Object mCategorySizeLock;
    private final Context mContext;
    private final Object mCooldownDeviceLock;
    private final Object mCpuActiveTimeLock;
    private final Object mCpuClusterTimeLock;
    private final Object mCpuTimePerFreqLock;
    private final Object mCpuTimePerThreadFreqLock;
    private final Object mCpuTimePerUidFreqLock;
    private final Object mCpuTimePerUidLock;
    private KernelCpuUidTimeReader.KernelCpuUidActiveTimeReader mCpuUidActiveTimeReader;
    private KernelCpuUidTimeReader.KernelCpuUidClusterTimeReader mCpuUidClusterTimeReader;
    private KernelCpuUidTimeReader.KernelCpuUidFreqTimeReader mCpuUidFreqTimeReader;
    private KernelCpuUidTimeReader.KernelCpuUidUserSysTimeReader mCpuUidUserSysTimeReader;
    private final ArraySet<Integer> mDangerousAppOpsList;
    private final Object mDangerousAppOpsListLock;
    private final Object mDangerousPermissionStateLock;
    private final Object mDataBytesTransferLock;
    private final Object mDebugElapsedClockLock;
    private long mDebugElapsedClockPreviousValue;
    private long mDebugElapsedClockPullCount;
    private final Object mDebugFailingElapsedClockLock;
    private long mDebugFailingElapsedClockPreviousValue;
    private long mDebugFailingElapsedClockPullCount;
    private final Object mDeviceCalculatedPowerBlameOtherLock;
    private final Object mDeviceCalculatedPowerBlameUidLock;
    private final Object mDeviceCalculatedPowerUseLock;
    private final Object mDirectoryUsageLock;
    private final Object mDiskIoLock;
    private final Object mDiskStatsLock;
    private final Object mExternalStorageInfoLock;
    private final Object mFaceSettingsLock;
    private final Object mHealthHalLock;
    private BatteryService.HealthServiceWrapper mHealthService;
    private final ArrayList<SubInfo> mHistoricalSubs;
    private final Object mIonHeapSizeLock;
    private KernelCpuSpeedReader[] mKernelCpuSpeedReaders;
    private KernelCpuThreadReaderDiff mKernelCpuThreadReader;
    private final Object mKernelWakelockLock;
    private KernelWakelockReader mKernelWakelockReader;
    private final Object mLooperStatsLock;
    private final Object mModemActivityInfoLock;
    private final ArrayList<NetworkStatsExt> mNetworkStatsBaselines;
    private INotificationManager mNotificationManagerService;
    private final Object mNotificationRemoteViewsLock;
    private final Object mNotificationStatsLock;
    private final Object mNumBiometricsEnrolledLock;
    private final Object mPowerProfileLock;
    private final Object mProcStatsLock;
    private final Object mProcessCpuTimeLock;
    private ProcessCpuTracker mProcessCpuTracker;
    private final Object mProcessMemoryHighWaterMarkLock;
    private final Object mProcessMemorySnapshotLock;
    private final Object mProcessMemoryStateLock;
    private IProcessStats mProcessStatsService;
    private final Object mProcessSystemIonHeapSizeLock;
    private final Object mRoleHolderLock;
    private final Object mRuntimeAppOpAccessMessageLock;
    private final Object mSettingsStatsLock;
    private StatsPullAtomCallbackImpl mStatsCallbackImpl;
    private StatsManager mStatsManager;
    private StatsSubscriptionsListener mStatsSubscriptionsListener;
    private StorageManager mStorageManager;
    private IStoraged mStorageService;
    private final Object mStoragedLock;
    private StoragedUidIoStatsReader mStoragedUidIoStatsReader;
    private SubscriptionManager mSubscriptionManager;
    private final Object mSystemElapsedRealtimeLock;
    private final Object mSystemIonHeapSizeLock;
    private final Object mSystemUptimeLock;
    private TelephonyManager mTelephony;
    private final Object mTemperatureLock;
    private final Object mThermalLock;
    private IThermalService mThermalService;
    private final Object mTimeZoneDataInfoLock;
    private KernelWakelockStats mTmpWakelockStats;
    private final Object mWifiActivityInfoLock;
    private WifiManager mWifiManager;
    private static final int RANDOM_SEED = new Random().nextInt();
    private static final long NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS = TimeUnit.HOURS.toMillis(2);

    private native void nativeInit();

    public StatsPullAtomService(Context context) {
        super(context);
        this.mThermalLock = new Object();
        this.mStoragedLock = new Object();
        this.mNotificationStatsLock = new Object();
        this.mDebugElapsedClockPreviousValue = 0L;
        this.mDebugElapsedClockPullCount = 0L;
        this.mDebugFailingElapsedClockPreviousValue = 0L;
        this.mDebugFailingElapsedClockPullCount = 0L;
        this.mBatteryStatsHelperLock = new Object();
        this.mBatteryStatsHelper = null;
        this.mBatteryStatsHelperTimestampMs = -1000L;
        this.mAppOpsSamplingRate = 0;
        this.mDangerousAppOpsListLock = new Object();
        this.mDangerousAppOpsList = new ArraySet<>();
        this.mNetworkStatsBaselines = new ArrayList<>();
        this.mHistoricalSubs = new ArrayList<>();
        this.mDataBytesTransferLock = new Object();
        this.mBluetoothBytesTransferLock = new Object();
        this.mKernelWakelockLock = new Object();
        this.mCpuTimePerFreqLock = new Object();
        this.mCpuTimePerUidLock = new Object();
        this.mCpuTimePerUidFreqLock = new Object();
        this.mCpuActiveTimeLock = new Object();
        this.mCpuClusterTimeLock = new Object();
        this.mWifiActivityInfoLock = new Object();
        this.mModemActivityInfoLock = new Object();
        this.mBluetoothActivityInfoLock = new Object();
        this.mSystemElapsedRealtimeLock = new Object();
        this.mSystemUptimeLock = new Object();
        this.mProcessMemoryStateLock = new Object();
        this.mProcessMemoryHighWaterMarkLock = new Object();
        this.mProcessMemorySnapshotLock = new Object();
        this.mSystemIonHeapSizeLock = new Object();
        this.mIonHeapSizeLock = new Object();
        this.mProcessSystemIonHeapSizeLock = new Object();
        this.mTemperatureLock = new Object();
        this.mCooldownDeviceLock = new Object();
        this.mBinderCallsStatsLock = new Object();
        this.mBinderCallsStatsExceptionsLock = new Object();
        this.mLooperStatsLock = new Object();
        this.mDiskStatsLock = new Object();
        this.mDirectoryUsageLock = new Object();
        this.mAppSizeLock = new Object();
        this.mCategorySizeLock = new Object();
        this.mNumBiometricsEnrolledLock = new Object();
        this.mProcStatsLock = new Object();
        this.mDiskIoLock = new Object();
        this.mPowerProfileLock = new Object();
        this.mProcessCpuTimeLock = new Object();
        this.mCpuTimePerThreadFreqLock = new Object();
        this.mDeviceCalculatedPowerUseLock = new Object();
        this.mDeviceCalculatedPowerBlameUidLock = new Object();
        this.mDeviceCalculatedPowerBlameOtherLock = new Object();
        this.mDebugElapsedClockLock = new Object();
        this.mDebugFailingElapsedClockLock = new Object();
        this.mBuildInformationLock = new Object();
        this.mRoleHolderLock = new Object();
        this.mTimeZoneDataInfoLock = new Object();
        this.mExternalStorageInfoLock = new Object();
        this.mAppsOnExternalStorageInfoLock = new Object();
        this.mFaceSettingsLock = new Object();
        this.mAppOpsLock = new Object();
        this.mRuntimeAppOpAccessMessageLock = new Object();
        this.mNotificationRemoteViewsLock = new Object();
        this.mDangerousPermissionStateLock = new Object();
        this.mHealthHalLock = new Object();
        this.mAttributedAppOpsLock = new Object();
        this.mSettingsStatsLock = new Object();
        this.mContext = context;
    }

    private class StatsPullAtomCallbackImpl implements StatsManager.StatsPullAtomCallback {
        private StatsPullAtomCallbackImpl() {
        }

        public int onPullAtom(int atomTag, List<StatsEvent> data) {
            int iPullDataBytesTransferLocked;
            int iPullKernelWakelockLocked;
            int iPullBluetoothBytesTransferLocked;
            int iPullBluetoothActivityInfoLocked;
            int iPullCpuTimePerFreqLocked;
            int iPullCpuTimePerUidLocked;
            int iPullCpuTimePerUidFreqLocked;
            int iPullWifiActivityInfoLocked;
            int iPullModemActivityInfoLocked;
            int iPullProcessMemoryStateLocked;
            int iPullSystemElapsedRealtimeLocked;
            int iPullSystemUptimeLocked;
            int iPullCpuActiveTimeLocked;
            int iPullCpuClusterTimeLocked;
            int iPullHealthHalLocked;
            int iPullTemperatureLocked;
            int iPullBinderCallsStatsLocked;
            int iPullBinderCallsStatsExceptionsLocked;
            int iPullLooperStatsLocked;
            int iPullDiskStatsLocked;
            int iPullDirectoryUsageLocked;
            int iPullAppSizeLocked;
            int iPullCategorySizeLocked;
            int iPullProcStatsLocked;
            int iPullNumBiometricsEnrolledLocked;
            int iPullDiskIOLocked;
            int iPullPowerProfileLocked;
            int iPullProcStatsLocked2;
            int iPullProcessCpuTimeLocked;
            int iPullCpuTimePerThreadFreqLocked;
            int iPullDeviceCalculatedPowerUseLocked;
            int iPullDeviceCalculatedPowerBlameUidLocked;
            int iPullDeviceCalculatedPowerBlameOtherLocked;
            int iPullProcessMemoryHighWaterMarkLocked;
            int iPullBuildInformationLocked;
            int iPullDebugElapsedClockLocked;
            int iPullDebugFailingElapsedClockLocked;
            int iPullNumBiometricsEnrolledLocked2;
            int iPullRoleHolderLocked;
            int iPullDangerousPermissionStateLocked;
            int iPullTimeZoneDataInfoLocked;
            int iPullExternalStorageInfoLocked;
            int iPullSystemIonHeapSizeLocked;
            int iPullAppsOnExternalStorageInfoLocked;
            int iPullFaceSettingsLocked;
            int iPullCooldownDeviceLocked;
            int iPullAppOpsLocked;
            int iPullProcessSystemIonHeapSizeLocked;
            int iPullProcessMemorySnapshotLocked;
            int iPullNotificationRemoteViewsLocked;
            int iPullRuntimeAppOpAccessMessageLocked;
            int iPullIonHeapSizeLocked;
            int iPullAttributedAppOpsLocked;
            int iPullSettingsStatsLocked;
            if (Trace.isTagEnabled(524288L)) {
                Trace.traceBegin(524288L, "StatsPull-" + atomTag);
            }
            try {
                switch (atomTag) {
                    case 10000:
                    case 10001:
                    case 10002:
                    case 10003:
                    case 10082:
                    case 10083:
                        synchronized (StatsPullAtomService.this.mDataBytesTransferLock) {
                            iPullDataBytesTransferLocked = StatsPullAtomService.this.pullDataBytesTransferLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDataBytesTransferLocked;
                    case 10004:
                        synchronized (StatsPullAtomService.this.mKernelWakelockLock) {
                            iPullKernelWakelockLocked = StatsPullAtomService.this.pullKernelWakelockLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullKernelWakelockLocked;
                    case 10005:
                    case 10018:
                    case 10036:
                    case 10038:
                    case 10051:
                    case 10054:
                    case 10055:
                    case 10062:
                    case 10063:
                    case 10065:
                    case 10068:
                    case 10071:
                    case 10072:
                    case 10073:
                    case 10074:
                    case 10076:
                    case 10077:
                    case 10078:
                    case 10079:
                    case 10081:
                    default:
                        throw new UnsupportedOperationException("Unknown tagId=" + atomTag);
                    case 10006:
                        synchronized (StatsPullAtomService.this.mBluetoothBytesTransferLock) {
                            iPullBluetoothBytesTransferLocked = StatsPullAtomService.this.pullBluetoothBytesTransferLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullBluetoothBytesTransferLocked;
                    case 10007:
                        synchronized (StatsPullAtomService.this.mBluetoothActivityInfoLock) {
                            iPullBluetoothActivityInfoLocked = StatsPullAtomService.this.pullBluetoothActivityInfoLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullBluetoothActivityInfoLocked;
                    case 10008:
                        synchronized (StatsPullAtomService.this.mCpuTimePerFreqLock) {
                            iPullCpuTimePerFreqLocked = StatsPullAtomService.this.pullCpuTimePerFreqLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCpuTimePerFreqLocked;
                    case 10009:
                        synchronized (StatsPullAtomService.this.mCpuTimePerUidLock) {
                            iPullCpuTimePerUidLocked = StatsPullAtomService.this.pullCpuTimePerUidLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCpuTimePerUidLocked;
                    case 10010:
                        synchronized (StatsPullAtomService.this.mCpuTimePerUidFreqLock) {
                            iPullCpuTimePerUidFreqLocked = StatsPullAtomService.this.pullCpuTimePerUidFreqLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCpuTimePerUidFreqLocked;
                    case 10011:
                        synchronized (StatsPullAtomService.this.mWifiActivityInfoLock) {
                            iPullWifiActivityInfoLocked = StatsPullAtomService.this.pullWifiActivityInfoLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullWifiActivityInfoLocked;
                    case 10012:
                        synchronized (StatsPullAtomService.this.mModemActivityInfoLock) {
                            iPullModemActivityInfoLocked = StatsPullAtomService.this.pullModemActivityInfoLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullModemActivityInfoLocked;
                    case 10013:
                        synchronized (StatsPullAtomService.this.mProcessMemoryStateLock) {
                            iPullProcessMemoryStateLocked = StatsPullAtomService.this.pullProcessMemoryStateLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcessMemoryStateLocked;
                    case 10014:
                        synchronized (StatsPullAtomService.this.mSystemElapsedRealtimeLock) {
                            iPullSystemElapsedRealtimeLocked = StatsPullAtomService.this.pullSystemElapsedRealtimeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullSystemElapsedRealtimeLocked;
                    case 10015:
                        synchronized (StatsPullAtomService.this.mSystemUptimeLock) {
                            iPullSystemUptimeLocked = StatsPullAtomService.this.pullSystemUptimeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullSystemUptimeLocked;
                    case 10016:
                        synchronized (StatsPullAtomService.this.mCpuActiveTimeLock) {
                            iPullCpuActiveTimeLocked = StatsPullAtomService.this.pullCpuActiveTimeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCpuActiveTimeLocked;
                    case 10017:
                        synchronized (StatsPullAtomService.this.mCpuClusterTimeLock) {
                            iPullCpuClusterTimeLocked = StatsPullAtomService.this.pullCpuClusterTimeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCpuClusterTimeLocked;
                    case 10019:
                    case 10020:
                    case 10030:
                    case 10043:
                    case 10045:
                        synchronized (StatsPullAtomService.this.mHealthHalLock) {
                            iPullHealthHalLocked = StatsPullAtomService.this.pullHealthHalLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullHealthHalLocked;
                    case 10021:
                        synchronized (StatsPullAtomService.this.mTemperatureLock) {
                            iPullTemperatureLocked = StatsPullAtomService.this.pullTemperatureLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullTemperatureLocked;
                    case 10022:
                        synchronized (StatsPullAtomService.this.mBinderCallsStatsLock) {
                            iPullBinderCallsStatsLocked = StatsPullAtomService.this.pullBinderCallsStatsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullBinderCallsStatsLocked;
                    case 10023:
                        synchronized (StatsPullAtomService.this.mBinderCallsStatsExceptionsLock) {
                            iPullBinderCallsStatsExceptionsLocked = StatsPullAtomService.this.pullBinderCallsStatsExceptionsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullBinderCallsStatsExceptionsLocked;
                    case 10024:
                        synchronized (StatsPullAtomService.this.mLooperStatsLock) {
                            iPullLooperStatsLocked = StatsPullAtomService.this.pullLooperStatsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullLooperStatsLocked;
                    case 10025:
                        synchronized (StatsPullAtomService.this.mDiskStatsLock) {
                            iPullDiskStatsLocked = StatsPullAtomService.this.pullDiskStatsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDiskStatsLocked;
                    case 10026:
                        synchronized (StatsPullAtomService.this.mDirectoryUsageLock) {
                            iPullDirectoryUsageLocked = StatsPullAtomService.this.pullDirectoryUsageLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDirectoryUsageLocked;
                    case 10027:
                        synchronized (StatsPullAtomService.this.mAppSizeLock) {
                            iPullAppSizeLocked = StatsPullAtomService.this.pullAppSizeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullAppSizeLocked;
                    case 10028:
                        synchronized (StatsPullAtomService.this.mCategorySizeLock) {
                            iPullCategorySizeLocked = StatsPullAtomService.this.pullCategorySizeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCategorySizeLocked;
                    case 10029:
                        synchronized (StatsPullAtomService.this.mProcStatsLock) {
                            iPullProcStatsLocked = StatsPullAtomService.this.pullProcStatsLocked(15, atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcStatsLocked;
                    case 10031:
                        synchronized (StatsPullAtomService.this.mNumBiometricsEnrolledLock) {
                            iPullNumBiometricsEnrolledLocked = StatsPullAtomService.this.pullNumBiometricsEnrolledLocked(1, atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullNumBiometricsEnrolledLocked;
                    case 10032:
                        synchronized (StatsPullAtomService.this.mDiskIoLock) {
                            iPullDiskIOLocked = StatsPullAtomService.this.pullDiskIOLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDiskIOLocked;
                    case 10033:
                        synchronized (StatsPullAtomService.this.mPowerProfileLock) {
                            iPullPowerProfileLocked = StatsPullAtomService.this.pullPowerProfileLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullPowerProfileLocked;
                    case 10034:
                        synchronized (StatsPullAtomService.this.mProcStatsLock) {
                            iPullProcStatsLocked2 = StatsPullAtomService.this.pullProcStatsLocked(2, atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcStatsLocked2;
                    case 10035:
                        synchronized (StatsPullAtomService.this.mProcessCpuTimeLock) {
                            iPullProcessCpuTimeLocked = StatsPullAtomService.this.pullProcessCpuTimeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcessCpuTimeLocked;
                    case 10037:
                        synchronized (StatsPullAtomService.this.mCpuTimePerThreadFreqLock) {
                            iPullCpuTimePerThreadFreqLocked = StatsPullAtomService.this.pullCpuTimePerThreadFreqLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCpuTimePerThreadFreqLocked;
                    case 10039:
                        synchronized (StatsPullAtomService.this.mDeviceCalculatedPowerUseLock) {
                            iPullDeviceCalculatedPowerUseLocked = StatsPullAtomService.this.pullDeviceCalculatedPowerUseLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDeviceCalculatedPowerUseLocked;
                    case 10040:
                        synchronized (StatsPullAtomService.this.mDeviceCalculatedPowerBlameUidLock) {
                            iPullDeviceCalculatedPowerBlameUidLocked = StatsPullAtomService.this.pullDeviceCalculatedPowerBlameUidLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDeviceCalculatedPowerBlameUidLocked;
                    case 10041:
                        synchronized (StatsPullAtomService.this.mDeviceCalculatedPowerBlameOtherLock) {
                            iPullDeviceCalculatedPowerBlameOtherLocked = StatsPullAtomService.this.pullDeviceCalculatedPowerBlameOtherLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDeviceCalculatedPowerBlameOtherLocked;
                    case 10042:
                        synchronized (StatsPullAtomService.this.mProcessMemoryHighWaterMarkLock) {
                            iPullProcessMemoryHighWaterMarkLocked = StatsPullAtomService.this.pullProcessMemoryHighWaterMarkLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcessMemoryHighWaterMarkLocked;
                    case 10044:
                        synchronized (StatsPullAtomService.this.mBuildInformationLock) {
                            iPullBuildInformationLocked = StatsPullAtomService.this.pullBuildInformationLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullBuildInformationLocked;
                    case 10046:
                        synchronized (StatsPullAtomService.this.mDebugElapsedClockLock) {
                            iPullDebugElapsedClockLocked = StatsPullAtomService.this.pullDebugElapsedClockLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDebugElapsedClockLocked;
                    case 10047:
                        synchronized (StatsPullAtomService.this.mDebugFailingElapsedClockLock) {
                            iPullDebugFailingElapsedClockLocked = StatsPullAtomService.this.pullDebugFailingElapsedClockLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDebugFailingElapsedClockLocked;
                    case 10048:
                        synchronized (StatsPullAtomService.this.mNumBiometricsEnrolledLock) {
                            iPullNumBiometricsEnrolledLocked2 = StatsPullAtomService.this.pullNumBiometricsEnrolledLocked(4, atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullNumBiometricsEnrolledLocked2;
                    case 10049:
                        synchronized (StatsPullAtomService.this.mRoleHolderLock) {
                            iPullRoleHolderLocked = StatsPullAtomService.this.pullRoleHolderLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullRoleHolderLocked;
                    case 10050:
                    case 10067:
                        synchronized (StatsPullAtomService.this.mDangerousPermissionStateLock) {
                            iPullDangerousPermissionStateLocked = StatsPullAtomService.this.pullDangerousPermissionStateLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullDangerousPermissionStateLocked;
                    case 10052:
                        synchronized (StatsPullAtomService.this.mTimeZoneDataInfoLock) {
                            iPullTimeZoneDataInfoLocked = StatsPullAtomService.this.pullTimeZoneDataInfoLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullTimeZoneDataInfoLocked;
                    case 10053:
                        synchronized (StatsPullAtomService.this.mExternalStorageInfoLock) {
                            iPullExternalStorageInfoLocked = StatsPullAtomService.this.pullExternalStorageInfoLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullExternalStorageInfoLocked;
                    case 10056:
                        synchronized (StatsPullAtomService.this.mSystemIonHeapSizeLock) {
                            iPullSystemIonHeapSizeLocked = StatsPullAtomService.this.pullSystemIonHeapSizeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullSystemIonHeapSizeLocked;
                    case 10057:
                        synchronized (StatsPullAtomService.this.mAppsOnExternalStorageInfoLock) {
                            iPullAppsOnExternalStorageInfoLocked = StatsPullAtomService.this.pullAppsOnExternalStorageInfoLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullAppsOnExternalStorageInfoLocked;
                    case 10058:
                        synchronized (StatsPullAtomService.this.mFaceSettingsLock) {
                            iPullFaceSettingsLocked = StatsPullAtomService.this.pullFaceSettingsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullFaceSettingsLocked;
                    case 10059:
                        synchronized (StatsPullAtomService.this.mCooldownDeviceLock) {
                            iPullCooldownDeviceLocked = StatsPullAtomService.this.pullCooldownDeviceLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullCooldownDeviceLocked;
                    case 10060:
                        synchronized (StatsPullAtomService.this.mAppOpsLock) {
                            iPullAppOpsLocked = StatsPullAtomService.this.pullAppOpsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullAppOpsLocked;
                    case 10061:
                        synchronized (StatsPullAtomService.this.mProcessSystemIonHeapSizeLock) {
                            iPullProcessSystemIonHeapSizeLocked = StatsPullAtomService.this.pullProcessSystemIonHeapSizeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcessSystemIonHeapSizeLocked;
                    case 10064:
                        synchronized (StatsPullAtomService.this.mProcessMemorySnapshotLock) {
                            iPullProcessMemorySnapshotLocked = StatsPullAtomService.this.pullProcessMemorySnapshotLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullProcessMemorySnapshotLocked;
                    case 10066:
                        synchronized (StatsPullAtomService.this.mNotificationRemoteViewsLock) {
                            iPullNotificationRemoteViewsLocked = StatsPullAtomService.this.pullNotificationRemoteViewsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullNotificationRemoteViewsLocked;
                    case 10069:
                        synchronized (StatsPullAtomService.this.mRuntimeAppOpAccessMessageLock) {
                            iPullRuntimeAppOpAccessMessageLocked = StatsPullAtomService.this.pullRuntimeAppOpAccessMessageLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullRuntimeAppOpAccessMessageLocked;
                    case 10070:
                        synchronized (StatsPullAtomService.this.mIonHeapSizeLock) {
                            iPullIonHeapSizeLocked = StatsPullAtomService.this.pullIonHeapSizeLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullIonHeapSizeLocked;
                    case 10075:
                        synchronized (StatsPullAtomService.this.mAttributedAppOpsLock) {
                            iPullAttributedAppOpsLocked = StatsPullAtomService.this.pullAttributedAppOpsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullAttributedAppOpsLocked;
                    case 10080:
                        synchronized (StatsPullAtomService.this.mSettingsStatsLock) {
                            iPullSettingsStatsLocked = StatsPullAtomService.this.pullSettingsStatsLocked(atomTag, data);
                            break;
                        }
                        Trace.traceEnd(524288L);
                        return iPullSettingsStatsLocked;
                }
            } catch (Throwable th) {
                Trace.traceEnd(524288L);
                throw th;
            }
            Trace.traceEnd(524288L);
            throw th;
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        super.onBootPhase(phase);
        if (phase == 500) {
            BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$DD__7RQZDPvJeL9pnb_7J1voUNE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBootPhase$0$StatsPullAtomService();
                }
            });
        } else if (phase == 600) {
            BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$w2J9UcZX1E4P1ogWSvuoTC2auDE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBootPhase$1$StatsPullAtomService();
                }
            });
        }
    }

    public /* synthetic */ void lambda$onBootPhase$0$StatsPullAtomService() {
        nativeInit();
        initializePullersState();
        registerPullers();
        registerEventListeners();
    }

    void initializePullersState() {
        this.mStatsManager = (StatsManager) this.mContext.getSystemService("stats");
        this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        this.mTelephony = (TelephonyManager) this.mContext.getSystemService("phone");
        this.mSubscriptionManager = (SubscriptionManager) this.mContext.getSystemService("telephony_subscription_service");
        this.mStatsSubscriptionsListener = new StatsSubscriptionsListener(this.mSubscriptionManager);
        this.mStorageManager = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        this.mStoragedUidIoStatsReader = new StoragedUidIoStatsReader();
        File file = new File(SystemServiceManager.ensureSystemDir(), "stats_pull");
        this.mBaseDir = file;
        file.mkdirs();
        this.mCpuUidUserSysTimeReader = new KernelCpuUidTimeReader.KernelCpuUidUserSysTimeReader(false);
        this.mCpuUidFreqTimeReader = new KernelCpuUidTimeReader.KernelCpuUidFreqTimeReader(false);
        this.mCpuUidActiveTimeReader = new KernelCpuUidTimeReader.KernelCpuUidActiveTimeReader(false);
        this.mCpuUidClusterTimeReader = new KernelCpuUidTimeReader.KernelCpuUidClusterTimeReader(false);
        this.mKernelWakelockReader = new KernelWakelockReader();
        this.mTmpWakelockStats = new KernelWakelockStats();
        PowerProfile powerProfile = new PowerProfile(this.mContext);
        int numClusters = powerProfile.getNumCpuClusters();
        this.mKernelCpuSpeedReaders = new KernelCpuSpeedReader[numClusters];
        int firstCpuOfCluster = 0;
        for (int i = 0; i < numClusters; i++) {
            int numSpeedSteps = powerProfile.getNumSpeedStepsInCpuCluster(i);
            this.mKernelCpuSpeedReaders[i] = new KernelCpuSpeedReader(firstCpuOfCluster, numSpeedSteps);
            firstCpuOfCluster += powerProfile.getNumCoresInCpuCluster(i);
        }
        this.mKernelCpuThreadReader = KernelCpuThreadReaderSettingsObserver.getSettingsModifiedReader(this.mContext);
        BatteryService.HealthServiceWrapper healthServiceWrapper = new BatteryService.HealthServiceWrapper();
        this.mHealthService = healthServiceWrapper;
        try {
            healthServiceWrapper.init();
        } catch (RemoteException e) {
            Slog.e(TAG, "failed to initialize healthHalWrapper");
        }
        PackageManager pm = this.mContext.getPackageManager();
        for (int op = 0; op < 103; op++) {
            String perm = AppOpsManager.opToPermission(op);
            if (perm != null) {
                try {
                    PermissionInfo permInfo = pm.getPermissionInfo(perm, 0);
                    if (permInfo.getProtection() == 1) {
                        this.mDangerousAppOpsList.add(Integer.valueOf(op));
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                }
            }
        }
    }

    void registerEventListeners() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkRequest request = new NetworkRequest.Builder().build();
        connectivityManager.registerNetworkCallback(request, new ConnectivityStatsCallback());
        IThermalService thermalService = getIThermalService();
        if (thermalService != null) {
            try {
                thermalService.registerThermalEventListener(new ThermalEventListener());
                Slog.i(TAG, "register thermal listener successfully");
            } catch (RemoteException e) {
                Slog.i(TAG, "failed to register thermal listener");
            }
        }
    }

    void registerPullers() {
        Slog.d(TAG, "Registering pullers with statsd");
        this.mStatsCallbackImpl = new StatsPullAtomCallbackImpl();
        registerBluetoothBytesTransfer();
        registerKernelWakelock();
        registerCpuTimePerFreq();
        registerCpuTimePerUid();
        registerCpuTimePerUidFreq();
        registerCpuActiveTime();
        registerCpuClusterTime();
        registerWifiActivityInfo();
        registerModemActivityInfo();
        registerBluetoothActivityInfo();
        registerSystemElapsedRealtime();
        registerSystemUptime();
        registerProcessMemoryState();
        registerProcessMemoryHighWaterMark();
        registerProcessMemorySnapshot();
        registerSystemIonHeapSize();
        registerIonHeapSize();
        registerProcessSystemIonHeapSize();
        registerTemperature();
        registerCoolingDevice();
        registerBinderCallsStats();
        registerBinderCallsStatsExceptions();
        registerLooperStats();
        registerDiskStats();
        registerDirectoryUsage();
        registerAppSize();
        registerCategorySize();
        registerNumFingerprintsEnrolled();
        registerNumFacesEnrolled();
        registerProcStats();
        registerProcStatsPkgProc();
        registerDiskIO();
        registerPowerProfile();
        registerProcessCpuTime();
        registerCpuTimePerThreadFreq();
        registerDeviceCalculatedPowerUse();
        registerDeviceCalculatedPowerBlameUid();
        registerDeviceCalculatedPowerBlameOther();
        registerDebugElapsedClock();
        registerDebugFailingElapsedClock();
        registerBuildInformation();
        registerRoleHolder();
        registerTimeZoneDataInfo();
        registerExternalStorageInfo();
        registerAppsOnExternalStorageInfo();
        registerFaceSettings();
        registerAppOps();
        registerAttributedAppOps();
        registerRuntimeAppOpAccessMessage();
        registerNotificationRemoteViews();
        registerDangerousPermissionState();
        registerDangerousPermissionStateSampled();
        registerBatteryLevel();
        registerRemainingBatteryCapacity();
        registerFullBatteryCapacity();
        registerBatteryVoltage();
        registerBatteryCycleCount();
        registerSettingsStats();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initAndRegisterNetworkStatsPullers, reason: merged with bridge method [inline-methods] */
    public void lambda$onBootPhase$1$StatsPullAtomService() {
        Slog.d(TAG, "Registering NetworkStats pullers with statsd");
        this.mNetworkStatsBaselines.addAll(collectNetworkStatsSnapshotForAtom(10000));
        this.mNetworkStatsBaselines.addAll(collectNetworkStatsSnapshotForAtom(10001));
        this.mNetworkStatsBaselines.addAll(collectNetworkStatsSnapshotForAtom(10002));
        this.mNetworkStatsBaselines.addAll(collectNetworkStatsSnapshotForAtom(10003));
        this.mNetworkStatsBaselines.addAll(collectNetworkStatsSnapshotForAtom(10083));
        this.mNetworkStatsBaselines.addAll(collectNetworkStatsSnapshotForAtom(10082));
        this.mSubscriptionManager.addOnSubscriptionsChangedListener(BackgroundThread.getExecutor(), this.mStatsSubscriptionsListener);
        registerWifiBytesTransfer();
        registerWifiBytesTransferBackground();
        registerMobileBytesTransfer();
        registerMobileBytesTransferBackground();
        registerBytesTransferByTagAndMetered();
        registerDataUsageBytesTransfer();
    }

    private INetworkStatsSession getNetworkStatsSession(boolean bypassRateLimit) {
        INetworkStatsService networkStatsService = INetworkStatsService.Stub.asInterface(ServiceManager.getService("netstats"));
        if (networkStatsService == null) {
            return null;
        }
        try {
            return networkStatsService.openSessionForUsageStats(4 | (bypassRateLimit ? 2 : 1), this.mContext.getOpPackageName());
        } catch (RemoteException e) {
            Slog.e(TAG, "Cannot get NetworkStats session", e);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002e A[Catch: all -> 0x0032, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0015, B:11:0x0024, B:12:0x002e, B:13:0x0030), top: B:20:0x0003, inners: #0 }] */
    private IThermalService getIThermalService() {
        IThermalService iThermalService;
        synchronized (this.mThermalLock) {
            if (this.mThermalService == null) {
                IThermalService iThermalServiceAsInterface = IThermalService.Stub.asInterface(ServiceManager.getService("thermalservice"));
                this.mThermalService = iThermalServiceAsInterface;
                if (iThermalServiceAsInterface != null) {
                    try {
                        iThermalServiceAsInterface.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$RPju9l8LZxvj1kR9SO_j3YArLwk
                            @Override // android.os.IBinder.DeathRecipient
                            public final void binderDied() {
                                this.f$0.lambda$getIThermalService$2$StatsPullAtomService();
                            }
                        }, 0);
                    } catch (RemoteException e) {
                        Slog.e(TAG, "linkToDeath with thermalService failed", e);
                        this.mThermalService = null;
                    }
                    iThermalService = this.mThermalService;
                } else {
                    iThermalService = this.mThermalService;
                }
            } else {
                iThermalService = this.mThermalService;
            }
            throw th;
        }
        return iThermalService;
    }

    public /* synthetic */ void lambda$getIThermalService$2$StatsPullAtomService() {
        synchronized (this.mThermalLock) {
            this.mThermalService = null;
        }
    }

    private IStoraged getIStoragedService() {
        synchronized (this.mStoragedLock) {
            if (this.mStorageService == null) {
                this.mStorageService = IStoraged.Stub.asInterface(ServiceManager.getService("storaged"));
            }
            if (this.mStorageService != null) {
                try {
                    this.mStorageService.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$bGdd1XQKPBSlirlhMqL7Kyr4dKU
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            this.f$0.lambda$getIStoragedService$3$StatsPullAtomService();
                        }
                    }, 0);
                } catch (RemoteException e) {
                    Slog.e(TAG, "linkToDeath with storagedService failed", e);
                    this.mStorageService = null;
                }
            }
        }
        return this.mStorageService;
    }

    public /* synthetic */ void lambda$getIStoragedService$3$StatsPullAtomService() {
        synchronized (this.mStoragedLock) {
            this.mStorageService = null;
        }
    }

    private INotificationManager getINotificationManagerService() {
        synchronized (this.mNotificationStatsLock) {
            if (this.mNotificationManagerService == null) {
                this.mNotificationManagerService = INotificationManager.Stub.asInterface(ServiceManager.getService("notification"));
            }
            if (this.mNotificationManagerService != null) {
                try {
                    this.mNotificationManagerService.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$SqdF4nK9ElmlOAiZ4Ki0RbhnyFQ
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            this.f$0.lambda$getINotificationManagerService$4$StatsPullAtomService();
                        }
                    }, 0);
                } catch (RemoteException e) {
                    Slog.e(TAG, "linkToDeath with notificationManager failed", e);
                    this.mNotificationManagerService = null;
                }
            }
        }
        return this.mNotificationManagerService;
    }

    public /* synthetic */ void lambda$getINotificationManagerService$4$StatsPullAtomService() {
        synchronized (this.mNotificationStatsLock) {
            this.mNotificationManagerService = null;
        }
    }

    private IProcessStats getIProcessStatsService() {
        synchronized (this.mProcStatsLock) {
            if (this.mProcessStatsService == null) {
                this.mProcessStatsService = IProcessStats.Stub.asInterface(ServiceManager.getService("procstats"));
            }
            if (this.mProcessStatsService != null) {
                try {
                    this.mProcessStatsService.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$4tfrHblqmHrtPiB3WLHYY9Tgjx4
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            this.f$0.lambda$getIProcessStatsService$5$StatsPullAtomService();
                        }
                    }, 0);
                } catch (RemoteException e) {
                    Slog.e(TAG, "linkToDeath with ProcessStats failed", e);
                    this.mProcessStatsService = null;
                }
            }
        }
        return this.mProcessStatsService;
    }

    public /* synthetic */ void lambda$getIProcessStatsService$5$StatsPullAtomService() {
        synchronized (this.mProcStatsLock) {
            this.mProcessStatsService = null;
        }
    }

    private void registerWifiBytesTransfer() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2, 3, 4, 5}).build();
        this.mStatsManager.setPullAtomCallback(10000, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private List<NetworkStatsExt> collectNetworkStatsSnapshotForAtom(int atomTag) {
        List<NetworkStatsExt> ret = new ArrayList<>();
        if (atomTag == 10082) {
            for (SubInfo subInfo : this.mHistoricalSubs) {
                ret.addAll(getDataUsageBytesTransferSnapshotForSub(subInfo));
            }
        } else if (atomTag != 10083) {
            switch (atomTag) {
                case 10000:
                    NetworkStats stats = getUidNetworkStatsSnapshotForTransport(1);
                    if (stats != null) {
                        ret.add(new NetworkStatsExt(stats.groupedByUid(), new int[]{1}, false));
                    }
                    break;
                case 10001:
                    NetworkStats stats2 = getUidNetworkStatsSnapshotForTransport(1);
                    if (stats2 != null) {
                        ret.add(new NetworkStatsExt(sliceNetworkStatsByUidAndFgbg(stats2), new int[]{1}, true));
                    }
                    break;
                case 10002:
                    NetworkStats stats3 = getUidNetworkStatsSnapshotForTransport(0);
                    if (stats3 != null) {
                        ret.add(new NetworkStatsExt(stats3.groupedByUid(), new int[]{0}, false));
                    }
                    break;
                case 10003:
                    NetworkStats stats4 = getUidNetworkStatsSnapshotForTransport(0);
                    if (stats4 != null) {
                        ret.add(new NetworkStatsExt(sliceNetworkStatsByUidAndFgbg(stats4), new int[]{0}, true));
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Unknown atomTag " + atomTag);
            }
        } else {
            NetworkStats wifiStats = getUidNetworkStatsSnapshotForTemplate(NetworkTemplate.buildTemplateWifiWildcard(), true);
            NetworkStats cellularStats = getUidNetworkStatsSnapshotForTemplate(NetworkTemplate.buildTemplateMobileWildcard(), true);
            if (wifiStats != null && cellularStats != null) {
                ret.add(new NetworkStatsExt(sliceNetworkStatsByUidTagAndMetered(wifiStats.add(cellularStats)), new int[]{1, 0}, false, true, true, 0, null));
            }
        }
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int pullDataBytesTransferLocked(int atomTag, List<StatsEvent> pulledData) {
        List<NetworkStatsExt> current = collectNetworkStatsSnapshotForAtom(atomTag);
        int i = 1;
        if (current == null) {
            Slog.e(TAG, "current snapshot is null for " + atomTag + ", return.");
            return 1;
        }
        for (final NetworkStatsExt item : current) {
            NetworkStatsExt baseline = (NetworkStatsExt) CollectionUtils.find(this.mNetworkStatsBaselines, new Predicate() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$p7uT0a71EezJS5cR_M51T9WNkb4
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((NetworkStatsExt) obj).hasSameSlicing(item);
                }
            });
            if (baseline == null) {
                Slog.e(TAG, "baseline is null for " + atomTag + ", return.");
                return i;
            }
            NetworkStatsExt diff = new NetworkStatsExt(item.stats.subtract(baseline.stats).removeEmptyEntries(), item.transports, item.slicedByFgbg, item.slicedByTag, item.slicedByMetered, item.ratType, item.subInfo);
            if (diff.stats.size() == 0) {
                i = 1;
            } else {
                if (atomTag == 10082) {
                    addDataUsageBytesTransferAtoms(diff, pulledData);
                } else if (atomTag == 10083) {
                    addBytesTransferByTagAndMeteredAtoms(diff, pulledData);
                } else {
                    addNetworkStats(atomTag, pulledData, diff);
                }
                i = 1;
            }
        }
        return 0;
    }

    private void addNetworkStats(int atomTag, List<StatsEvent> ret, NetworkStatsExt statsExt) {
        int size = statsExt.stats.size();
        NetworkStats.Entry entry = new NetworkStats.Entry();
        for (int j = 0; j < size; j++) {
            statsExt.stats.getValues(j, entry);
            StatsEvent.Builder e = StatsEvent.newBuilder();
            e.setAtomId(atomTag);
            if (atomTag == 10002 || atomTag == 10003) {
                e.addBooleanAnnotation((byte) 2, true);
            }
            e.writeInt(entry.uid);
            e.addBooleanAnnotation((byte) 1, true);
            if (statsExt.slicedByFgbg) {
                e.writeInt(entry.set);
            }
            e.writeLong(entry.rxBytes);
            e.writeLong(entry.rxPackets);
            e.writeLong(entry.txBytes);
            e.writeLong(entry.txPackets);
            ret.add(e.build());
        }
    }

    private void addBytesTransferByTagAndMeteredAtoms(NetworkStatsExt statsExt, List<StatsEvent> pulledData) {
        NetworkStats.Entry entry = new NetworkStats.Entry();
        for (int i = 0; i < statsExt.stats.size(); i++) {
            statsExt.stats.getValues(i, entry);
            boolean z = true;
            StatsEvent.Builder builderAddBooleanAnnotation = StatsEvent.newBuilder().setAtomId(10083).addBooleanAnnotation((byte) 2, true).writeInt(entry.uid).addBooleanAnnotation((byte) 1, true);
            if (entry.metered != 1) {
                z = false;
            }
            StatsEvent e = builderAddBooleanAnnotation.writeBoolean(z).writeInt(entry.tag).writeLong(entry.rxBytes).writeLong(entry.rxPackets).writeLong(entry.txBytes).writeLong(entry.txPackets).build();
            pulledData.add(e);
        }
    }

    private void addDataUsageBytesTransferAtoms(NetworkStatsExt statsExt, List<StatsEvent> pulledData) {
        boolean is5GNsa = statsExt.ratType == -2;
        boolean isNR = is5GNsa || statsExt.ratType == 20;
        NetworkStats.Entry entry = new NetworkStats.Entry();
        for (int i = 0; i < statsExt.stats.size(); i++) {
            statsExt.stats.getValues(i, entry);
            int i2 = 2;
            StatsEvent.Builder builderWriteInt = StatsEvent.newBuilder().setAtomId(10082).addBooleanAnnotation((byte) 2, true).writeInt(entry.set).writeLong(entry.rxBytes).writeLong(entry.rxPackets).writeLong(entry.txBytes).writeLong(entry.txPackets).writeInt(is5GNsa ? 13 : statsExt.ratType).writeString(statsExt.subInfo.mcc).writeString(statsExt.subInfo.mnc).writeInt(statsExt.subInfo.carrierId);
            if (!statsExt.subInfo.isOpportunistic) {
                i2 = 3;
            }
            StatsEvent e = builderWriteInt.writeInt(i2).writeBoolean(isNR).build();
            pulledData.add(e);
        }
    }

    private NetworkStats getUidNetworkStatsSnapshotForTransport(int transport) {
        NetworkTemplate template;
        if (transport == 0) {
            template = NetworkTemplate.buildTemplateMobileWithRatType((String) null, -1);
        } else {
            template = NetworkTemplate.buildTemplateWifiWildcard();
        }
        return getUidNetworkStatsSnapshotForTemplate(template, false);
    }

    private NetworkStats getUidNetworkStatsSnapshotForTemplate(NetworkTemplate template, boolean includeTags) {
        long elapsedMillisSinceBoot = SystemClock.elapsedRealtime();
        long currentTimeInMillis = TimeUnit.MICROSECONDS.toMillis(SystemClock.currentTimeMicro());
        long bucketDuration = Settings.Global.getLong(this.mContext.getContentResolver(), "netstats_uid_bucket_duration", NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS);
        try {
            NetworkStats stats = getNetworkStatsSession(template.getMatchRule() == 7).getSummaryForAllUid(template, (currentTimeInMillis - elapsedMillisSinceBoot) - bucketDuration, currentTimeInMillis, includeTags);
            return stats;
        } catch (RemoteException | NullPointerException e) {
            Slog.e(TAG, "Pulling netstats for template=" + template + " and includeTags=" + includeTags + " causes error", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public List<NetworkStatsExt> getDataUsageBytesTransferSnapshotForSub(SubInfo subInfo) {
        List<NetworkStatsExt> ret = new ArrayList<>();
        int[] allCollapsedRatTypes = NetworkTemplate.getAllCollapsedRatTypes();
        int length = allCollapsedRatTypes.length;
        ?? r4 = 0;
        int i = 0;
        while (i < length) {
            int ratType = allCollapsedRatTypes[i];
            NetworkTemplate template = NetworkTemplate.buildTemplateMobileWithRatType(subInfo.subscriberId, ratType);
            NetworkStats stats = getUidNetworkStatsSnapshotForTemplate(template, r4);
            if (stats != null) {
                NetworkStats networkStatsSliceNetworkStatsByFgbg = sliceNetworkStatsByFgbg(stats);
                int[] iArr = new int[1];
                iArr[r4] = r4;
                ret.add(new NetworkStatsExt(networkStatsSliceNetworkStatsByFgbg, iArr, true, false, false, ratType, subInfo));
            }
            i++;
            r4 = 0;
        }
        return ret;
    }

    private NetworkStats sliceNetworkStatsByFgbg(NetworkStats stats) {
        return sliceNetworkStats(stats, new BiConsumer() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$ig4lvwvWpcGcnTfyysmBmnE31Y0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((NetworkStats.Entry) obj).set = ((NetworkStats.Entry) obj2).set;
            }
        });
    }

    private NetworkStats sliceNetworkStatsByUidAndFgbg(NetworkStats stats) {
        return sliceNetworkStats(stats, new BiConsumer() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$cwWIypDOMYGE9DeAeXTAf5svkjg
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                StatsPullAtomService.lambda$sliceNetworkStatsByUidAndFgbg$8((NetworkStats.Entry) obj, (NetworkStats.Entry) obj2);
            }
        });
    }

    static /* synthetic */ void lambda$sliceNetworkStatsByUidAndFgbg$8(NetworkStats.Entry newEntry, NetworkStats.Entry oldEntry) {
        newEntry.uid = oldEntry.uid;
        newEntry.set = oldEntry.set;
    }

    private NetworkStats sliceNetworkStatsByUidTagAndMetered(NetworkStats stats) {
        return sliceNetworkStats(stats, new BiConsumer() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$XZ9Q7OtKddIKuUpO0rhZztz_J7M
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                StatsPullAtomService.lambda$sliceNetworkStatsByUidTagAndMetered$9((NetworkStats.Entry) obj, (NetworkStats.Entry) obj2);
            }
        });
    }

    static /* synthetic */ void lambda$sliceNetworkStatsByUidTagAndMetered$9(NetworkStats.Entry newEntry, NetworkStats.Entry oldEntry) {
        newEntry.uid = oldEntry.uid;
        newEntry.tag = oldEntry.tag;
        newEntry.metered = oldEntry.metered;
    }

    private NetworkStats sliceNetworkStats(NetworkStats stats, BiConsumer<NetworkStats.Entry, NetworkStats.Entry> slicer) {
        NetworkStats ret = new NetworkStats(stats.getElapsedRealtime(), 1);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        entry.uid = -1;
        entry.iface = NetworkStats.IFACE_ALL;
        entry.set = -1;
        entry.tag = 0;
        entry.metered = -1;
        entry.roaming = -1;
        entry.defaultNetwork = -1;
        NetworkStats.Entry recycle = new NetworkStats.Entry();
        for (int i = 0; i < stats.size(); i++) {
            stats.getValues(i, recycle);
            if (slicer != null) {
                slicer.accept(entry, recycle);
            }
            entry.rxBytes = recycle.rxBytes;
            entry.rxPackets = recycle.rxPackets;
            entry.txBytes = recycle.txBytes;
            entry.txPackets = recycle.txPackets;
            ret.combineValues(entry);
        }
        return ret;
    }

    private void registerWifiBytesTransferBackground() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{3, 4, 5, 6}).build();
        this.mStatsManager.setPullAtomCallback(10001, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerMobileBytesTransfer() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2, 3, 4, 5}).build();
        this.mStatsManager.setPullAtomCallback(10002, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerMobileBytesTransferBackground() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{3, 4, 5, 6}).build();
        this.mStatsManager.setPullAtomCallback(10003, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerBytesTransferByTagAndMetered() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{4, 5, 6, 7}).build();
        this.mStatsManager.setPullAtomCallback(10083, metadata, BackgroundThread.getExecutor(), this.mStatsCallbackImpl);
    }

    private void registerDataUsageBytesTransfer() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2, 3, 4, 5}).build();
        this.mStatsManager.setPullAtomCallback(10082, metadata, BackgroundThread.getExecutor(), this.mStatsCallbackImpl);
    }

    private void registerBluetoothBytesTransfer() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2, 3}).build();
        this.mStatsManager.setPullAtomCallback(10006, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private static <T extends Parcelable> T awaitControllerInfo(SynchronousResultReceiver synchronousResultReceiver) {
        if (synchronousResultReceiver == null) {
            return null;
        }
        try {
            SynchronousResultReceiver.Result resultAwaitResult = synchronousResultReceiver.awaitResult(EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS);
            if (resultAwaitResult.bundle != null) {
                resultAwaitResult.bundle.setDefusable(true);
                T t = (T) resultAwaitResult.bundle.getParcelable(RESULT_RECEIVER_CONTROLLER_KEY);
                if (t != null) {
                    return t;
                }
            }
        } catch (TimeoutException e) {
            Slog.w(TAG, "timeout reading " + synchronousResultReceiver.getName() + " stats");
        }
        return null;
    }

    private BluetoothActivityEnergyInfo fetchBluetoothData() {
        BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
        if (adapter != null) {
            SynchronousResultReceiver bluetoothReceiver = new SynchronousResultReceiver("bluetooth");
            adapter.requestControllerActivityEnergyInfo(bluetoothReceiver);
            return awaitControllerInfo(bluetoothReceiver);
        }
        Slog.e(TAG, "Failed to get bluetooth adapter!");
        return null;
    }

    int pullBluetoothBytesTransferLocked(int atomTag, List<StatsEvent> pulledData) {
        BluetoothActivityEnergyInfo info = fetchBluetoothData();
        if (info == null || info.getUidTraffic() == null) {
            return 1;
        }
        for (UidTraffic traffic : info.getUidTraffic()) {
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(traffic.getUid()).addBooleanAnnotation((byte) 1, true).writeLong(traffic.getRxBytes()).writeLong(traffic.getTxBytes()).build();
            pulledData.add(e);
        }
        return 0;
    }

    private void registerKernelWakelock() {
        this.mStatsManager.setPullAtomCallback(10004, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullKernelWakelockLocked(int atomTag, List<StatsEvent> pulledData) {
        KernelWakelockStats wakelockStats = this.mKernelWakelockReader.readKernelWakelockStats(this.mTmpWakelockStats);
        for (Map.Entry<String, KernelWakelockStats.Entry> ent : wakelockStats.entrySet()) {
            String name = ent.getKey();
            KernelWakelockStats.Entry kws = ent.getValue();
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeString(name).writeInt(kws.mCount).writeInt(kws.mVersion).writeLong(kws.mTotalTime).build();
            pulledData.add(e);
        }
        return 0;
    }

    private void registerCpuTimePerFreq() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{3}).build();
        this.mStatsManager.setPullAtomCallback(10008, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCpuTimePerFreqLocked(int atomTag, List<StatsEvent> pulledData) {
        int cluster = 0;
        while (true) {
            KernelCpuSpeedReader[] kernelCpuSpeedReaderArr = this.mKernelCpuSpeedReaders;
            if (cluster < kernelCpuSpeedReaderArr.length) {
                long[] clusterTimeMs = kernelCpuSpeedReaderArr[cluster].readAbsolute();
                if (clusterTimeMs != null) {
                    for (int speed = clusterTimeMs.length - 1; speed >= 0; speed--) {
                        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(cluster).writeInt(speed).writeLong(clusterTimeMs[speed]).build();
                        pulledData.add(e);
                    }
                }
                cluster++;
            } else {
                return 0;
            }
        }
    }

    private void registerCpuTimePerUid() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2, 3}).build();
        this.mStatsManager.setPullAtomCallback(10009, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCpuTimePerUidLocked(final int atomTag, final List<StatsEvent> pulledData) {
        this.mCpuUidUserSysTimeReader.readAbsolute(new KernelCpuUidTimeReader.Callback() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$b4_7_H3BTTvMclBjrN4ip85gTHU
            public final void onUidCpuTime(int i, Object obj) {
                StatsPullAtomService.lambda$pullCpuTimePerUidLocked$10(atomTag, pulledData, i, (long[]) obj);
            }
        });
        return 0;
    }

    static /* synthetic */ void lambda$pullCpuTimePerUidLocked$10(int atomTag, List pulledData, int uid, long[] timesUs) {
        long userTimeUs = timesUs[0];
        long systemTimeUs = timesUs[1];
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(uid).addBooleanAnnotation((byte) 1, true).writeLong(userTimeUs).writeLong(systemTimeUs).build();
        pulledData.add(e);
    }

    private void registerCpuTimePerUidFreq() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{3}).build();
        this.mStatsManager.setPullAtomCallback(10010, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCpuTimePerUidFreqLocked(int atomTag, List<StatsEvent> pulledData) {
        final SparseArray<long[]> aggregated = new SparseArray<>();
        this.mCpuUidFreqTimeReader.readAbsolute(new KernelCpuUidTimeReader.Callback() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$tGd6U7cspSY9ERQT8BN7Mq_zLgU
            public final void onUidCpuTime(int i, Object obj) {
                StatsPullAtomService.lambda$pullCpuTimePerUidFreqLocked$11(aggregated, i, (long[]) obj);
            }
        });
        int size = aggregated.size();
        for (int i = 0; i < size; i++) {
            int uid = aggregated.keyAt(i);
            long[] aggCpuFreqTimeMs = aggregated.valueAt(i);
            for (int freqIndex = 0; freqIndex < aggCpuFreqTimeMs.length; freqIndex++) {
                if (aggCpuFreqTimeMs[freqIndex] >= 10) {
                    StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(uid).addBooleanAnnotation((byte) 1, true).writeInt(freqIndex).writeLong(aggCpuFreqTimeMs[freqIndex]).build();
                    pulledData.add(e);
                }
            }
        }
        return 0;
    }

    static /* synthetic */ void lambda$pullCpuTimePerUidFreqLocked$11(SparseArray aggregated, int uid, long[] cpuFreqTimeMs) {
        int uid2;
        if (UserHandle.isIsolated(uid)) {
            return;
        }
        if (UserHandle.isSharedAppGid(uid)) {
            uid2 = 59999;
        } else {
            uid2 = UserHandle.getAppId(uid);
        }
        long[] aggCpuFreqTimeMs = (long[]) aggregated.get(uid2);
        if (aggCpuFreqTimeMs == null) {
            aggCpuFreqTimeMs = new long[cpuFreqTimeMs.length];
            aggregated.put(uid2, aggCpuFreqTimeMs);
        }
        for (int freqIndex = 0; freqIndex < cpuFreqTimeMs.length; freqIndex++) {
            aggCpuFreqTimeMs[freqIndex] = aggCpuFreqTimeMs[freqIndex] + cpuFreqTimeMs[freqIndex];
        }
    }

    private void registerCpuActiveTime() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2}).build();
        this.mStatsManager.setPullAtomCallback(10016, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCpuActiveTimeLocked(final int atomTag, final List<StatsEvent> pulledData) {
        this.mCpuUidActiveTimeReader.readAbsolute(new KernelCpuUidTimeReader.Callback() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$7QU4r5Gcc8wkSqPGcEy7F6p_QXs
            public final void onUidCpuTime(int i, Object obj) {
                StatsPullAtomService.lambda$pullCpuActiveTimeLocked$12(atomTag, pulledData, i, (Long) obj);
            }
        });
        return 0;
    }

    static /* synthetic */ void lambda$pullCpuActiveTimeLocked$12(int atomTag, List pulledData, int uid, Long cpuActiveTimesMs) {
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(uid).addBooleanAnnotation((byte) 1, true).writeLong(cpuActiveTimesMs.longValue()).build();
        pulledData.add(e);
    }

    private void registerCpuClusterTime() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{3}).build();
        this.mStatsManager.setPullAtomCallback(10017, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCpuClusterTimeLocked(final int atomTag, final List<StatsEvent> pulledData) {
        this.mCpuUidClusterTimeReader.readAbsolute(new KernelCpuUidTimeReader.Callback() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$wET8a4xmjbGGr2q4TaT3zvgVlHY
            public final void onUidCpuTime(int i, Object obj) {
                StatsPullAtomService.lambda$pullCpuClusterTimeLocked$13(atomTag, pulledData, i, (long[]) obj);
            }
        });
        return 0;
    }

    static /* synthetic */ void lambda$pullCpuClusterTimeLocked$13(int atomTag, List pulledData, int uid, long[] cpuClusterTimesMs) {
        for (int i = 0; i < cpuClusterTimesMs.length; i++) {
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(uid).addBooleanAnnotation((byte) 1, true).writeInt(i).writeLong(cpuClusterTimesMs[i]).build();
            pulledData.add(e);
        }
    }

    private void registerWifiActivityInfo() {
        this.mStatsManager.setPullAtomCallback(10011, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullWifiActivityInfoLocked(int atomTag, List<StatsEvent> pulledData) {
        long token = Binder.clearCallingIdentity();
        try {
            final SynchronousResultReceiver wifiReceiver = new SynchronousResultReceiver("wifi");
            this.mWifiManager.getWifiActivityEnergyInfoAsync(new Executor() { // from class: com.android.server.stats.pull.StatsPullAtomService.1
                @Override // java.util.concurrent.Executor
                public void execute(Runnable runnable) {
                    runnable.run();
                }
            }, new WifiManager.OnWifiActivityEnergyInfoListener() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$83yZWZxYUAxINjmopUHD6vHE_QM
                public final void onWifiActivityEnergyInfo(WifiActivityEnergyInfo wifiActivityEnergyInfo) {
                    StatsPullAtomService.lambda$pullWifiActivityInfoLocked$14(wifiReceiver, wifiActivityEnergyInfo);
                }
            });
            WifiActivityEnergyInfo wifiInfo = awaitControllerInfo(wifiReceiver);
            if (wifiInfo == null) {
                return 1;
            }
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(wifiInfo.getTimeSinceBootMillis()).writeInt(wifiInfo.getStackState()).writeLong(wifiInfo.getControllerTxDurationMillis()).writeLong(wifiInfo.getControllerRxDurationMillis()).writeLong(wifiInfo.getControllerIdleDurationMillis()).writeLong(wifiInfo.getControllerEnergyUsedMicroJoules()).build();
            pulledData.add(e);
            return 0;
        } catch (RuntimeException e2) {
            Slog.e(TAG, "failed to getWifiActivityEnergyInfoAsync", e2);
            return 1;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
        Binder.restoreCallingIdentity(token);
    }

    static /* synthetic */ void lambda$pullWifiActivityInfoLocked$14(SynchronousResultReceiver wifiReceiver, WifiActivityEnergyInfo info) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(RESULT_RECEIVER_CONTROLLER_KEY, info);
        wifiReceiver.send(0, bundle);
    }

    private void registerModemActivityInfo() {
        this.mStatsManager.setPullAtomCallback(10012, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullModemActivityInfoLocked(int atomTag, List<StatsEvent> pulledData) {
        long token = Binder.clearCallingIdentity();
        try {
            ResultReceiver synchronousResultReceiver = new SynchronousResultReceiver("telephony");
            this.mTelephony.requestModemActivityInfo(synchronousResultReceiver);
            ModemActivityInfo modemInfo = awaitControllerInfo(synchronousResultReceiver);
            if (modemInfo == null) {
                return 1;
            }
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(modemInfo.getTimestamp()).writeLong(modemInfo.getSleepTimeMillis()).writeLong(modemInfo.getIdleTimeMillis()).writeLong(((ModemActivityInfo.TransmitPower) modemInfo.getTransmitPowerInfo().get(0)).getTimeInMillis()).writeLong(((ModemActivityInfo.TransmitPower) modemInfo.getTransmitPowerInfo().get(1)).getTimeInMillis()).writeLong(((ModemActivityInfo.TransmitPower) modemInfo.getTransmitPowerInfo().get(2)).getTimeInMillis()).writeLong(((ModemActivityInfo.TransmitPower) modemInfo.getTransmitPowerInfo().get(3)).getTimeInMillis()).writeLong(((ModemActivityInfo.TransmitPower) modemInfo.getTransmitPowerInfo().get(4)).getTimeInMillis()).writeLong(modemInfo.getReceiveTimeMillis()).build();
            pulledData.add(e);
            return 0;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void registerBluetoothActivityInfo() {
        this.mStatsManager.setPullAtomCallback(10007, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullBluetoothActivityInfoLocked(int atomTag, List<StatsEvent> pulledData) {
        BluetoothActivityEnergyInfo info = fetchBluetoothData();
        if (info == null) {
            return 1;
        }
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(info.getTimeStamp()).writeInt(info.getBluetoothStackState()).writeLong(info.getControllerTxTimeMillis()).writeLong(info.getControllerRxTimeMillis()).writeLong(info.getControllerIdleTimeMillis()).writeLong(info.getControllerEnergyUsed()).build();
        pulledData.add(e);
        return 0;
    }

    private void registerSystemElapsedRealtime() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setCoolDownMillis(1000L).setTimeoutMillis(500L).build();
        this.mStatsManager.setPullAtomCallback(10014, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullSystemElapsedRealtimeLocked(int atomTag, List<StatsEvent> pulledData) {
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(SystemClock.elapsedRealtime()).build();
        pulledData.add(e);
        return 0;
    }

    private void registerSystemUptime() {
        this.mStatsManager.setPullAtomCallback(10015, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullSystemUptimeLocked(int atomTag, List<StatsEvent> pulledData) {
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(SystemClock.uptimeMillis()).build();
        pulledData.add(e);
        return 0;
    }

    private void registerProcessMemoryState() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{4, 5, 6, 7, 8}).build();
        this.mStatsManager.setPullAtomCallback(10013, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullProcessMemoryStateLocked(int atomTag, List<StatsEvent> pulledData) {
        List<ProcessMemoryState> processMemoryStates = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getMemoryStateForProcesses();
        for (ProcessMemoryState processMemoryState : processMemoryStates) {
            MemoryStatUtil.MemoryStat memoryStat = MemoryStatUtil.readMemoryStatFromFilesystem(processMemoryState.uid, processMemoryState.pid);
            if (memoryStat != null) {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(processMemoryState.uid).addBooleanAnnotation((byte) 1, true).writeString(processMemoryState.processName).writeInt(processMemoryState.oomScore).writeLong(memoryStat.pgfault).writeLong(memoryStat.pgmajfault).writeLong(memoryStat.rssInBytes).writeLong(memoryStat.cacheInBytes).writeLong(memoryStat.swapInBytes).writeLong(-1L).writeLong(-1L).writeInt(-1).build();
                pulledData.add(e);
            }
        }
        return 0;
    }

    private void registerProcessMemoryHighWaterMark() {
        this.mStatsManager.setPullAtomCallback(10042, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullProcessMemoryHighWaterMarkLocked(int atomTag, List<StatsEvent> pulledData) {
        List<ProcessMemoryState> managedProcessList = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getMemoryStateForProcesses();
        for (ProcessMemoryState managedProcess : managedProcessList) {
            ProcfsMemoryUtil.MemorySnapshot snapshot = ProcfsMemoryUtil.readMemorySnapshotFromProcfs(managedProcess.pid);
            if (snapshot != null) {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(managedProcess.uid).addBooleanAnnotation((byte) 1, true).writeString(managedProcess.processName).writeLong(((long) snapshot.rssHighWaterMarkInKilobytes) * 1024).writeInt(snapshot.rssHighWaterMarkInKilobytes).build();
                pulledData.add(e);
            }
        }
        final SparseArray<String> processCmdlines = ProcfsMemoryUtil.getProcessCmdlines();
        managedProcessList.forEach(new Consumer() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$lqJRvPt3oaiuhNE25XssoNn5av4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                processCmdlines.delete(((ProcessMemoryState) obj).pid);
            }
        });
        int size = processCmdlines.size();
        for (int i = 0; i < size; i++) {
            ProcfsMemoryUtil.MemorySnapshot snapshot2 = ProcfsMemoryUtil.readMemorySnapshotFromProcfs(processCmdlines.keyAt(i));
            if (snapshot2 != null) {
                StatsEvent e2 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(snapshot2.uid).addBooleanAnnotation((byte) 1, true).writeString(processCmdlines.valueAt(i)).writeLong(((long) snapshot2.rssHighWaterMarkInKilobytes) * 1024).writeInt(snapshot2.rssHighWaterMarkInKilobytes).build();
                pulledData.add(e2);
            }
        }
        SystemProperties.set("sys.rss_hwm_reset.on", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
        return 0;
    }

    private void registerProcessMemorySnapshot() {
        this.mStatsManager.setPullAtomCallback(10064, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullProcessMemorySnapshotLocked(int atomTag, List<StatsEvent> pulledData) {
        List<ProcessMemoryState> managedProcessList = ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).getMemoryStateForProcesses();
        for (ProcessMemoryState managedProcess : managedProcessList) {
            ProcfsMemoryUtil.MemorySnapshot snapshot = ProcfsMemoryUtil.readMemorySnapshotFromProcfs(managedProcess.pid);
            if (snapshot != null) {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(managedProcess.uid).addBooleanAnnotation((byte) 1, true).writeString(managedProcess.processName).writeInt(managedProcess.pid).writeInt(managedProcess.oomScore).writeInt(snapshot.rssInKilobytes).writeInt(snapshot.anonRssInKilobytes).writeInt(snapshot.swapInKilobytes).writeInt(snapshot.anonRssInKilobytes + snapshot.swapInKilobytes).build();
                pulledData.add(e);
            }
        }
        final SparseArray<String> processCmdlines = ProcfsMemoryUtil.getProcessCmdlines();
        managedProcessList.forEach(new Consumer() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$61iYYyM1I6mUS0w8UN9q4tmxKaQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                processCmdlines.delete(((ProcessMemoryState) obj).pid);
            }
        });
        int size = processCmdlines.size();
        for (int i = 0; i < size; i++) {
            int pid = processCmdlines.keyAt(i);
            ProcfsMemoryUtil.MemorySnapshot snapshot2 = ProcfsMemoryUtil.readMemorySnapshotFromProcfs(pid);
            if (snapshot2 != null) {
                StatsEvent e2 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(snapshot2.uid).addBooleanAnnotation((byte) 1, true).writeString(processCmdlines.valueAt(i)).writeInt(pid).writeInt(JobSchedulerShellCommand.CMD_ERR_NO_JOB).writeInt(snapshot2.rssInKilobytes).writeInt(snapshot2.anonRssInKilobytes).writeInt(snapshot2.swapInKilobytes).writeInt(snapshot2.anonRssInKilobytes + snapshot2.swapInKilobytes).build();
                pulledData.add(e2);
            }
        }
        return 0;
    }

    private void registerSystemIonHeapSize() {
        this.mStatsManager.setPullAtomCallback(10056, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullSystemIonHeapSizeLocked(int atomTag, List<StatsEvent> pulledData) {
        long systemIonHeapSizeInBytes = IonMemoryUtil.readSystemIonHeapSizeFromDebugfs();
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(systemIonHeapSizeInBytes).build();
        pulledData.add(e);
        return 0;
    }

    private void registerIonHeapSize() {
        if (!new File("/sys/kernel/ion/total_heaps_kb").exists()) {
            return;
        }
        this.mStatsManager.setPullAtomCallback(10070, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullIonHeapSizeLocked(int atomTag, List<StatsEvent> pulledData) {
        int ionHeapSizeInKilobytes = (int) Debug.getIonHeapsSizeKb();
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(ionHeapSizeInKilobytes).build();
        pulledData.add(e);
        return 0;
    }

    private void registerProcessSystemIonHeapSize() {
        this.mStatsManager.setPullAtomCallback(10061, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullProcessSystemIonHeapSizeLocked(int atomTag, List<StatsEvent> pulledData) {
        List<IonMemoryUtil.IonAllocations> result = IonMemoryUtil.readProcessSystemIonHeapSizesFromDebugfs();
        for (IonMemoryUtil.IonAllocations allocations : result) {
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(Process.getUidForPid(allocations.pid)).addBooleanAnnotation((byte) 1, true).writeString(ProcfsMemoryUtil.readCmdlineFromProcfs(allocations.pid)).writeInt((int) (allocations.totalSizeInBytes / 1024)).writeInt(allocations.count).writeInt((int) (allocations.maxSizeInBytes / 1024)).build();
            pulledData.add(e);
        }
        return 0;
    }

    private void registerTemperature() {
        this.mStatsManager.setPullAtomCallback(10021, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullTemperatureLocked(int atomTag, List<StatsEvent> pulledData) {
        IThermalService thermalService = getIThermalService();
        if (thermalService == null) {
            return 1;
        }
        long callingToken = Binder.clearCallingIdentity();
        try {
            Temperature[] temperatures = thermalService.getCurrentTemperatures();
            for (Temperature temp : temperatures) {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(temp.getType()).writeString(temp.getName()).writeInt((int) (temp.getValue() * 10.0f)).writeInt(temp.getStatus()).build();
                pulledData.add(e);
            }
            return 0;
        } catch (RemoteException e2) {
            Slog.e(TAG, "Disconnected from thermal service. Cannot pull temperatures.");
            return 1;
        } finally {
            Binder.restoreCallingIdentity(callingToken);
        }
    }

    private void registerCoolingDevice() {
        this.mStatsManager.setPullAtomCallback(10059, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCooldownDeviceLocked(int atomTag, List<StatsEvent> pulledData) {
        IThermalService thermalService = getIThermalService();
        if (thermalService == null) {
            return 1;
        }
        long callingToken = Binder.clearCallingIdentity();
        try {
            CoolingDevice[] devices = thermalService.getCurrentCoolingDevices();
            for (CoolingDevice device : devices) {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(device.getType()).writeString(device.getName()).writeInt((int) device.getValue()).build();
                pulledData.add(e);
            }
            return 0;
        } catch (RemoteException e2) {
            Slog.e(TAG, "Disconnected from thermal service. Cannot pull temperatures.");
            return 1;
        } finally {
            Binder.restoreCallingIdentity(callingToken);
        }
    }

    private void registerBinderCallsStats() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{4, 5, 6, 8, 12}).build();
        this.mStatsManager.setPullAtomCallback(10022, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullBinderCallsStatsLocked(int i, List<StatsEvent> list) {
        BinderCallsStatsService.Internal internal = (BinderCallsStatsService.Internal) LocalServices.getService(BinderCallsStatsService.Internal.class);
        if (internal == null) {
            Slog.e(TAG, "failed to get binderStats");
            return 1;
        }
        ArrayList<BinderCallsStats.ExportedCallStat> exportedCallStats = internal.getExportedCallStats();
        internal.reset();
        for (BinderCallsStats.ExportedCallStat exportedCallStat : exportedCallStats) {
            list.add(StatsEvent.newBuilder().setAtomId(i).writeInt(exportedCallStat.workSourceUid).addBooleanAnnotation((byte) 1, true).writeString(exportedCallStat.className).writeString(exportedCallStat.methodName).writeLong(exportedCallStat.callCount).writeLong(exportedCallStat.exceptionCount).writeLong(exportedCallStat.latencyMicros).writeLong(exportedCallStat.maxLatencyMicros).writeLong(exportedCallStat.cpuTimeMicros).writeLong(exportedCallStat.maxCpuTimeMicros).writeLong(exportedCallStat.maxReplySizeBytes).writeLong(exportedCallStat.maxRequestSizeBytes).writeLong(exportedCallStat.recordedCallCount).writeInt(exportedCallStat.screenInteractive ? 1 : 0).writeInt(exportedCallStat.callingUid).build());
        }
        return 0;
    }

    private void registerBinderCallsStatsExceptions() {
        this.mStatsManager.setPullAtomCallback(10023, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullBinderCallsStatsExceptionsLocked(int atomTag, List<StatsEvent> pulledData) {
        BinderCallsStatsService.Internal binderStats = (BinderCallsStatsService.Internal) LocalServices.getService(BinderCallsStatsService.Internal.class);
        if (binderStats == null) {
            Slog.e(TAG, "failed to get binderStats");
            return 1;
        }
        ArrayMap<String, Integer> exceptionStats = binderStats.getExportedExceptionStats();
        for (Map.Entry<String, Integer> entry : exceptionStats.entrySet()) {
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeString(entry.getKey()).writeInt(entry.getValue().intValue()).build();
            pulledData.add(e);
        }
        return 0;
    }

    private void registerLooperStats() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{5, 6, 7, 8, 9}).build();
        this.mStatsManager.setPullAtomCallback(10024, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullLooperStatsLocked(int atomTag, List<StatsEvent> pulledData) {
        LooperStats looperStats = (LooperStats) LocalServices.getService(LooperStats.class);
        if (looperStats == null) {
            return 1;
        }
        List<LooperStats.ExportedEntry> entries = looperStats.getEntries();
        looperStats.reset();
        for (LooperStats.ExportedEntry entry : entries) {
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(entry.workSourceUid).addBooleanAnnotation((byte) 1, true).writeString(entry.handlerClassName).writeString(entry.threadName).writeString(entry.messageName).writeLong(entry.messageCount).writeLong(entry.exceptionCount).writeLong(entry.recordedMessageCount).writeLong(entry.totalLatencyMicros).writeLong(entry.cpuUsageMicros).writeBoolean(entry.isInteractive).writeLong(entry.maxCpuUsageMicros).writeLong(entry.maxLatencyMicros).writeLong(entry.recordedDelayMessageCount).writeLong(entry.delayMillis).writeLong(entry.maxDelayMillis).build();
            pulledData.add(e);
        }
        return 0;
    }

    private void registerDiskStats() {
        this.mStatsManager.setPullAtomCallback(10025, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0055  */
    /* JADX WARN: Code duplicated, block: B:34:0x0067 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    int pullDiskStatsLocked(int atomTag, List<StatsEvent> pulledData) throws RemoteException {
        long latency;
        boolean fileBased;
        int writeSpeed;
        IStoraged storaged;
        byte[] junk = new byte[512];
        for (int i = 0; i < junk.length; i++) {
            junk[i] = (byte) i;
        }
        File tmp = new File(Environment.getDataDirectory(), "system/statsdperftest.tmp");
        FileOutputStream fos = null;
        IOException error = null;
        long before = SystemClock.elapsedRealtime();
        try {
            try {
                fos = new FileOutputStream(tmp);
                fos.write(junk);
                fos.close();
            } catch (IOException e) {
                error = e;
                if (fos != null) {
                    fos.close();
                }
                latency = SystemClock.elapsedRealtime() - before;
                if (tmp.exists()) {
                    tmp.delete();
                }
                if (error != null) {
                    Slog.e(TAG, "Error performing diskstats latency test");
                    latency = -1;
                }
                fileBased = StorageManager.isFileEncryptedNativeOnly();
                writeSpeed = -1;
                storaged = getIStoragedService();
                if (storaged == null) {
                    return 1;
                }
                try {
                    writeSpeed = storaged.getRecentPerf();
                } catch (RemoteException e2) {
                    Slog.e(TAG, "storaged not found");
                }
                StatsEvent e3 = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(latency).writeBoolean(fileBased).writeInt(writeSpeed).build();
                pulledData.add(e3);
                return 0;
            } catch (Throwable th) {
                if (fos != null) {
                    try {
                        fos.close();
                        throw th;
                    } catch (IOException e4) {
                        throw th;
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
        }
        latency = SystemClock.elapsedRealtime() - before;
        if (tmp.exists()) {
            tmp.delete();
        }
        if (error != null) {
            Slog.e(TAG, "Error performing diskstats latency test");
            latency = -1;
        }
        fileBased = StorageManager.isFileEncryptedNativeOnly();
        writeSpeed = -1;
        storaged = getIStoragedService();
        if (storaged == null) {
            return 1;
        }
        writeSpeed = storaged.getRecentPerf();
        StatsEvent e6 = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(latency).writeBoolean(fileBased).writeInt(writeSpeed).build();
        pulledData.add(e6);
        return 0;
    }

    private void registerDirectoryUsage() {
        this.mStatsManager.setPullAtomCallback(10026, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDirectoryUsageLocked(int atomTag, List<StatsEvent> pulledData) {
        StatFs statFsData = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        StatFs statFsSystem = new StatFs(Environment.getRootDirectory().getAbsolutePath());
        StatFs statFsCache = new StatFs(Environment.getDownloadCacheDirectory().getAbsolutePath());
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(1).writeLong(statFsData.getAvailableBytes()).writeLong(statFsData.getTotalBytes()).build();
        pulledData.add(e);
        StatsEvent e2 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(2).writeLong(statFsCache.getAvailableBytes()).writeLong(statFsCache.getTotalBytes()).build();
        pulledData.add(e2);
        StatsEvent e3 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(3).writeLong(statFsSystem.getAvailableBytes()).writeLong(statFsSystem.getTotalBytes()).build();
        pulledData.add(e3);
        return 0;
    }

    private void registerAppSize() {
        this.mStatsManager.setPullAtomCallback(10027, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullAppSizeLocked(int atomTag, List<StatsEvent> pulledData) {
        try {
            String jsonStr = IoUtils.readFileAsString(DiskStatsLoggingService.DUMPSYS_CACHE_PATH);
            JSONObject json = new JSONObject(jsonStr);
            long cache_time = json.optLong(DiskStatsFileLogger.LAST_QUERY_TIMESTAMP_KEY, -1L);
            JSONArray pkg_names = json.getJSONArray(DiskStatsFileLogger.PACKAGE_NAMES_KEY);
            JSONArray app_sizes = json.getJSONArray(DiskStatsFileLogger.APP_SIZES_KEY);
            JSONArray app_data_sizes = json.getJSONArray(DiskStatsFileLogger.APP_DATA_KEY);
            JSONArray app_cache_sizes = json.getJSONArray(DiskStatsFileLogger.APP_CACHES_KEY);
            int length = pkg_names.length();
            try {
                if (app_sizes.length() != length || app_data_sizes.length() != length || app_cache_sizes.length() != length) {
                    Slog.e(TAG, "formatting error in diskstats cache file!");
                    return 1;
                }
                int i = 0;
                while (i < length) {
                    try {
                        JSONObject json2 = json;
                        JSONArray pkg_names2 = pkg_names;
                        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeString(pkg_names.getString(i)).writeLong(app_sizes.optLong(i, -1L)).writeLong(app_data_sizes.optLong(i, -1L)).writeLong(app_cache_sizes.optLong(i, -1L)).writeLong(cache_time).build();
                        pulledData.add(e);
                        i++;
                        json = json2;
                        pkg_names = pkg_names2;
                    } catch (IOException | JSONException e2) {
                    }
                }
                return 0;
            } catch (IOException | JSONException e3) {
            }
        } catch (IOException | JSONException e4) {
        }
        Slog.w(TAG, "Unable to read diskstats cache file within pullAppSize");
        return 1;
    }

    private void registerCategorySize() {
        this.mStatsManager.setPullAtomCallback(10028, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCategorySizeLocked(int atomTag, List<StatsEvent> pulledData) {
        try {
            String jsonStr = IoUtils.readFileAsString(DiskStatsLoggingService.DUMPSYS_CACHE_PATH);
            JSONObject json = new JSONObject(jsonStr);
            long cacheTime = json.optLong(DiskStatsFileLogger.LAST_QUERY_TIMESTAMP_KEY, -1L);
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(1).writeLong(json.optLong(DiskStatsFileLogger.APP_SIZE_AGG_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e);
            StatsEvent e2 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(2).writeLong(json.optLong(DiskStatsFileLogger.APP_DATA_SIZE_AGG_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e2);
            StatsEvent e3 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(3).writeLong(json.optLong(DiskStatsFileLogger.APP_CACHE_AGG_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e3);
            StatsEvent e4 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(4).writeLong(json.optLong(DiskStatsFileLogger.PHOTOS_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e4);
            StatsEvent e5 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(5).writeLong(json.optLong(DiskStatsFileLogger.VIDEOS_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e5);
            StatsEvent e6 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(6).writeLong(json.optLong(DiskStatsFileLogger.AUDIO_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e6);
            StatsEvent e7 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(7).writeLong(json.optLong(DiskStatsFileLogger.DOWNLOADS_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e7);
            StatsEvent e8 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(8).writeLong(json.optLong(DiskStatsFileLogger.SYSTEM_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e8);
            StatsEvent e9 = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(9).writeLong(json.optLong(DiskStatsFileLogger.MISC_KEY, -1L)).writeLong(cacheTime).build();
            pulledData.add(e9);
            return 0;
        } catch (IOException | JSONException e10) {
            Slog.w(TAG, "Unable to read diskstats cache file within pullCategorySize");
            return 1;
        }
    }

    private void registerNumFingerprintsEnrolled() {
        this.mStatsManager.setPullAtomCallback(10031, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerNumFacesEnrolled() {
        this.mStatsManager.setPullAtomCallback(10048, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int pullNumBiometricsEnrolledLocked(int modality, int atomTag, List<StatsEvent> pulledData) throws Throwable {
        FingerprintManager fingerprintManager;
        UserManager userManager;
        int numEnrolled;
        PackageManager pm = this.mContext.getPackageManager();
        if (pm.hasSystemFeature("android.hardware.fingerprint")) {
            FingerprintManager fingerprintManager2 = (FingerprintManager) this.mContext.getSystemService(FingerprintManager.class);
            fingerprintManager = fingerprintManager2;
        } else {
            fingerprintManager = null;
        }
        FaceManager faceManager = pm.hasSystemFeature("android.hardware.biometrics.face") ? (FaceManager) this.mContext.getSystemService(FaceManager.class) : null;
        if (modality == 1 && fingerprintManager == null) {
            return 1;
        }
        int i = 4;
        if ((modality == 4 && faceManager == null) || (userManager = (UserManager) this.mContext.getSystemService(UserManager.class)) == null) {
            return 1;
        }
        long token = Binder.clearCallingIdentity();
        for (UserInfo user : userManager.getUsers()) {
            int userId = user.getUserHandle().getIdentifier();
            if (modality == 1) {
                numEnrolled = fingerprintManager.getEnrolledFingerprints(userId).size();
            } else {
                if (modality != i) {
                    Binder.restoreCallingIdentity(token);
                    return 1;
                }
                numEnrolled = faceManager.getEnrolledFaces(userId).size();
            }
            try {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(userId).writeInt(numEnrolled).build();
                try {
                    pulledData.add(e);
                    i = 4;
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
        Binder.restoreCallingIdentity(token);
        return 0;
    }

    private void registerProcStats() {
        this.mStatsManager.setPullAtomCallback(10029, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerProcStatsPkgProc() {
        this.mStatsManager.setPullAtomCallback(10034, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int pullProcStatsLocked(int section, int atomTag, List<StatsEvent> pulledData) throws Exception {
        long token;
        IProcessStats processStatsService = getIProcessStatsService();
        if (processStatsService == null) {
            return 1;
        }
        long token2 = Binder.clearCallingIdentity();
        try {
            try {
                long lastHighWaterMark = readProcStatsHighWaterMark(section);
                ProtoOutputStream[] protoStreams = new ProtoOutputStream[5];
                for (int i = 0; i < protoStreams.length; i++) {
                    try {
                        protoStreams[i] = new ProtoOutputStream();
                    } catch (RemoteException | IOException e) {
                        e = e;
                        token = token2;
                        Slog.e(TAG, "Getting procstats failed: ", e);
                        Binder.restoreCallingIdentity(token);
                        return 1;
                    } catch (Throwable th) {
                        e = th;
                        token = token2;
                        Binder.restoreCallingIdentity(token);
                        throw e;
                    }
                }
                ProcessStats procStats = new ProcessStats(false);
                token = token2;
                try {
                    long highWaterMark = processStatsService.getCommittedStatsMerged(lastHighWaterMark, section, true, (List) null, procStats);
                    procStats.dumpAggregatedProtoForStatsd(protoStreams, 58982L);
                    for (int i2 = 0; i2 < protoStreams.length; i2++) {
                        byte[] bytes = protoStreams[i2].getBytes();
                        if (bytes.length > 0) {
                            try {
                                StatsEvent e2 = StatsEvent.newBuilder().setAtomId(atomTag).writeByteArray(bytes).writeInt(i2).build();
                                try {
                                    try {
                                        pulledData.add(e2);
                                    } catch (RemoteException | IOException e3) {
                                        e = e3;
                                        Slog.e(TAG, "Getting procstats failed: ", e);
                                        Binder.restoreCallingIdentity(token);
                                        return 1;
                                    }
                                } catch (Throwable th2) {
                                    e = th2;
                                    Binder.restoreCallingIdentity(token);
                                    throw e;
                                }
                            } catch (RemoteException | IOException e4) {
                                e = e4;
                                Slog.e(TAG, "Getting procstats failed: ", e);
                                Binder.restoreCallingIdentity(token);
                                return 1;
                            } catch (Throwable th3) {
                                e = th3;
                                Binder.restoreCallingIdentity(token);
                                throw e;
                            }
                        }
                    }
                    new File(this.mBaseDir.getAbsolutePath() + SliceClientPermissions.SliceAuthority.DELIMITER + section + "_" + lastHighWaterMark).delete();
                    new File(this.mBaseDir.getAbsolutePath() + SliceClientPermissions.SliceAuthority.DELIMITER + section + "_" + highWaterMark).createNewFile();
                    Binder.restoreCallingIdentity(token);
                    return 0;
                } catch (RemoteException | IOException e5) {
                    e = e5;
                } catch (Throwable th4) {
                    e = th4;
                }
            } catch (Throwable th5) {
                e = th5;
                token = token2;
            }
        } catch (RemoteException | IOException e6) {
            e = e6;
            token = token2;
        }
    }

    private long readProcStatsHighWaterMark(final int section) {
        try {
            File[] files = this.mBaseDir.listFiles(new FilenameFilter() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$eb4Q1ue_bVXbLIAV2RxP5dbSYUw
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return str.toLowerCase().startsWith(String.valueOf(section) + '_');
                }
            });
            if (files != null && files.length != 0) {
                if (files.length > 1) {
                    Slog.e(TAG, "Only 1 file expected for high water mark. Found " + files.length);
                }
                return Long.valueOf(files[0].getName().split("_")[1]).longValue();
            }
            return 0L;
        } catch (NumberFormatException e) {
            Slog.e(TAG, "Failed to parse file name.", e);
            return 0L;
        } catch (SecurityException e2) {
            Slog.e(TAG, "Failed to get procstats high watermark file.", e2);
            return 0L;
        }
    }

    private void registerDiskIO() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{2, 3, 4, 5, 6, 7, 8, 9, 10, 11}).setCoolDownMillis(BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS).build();
        this.mStatsManager.setPullAtomCallback(10032, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDiskIOLocked(final int atomTag, final List<StatsEvent> pulledData) {
        this.mStoragedUidIoStatsReader.readAbsolute(new StoragedUidIoStatsReader.Callback() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$g19VAbLfQpgo8sS2yC5ITBSIdm0
            public final void onUidStorageStats(int i, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
                StatsPullAtomService.lambda$pullDiskIOLocked$18(atomTag, pulledData, i, j, j2, j3, j4, j5, j6, j7, j8, j9, j10);
            }
        });
        return 0;
    }

    static /* synthetic */ void lambda$pullDiskIOLocked$18(int atomTag, List pulledData, int uid, long fgCharsRead, long fgCharsWrite, long fgBytesRead, long fgBytesWrite, long bgCharsRead, long bgCharsWrite, long bgBytesRead, long bgBytesWrite, long fgFsync, long bgFsync) {
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(uid).addBooleanAnnotation((byte) 1, true).writeLong(fgCharsRead).writeLong(fgCharsWrite).writeLong(fgBytesRead).writeLong(fgBytesWrite).writeLong(bgCharsRead).writeLong(bgCharsWrite).writeLong(bgBytesRead).writeLong(bgBytesWrite).writeLong(fgFsync).writeLong(bgFsync).build();
        pulledData.add(e);
    }

    private void registerPowerProfile() {
        this.mStatsManager.setPullAtomCallback(10033, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullPowerProfileLocked(int atomTag, List<StatsEvent> pulledData) {
        PowerProfile powerProfile = new PowerProfile(this.mContext);
        ProtoOutputStream proto = new ProtoOutputStream();
        powerProfile.dumpDebug(proto);
        proto.flush();
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeByteArray(proto.getBytes()).build();
        pulledData.add(e);
        return 0;
    }

    private void registerProcessCpuTime() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setCoolDownMillis(5000L).build();
        this.mStatsManager.setPullAtomCallback(10035, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullProcessCpuTimeLocked(int atomTag, List<StatsEvent> pulledData) {
        if (this.mProcessCpuTracker == null) {
            ProcessCpuTracker processCpuTracker = new ProcessCpuTracker(false);
            this.mProcessCpuTracker = processCpuTracker;
            processCpuTracker.init();
        }
        this.mProcessCpuTracker.update();
        for (int i = 0; i < this.mProcessCpuTracker.countStats(); i++) {
            ProcessCpuTracker.Stats st = this.mProcessCpuTracker.getStats(i);
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(st.uid).addBooleanAnnotation((byte) 1, true).writeString(st.name).writeLong(st.base_utime).writeLong(st.base_stime).build();
            pulledData.add(e);
        }
        return 0;
    }

    private void registerCpuTimePerThreadFreq() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{7, 9, 11, 13, 15, 17, 19, 21}).build();
        this.mStatsManager.setPullAtomCallback(10037, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullCpuTimePerThreadFreqLocked(int atomTag, List<StatsEvent> pulledData) {
        KernelCpuThreadReaderDiff kernelCpuThreadReaderDiff = this.mKernelCpuThreadReader;
        if (kernelCpuThreadReaderDiff == null) {
            Slog.e(TAG, "mKernelCpuThreadReader is null");
            return 1;
        }
        ArrayList<KernelCpuThreadReader.ProcessCpuUsage> processCpuUsages = kernelCpuThreadReaderDiff.getProcessCpuUsageDiffed();
        if (processCpuUsages == null) {
            Slog.e(TAG, "processCpuUsages is null");
            return 1;
        }
        int[] cpuFrequencies = this.mKernelCpuThreadReader.getCpuFrequenciesKhz();
        if (cpuFrequencies.length > 8) {
            String message = "Expected maximum 8 frequencies, but got " + cpuFrequencies.length;
            Slog.w(TAG, message);
            return 1;
        }
        for (int i = 0; i < processCpuUsages.size(); i++) {
            KernelCpuThreadReader.ProcessCpuUsage processCpuUsage = processCpuUsages.get(i);
            ArrayList<KernelCpuThreadReader.ThreadCpuUsage> threadCpuUsages = processCpuUsage.threadCpuUsages;
            for (int j = 0; j < threadCpuUsages.size(); j++) {
                KernelCpuThreadReader.ThreadCpuUsage threadCpuUsage = threadCpuUsages.get(j);
                if (threadCpuUsage.usageTimesMillis.length != cpuFrequencies.length) {
                    String message2 = "Unexpected number of usage times, expected " + cpuFrequencies.length + " but got " + threadCpuUsage.usageTimesMillis.length;
                    Slog.w(TAG, message2);
                    return 1;
                }
                StatsEvent.Builder e = StatsEvent.newBuilder();
                e.setAtomId(atomTag);
                e.writeInt(processCpuUsage.uid);
                e.addBooleanAnnotation((byte) 1, true);
                e.writeInt(processCpuUsage.processId);
                e.writeInt(threadCpuUsage.threadId);
                e.writeString(processCpuUsage.processName);
                e.writeString(threadCpuUsage.threadName);
                for (int k = 0; k < 8; k++) {
                    if (k < cpuFrequencies.length) {
                        e.writeInt(cpuFrequencies[k]);
                        e.writeInt(threadCpuUsage.usageTimesMillis[k]);
                    } else {
                        e.writeInt(0);
                        e.writeInt(0);
                    }
                }
                pulledData.add(e.build());
            }
        }
        return 0;
    }

    private BatteryStatsHelper getBatteryStatsHelper() {
        synchronized (this.mBatteryStatsHelperLock) {
            if (this.mBatteryStatsHelper == null) {
                long callingToken = Binder.clearCallingIdentity();
                try {
                    this.mBatteryStatsHelper = new BatteryStatsHelper(this.mContext, false);
                    Binder.restoreCallingIdentity(callingToken);
                    this.mBatteryStatsHelper.create((Bundle) null);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(callingToken);
                    throw th;
                }
            }
            long currentTime = SystemClock.elapsedRealtime();
            if (currentTime - this.mBatteryStatsHelperTimestampMs >= 1000) {
                this.mBatteryStatsHelper.refreshStats(0, -1);
                this.mBatteryStatsHelper.clearStats();
                this.mBatteryStatsHelperTimestampMs = currentTime;
            }
        }
        return this.mBatteryStatsHelper;
    }

    private long milliAmpHrsToNanoAmpSecs(double mAh) {
        return (long) ((3.6E9d * mAh) + 0.5d);
    }

    private void registerDeviceCalculatedPowerUse() {
        this.mStatsManager.setPullAtomCallback(10039, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDeviceCalculatedPowerUseLocked(int atomTag, List<StatsEvent> pulledData) {
        BatteryStatsHelper bsHelper = getBatteryStatsHelper();
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(milliAmpHrsToNanoAmpSecs(bsHelper.getComputedPower())).build();
        pulledData.add(e);
        return 0;
    }

    private void registerDeviceCalculatedPowerBlameUid() {
        this.mStatsManager.setPullAtomCallback(10040, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDeviceCalculatedPowerBlameUidLocked(int atomTag, List<StatsEvent> pulledData) {
        List<BatterySipper> sippers = getBatteryStatsHelper().getUsageList();
        if (sippers == null) {
            return 1;
        }
        for (BatterySipper bs : sippers) {
            BatterySipper.DrainType drainType = bs.drainType;
            BatterySipper.DrainType drainType2 = bs.drainType;
            if (drainType == BatterySipper.DrainType.APP) {
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(bs.uidObj.getUid()).addBooleanAnnotation((byte) 1, true).writeLong(milliAmpHrsToNanoAmpSecs(bs.totalPowerMah)).build();
                pulledData.add(e);
            }
        }
        return 0;
    }

    private void registerDeviceCalculatedPowerBlameOther() {
        this.mStatsManager.setPullAtomCallback(10041, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDeviceCalculatedPowerBlameOtherLocked(int atomTag, List<StatsEvent> pulledData) {
        List<BatterySipper> sippers = getBatteryStatsHelper().getUsageList();
        if (sippers == null) {
            return 1;
        }
        for (BatterySipper bs : sippers) {
            BatterySipper.DrainType drainType = bs.drainType;
            BatterySipper.DrainType drainType2 = bs.drainType;
            if (drainType != BatterySipper.DrainType.APP) {
                BatterySipper.DrainType drainType3 = bs.drainType;
                BatterySipper.DrainType drainType4 = bs.drainType;
                if (drainType3 != BatterySipper.DrainType.USER) {
                    StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(bs.drainType.ordinal()).writeLong(milliAmpHrsToNanoAmpSecs(bs.totalPowerMah)).build();
                    pulledData.add(e);
                }
            }
        }
        return 0;
    }

    private void registerDebugElapsedClock() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{1, 2, 3, 4}).build();
        this.mStatsManager.setPullAtomCallback(10046, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDebugElapsedClockLocked(int atomTag, List<StatsEvent> pulledData) {
        long elapsedMillis = SystemClock.elapsedRealtime();
        long j = this.mDebugElapsedClockPreviousValue;
        long clockDiffMillis = j != 0 ? elapsedMillis - j : 0L;
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(this.mDebugElapsedClockPullCount).writeLong(elapsedMillis).writeLong(elapsedMillis).writeLong(clockDiffMillis).writeInt(1).build();
        pulledData.add(e);
        if (this.mDebugElapsedClockPullCount % 2 == 1) {
            StatsEvent e2 = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(this.mDebugElapsedClockPullCount).writeLong(elapsedMillis).writeLong(elapsedMillis).writeLong(clockDiffMillis).writeInt(2).build();
            pulledData.add(e2);
        }
        this.mDebugElapsedClockPullCount++;
        this.mDebugElapsedClockPreviousValue = elapsedMillis;
        return 0;
    }

    private void registerDebugFailingElapsedClock() {
        StatsManager.PullAtomMetadata metadata = new StatsManager.PullAtomMetadata.Builder().setAdditiveFields(new int[]{1, 2, 3, 4}).build();
        this.mStatsManager.setPullAtomCallback(10047, metadata, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDebugFailingElapsedClockLocked(int atomTag, List<StatsEvent> pulledData) {
        long elapsedMillis = SystemClock.elapsedRealtime();
        long j = this.mDebugFailingElapsedClockPullCount;
        this.mDebugFailingElapsedClockPullCount = 1 + j;
        if (j % 5 == 0) {
            this.mDebugFailingElapsedClockPreviousValue = elapsedMillis;
            Slog.e(TAG, "Failing debug elapsed clock");
            return 1;
        }
        StatsEvent.Builder builderWriteLong = StatsEvent.newBuilder().setAtomId(atomTag).writeLong(this.mDebugFailingElapsedClockPullCount).writeLong(elapsedMillis).writeLong(elapsedMillis);
        long j2 = this.mDebugFailingElapsedClockPreviousValue;
        StatsEvent e = builderWriteLong.writeLong(j2 != 0 ? elapsedMillis - j2 : 0L).build();
        pulledData.add(e);
        this.mDebugFailingElapsedClockPreviousValue = elapsedMillis;
        return 0;
    }

    private void registerBuildInformation() {
        this.mStatsManager.setPullAtomCallback(10044, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullBuildInformationLocked(int atomTag, List<StatsEvent> pulledData) {
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeString(Build.FINGERPRINT).writeString(Build.BRAND).writeString(Build.PRODUCT).writeString(Build.DEVICE).writeString(Build.VERSION.RELEASE_OR_CODENAME).writeString(Build.ID).writeString(Build.VERSION.INCREMENTAL).writeString(Build.TYPE).writeString(Build.TAGS).build();
        pulledData.add(e);
        return 0;
    }

    private void registerRoleHolder() {
        this.mStatsManager.setPullAtomCallback(10049, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullRoleHolderLocked(int atomTag, List<StatsEvent> pulledData) throws Throwable {
        long callingToken = Binder.clearCallingIdentity();
        try {
            PackageManager pm = this.mContext.getPackageManager();
            RoleManagerInternal rmi = (RoleManagerInternal) LocalServices.getService(RoleManagerInternal.class);
            List<UserInfo> users = ((UserManager) this.mContext.getSystemService(UserManager.class)).getUsers();
            int numUsers = users.size();
            int userNum = 0;
            while (true) {
                int i = 0;
                if (userNum >= numUsers) {
                    Binder.restoreCallingIdentity(callingToken);
                    return 0;
                }
                int userId = users.get(userNum).getUserHandle().getIdentifier();
                ArrayMap<String, ArraySet<String>> roles = rmi.getRolesAndHolders(userId);
                int numRoles = roles.size();
                int roleNum = 0;
                while (roleNum < numRoles) {
                    String roleName = roles.keyAt(roleNum);
                    ArraySet<String> holders = roles.valueAt(roleNum);
                    int numHolders = holders.size();
                    int holderNum = 0;
                    while (holderNum < numHolders) {
                        String holderName = holders.valueAt(holderNum);
                        RoleManagerInternal rmi2 = rmi;
                        try {
                            PackageInfo pkg = pm.getPackageInfoAsUser(holderName, i, userId);
                            PackageManager pm2 = pm;
                            List<UserInfo> users2 = users;
                            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(pkg.applicationInfo.uid).addBooleanAnnotation((byte) 1, true).writeString(holderName).writeString(roleName).build();
                            try {
                                pulledData.add(e);
                                holderNum++;
                                rmi = rmi2;
                                users = users2;
                                pm = pm2;
                                i = 0;
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            Slog.w(TAG, "Role holder " + holderName + " not found");
                            Binder.restoreCallingIdentity(callingToken);
                            return 1;
                        }
                    }
                    roleNum++;
                    users = users;
                    i = 0;
                }
                userNum++;
                users = users;
                Binder.restoreCallingIdentity(callingToken);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void registerDangerousPermissionState() {
        this.mStatsManager.setPullAtomCallback(10050, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullDangerousPermissionStateLocked(int atomTag, List<StatsEvent> pulledData) {
        Set<Integer> reportedUids;
        PackageManager pm;
        List<UserInfo> users;
        int numUsers;
        PackageManager pm2;
        int numUsers2;
        long token = Binder.clearCallingIdentity();
        float samplingRate = DeviceConfig.getFloat("permissions", DANGEROUS_PERMISSION_STATE_SAMPLE_RATE, 0.015f);
        Set<Integer> reportedUids2 = new HashSet<>();
        try {
            PackageManager pm3 = this.mContext.getPackageManager();
            List<UserInfo> users2 = ((UserManager) this.mContext.getSystemService(UserManager.class)).getUsers();
            int numUsers3 = users2.size();
            for (int userNum = 0; userNum < numUsers3; userNum++) {
                UserHandle user = users2.get(userNum).getUserHandle();
                List<PackageInfo> pkgs = pm3.getInstalledPackagesAsUser(4096, user.getIdentifier());
                int numPkgs = pkgs.size();
                int pkgNum = 0;
                while (true) {
                    int numPkgs2 = numPkgs;
                    if (pkgNum < numPkgs2) {
                        PackageInfo pkg = pkgs.get(pkgNum);
                        if (pkg.requestedPermissions == null) {
                            reportedUids = reportedUids2;
                            pm = pm3;
                            users = users2;
                            numUsers = numUsers3;
                        } else if (reportedUids2.contains(Integer.valueOf(pkg.applicationInfo.uid))) {
                            reportedUids = reportedUids2;
                            pm = pm3;
                            users = users2;
                            numUsers = numUsers3;
                        } else {
                            reportedUids2.add(Integer.valueOf(pkg.applicationInfo.uid));
                            if (atomTag == 10067) {
                                try {
                                    if (ThreadLocalRandom.current().nextFloat() > samplingRate) {
                                        reportedUids = reportedUids2;
                                        pm = pm3;
                                        users = users2;
                                        numUsers = numUsers3;
                                    }
                                } catch (Throwable th) {
                                    t = th;
                                }
                            }
                            int numPerms = pkg.requestedPermissions.length;
                            int permNum = 0;
                            while (true) {
                                reportedUids = reportedUids2;
                                int numPerms2 = numPerms;
                                if (permNum >= numPerms2) {
                                    break;
                                }
                                String permName = pkg.requestedPermissions[permNum];
                                List<UserInfo> users3 = users2;
                                try {
                                    PermissionInfo permissionInfo = pm3.getPermissionInfo(permName, 0);
                                    int permissionFlags = pm3.getPermissionFlags(permName, pkg.packageName, user);
                                    pm2 = pm3;
                                    numUsers2 = numUsers3;
                                    if (permissionInfo.getProtection() == 1) {
                                        if (permName.startsWith(COMMON_PERMISSION_PREFIX)) {
                                            permName = permName.substring(COMMON_PERMISSION_PREFIX.length());
                                        }
                                        StatsEvent.Builder e = StatsEvent.newBuilder();
                                        e.setAtomId(atomTag);
                                        e.writeString(permName);
                                        e.writeInt(pkg.applicationInfo.uid);
                                        e.addBooleanAnnotation((byte) 1, true);
                                        if (atomTag == 10050) {
                                            e.writeString("");
                                        }
                                        e.writeBoolean((pkg.requestedPermissionsFlags[permNum] & 2) != 0);
                                        e.writeInt(permissionFlags);
                                        try {
                                            pulledData.add(e.build());
                                        } catch (Throwable th2) {
                                            t = th2;
                                        }
                                    }
                                } catch (PackageManager.NameNotFoundException e2) {
                                    pm2 = pm3;
                                    numUsers2 = numUsers3;
                                }
                                permNum++;
                                users2 = users3;
                                reportedUids2 = reportedUids;
                                numPerms = numPerms2;
                                pm3 = pm2;
                                numUsers3 = numUsers2;
                                pkg = pkg;
                            }
                            pm = pm3;
                            users = users2;
                            numUsers = numUsers3;
                        }
                        pkgNum++;
                        users2 = users;
                        samplingRate = samplingRate;
                        reportedUids2 = reportedUids;
                        pm3 = pm;
                        numUsers3 = numUsers;
                        numPkgs = numPkgs2;
                    }
                    try {
                        Log.e(TAG, "Could not read permissions", t);
                        return 1;
                    } finally {
                        Binder.restoreCallingIdentity(token);
                    }
                }
            }
            Binder.restoreCallingIdentity(token);
            return 0;
        } catch (Throwable th3) {
            t = th3;
        }
    }

    private void registerTimeZoneDataInfo() {
        this.mStatsManager.setPullAtomCallback(10052, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullTimeZoneDataInfoLocked(int atomTag, List<StatsEvent> pulledData) {
        try {
            String tzDbVersion = TimeZone.getTZDataVersion();
            StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeString(tzDbVersion).build();
            pulledData.add(e);
            return 0;
        } catch (MissingResourceException e2) {
            Slog.e(TAG, "Getting tzdb version failed: ", e2);
            return 1;
        }
    }

    private void registerExternalStorageInfo() {
        this.mStatsManager.setPullAtomCallback(10053, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullExternalStorageInfoLocked(int atomTag, List<StatsEvent> pulledData) {
        int externalStorageType;
        StorageManager storageManager = this.mStorageManager;
        if (storageManager == null) {
            return 1;
        }
        List<VolumeInfo> volumes = storageManager.getVolumes();
        for (VolumeInfo vol : volumes) {
            String envState = VolumeInfo.getEnvironmentForState(vol.getState());
            DiskInfo diskInfo = vol.getDisk();
            if (diskInfo != null && envState.equals("mounted")) {
                int volumeType = 3;
                if (vol.getType() == 0) {
                    volumeType = 1;
                } else if (vol.getType() == 1) {
                    volumeType = 2;
                }
                if (diskInfo.isSd()) {
                    externalStorageType = 1;
                } else if (diskInfo.isUsb()) {
                    externalStorageType = 2;
                } else {
                    externalStorageType = 3;
                }
                StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(externalStorageType).writeInt(volumeType).writeLong(diskInfo.size).build();
                pulledData.add(e);
            }
        }
        return 0;
    }

    private void registerAppsOnExternalStorageInfo() {
        this.mStatsManager.setPullAtomCallback(10057, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullAppsOnExternalStorageInfoLocked(int atomTag, List<StatsEvent> pulledData) {
        VolumeInfo volumeInfo;
        DiskInfo diskInfo;
        if (this.mStorageManager == null) {
            return 1;
        }
        PackageManager pm = this.mContext.getPackageManager();
        List<ApplicationInfo> apps = pm.getInstalledApplications(0);
        for (ApplicationInfo appInfo : apps) {
            UUID storageUuid = appInfo.storageUuid;
            if (storageUuid != null && (volumeInfo = this.mStorageManager.findVolumeByUuid(appInfo.storageUuid.toString())) != null && (diskInfo = volumeInfo.getDisk()) != null) {
                int externalStorageType = -1;
                if (diskInfo.isSd()) {
                    externalStorageType = 1;
                } else if (diskInfo.isUsb()) {
                    externalStorageType = 2;
                } else if (appInfo.isExternal()) {
                    externalStorageType = 3;
                }
                if (externalStorageType != -1) {
                    StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(externalStorageType).writeString(appInfo.packageName).build();
                    pulledData.add(e);
                }
            }
        }
        return 0;
    }

    private void registerFaceSettings() {
        this.mStatsManager.setPullAtomCallback(10058, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullFaceSettingsLocked(int atomTag, List<StatsEvent> pulledData) throws Throwable {
        StatsPullAtomService statsPullAtomService = this;
        long callingToken = Binder.clearCallingIdentity();
        UserManager manager = (UserManager) statsPullAtomService.mContext.getSystemService(UserManager.class);
        int i = 1;
        if (manager == null) {
            Binder.restoreCallingIdentity(callingToken);
            return 1;
        }
        List<UserInfo> users = manager.getUsers();
        int numUsers = users.size();
        FaceManager faceManager = (FaceManager) statsPullAtomService.mContext.getSystemService(FaceManager.class);
        int userNum = 0;
        while (userNum < numUsers) {
            final int userId = users.get(userNum).getUserHandle().getIdentifier();
            if (faceManager != null) {
                faceManager.getFeature(userId, i, new FaceManager.GetFeatureCallback() { // from class: com.android.server.stats.pull.StatsPullAtomService.2
                    public void onCompleted(boolean z, int i2, boolean z2) {
                        if (i2 == 1 && z) {
                            Settings.Secure.putIntForUser(StatsPullAtomService.this.mContext.getContentResolver(), "face_unlock_attention_required", z2 ? 1 : 0, userId);
                        }
                    }
                });
            }
            int unlockKeyguardEnabled = Settings.Secure.getIntForUser(statsPullAtomService.mContext.getContentResolver(), "face_unlock_keyguard_enabled", i, userId);
            int unlockDismissesKeyguard = Settings.Secure.getIntForUser(statsPullAtomService.mContext.getContentResolver(), "face_unlock_dismisses_keyguard", i, userId);
            int unlockAttentionRequired = Settings.Secure.getIntForUser(statsPullAtomService.mContext.getContentResolver(), "face_unlock_attention_required", 0, userId);
            int unlockAppEnabled = Settings.Secure.getIntForUser(statsPullAtomService.mContext.getContentResolver(), "face_unlock_app_enabled", i, userId);
            int unlockAlwaysRequireConfirmation = Settings.Secure.getIntForUser(statsPullAtomService.mContext.getContentResolver(), "face_unlock_always_require_confirmation", 0, userId);
            UserManager manager2 = manager;
            boolean z = true;
            int unlockDiversityRequired = Settings.Secure.getIntForUser(statsPullAtomService.mContext.getContentResolver(), "face_unlock_diversity_required", 1, userId);
            try {
                StatsEvent.Builder atomId = StatsEvent.newBuilder().setAtomId(atomTag);
                if (unlockKeyguardEnabled == 0) {
                    z = false;
                }
                StatsEvent e = atomId.writeBoolean(z).writeBoolean(unlockDismissesKeyguard != 0).writeBoolean(unlockAttentionRequired != 0).writeBoolean(unlockAppEnabled != 0).writeBoolean(unlockAlwaysRequireConfirmation != 0).writeBoolean(unlockDiversityRequired != 0).build();
                try {
                    pulledData.add(e);
                    userNum++;
                    i = 1;
                    statsPullAtomService = this;
                    manager = manager2;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Binder.restoreCallingIdentity(callingToken);
        return 0;
        Binder.restoreCallingIdentity(callingToken);
        throw th;
    }

    private void registerAppOps() {
        this.mStatsManager.setPullAtomCallback(10060, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerRuntimeAppOpAccessMessage() {
        this.mStatsManager.setPullAtomCallback(10069, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private class AppOpEntry {
        public final String mAttributionTag;
        public final int mHash;
        public final AppOpsManager.HistoricalOp mOp;
        public final String mPackageName;
        public final int mUid;

        AppOpEntry(String packageName, String attributionTag, AppOpsManager.HistoricalOp op, int uid) {
            this.mPackageName = packageName;
            this.mAttributionTag = attributionTag;
            this.mUid = uid;
            this.mOp = op;
            this.mHash = (((((op.getOpCode() * 961) + ((attributionTag == null ? 0 : attributionTag.hashCode()) * 31)) + packageName.hashCode()) + StatsPullAtomService.RANDOM_SEED) & Integer.MAX_VALUE) % 100;
        }
    }

    int pullAppOpsLocked(int atomTag, List<StatsEvent> pulledData) {
        long token = Binder.clearCallingIdentity();
        try {
            AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
            CompletableFuture<AppOpsManager.HistoricalOps> ops = new CompletableFuture<>();
            AppOpsManager.HistoricalOpsRequest histOpsRequest = new AppOpsManager.HistoricalOpsRequest.Builder(0L, JobStatus.NO_LATEST_RUNTIME).setFlags(9).build();
            Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Objects.requireNonNull(ops);
            appOps.getHistoricalOps(histOpsRequest, executor, new $$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8(ops));
            AppOpsManager.HistoricalOps histOps = ops.get(EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
            List<AppOpEntry> opsList = processHistoricalOps(histOps, atomTag, 100);
            int samplingRate = sampleAppOps(pulledData, opsList, atomTag, 100);
            if (samplingRate != 100) {
                Slog.e(TAG, "Atom 10060 downsampled - too many dimensions");
            }
            Binder.restoreCallingIdentity(token);
            return 0;
        } catch (Throwable t) {
            try {
                Slog.e(TAG, "Could not read appops", t);
                return 1;
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }
    }

    private int sampleAppOps(List<StatsEvent> pulledData, List<AppOpEntry> opsList, int atomTag, int samplingRate) {
        int nOps = opsList.size();
        for (int i = 0; i < nOps; i++) {
            AppOpEntry entry = opsList.get(i);
            if (entry.mHash < samplingRate) {
                StatsEvent.Builder e = StatsEvent.newBuilder();
                e.setAtomId(atomTag);
                e.writeInt(entry.mUid);
                e.addBooleanAnnotation((byte) 1, true);
                e.writeString(entry.mPackageName);
                if (atomTag == 10075) {
                    e.writeString(entry.mAttributionTag);
                }
                e.writeInt(entry.mOp.getOpCode());
                e.writeLong(entry.mOp.getForegroundAccessCount(9));
                e.writeLong(entry.mOp.getBackgroundAccessCount(9));
                e.writeLong(entry.mOp.getForegroundRejectCount(9));
                e.writeLong(entry.mOp.getBackgroundRejectCount(9));
                e.writeLong(entry.mOp.getForegroundAccessDuration(9));
                e.writeLong(entry.mOp.getBackgroundAccessDuration(9));
                e.writeBoolean(this.mDangerousAppOpsList.contains(Integer.valueOf(entry.mOp.getOpCode())));
                if (atomTag == 10075) {
                    e.writeInt(samplingRate);
                }
                pulledData.add(e.build());
            }
        }
        int i2 = pulledData.size();
        if (i2 > DIMENSION_KEY_SIZE_HARD_LIMIT) {
            int adjustedSamplingRate = MathUtils.constrain((samplingRate * 500) / pulledData.size(), 0, samplingRate - 1);
            pulledData.clear();
            return sampleAppOps(pulledData, opsList, atomTag, adjustedSamplingRate);
        }
        return samplingRate;
    }

    private void registerAttributedAppOps() {
        this.mStatsManager.setPullAtomCallback(10075, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullAttributedAppOpsLocked(int atomTag, List<StatsEvent> pulledData) {
        long token = Binder.clearCallingIdentity();
        try {
            AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
            CompletableFuture<AppOpsManager.HistoricalOps> ops = new CompletableFuture<>();
            AppOpsManager.HistoricalOpsRequest histOpsRequest = new AppOpsManager.HistoricalOpsRequest.Builder(0L, JobStatus.NO_LATEST_RUNTIME).setFlags(9).build();
            Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
            Objects.requireNonNull(ops);
            appOps.getHistoricalOps(histOpsRequest, executor, new $$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8(ops));
            AppOpsManager.HistoricalOps histOps = ops.get(EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
            if (this.mAppOpsSamplingRate == 0) {
                this.mContext.getMainThreadHandler().postDelayed(new Runnable() { // from class: com.android.server.stats.pull.StatsPullAtomService.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            StatsPullAtomService.this.estimateAppOpsSamplingRate();
                        } catch (Throwable e) {
                            Slog.e(StatsPullAtomService.TAG, "AppOps sampling ratio estimation failed: ", e);
                            synchronized (StatsPullAtomService.this.mAttributedAppOpsLock) {
                                StatsPullAtomService.this.mAppOpsSamplingRate = Math.min(StatsPullAtomService.this.mAppOpsSamplingRate, 10);
                            }
                        }
                    }
                }, APP_OPS_SAMPLING_INITIALIZATION_DELAY_MILLIS);
                this.mAppOpsSamplingRate = 100;
            }
            List<AppOpEntry> opsList = processHistoricalOps(histOps, atomTag, this.mAppOpsSamplingRate);
            int newSamplingRate = sampleAppOps(pulledData, opsList, atomTag, this.mAppOpsSamplingRate);
            this.mAppOpsSamplingRate = Math.min(this.mAppOpsSamplingRate, newSamplingRate);
            Binder.restoreCallingIdentity(token);
            return 0;
        } catch (Throwable t) {
            try {
                Slog.e(TAG, "Could not read appops", t);
                return 1;
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void estimateAppOpsSamplingRate() throws Exception {
        int appOpsTargetCollectionSize = DeviceConfig.getInt("permissions", APP_OPS_TARGET_COLLECTION_SIZE, APP_OPS_SIZE_ESTIMATE);
        AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        CompletableFuture<AppOpsManager.HistoricalOps> ops = new CompletableFuture<>();
        AppOpsManager.HistoricalOpsRequest histOpsRequest = new AppOpsManager.HistoricalOpsRequest.Builder(Math.max(Instant.now().minus(1L, (TemporalUnit) ChronoUnit.DAYS).toEpochMilli(), 0L), JobStatus.NO_LATEST_RUNTIME).setFlags(9).build();
        Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
        Objects.requireNonNull(ops);
        appOps.getHistoricalOps(histOpsRequest, executor, new $$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8(ops));
        AppOpsManager.HistoricalOps histOps = ops.get(EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
        List<AppOpEntry> opsList = processHistoricalOps(histOps, 10075, 100);
        long estimatedSize = 0;
        int nOps = opsList.size();
        for (int i = 0; i < nOps; i++) {
            AppOpEntry entry = opsList.get(i);
            estimatedSize += (long) (entry.mPackageName.length() + 32 + (entry.mAttributionTag == null ? 1 : entry.mAttributionTag.length()));
        }
        int i2 = appOpsTargetCollectionSize * 100;
        int estimatedSamplingRate = (int) MathUtils.constrain(((long) i2) / estimatedSize, 0L, 100L);
        synchronized (this.mAttributedAppOpsLock) {
            this.mAppOpsSamplingRate = Math.min(this.mAppOpsSamplingRate, estimatedSamplingRate);
        }
    }

    private List<AppOpEntry> processHistoricalOps(AppOpsManager.HistoricalOps histOps, int atomTag, int samplingRatio) {
        List<AppOpEntry> opsList = new ArrayList<>();
        for (int uidIdx = 0; uidIdx < histOps.getUidCount(); uidIdx++) {
            AppOpsManager.HistoricalUidOps uidOps = histOps.getUidOpsAt(uidIdx);
            int uid = uidOps.getUid();
            for (int pkgIdx = 0; pkgIdx < uidOps.getPackageCount(); pkgIdx++) {
                AppOpsManager.HistoricalPackageOps packageOps = uidOps.getPackageOpsAt(pkgIdx);
                if (atomTag != 10075) {
                    if (atomTag == 10060) {
                        for (int opIdx = 0; opIdx < packageOps.getOpCount(); opIdx++) {
                            AppOpsManager.HistoricalOp op = packageOps.getOpAt(opIdx);
                            processHistoricalOp(op, opsList, uid, samplingRatio, packageOps.getPackageName(), null);
                        }
                    }
                } else {
                    for (int attributionIdx = 0; attributionIdx < packageOps.getAttributedOpsCount(); attributionIdx++) {
                        int opIdx2 = 0;
                        for (AppOpsManager.AttributedHistoricalOps attributedOps = packageOps.getAttributedOpsAt(attributionIdx); opIdx2 < attributedOps.getOpCount(); attributedOps = attributedOps) {
                            AppOpsManager.HistoricalOp op2 = attributedOps.getOpAt(opIdx2);
                            processHistoricalOp(op2, opsList, uid, samplingRatio, packageOps.getPackageName(), attributedOps.getTag());
                            opIdx2++;
                        }
                    }
                }
            }
        }
        return opsList;
    }

    private void processHistoricalOp(AppOpsManager.HistoricalOp op, List<AppOpEntry> opsList, int uid, int samplingRatio, String packageName, String attributionTag) {
        int firstChar = 0;
        if (attributionTag != null && attributionTag.startsWith(packageName) && (firstChar = packageName.length()) < attributionTag.length() && attributionTag.charAt(firstChar) == '.') {
            firstChar++;
        }
        AppOpEntry entry = new AppOpEntry(packageName, attributionTag == null ? null : attributionTag.substring(firstChar), op, uid);
        if (entry.mHash < samplingRatio) {
            opsList.add(entry);
        }
    }

    int pullRuntimeAppOpAccessMessageLocked(int atomTag, List<StatsEvent> pulledData) {
        long token = Binder.clearCallingIdentity();
        try {
            AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
            RuntimeAppOpAccessMessage message = appOps.collectRuntimeAppOpAccessMessage();
            if (message == null) {
                Slog.i(TAG, "No runtime appop access message collected");
                Binder.restoreCallingIdentity(token);
                return 0;
            }
            StatsEvent.Builder e = StatsEvent.newBuilder();
            e.setAtomId(atomTag);
            e.writeInt(message.getUid());
            e.addBooleanAnnotation((byte) 1, true);
            e.writeString(message.getPackageName());
            e.writeString("");
            if (message.getAttributionTag() == null) {
                e.writeString("");
            } else {
                e.writeString(message.getAttributionTag());
            }
            e.writeString(message.getMessage());
            e.writeInt(message.getSamplingStrategy());
            e.writeInt(AppOpsManager.strOpToOp(message.getOp()));
            pulledData.add(e.build());
            Binder.restoreCallingIdentity(token);
            return 0;
        } catch (Throwable t) {
            try {
                Slog.e(TAG, "Could not read runtime appop access message", t);
                return 1;
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }
    }

    static void unpackStreamedData(int atomTag, List<StatsEvent> pulledData, List<ParcelFileDescriptor> statsFiles) throws IOException {
        InputStream stream = new ParcelFileDescriptor.AutoCloseInputStream(statsFiles.get(0));
        int[] len = new int[1];
        byte[] stats = readFully(stream, len);
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeByteArray(Arrays.copyOf(stats, len[0])).build();
        pulledData.add(e);
    }

    static byte[] readFully(InputStream stream, int[] outLen) throws IOException {
        int pos = 0;
        int initialAvail = stream.available();
        byte[] data = new byte[initialAvail > 0 ? initialAvail + 1 : 16384];
        while (true) {
            int amt = stream.read(data, pos, data.length - pos);
            Slog.i(TAG, "Read " + amt + " bytes at " + pos + " of avail " + data.length);
            if (amt < 0) {
                Slog.i(TAG, "**** FINISHED READING: pos=" + pos + " len=" + data.length);
                outLen[0] = pos;
                return data;
            }
            pos += amt;
            if (pos >= data.length) {
                byte[] newData = new byte[pos + 16384];
                Slog.i(TAG, "Copying " + pos + " bytes to new array len " + newData.length);
                System.arraycopy(data, 0, newData, 0, pos);
                data = newData;
            }
        }
    }

    private void registerNotificationRemoteViews() {
        this.mStatsManager.setPullAtomCallback(10066, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullNotificationRemoteViewsLocked(int atomTag, List<StatsEvent> pulledData) throws IOException {
        INotificationManager notificationManagerService = getINotificationManagerService();
        if (notificationManagerService == null) {
            return 1;
        }
        long callingToken = Binder.clearCallingIdentity();
        try {
            try {
                long wallClockNanos = SystemClock.currentTimeMicro() * 1000;
                long lastNotificationStatsNs = wallClockNanos - TimeUnit.NANOSECONDS.convert(1L, TimeUnit.DAYS);
                List<ParcelFileDescriptor> statsFiles = new ArrayList<>();
                notificationManagerService.pullStats(lastNotificationStatsNs, 1, true, statsFiles);
                if (statsFiles.size() != 1) {
                    Binder.restoreCallingIdentity(callingToken);
                    return 1;
                }
                try {
                    unpackStreamedData(atomTag, pulledData, statsFiles);
                    Binder.restoreCallingIdentity(callingToken);
                    return 0;
                } catch (RemoteException e) {
                    e = e;
                    Slog.e(TAG, "Getting notistats failed: ", e);
                    Binder.restoreCallingIdentity(callingToken);
                    return 1;
                } catch (IOException e2) {
                    e = e2;
                    Slog.e(TAG, "Getting notistats failed: ", e);
                    Binder.restoreCallingIdentity(callingToken);
                    return 1;
                } catch (SecurityException e3) {
                    e = e3;
                    Slog.e(TAG, "Getting notistats failed: ", e);
                    Binder.restoreCallingIdentity(callingToken);
                    return 1;
                }
            } catch (Throwable th) {
                e = th;
                Binder.restoreCallingIdentity(callingToken);
                throw e;
            }
        } catch (RemoteException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        } catch (SecurityException e6) {
            e = e6;
        } catch (Throwable th2) {
            e = th2;
            Binder.restoreCallingIdentity(callingToken);
            throw e;
        }
    }

    private void registerDangerousPermissionStateSampled() {
        this.mStatsManager.setPullAtomCallback(10067, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerBatteryLevel() {
        this.mStatsManager.setPullAtomCallback(10043, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerRemainingBatteryCapacity() {
        this.mStatsManager.setPullAtomCallback(10019, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerFullBatteryCapacity() {
        this.mStatsManager.setPullAtomCallback(10020, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerBatteryVoltage() {
        this.mStatsManager.setPullAtomCallback(10030, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    private void registerBatteryCycleCount() {
        this.mStatsManager.setPullAtomCallback(10045, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullHealthHalLocked(final int atomTag, final List<StatsEvent> pulledData) {
        IHealth healthService = this.mHealthService.getLastService();
        if (healthService == null) {
            return 1;
        }
        try {
            healthService.getHealthInfo(new IHealth.getHealthInfoCallback() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc
                @Override // android.hardware.health.V2_0.IHealth.getHealthInfoCallback
                public final void onValues(int i, HealthInfo healthInfo) {
                    StatsPullAtomService.lambda$pullHealthHalLocked$19(atomTag, pulledData, i, healthInfo);
                }
            });
            return 0;
        } catch (RemoteException | IllegalStateException e) {
            return 1;
        }
    }

    static /* synthetic */ void lambda$pullHealthHalLocked$19(int atomTag, List pulledData, int result, HealthInfo value) {
        int pulledValue;
        if (atomTag == 10019) {
            pulledValue = value.legacy.batteryChargeCounter;
        } else if (atomTag == 10020) {
            pulledValue = value.legacy.batteryFullCharge;
        } else if (atomTag == 10030) {
            pulledValue = value.legacy.batteryVoltage;
        } else if (atomTag == 10043) {
            pulledValue = value.legacy.batteryLevel;
        } else if (atomTag == 10045) {
            pulledValue = value.legacy.batteryCycleCount;
        } else {
            throw new IllegalStateException("Invalid atomTag in healthHal puller: " + atomTag);
        }
        StatsEvent e = StatsEvent.newBuilder().setAtomId(atomTag).writeInt(pulledValue).build();
        pulledData.add(e);
    }

    private void registerSettingsStats() {
        this.mStatsManager.setPullAtomCallback(10080, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mStatsCallbackImpl);
    }

    int pullSettingsStatsLocked(int atomTag, List<StatsEvent> pulledData) {
        UserManager userManager = (UserManager) this.mContext.getSystemService(UserManager.class);
        if (userManager == null) {
            return 1;
        }
        long token = Binder.clearCallingIdentity();
        try {
            for (UserInfo user : userManager.getUsers()) {
                int userId = user.getUserHandle().getIdentifier();
                if (userId == 0) {
                    pulledData.addAll(SettingsStatsUtil.logGlobalSettings(this.mContext, atomTag, 0));
                }
                pulledData.addAll(SettingsStatsUtil.logSystemSettings(this.mContext, atomTag, userId));
                pulledData.addAll(SettingsStatsUtil.logSecureSettings(this.mContext, atomTag, userId));
            }
            return 0;
        } catch (Exception e) {
            Slog.e(TAG, "failed to pullSettingsStats", e);
            return 1;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private static final class ThermalEventListener extends IThermalEventListener.Stub {
        private ThermalEventListener() {
        }

        public void notifyThrottling(Temperature temp) {
            FrameworkStatsLog.write(189, temp.getType(), temp.getName(), (int) (temp.getValue() * 10.0f), temp.getStatus());
        }
    }

    private static final class ConnectivityStatsCallback extends ConnectivityManager.NetworkCallback {
        private ConnectivityStatsCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            FrameworkStatsLog.write(98, network.netId, 1);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            FrameworkStatsLog.write(98, network.netId, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class StatsSubscriptionsListener extends SubscriptionManager.OnSubscriptionsChangedListener {
        private final SubscriptionManager mSm;

        StatsSubscriptionsListener(SubscriptionManager sm) {
            this.mSm = sm;
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            List<SubscriptionInfo> currentSubs = this.mSm.getCompleteActiveSubscriptionInfoList();
            for (final SubscriptionInfo sub : currentSubs) {
                SubInfo match = (SubInfo) CollectionUtils.find(StatsPullAtomService.this.mHistoricalSubs, new Predicate() { // from class: com.android.server.stats.pull.-$$Lambda$StatsPullAtomService$StatsSubscriptionsListener$RIGAUBQdZSVKAA5xu3jl4WM2Kzg
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return StatsPullAtomService.StatsSubscriptionsListener.lambda$onSubscriptionsChanged$0(sub, (SubInfo) obj);
                    }
                });
                if (match == null) {
                    int subId = sub.getSubscriptionId();
                    String mcc = sub.getMccString();
                    String mnc = sub.getMncString();
                    String subscriberId = StatsPullAtomService.this.mTelephony.getSubscriberId(subId);
                    if (TextUtils.isEmpty(subscriberId) || TextUtils.isEmpty(mcc) || TextUtils.isEmpty(mnc) || sub.getCarrierId() == -1) {
                        Slog.e(StatsPullAtomService.TAG, "subInfo of subId " + subId + " is invalid, ignored.");
                    } else {
                        SubInfo subInfo = new SubInfo(subId, sub.getCarrierId(), mcc, mnc, subscriberId, sub.isOpportunistic());
                        Slog.i(StatsPullAtomService.TAG, "subId " + subId + " added into historical sub list");
                        synchronized (StatsPullAtomService.this.mDataBytesTransferLock) {
                            StatsPullAtomService.this.mHistoricalSubs.add(subInfo);
                            StatsPullAtomService.this.mNetworkStatsBaselines.addAll(StatsPullAtomService.this.getDataUsageBytesTransferSnapshotForSub(subInfo));
                        }
                    }
                }
            }
        }

        static /* synthetic */ boolean lambda$onSubscriptionsChanged$0(SubscriptionInfo sub, SubInfo it) {
            return it.subId == sub.getSubscriptionId();
        }
    }
}
