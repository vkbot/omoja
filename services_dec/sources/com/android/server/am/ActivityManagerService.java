package com.android.server.am;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityThread;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.AppOpsManagerInternal;
import android.app.ApplicationErrorReport;
import android.app.ApplicationExitInfo;
import android.app.BroadcastOptions;
import android.app.ContentProviderHolder;
import android.app.IActivityController;
import android.app.IActivityManager;
import android.app.IApplicationThread;
import android.app.IAssistDataReceiver;
import android.app.IInstrumentationWatcher;
import android.app.INotificationManager;
import android.app.IProcessObserver;
import android.app.IServiceConnection;
import android.app.IStopUserCallback;
import android.app.ITaskStackListener;
import android.app.IUiAutomationConnection;
import android.app.IUidObserver;
import android.app.IUserSwitchObserver;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProcessMemoryState;
import android.app.ProfilerInfo;
import android.app.PropertyInvalidatedCache;
import android.app.WaitResult;
import android.app.backup.IBackupManager;
import android.app.usage.UsageStatsManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.LocusId;
import android.content.pm.ActivityInfo;
import android.content.pm.ActivityPresentationInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageManager;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.ParceledListSlice;
import android.content.pm.PathPermission;
import android.content.pm.PermissionInfo;
import android.content.pm.ProcessInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManagerInternal;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.net.INetd;
import android.net.Uri;
import android.os.AppZygote;
import android.os.Binder;
import android.os.BinderProxy;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.DropBoxManager;
import android.os.FactoryTest;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.IPermissionController;
import android.os.IProcessInfoService;
import android.os.IProgressListener;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.TransactionTooLargeException;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.permission.PermissionManagerInternal;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.sysprop.InitProperties;
import android.sysprop.VoldProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DebugUtils;
import android.util.EventLog;
import android.util.IntArray;
import android.util.Log;
import android.util.Pair;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.util.proto.ProtoUtils;
import android.view.IRecentsAnimationRunner;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.android.internal.app.IAppOpsActiveCallback;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsService;
import com.android.internal.app.ProcessMap;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.content.PackageHelper;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.IResultReceiver;
import com.android.internal.os.ProcessCpuTracker;
import com.android.internal.os.TransferPipe;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.Preconditions;
import com.android.internal.util.function.HeptFunction;
import com.android.internal.util.function.QuadFunction;
import com.android.internal.util.function.TriFunction;
import com.android.server.AlarmManagerInternal;
import com.android.server.AttributeCache;
import com.android.server.BatteryService;
import com.android.server.DeviceIdleInternal;
import com.android.server.DisplayThread;
import com.android.server.IntentResolver;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.NetworkManagementInternal;
import com.android.server.PackageWatchdog;
import com.android.server.RescueParty;
import com.android.server.ServiceThread;
import com.android.server.SystemConfig;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.ThreadPriorityBooster;
import com.android.server.UiModeManagerService;
import com.android.server.UiThread;
import com.android.server.UserspaceRebootLogger;
import com.android.server.Watchdog;
import com.android.server.appop.AppOpsService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.compat.PlatformCompat;
import com.android.server.connectivity.NetworkAgentInfo;
import com.android.server.contentcapture.ContentCaptureManagerInternal;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.firewall.IntentFirewall;
import com.android.server.job.JobSchedulerInternal;
import com.android.server.job.JobSchedulerShellCommand;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.Installer;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.uri.GrantUri;
import com.android.server.uri.NeededUriGrants;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.utils.PriorityDump;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.voiceinteraction.DatabaseHelper;
import com.android.server.vr.VrManagerInternal;
import com.android.server.wm.ActivityMetricsLaunchObserver;
import com.android.server.wm.ActivityServiceConnectionsHolder;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.WindowManagerInternal;
import com.android.server.wm.WindowManagerService;
import com.android.server.wm.WindowProcessController;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes.dex */
public class ActivityManagerService extends IActivityManager.Stub implements Watchdog.Monitor, BatteryStatsImpl.BatteryCallback {
    static final int ABORT_DUMPHEAP_MSG = 51;
    private static final String ACTION_HEAP_DUMP_FINISHED = "com.android.internal.intent.action.HEAP_DUMP_FINISHED";
    public static final String ACTION_TRIGGER_IDLE = "com.android.server.ACTION_TRIGGER_IDLE";
    private static final String ACTIVITY_START_PSS_DEFER_CONFIG = "activity_start_pss_defer";
    static final String ANR_FILE_PREFIX = "anr_";
    public static final String ANR_TRACE_DIR = "/data/anr";
    static final long BATTERY_STATS_TIME = 1800000;
    private static final int BINDER_PROXY_HIGH_WATERMARK = 6000;
    private static final int BINDER_PROXY_LOW_WATERMARK = 5500;
    static final int BOOT_COMPLETE_DELAY_MSG = 321;
    static final int BROADCAST_BG_TIMEOUT = 60000;
    static final int BROADCAST_FG_TIMEOUT = 10000;
    static final int CHECK_EXCESSIVE_POWER_USE_MSG = 27;
    static final int CLEAR_DNS_CACHE_MSG = 28;
    static final int COLLECT_PSS_BG_MSG = 1;
    static final int CONTENT_PROVIDER_PUBLISH_TIMEOUT_MSG = 57;
    static final int DEFER_PSS_MSG = 2;
    static final int DISPATCH_OOM_ADJ_OBSERVER_MSG = 70;
    static final int DISPATCH_PROCESSES_CHANGED_UI_MSG = 31;
    static final int DISPATCH_PROCESS_DIED_UI_MSG = 32;
    static final int DISPATCH_UIDS_CHANGED_UI_MSG = 53;
    static final int DROPBOX_DEFAULT_MAX_SIZE = 196608;
    static final String EXTRA_BUGREPORT_TYPE = "android.intent.extra.BUGREPORT_TYPE";
    static final String EXTRA_DESCRIPTION = "android.intent.extra.DESCRIPTION";
    private static final String EXTRA_HEAP_DUMP_IS_USER_INITIATED = "com.android.internal.extra.heap_dump.IS_USER_INITIATED";
    private static final String EXTRA_HEAP_DUMP_PROCESS_NAME = "com.android.internal.extra.heap_dump.PROCESS_NAME";
    private static final String EXTRA_HEAP_DUMP_REPORT_PACKAGE = "com.android.internal.extra.heap_dump.REPORT_PACKAGE";
    private static final String EXTRA_HEAP_DUMP_SIZE_BYTES = "com.android.internal.extra.heap_dump.SIZE_BYTES";
    static final String EXTRA_TITLE = "android.intent.extra.TITLE";
    static final int FIRST_BROADCAST_QUEUE_MSG = 200;
    static final int FIRST_VENDOR_MSG = 1000;
    static final int GC_BACKGROUND_PROCESSES_MSG = 5;
    static final int HANDLE_TRUST_STORAGE_UPDATE_MSG = 63;
    static final int IDLE_UIDS_MSG = 58;
    private static final String INTENT_BUGREPORT_REQUESTED = "com.android.internal.intent.action.BUGREPORT_REQUESTED";
    private static final String INTENT_REMOTE_BUGREPORT_FINISHED = "com.android.internal.intent.action.REMOTE_BUGREPORT_FINISHED";
    private static final int JAVA_DUMP_MINIMUM_SIZE = 100;
    static final int KILL_APPLICATION_MSG = 22;
    static final int KILL_APP_ZYGOTE_DELAY_MS = 5000;
    static final int KILL_APP_ZYGOTE_MSG = 71;
    private static final int KSM_SHARED = 0;
    private static final int KSM_SHARING = 1;
    private static final int KSM_UNSHARED = 2;
    private static final int KSM_VOLATILE = 3;
    private static final int MAX_BUGREPORT_DESCRIPTION_SIZE = 150;
    private static final int MAX_BUGREPORT_TITLE_SIZE = 50;
    private static final int MAX_DUP_SUPPRESSED_STACKS = 5000;
    private static final int MAX_RECEIVERS_ALLOWED_PER_APP = 1000;
    static final int MAX_STATE_DATA_SIZE = 128;
    private static final int MEMINFO_COMPACT_VERSION = 1;
    private static final int MINIMUM_MEMORY_GROWTH_THRESHOLD = 10000;
    static final long MONITOR_CPU_DEF_TIME = 60000;
    static final long MONITOR_CPU_MAX_TIME = 268435455;
    static final long MONITOR_CPU_MIN_TIME = 5000;
    static final boolean MONITOR_CPU_USAGE = true;
    static final boolean MONITOR_THREAD_CPU_USAGE = false;
    private static final int NATIVE_DUMP_TIMEOUT_MS = 2000;
    private static final long NETWORK_ACCESS_TIMEOUT_DEFAULT_MS = 200;
    static final int NOTIFY_CLEARTEXT_NETWORK_MSG = 49;
    static final int PERSISTENT_MASK = 9;
    static final int POST_DUMP_HEAP_NOTIFICATION_MSG = 50;
    static final int PROC_START_TIMEOUT = 10000;
    static final int PROC_START_TIMEOUT_MSG = 20;
    static final int PROC_START_TIMEOUT_WITH_WRAPPER = 1200000;
    static final int PUSH_TEMP_WHITELIST_UI_MSG = 68;
    static final int REPORT_MEM_USAGE_MSG = 33;
    static final int RESERVED_BYTES_PER_LOGCAT_LINE = 100;
    static final int SERVICE_FOREGROUND_CRASH_MSG = 69;
    static final int SERVICE_FOREGROUND_TIMEOUT_MSG = 66;
    static final String SERVICE_RECORD_KEY = "servicerecord";
    static final int SERVICE_TIMEOUT_MSG = 12;
    private static final String SHELL_APP_PACKAGE = "com.android.shell";
    static final int SHOW_ERROR_UI_MSG = 1;
    static final int SHOW_NOT_RESPONDING_UI_MSG = 2;
    static final int SHOW_STRICT_MODE_VIOLATION_UI_MSG = 26;
    static final int SHUTDOWN_UI_AUTOMATION_CONNECTION_MSG = 56;
    private static final int SLOW_UID_OBSERVER_THRESHOLD_MS = 20;
    static final int START_PERSISTENT_APPS_MSG = 323;
    public static final int STOCK_PM_FLAGS = 1024;
    static final int STOP_DEFERRING_PSS_MSG = 3;
    static final String SYSTEM_DEBUGGABLE = "ro.debuggable";
    private static final String SYSTEM_PROPERTY_DEVICE_PROVISIONED = "persist.sys.device_provisioned";
    static final String SYSTEM_USER_HOME_NEEDED = "ro.system_user_home_needed";
    static final String TAG = "ActivityManager";
    static final String TAG_BACKUP = "ActivityManager";
    private static final String TAG_BROADCAST = "ActivityManager";
    private static final String TAG_CLEANUP = "ActivityManager";
    private static final String TAG_CONFIGURATION = "ActivityManager";
    private static final String TAG_LOCKTASK = "ActivityManager";
    static final String TAG_LRU = "ActivityManager";
    private static final String TAG_MU = "ActivityManager_MU";
    static final String TAG_NETWORK = "ActivityManager_Network";
    static final String TAG_OOM_ADJ = "ActivityManager";
    private static final String TAG_POWER = "ActivityManager";
    static final String TAG_PROCESSES = "ActivityManager";
    static final String TAG_PROCESS_OBSERVERS = "ActivityManager";
    private static final String TAG_PROVIDER = "ActivityManager";
    static final String TAG_PSS = "ActivityManager";
    private static final String TAG_SERVICE = "ActivityManager";
    private static final String TAG_SWITCH = "ActivityManager";
    static final String TAG_UID_OBSERVERS = "ActivityManager";
    public static final int TOP_APP_PRIORITY_BOOST = -10;
    static final boolean TRACK_PROCSTATS_ASSOCIATIONS = true;
    static final int UPDATE_HTTP_PROXY_MSG = 29;
    static final int UPDATE_TIME_PREFERENCE_MSG = 41;
    static final int UPDATE_TIME_ZONE = 13;
    static final boolean VALIDATE_UID_STATES = true;
    static final int WAIT_FOR_DEBUGGER_UI_MSG = 6;
    private static SimpleDateFormat sAnrFileDateFormat;
    final IntArray mActiveCameraUids;
    final ArrayList<ActiveInstrumentation> mActiveInstrumentation;
    ProcessChangeItem[] mActiveProcessChanges;
    UidRecord.ChangeItem[] mActiveUidChanges;
    private final ActivityMetricsLaunchObserver mActivityLaunchObserver;
    private final AtomicInteger mActivityStartingNesting;
    public ActivityTaskManagerService mActivityTaskManager;
    boolean mAllowLowerMemLevel;
    ArrayMap<String, PackageAssociationInfo> mAllowedAssociations;
    private final HashSet<Integer> mAlreadyLoggedViolatedStacks;
    boolean mAlwaysFinishActivities;
    final AnrHelper mAnrHelper;
    private Map<String, String> mAppAgentMap;
    ArrayMap<String, IBinder> mAppBindArgs;
    final AppErrors mAppErrors;
    private AppOpsManager mAppOpsManager;
    final AppOpsService mAppOpsService;
    final SparseArray<ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>>> mAssociations;
    public ActivityTaskManagerInternal mAtmInternal;
    final ArrayList<ProcessChangeItem> mAvailProcessChanges;
    final ArrayList<UidRecord.ChangeItem> mAvailUidChanges;
    int[] mBackgroundAppIdWhitelist;
    ArraySet<String> mBackgroundLaunchBroadcasts;
    final SparseArray<BackupRecord> mBackupTargets;
    final BatteryStatsService mBatteryStatsService;
    BroadcastQueue mBgBroadcastQueue;
    final Handler mBgHandler;
    private boolean mBinderTransactionTrackingEnabled;
    boolean mBootAnimationComplete;
    int mBootPhase;
    volatile boolean mBooted;
    volatile boolean mBooting;
    final BroadcastQueue[] mBroadcastQueues;
    boolean mCallFinishBooting;
    ActivityManagerConstants mConstants;
    ContentCaptureManagerInternal mContentCaptureService;
    final Context mContext;
    CoreSettingsObserver mCoreSettingsObserver;
    BroadcastStats mCurBroadcastStats;
    OomAdjObserver mCurOomAdjObserver;
    int mCurOomAdjUid;
    private String mCurResumedPackage;
    private int mCurResumedUid;
    String mDebugApp;
    boolean mDebugTransient;
    DevelopmentSettingsObserver mDevelopmentSettingsObserver;
    int[] mDeviceIdleExceptIdleWhitelist;
    int[] mDeviceIdleTempWhitelist;
    int[] mDeviceIdleWhitelist;
    String mDeviceOwnerName;
    private int mDeviceOwnerUid;
    boolean mEnableOffloadQueue;
    private final ArrayMap<String, long[]> mErrorClusterRecords;
    final int mFactoryTest;
    BroadcastQueue mFgBroadcastQueue;
    private final FgsWhileInUseTempAllowList mFgsWhileInUseTempAllowList;
    boolean mForceBackgroundCheck;
    final ProcessMap<ArrayList<ProcessRecord>> mForegroundPackages;
    boolean mFullPssPending;
    final MainHandler mHandler;
    public final ServiceThread mHandlerThread;
    final HiddenApiSettings mHiddenApiBlacklist;
    final SparseArray<ImportanceToken> mImportantProcesses;
    final Injector mInjector;
    private Installer mInstaller;
    final InstrumentationReporter mInstrumentationReporter;
    public final IntentFirewall mIntentFirewall;
    public final ActivityManagerInternal mInternal;
    ArrayMap<String, IBinder> mIsolatedAppBindArgs;
    BroadcastStats mLastBroadcastStats;
    final AtomicLong mLastCpuTime;
    long mLastFullPssTime;
    long mLastIdleTime;
    long mLastMemUsageReportTime;
    int mLastMemoryLevel;
    int mLastNumProcesses;
    long mLastPowerCheckUptime;
    long mLastWriteTime;
    final ArrayList<ContentProviderRecord> mLaunchingProviders;
    private ParcelFileDescriptor[] mLifeMonitorFds;
    DeviceIdleInternal mLocalDeviceIdleController;
    PowerManagerInternal mLocalPowerManager;
    final LowMemDetector mLowMemDetector;
    long mLowRamStartTime;
    long mLowRamTimeSinceLastIdle;
    int mMemWatchDumpPid;
    String mMemWatchDumpProcName;
    int mMemWatchDumpUid;
    Uri mMemWatchDumpUri;
    private boolean mMemWatchIsUserInitiated;
    final ProcessMap<Pair<Long, String>> mMemWatchProcesses;
    String mNativeDebuggingApp;
    BroadcastQueue mOffloadBroadcastQueue;
    volatile boolean mOnBattery;
    public OomAdjProfiler mOomAdjProfiler;
    OomAdjuster mOomAdjuster;
    String mOrigDebugApp;
    boolean mOrigWaitForDebugger;
    PackageManagerInternal mPackageManagerInt;
    final PackageWatchdog mPackageWatchdog;
    public final PendingIntentController mPendingIntentController;
    final ArrayList<ProcessChangeItem> mPendingProcessChanges;
    final ArrayList<ProcessRecord> mPendingPssProcesses;
    private final PendingStartActivityUids mPendingStartActivityUids;
    final PendingTempWhitelists mPendingTempWhitelist;
    final ArrayList<UidRecord.ChangeItem> mPendingUidChanges;
    PermissionManagerServiceInternal mPermissionManagerInt;
    final ArrayList<ProcessRecord> mPersistentStartingProcesses;
    final PidMap mPidsSelfLocked;
    private final PlatformCompat mPlatformCompat;
    private final PriorityDump.PriorityDumper mPriorityDumper;
    final Handler mProcStartHandler;
    final ServiceThread mProcStartHandlerThread;
    final CountDownLatch mProcessCpuInitLatch;
    final AtomicBoolean mProcessCpuMutexFree;
    final Thread mProcessCpuThread;
    final ProcessCpuTracker mProcessCpuTracker;
    final ProcessList mProcessList;
    final RemoteCallbackList<IProcessObserver> mProcessObservers;
    private final long[] mProcessStateStatsLongs;
    final ProcessStatsService mProcessStats;
    final ArrayList<ProcessRecord> mProcessesOnHold;
    volatile boolean mProcessesReady;
    final ArrayList<ProcessRecord> mProcessesToGc;
    final ProfileData mProfileData;
    int mProfileType;
    final ProviderMap mProviderMap;
    private volatile long mPssDeferralTime;
    private final DeviceConfig.OnPropertiesChangedListener mPssDelayConfigListener;
    final IntentResolver<BroadcastFilter, BroadcastFilter> mReceiverResolver;
    final HashMap<IBinder, ReceiverList> mRegisteredReceivers;
    boolean mSafeMode;
    final ActiveServices mServices;
    final SparseArray<ArrayMap<String, ArrayList<Intent>>> mStickyBroadcasts;
    final StringBuilder mStringBuilder;
    boolean mSystemProvidersInstalled;
    volatile boolean mSystemReady;
    SystemServiceManager mSystemServiceManager;
    final ActivityThread mSystemThread;
    boolean mTestPssMode;
    String mTrackAllocationApp;
    boolean mTrackingAssociations;
    UriGrantsManagerInternal mUgmInternal;
    final Context mUiContext;
    final Handler mUiHandler;
    int mUidChangeDispatchCount;
    final RemoteCallbackList<IUidObserver> mUidObservers;
    UsageStatsManagerInternal mUsageStatsService;
    boolean mUseFifoUiScheduling;
    final UserController mUserController;
    private boolean mUserIsMonkey;
    final ActiveUids mValidateUids;
    boolean mWaitForDebugger;
    long mWaitForNetworkTimeoutMs;
    int mWakefulness;
    public WindowManagerService mWindowManager;
    WindowManagerInternal mWmInternal;
    private final SparseArray<String> pidToPackageNameCache;
    public static final int MY_PID = Process.myPid();
    static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static ThreadPriorityBooster sThreadPriorityBooster = new ThreadPriorityBooster(-2, 6);
    static final SparseArray<ProcessInfo> sActiveProcessInfoSelfLocked = new SparseArray<>();
    private static final ThreadLocal<Identity> sCallerIdentity = new ThreadLocal<>();
    private static String sTheRealBuildSerial = UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
    static final HostingRecord sNullHostingRecord = new HostingRecord(null);
    private static final int[] PROCESS_STATE_STATS_FORMAT = {32, 544, 10272};
    static final long[] DUMP_MEM_BUCKETS = {5120, 7168, 10240, 15360, 20480, 30720, 40960, 81920, 122880, 163840, 204800, 256000, 307200, 358400, 409600, 512000, 614400, 819200, 1048576, 2097152, 5242880, 10485760, 20971520};
    static final int[] DUMP_MEM_OOM_ADJ = {JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE, -900, -800, -700, 0, 100, 200, 250, DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR, 400, 500, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, 700, 800, 900};
    static final String[] DUMP_MEM_OOM_LABEL = {"Native", "System", "Persistent", "Persistent Service", "Foreground", "Visible", "Perceptible", "Perceptible Low", "Heavy Weight", "Backup", "A Services", "Home", "Previous", "B Services", "Cached"};
    static final String[] DUMP_MEM_OOM_COMPACT_LABEL = {"native", "sys", "pers", "persvc", "fore", "vis", "percept", "perceptl", "heavy", BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD, "servicea", "home", "prev", "serviceb", "cached"};

    interface OomAdjObserver {
        void onOomAdjMessage(String str);
    }

    BroadcastQueue broadcastQueueForIntent(Intent intent) {
        if (isOnOffloadQueue(intent.getFlags())) {
            return this.mOffloadBroadcastQueue;
        }
        boolean isFg = (intent.getFlags() & AudioFormat.EVRC) != 0;
        return isFg ? this.mFgBroadcastQueue : this.mBgBroadcastQueue;
    }

    static void boostPriorityForLockedSection() {
        sThreadPriorityBooster.boost();
    }

    static void resetPriorityAfterLockedSection() {
        sThreadPriorityBooster.reset();
    }

    private final class PackageAssociationInfo {
        private final ArraySet<String> mAllowedPackageAssociations;
        private boolean mIsDebuggable;
        private final String mSourcePackage;

        PackageAssociationInfo(String sourcePackage, ArraySet<String> allowedPackages, boolean isDebuggable) {
            this.mSourcePackage = sourcePackage;
            this.mAllowedPackageAssociations = allowedPackages;
            this.mIsDebuggable = isDebuggable;
        }

        boolean isPackageAssociationAllowed(String targetPackage) {
            return this.mIsDebuggable || this.mAllowedPackageAssociations.contains(targetPackage);
        }

        boolean isDebuggable() {
            return this.mIsDebuggable;
        }

        void setDebuggable(boolean isDebuggable) {
            this.mIsDebuggable = isDebuggable;
        }

        ArraySet<String> getAllowedPackageAssociations() {
            return this.mAllowedPackageAssociations;
        }
    }

    static final class PidMap {
        private final SparseArray<ProcessRecord> mPidMap = new SparseArray<>();

        PidMap() {
        }

        ProcessRecord get(int pid) {
            return this.mPidMap.get(pid);
        }

        int size() {
            return this.mPidMap.size();
        }

        ProcessRecord valueAt(int index) {
            return this.mPidMap.valueAt(index);
        }

        int keyAt(int index) {
            return this.mPidMap.keyAt(index);
        }

        int indexOfKey(int key) {
            return this.mPidMap.indexOfKey(key);
        }

        void doAddInternal(ProcessRecord app) {
            this.mPidMap.put(app.pid, app);
        }

        boolean doRemoveInternal(ProcessRecord app) {
            ProcessRecord existingApp = this.mPidMap.get(app.pid);
            if (existingApp != null && existingApp.startSeq == app.startSeq) {
                this.mPidMap.remove(app.pid);
                return true;
            }
            return false;
        }

        boolean doRemoveIfNoThreadInternal(ProcessRecord app) {
            if (app == null || app.thread != null) {
                return false;
            }
            return doRemoveInternal(app);
        }
    }

    void addPidLocked(ProcessRecord app) {
        synchronized (this.mPidsSelfLocked) {
            this.mPidsSelfLocked.doAddInternal(app);
        }
        synchronized (sActiveProcessInfoSelfLocked) {
            if (app.processInfo != null) {
                sActiveProcessInfoSelfLocked.put(app.pid, app.processInfo);
            } else {
                sActiveProcessInfoSelfLocked.remove(app.pid);
            }
        }
        this.mAtmInternal.onProcessMapped(app.pid, app.getWindowProcessController());
    }

    void removePidLocked(ProcessRecord app) {
        boolean removed;
        synchronized (this.mPidsSelfLocked) {
            removed = this.mPidsSelfLocked.doRemoveInternal(app);
        }
        if (removed) {
            synchronized (sActiveProcessInfoSelfLocked) {
                sActiveProcessInfoSelfLocked.remove(app.pid);
            }
            this.mAtmInternal.onProcessUnMapped(app.pid);
        }
    }

    boolean removePidIfNoThread(ProcessRecord app) {
        boolean removed;
        synchronized (this.mPidsSelfLocked) {
            removed = this.mPidsSelfLocked.doRemoveIfNoThreadInternal(app);
        }
        if (removed) {
            synchronized (sActiveProcessInfoSelfLocked) {
                sActiveProcessInfoSelfLocked.remove(app.pid);
            }
            this.mAtmInternal.onProcessUnMapped(app.pid);
        }
        return removed;
    }

    abstract class ImportanceToken implements IBinder.DeathRecipient {
        final int pid;
        final String reason;
        final IBinder token;

        ImportanceToken(int _pid, IBinder _token, String _reason) {
            this.pid = _pid;
            this.token = _token;
            this.reason = _reason;
        }

        public String toString() {
            return "ImportanceToken { " + Integer.toHexString(System.identityHashCode(this)) + " " + this.reason + " " + this.pid + " " + this.token + " }";
        }

        void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long pToken = proto.start(fieldId);
            proto.write(1120986464257L, this.pid);
            IBinder iBinder = this.token;
            if (iBinder != null) {
                proto.write(1138166333442L, iBinder.toString());
            }
            proto.write(1138166333443L, this.reason);
            proto.end(pToken);
        }
    }

    static final class Association {
        int mCount;
        long mLastStateUptime;
        int mNesting;
        final String mSourceProcess;
        final int mSourceUid;
        long mStartTime;
        final ComponentName mTargetComponent;
        final String mTargetProcess;
        final int mTargetUid;
        long mTime;
        int mLastState = 21;
        long[] mStateTimes = new long[21];

        Association(int sourceUid, String sourceProcess, int targetUid, ComponentName targetComponent, String targetProcess) {
            this.mSourceUid = sourceUid;
            this.mSourceProcess = sourceProcess;
            this.mTargetUid = targetUid;
            this.mTargetComponent = targetComponent;
            this.mTargetProcess = targetProcess;
        }
    }

    private final class DevelopmentSettingsObserver extends ContentObserver {
        private final ComponentName mBugreportStorageProvider;
        private final Uri mUri;

        public DevelopmentSettingsObserver() {
            super(ActivityManagerService.this.mHandler);
            this.mUri = Settings.Global.getUriFor("development_settings_enabled");
            this.mBugreportStorageProvider = new ComponentName(ActivityManagerService.SHELL_APP_PACKAGE, "com.android.shell.BugreportStorageProvider");
            ActivityManagerService.this.mContext.getContentResolver().registerContentObserver(this.mUri, false, this, -1);
            onChange();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            if (this.mUri.equals(uri)) {
                onChange();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onChange() {
            ActivityManagerService.this.mContext.getPackageManager().setComponentEnabledSetting(this.mBugreportStorageProvider, (Settings.Global.getInt(ActivityManagerService.this.mContext.getContentResolver(), "development_settings_enabled", Build.IS_ENG ? 1 : 0) != 0) == true ? 1 : 0, 0);
        }
    }

    private class Identity {
        public final int pid;
        public final IBinder token;
        public final int uid;

        Identity(IBinder _token, int _pid, int _uid) {
            this.token = _token;
            this.pid = _pid;
            this.uid = _uid;
        }
    }

    static final class PendingTempWhitelist {
        final long duration;
        final String tag;
        final int targetUid;

        PendingTempWhitelist(int _targetUid, long _duration, String _tag) {
            this.targetUid = _targetUid;
            this.duration = _duration;
            this.tag = _tag;
        }

        void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.targetUid);
            proto.write(1112396529666L, this.duration);
            proto.write(1138166333443L, this.tag);
            proto.end(token);
        }
    }

    class ProfileData {
        private String mProfileApp = null;
        private ProcessRecord mProfileProc = null;
        private ProfilerInfo mProfilerInfo = null;

        ProfileData() {
        }

        void setProfileApp(String profileApp) {
            this.mProfileApp = profileApp;
            if (ActivityManagerService.this.mAtmInternal != null) {
                ActivityManagerService.this.mAtmInternal.setProfileApp(profileApp);
            }
        }

        String getProfileApp() {
            return this.mProfileApp;
        }

        void setProfileProc(ProcessRecord profileProc) {
            this.mProfileProc = profileProc;
            if (ActivityManagerService.this.mAtmInternal != null) {
                ActivityManagerService.this.mAtmInternal.setProfileProc(profileProc == null ? null : profileProc.getWindowProcessController());
            }
        }

        ProcessRecord getProfileProc() {
            return this.mProfileProc;
        }

        void setProfilerInfo(ProfilerInfo profilerInfo) {
            this.mProfilerInfo = profilerInfo;
            if (ActivityManagerService.this.mAtmInternal != null) {
                ActivityManagerService.this.mAtmInternal.setProfilerInfo(profilerInfo);
            }
        }

        ProfilerInfo getProfilerInfo() {
            return this.mProfilerInfo;
        }
    }

    static final class ProcessChangeItem {
        static final int CHANGE_ACTIVITIES = 1;
        static final int CHANGE_CAPABILITY = 4;
        static final int CHANGE_FOREGROUND_SERVICES = 2;
        int capability;
        int changes;
        boolean foregroundActivities;
        int foregroundServiceTypes;
        int pid;
        int processState;
        int uid;

        ProcessChangeItem() {
        }
    }

    static final class UidObserverRegistration {
        private static int[] ORIG_ENUMS = {4, 8, 2, 1};
        private static int[] PROTO_ENUMS = {3, 4, 2, 1};
        final int cutpoint;
        final SparseIntArray lastProcStates;
        int mMaxDispatchTime;
        int mSlowDispatchCount;
        final String pkg;
        final int uid;
        final int which;

        UidObserverRegistration(int _uid, String _pkg, int _which, int _cutpoint) {
            this.uid = _uid;
            this.pkg = _pkg;
            this.which = _which;
            this.cutpoint = _cutpoint;
            if (_cutpoint >= 0) {
                this.lastProcStates = new SparseIntArray();
            } else {
                this.lastProcStates = null;
            }
        }

        void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.uid);
            proto.write(1138166333442L, this.pkg);
            ProtoUtils.writeBitWiseFlagsToProtoEnum(proto, 2259152797699L, this.which, ORIG_ENUMS, PROTO_ENUMS);
            proto.write(1120986464260L, this.cutpoint);
            SparseIntArray sparseIntArray = this.lastProcStates;
            if (sparseIntArray != null) {
                int NI = sparseIntArray.size();
                for (int i = 0; i < NI; i++) {
                    long pToken = proto.start(2246267895813L);
                    proto.write(1120986464257L, this.lastProcStates.keyAt(i));
                    proto.write(1120986464258L, this.lastProcStates.valueAt(i));
                    proto.end(pToken);
                }
            }
            proto.end(token);
        }
    }

    private final class AppDeathRecipient implements IBinder.DeathRecipient {
        final ProcessRecord mApp;
        final IApplicationThread mAppThread;
        final int mPid;

        AppDeathRecipient(ProcessRecord app, int pid, IApplicationThread thread) {
            this.mApp = app;
            this.mPid = pid;
            this.mAppThread = thread;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.appDiedLocked(this.mApp, this.mPid, this.mAppThread, true, null);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    final class UiHandler extends Handler {
        public UiHandler() {
            super(UiThread.get().getLooper(), null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                ActivityManagerService.this.mAppErrors.handleShowAppErrorUi(msg);
                ActivityManagerService.this.ensureBootCompleted();
                return;
            }
            if (i == 2) {
                ActivityManagerService.this.mAppErrors.handleShowAnrUi(msg);
                ActivityManagerService.this.ensureBootCompleted();
                return;
            }
            if (i == 6) {
                synchronized (ActivityManagerService.this) {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        ProcessRecord app = (ProcessRecord) msg.obj;
                        if (msg.arg1 != 0) {
                            if (!app.waitedForDebugger) {
                                app.getDialogController().showDebugWaitingDialogs();
                                app.waitedForDebugger = true;
                            }
                        } else {
                            app.getDialogController().clearWaitingDialog();
                        }
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i != 26) {
                if (i == 53) {
                    ActivityManagerService.this.dispatchUidsChanged();
                    return;
                }
                if (i == 68) {
                    ActivityManagerService.this.pushTempWhitelist();
                    return;
                }
                if (i == 70) {
                    ActivityManagerService.this.dispatchOomAdjObserver((String) msg.obj);
                    return;
                }
                if (i == 1000) {
                    ActivityManagerService.this.ensureBootCompleted();
                    return;
                }
                if (i == 31) {
                    ActivityManagerService.this.dispatchProcessesChanged();
                    return;
                } else {
                    if (i == 32) {
                        int pid = msg.arg1;
                        int uid = msg.arg2;
                        ActivityManagerService.this.dispatchProcessDied(pid, uid);
                        return;
                    }
                    return;
                }
            }
            HashMap<String, Object> data = (HashMap) msg.obj;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ProcessRecord proc = (ProcessRecord) data.get("app");
                    if (proc == null) {
                        Slog.e("ActivityManager", "App not found when showing strict mode dialog.");
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    if (proc.getDialogController().hasViolationDialogs()) {
                        Slog.e("ActivityManager", "App already has strict mode dialog: " + proc);
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    AppErrorResult res = (AppErrorResult) data.get("result");
                    if (ActivityManagerService.this.mAtmInternal.showStrictModeViolationDialog()) {
                        proc.getDialogController().showViolationDialogs(res);
                    } else {
                        res.set(0);
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    ActivityManagerService.this.ensureBootCompleted();
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }
    }

    final class MainHandler extends Handler {
        public MainHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int uid;
            String procName;
            long memLimit;
            String reportPackage;
            boolean isUserInitiated;
            switch (msg.what) {
                case 5:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.performAppGcsIfAppropriateLocked();
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 12:
                    ActivityManagerService.this.mServices.serviceTimeout((ProcessRecord) msg.obj);
                    return;
                case 13:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            for (int i = ActivityManagerService.this.mProcessList.mLruProcesses.size() - 1; i >= 0; i--) {
                                ProcessRecord r = ActivityManagerService.this.mProcessList.mLruProcesses.get(i);
                                if (r.thread != null) {
                                    try {
                                        r.thread.updateTimeZone();
                                    } catch (RemoteException e) {
                                        Slog.w("ActivityManager", "Failed to update time zone for: " + r.info.processName);
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                        break;
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return;
                case 20:
                    ProcessRecord app = (ProcessRecord) msg.obj;
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.processStartTimedOutLocked(app);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 22:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            int appId = msg.arg1;
                            int userId = msg.arg2;
                            Bundle bundle = (Bundle) msg.obj;
                            String pkg = bundle.getString("pkg");
                            String reason = bundle.getString(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY);
                            ActivityManagerService.this.forceStopPackageLocked(pkg, appId, false, false, true, false, false, userId, reason);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 27:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.checkExcessivePowerUsageLocked();
                            removeMessages(27);
                            Message nmsg = obtainMessage(27);
                            sendMessageDelayed(nmsg, ActivityManagerService.this.mConstants.POWER_CHECK_INTERVAL);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case ActivityManagerService.CLEAR_DNS_CACHE_MSG /* 28 */:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.mProcessList.clearAllDnsCacheLocked();
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 29:
                    ActivityManagerService.this.mProcessList.setAllHttpProxy();
                    return;
                case 33:
                    final ArrayList<ProcessMemInfo> memInfos = (ArrayList) msg.obj;
                    Thread thread = new Thread() { // from class: com.android.server.am.ActivityManagerService.MainHandler.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() throws Throwable {
                            ActivityManagerService.this.reportMemUsage(memInfos);
                        }
                    };
                    thread.start();
                    return;
                case 41:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.mProcessList.updateAllTimePrefsLocked(msg.arg1);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 49:
                    int uid2 = msg.arg1;
                    byte[] firstPacket = (byte[]) msg.obj;
                    synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                        for (int i2 = 0; i2 < ActivityManagerService.this.mPidsSelfLocked.size(); i2++) {
                            ProcessRecord p = ActivityManagerService.this.mPidsSelfLocked.valueAt(i2);
                            if (p.uid == uid2 && p.thread != null) {
                                try {
                                    p.thread.notifyCleartextNetwork(firstPacket);
                                } catch (RemoteException e2) {
                                }
                            }
                        }
                        break;
                    }
                    return;
                case 50:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            uid = ActivityManagerService.this.mMemWatchDumpUid;
                            procName = ActivityManagerService.this.mMemWatchDumpProcName;
                            Pair<Long, String> val = (Pair) ActivityManagerService.this.mMemWatchProcesses.get(procName, uid);
                            if (val == null) {
                                val = (Pair) ActivityManagerService.this.mMemWatchProcesses.get(procName, 0);
                            }
                            if (val != null) {
                                memLimit = ((Long) val.first).longValue();
                                reportPackage = (String) val.second;
                            } else {
                                memLimit = 0;
                                reportPackage = null;
                            }
                            isUserInitiated = ActivityManagerService.this.mMemWatchIsUserInitiated;
                            ActivityManagerService.this.mMemWatchDumpUri = null;
                            ActivityManagerService.this.mMemWatchDumpProcName = null;
                            ActivityManagerService.this.mMemWatchDumpPid = -1;
                            ActivityManagerService.this.mMemWatchDumpUid = -1;
                        } catch (Throwable th2) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th2;
                        }
                        break;
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    if (procName == null) {
                        return;
                    }
                    Intent dumpFinishedIntent = new Intent(ActivityManagerService.ACTION_HEAP_DUMP_FINISHED);
                    dumpFinishedIntent.setPackage(ActivityManagerService.SHELL_APP_PACKAGE);
                    dumpFinishedIntent.putExtra("android.intent.extra.UID", uid);
                    dumpFinishedIntent.putExtra(ActivityManagerService.EXTRA_HEAP_DUMP_IS_USER_INITIATED, isUserInitiated);
                    dumpFinishedIntent.putExtra(ActivityManagerService.EXTRA_HEAP_DUMP_SIZE_BYTES, memLimit);
                    dumpFinishedIntent.putExtra(ActivityManagerService.EXTRA_HEAP_DUMP_REPORT_PACKAGE, reportPackage);
                    dumpFinishedIntent.putExtra(ActivityManagerService.EXTRA_HEAP_DUMP_PROCESS_NAME, procName);
                    ActivityManagerService.this.mContext.sendBroadcastAsUser(dumpFinishedIntent, UserHandle.getUserHandleForUid(uid));
                    return;
                case 51:
                    String procName2 = (String) msg.obj;
                    if (procName2 != null) {
                        synchronized (ActivityManagerService.this) {
                            try {
                                ActivityManagerService.boostPriorityForLockedSection();
                                if (procName2.equals(ActivityManagerService.this.mMemWatchDumpProcName)) {
                                    ActivityManagerService.this.mMemWatchDumpProcName = null;
                                    ActivityManagerService.this.mMemWatchDumpUri = null;
                                    ActivityManagerService.this.mMemWatchDumpPid = -1;
                                    ActivityManagerService.this.mMemWatchDumpUid = -1;
                                }
                            } finally {
                                ActivityManagerService.resetPriorityAfterLockedSection();
                            }
                            break;
                        }
                        return;
                    }
                    return;
                case 56:
                    IUiAutomationConnection connection = (IUiAutomationConnection) msg.obj;
                    try {
                        connection.shutdown();
                        break;
                    } catch (RemoteException e3) {
                        Slog.w("ActivityManager", "Error shutting down UiAutomationConnection");
                    }
                    ActivityManagerService.this.mUserIsMonkey = false;
                    return;
                case ActivityManagerService.CONTENT_PROVIDER_PUBLISH_TIMEOUT_MSG /* 57 */:
                    ProcessRecord app2 = (ProcessRecord) msg.obj;
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.processContentProviderPublishTimedOutLocked(app2);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 58:
                    ActivityManagerService.this.idleUids();
                    return;
                case 63:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ActivityManagerService.this.mProcessList.handleAllTrustStorageUpdateLocked();
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case 66:
                    ActivityManagerService.this.mServices.serviceForegroundTimeout((ServiceRecord) msg.obj);
                    return;
                case 69:
                    ActivityManagerService.this.mServices.serviceForegroundCrash((ProcessRecord) msg.obj, msg.getData().getCharSequence(ActivityManagerService.SERVICE_RECORD_KEY));
                    return;
                case 71:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            AppZygote appZygote = (AppZygote) msg.obj;
                            ActivityManagerService.this.mProcessList.killAppZygoteIfNeededLocked(appZygote, false);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case ActivityManagerService.BOOT_COMPLETE_DELAY_MSG /* 321 */:
                    synchronized (ActivityManagerService.this) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            Slog.i("ActivityManager", "set boot delay prop!!!");
                            SystemProperties.set("sys.boot_completed_delay", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
                        } finally {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                case ActivityManagerService.START_PERSISTENT_APPS_MSG /* 323 */:
                    ActivityManagerService.this.handleEarlyPersistentApps(((Integer) msg.obj).intValue(), false);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.am.ActivityManagerService$5, reason: invalid class name */
    class AnonymousClass5 extends Handler {
        AnonymousClass5(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0250 */
        /* JADX WARN: Bottom block not found for handler: all -> 0x025a */
        /* JADX WARN: Code duplicated, block: B:108:0x021d A[Catch: all -> 0x0234, TryCatch #4 {all -> 0x0234, blocks: (B:91:0x01b3, B:93:0x01b7, B:95:0x01bb, B:97:0x01bf, B:99:0x01c5, B:101:0x01ee, B:105:0x0200, B:109:0x0225, B:108:0x021d, B:113:0x022f), top: B:142:0x01b3 }] */
        /* JADX WARN: Code duplicated, block: B:78:0x017b A[Catch: all -> 0x0248, TRY_ENTER, TryCatch #6 {all -> 0x0248, blocks: (B:58:0x0102, B:70:0x0151, B:79:0x0182, B:78:0x017b), top: B:146:0x0102 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:143:? -> B:116:0x0234). Please report as a decompilation issue!!! */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r45) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 604
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.AnonymousClass5.handleMessage(android.os.Message):void");
        }

        static /* synthetic */ boolean lambda$handleMessage$0(ProcessCpuTracker.Stats st) {
            return st.vsize > 0 && st.uid < 10000;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSystemProcess() {
        try {
            ServiceManager.addService("activity", this, true, 21);
            ServiceManager.addService("procstats", this.mProcessStats);
            ServiceManager.addService("meminfo", new MemBinder(this), false, 2);
            ServiceManager.addService("gfxinfo", new GraphicsBinder(this));
            ServiceManager.addService("dbinfo", new DbBinder(this));
            ServiceManager.addService("cpuinfo", new CpuBinder(this), false, 1);
            ServiceManager.addService("permission", new PermissionController(this));
            ServiceManager.addService("processinfo", new ProcessInfoService(this));
            ServiceManager.addService("cacheinfo", new CacheBinder(this));
            ApplicationInfo info = this.mContext.getPackageManager().getApplicationInfo(PackageManagerService.PLATFORM_PACKAGE_NAME, 1049600);
            this.mSystemThread.installSystemApplicationInfo(info, getClass().getClassLoader());
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    ProcessRecord app = this.mProcessList.newProcessRecordLocked(info, info.processName, false, 0, new HostingRecord("system"));
                    app.setPersistent(true);
                    int i = MY_PID;
                    app.mPidForCompact = i;
                    app.pid = i;
                    app.getWindowProcessController().setPid(MY_PID);
                    app.maxAdj = -900;
                    app.makeActive(this.mSystemThread.getApplicationThread(), this.mProcessStats);
                    addPidLocked(app);
                    this.mProcessList.updateLruProcessLocked(app, false, null);
                    updateOomAdjLocked("updateOomAdj_meh");
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            this.mAppOpsService.startWatchingMode(63, null, new IAppOpsCallback.Stub() { // from class: com.android.server.am.ActivityManagerService.6
                public void opChanged(int op, int uid, String packageName) {
                    if (op == 63 && packageName != null && ActivityManagerService.this.getAppOpsManager().checkOpNoThrow(op, uid, packageName) != 0) {
                        ActivityManagerService.this.runInBackgroundDisabled(uid);
                    }
                }
            });
            int[] cameraOp = {26};
            this.mAppOpsService.startWatchingActive(cameraOp, new IAppOpsActiveCallback.Stub() { // from class: com.android.server.am.ActivityManagerService.7
                public void opActiveChanged(int op, int uid, String packageName, boolean active) {
                    ActivityManagerService.this.cameraActiveChanged(uid, active);
                }
            });
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find android system package", e);
        }
    }

    public void setWindowManager(WindowManagerService wm) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mWindowManager = wm;
                this.mWmInternal = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
                this.mActivityTaskManager.setWindowManager(wm);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setUsageStatsManager(UsageStatsManagerInternal usageStatsManager) {
        this.mUsageStatsService = usageStatsManager;
        this.mActivityTaskManager.setUsageStatsManager(usageStatsManager);
    }

    public void setContentCaptureManager(ContentCaptureManagerInternal contentCaptureManager) {
        this.mContentCaptureService = contentCaptureManager;
    }

    public void startObservingNativeCrashes() {
        NativeCrashListener ncl = new NativeCrashListener(this);
        ncl.start();
    }

    public IAppOpsService getAppOpsService() {
        return this.mAppOpsService;
    }

    static class MemBinder extends Binder {
        ActivityManagerService mActivityManagerService;
        private final PriorityDump.PriorityDumper mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.MemBinder.1
            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpHigh(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                dump(fd, pw, new String[]{"-a"}, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                MemBinder.this.mActivityManagerService.dumpApplicationMemoryUsage(fd, pw, "  ", args, false, null, asProto);
            }
        };

        MemBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (!DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "meminfo", pw)) {
                    return;
                }
                PriorityDump.dump(this.mPriorityDumper, fd, pw, args);
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    static class GraphicsBinder extends Binder {
        ActivityManagerService mActivityManagerService;

        GraphicsBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (!DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "gfxinfo", pw)) {
                    return;
                }
                this.mActivityManagerService.dumpGraphicsHardwareUsage(fd, pw, args);
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    static class DbBinder extends Binder {
        ActivityManagerService mActivityManagerService;

        DbBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (!DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "dbinfo", pw)) {
                    return;
                }
                this.mActivityManagerService.dumpDbInfo(fd, pw, args);
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    static class CpuBinder extends Binder {
        ActivityManagerService mActivityManagerService;
        private final PriorityDump.PriorityDumper mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.CpuBinder.1
            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) {
                if (!DumpUtils.checkDumpAndUsageStatsPermission(CpuBinder.this.mActivityManagerService.mContext, "cpuinfo", pw)) {
                    return;
                }
                synchronized (CpuBinder.this.mActivityManagerService.mProcessCpuTracker) {
                    try {
                        if (asProto) {
                            CpuBinder.this.mActivityManagerService.mProcessCpuTracker.dumpProto(fd);
                        } else {
                            pw.print(CpuBinder.this.mActivityManagerService.mProcessCpuTracker.printCurrentLoad());
                            pw.print(CpuBinder.this.mActivityManagerService.mProcessCpuTracker.printCurrentState(SystemClock.uptimeMillis()));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };

        CpuBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            PriorityDump.dump(this.mPriorityDumper, fd, pw, args);
        }
    }

    static class CacheBinder extends Binder {
        ActivityManagerService mActivityManagerService;

        CacheBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (!DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "cacheinfo", pw)) {
                    return;
                }
                this.mActivityManagerService.dumpBinderCacheContents(fd, pw, args);
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    public static final class Lifecycle extends SystemService {
        private static ActivityTaskManagerService sAtm;
        private final ActivityManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new ActivityManagerService(context, sAtm);
        }

        public static ActivityManagerService startService(SystemServiceManager ssm, ActivityTaskManagerService atm) {
            sAtm = atm;
            return ((Lifecycle) ssm.startService(Lifecycle.class)).getService();
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            this.mService.start();
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            this.mService.mBootPhase = phase;
            if (phase == 500) {
                this.mService.mBatteryStatsService.systemServicesReady();
                this.mService.mServices.systemServicesReady();
            } else if (phase == 550) {
                this.mService.startBroadcastObservers();
            } else if (phase == 600) {
                this.mService.mPackageWatchdog.onPackagesReady();
            }
        }

        @Override // com.android.server.SystemService
        public void onCleanupUser(int userId) {
            this.mService.mBatteryStatsService.onCleanupUser(userId);
        }

        public ActivityManagerService getService() {
            return this.mService;
        }
    }

    private void maybeLogUserspaceRebootEvent() {
        int userId;
        if (!UserspaceRebootLogger.shouldLogUserspaceRebootEvent() || (userId = this.mUserController.getCurrentUserId()) != 0) {
            return;
        }
        UserspaceRebootLogger.logEventAsync(StorageManager.isUserKeyUnlocked(userId), BackgroundThread.getExecutor());
    }

    static class HiddenApiSettings extends ContentObserver implements DeviceConfig.OnPropertiesChangedListener {
        public static final String HIDDEN_API_ACCESS_LOG_SAMPLING_RATE = "hidden_api_access_log_sampling_rate";
        public static final String HIDDEN_API_ACCESS_STATSLOG_SAMPLING_RATE = "hidden_api_access_statslog_sampling_rate";
        private boolean mBlacklistDisabled;
        private final Context mContext;
        private List<String> mExemptions;
        private String mExemptionsStr;
        private int mLogSampleRate;
        private int mPolicy;
        private int mStatslogSampleRate;

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            int logSampleRate = properties.getInt(HIDDEN_API_ACCESS_LOG_SAMPLING_RATE, 0);
            if (logSampleRate < 0 || logSampleRate > 65536) {
                logSampleRate = -1;
            }
            if (logSampleRate != -1 && logSampleRate != this.mLogSampleRate) {
                this.mLogSampleRate = logSampleRate;
                Process.ZYGOTE_PROCESS.setHiddenApiAccessLogSampleRate(this.mLogSampleRate);
            }
            int statslogSampleRate = properties.getInt(HIDDEN_API_ACCESS_STATSLOG_SAMPLING_RATE, 0);
            if (statslogSampleRate < 0 || statslogSampleRate > 65536) {
                statslogSampleRate = -1;
            }
            if (statslogSampleRate != -1 && statslogSampleRate != this.mStatslogSampleRate) {
                this.mStatslogSampleRate = statslogSampleRate;
                Process.ZYGOTE_PROCESS.setHiddenApiAccessStatslogSampleRate(this.mStatslogSampleRate);
            }
        }

        public HiddenApiSettings(Handler handler, Context context) {
            super(handler);
            this.mExemptions = Collections.emptyList();
            this.mLogSampleRate = -1;
            this.mStatslogSampleRate = -1;
            this.mPolicy = -1;
            this.mContext = context;
        }

        public void registerObserver() {
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("hidden_api_blacklist_exemptions"), false, this);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("hidden_api_policy"), false, this);
            DeviceConfig.addOnPropertiesChangedListener("app_compat", this.mContext.getMainExecutor(), this);
            update();
        }

        private void update() {
            List<String> listAsList;
            String exemptions = Settings.Global.getString(this.mContext.getContentResolver(), "hidden_api_blacklist_exemptions");
            if (!TextUtils.equals(exemptions, this.mExemptionsStr)) {
                this.mExemptionsStr = exemptions;
                if ("*".equals(exemptions)) {
                    this.mBlacklistDisabled = true;
                    this.mExemptions = Collections.emptyList();
                } else {
                    this.mBlacklistDisabled = false;
                    if (TextUtils.isEmpty(exemptions)) {
                        listAsList = Collections.emptyList();
                    } else {
                        listAsList = Arrays.asList(exemptions.split(","));
                    }
                    this.mExemptions = listAsList;
                }
                if (!Process.ZYGOTE_PROCESS.setApiBlacklistExemptions(this.mExemptions)) {
                    Slog.e("ActivityManager", "Failed to set API blacklist exemptions!");
                    this.mExemptions = Collections.emptyList();
                }
            }
            this.mPolicy = getValidEnforcementPolicy("hidden_api_policy");
        }

        private int getValidEnforcementPolicy(String settingsKey) {
            int policy = Settings.Global.getInt(this.mContext.getContentResolver(), settingsKey, -1);
            if (ApplicationInfo.isValidHiddenApiEnforcementPolicy(policy)) {
                return policy;
            }
            return -1;
        }

        boolean isDisabled() {
            return this.mBlacklistDisabled;
        }

        int getPolicy() {
            return this.mPolicy;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            update();
        }
    }

    AppOpsManager getAppOpsManager() {
        if (this.mAppOpsManager == null) {
            this.mAppOpsManager = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        }
        return this.mAppOpsManager;
    }

    public ActivityManagerService(Injector injector, ServiceThread handlerThread) {
        ActivityManagerConstants activityManagerConstants;
        OomAdjuster oomAdjuster;
        IntentFirewall intentFirewall;
        PendingIntentController pendingIntentController;
        this.pidToPackageNameCache = new SparseArray<>();
        this.mInstrumentationReporter = new InstrumentationReporter();
        this.mActiveInstrumentation = new ArrayList<>();
        this.mOomAdjProfiler = new OomAdjProfiler();
        this.mUseFifoUiScheduling = false;
        this.mBroadcastQueues = new BroadcastQueue[3];
        this.mDeviceOwnerUid = -1;
        this.mActiveCameraUids = new IntArray(4);
        this.mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.1
            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                if (asProto) {
                    return;
                }
                ActivityManagerService.this.doDump(fd, pw, new String[]{ActivityTaskManagerService.DUMP_ACTIVITIES_CMD}, asProto);
                ActivityManagerService.this.doDump(fd, pw, new String[]{"service", "all-platform-critical"}, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpNormal(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                ActivityManagerService.this.doDump(fd, pw, new String[]{"-a", "--normal-priority"}, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                ActivityManagerService.this.doDump(fd, pw, args, asProto);
            }
        };
        this.mBackgroundAppIdWhitelist = new int[]{1002};
        this.mPidsSelfLocked = new PidMap();
        this.mImportantProcesses = new SparseArray<>();
        this.mProcessesOnHold = new ArrayList<>();
        this.mPersistentStartingProcesses = new ArrayList<>();
        this.mProcessesToGc = new ArrayList<>();
        this.mPendingPssProcesses = new ArrayList<>();
        this.mActivityStartingNesting = new AtomicInteger(0);
        this.mActivityLaunchObserver = new ActivityMetricsLaunchObserver() { // from class: com.android.server.am.ActivityManagerService.2
            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunched(byte[] activity, int temperature) {
                if (ActivityManagerService.this.mPssDeferralTime > 0) {
                    Message msg = ActivityManagerService.this.mBgHandler.obtainMessage(2);
                    ActivityManagerService.this.mBgHandler.sendMessageAtFrontOfQueue(msg);
                }
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onIntentStarted(Intent intent, long timestampNs) {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onIntentFailed() {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchCancelled(byte[] abortingActivity) {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchFinished(byte[] finalActivity, long timestampNs) {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onReportFullyDrawn(byte[] finalActivity, long timestampNs) {
            }
        };
        this.mPssDeferralTime = 0L;
        this.mBinderTransactionTrackingEnabled = false;
        this.mLastFullPssTime = SystemClock.uptimeMillis();
        this.mFullPssPending = false;
        this.mPssDelayConfigListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.am.ActivityManagerService.3
            public void onPropertiesChanged(DeviceConfig.Properties properties) {
                if (properties.getKeyset().contains(ActivityManagerService.ACTIVITY_START_PSS_DEFER_CONFIG)) {
                    ActivityManagerService.this.mPssDeferralTime = properties.getLong(ActivityManagerService.ACTIVITY_START_PSS_DEFER_CONFIG, 0L);
                }
            }
        };
        this.mValidateUids = new ActiveUids(this, false);
        this.mAlreadyLoggedViolatedStacks = new HashSet<>();
        this.mRegisteredReceivers = new HashMap<>();
        this.mReceiverResolver = new IntentResolver<BroadcastFilter, BroadcastFilter>() { // from class: com.android.server.am.ActivityManagerService.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public boolean allowFilterResult(BroadcastFilter filter, List<BroadcastFilter> dest) {
                IBinder target = filter.receiverList.receiver.asBinder();
                for (int i = dest.size() - 1; i >= 0; i--) {
                    if (dest.get(i).receiverList.receiver.asBinder() == target) {
                        return false;
                    }
                }
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public BroadcastFilter newResult(BroadcastFilter filter, int match, int userId) {
                if (userId == -1 || filter.owningUserId == -1 || userId == filter.owningUserId) {
                    return (BroadcastFilter) super.newResult(filter, match, userId);
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public IntentFilter getIntentFilter(BroadcastFilter input) {
                return input;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.server.IntentResolver
            public BroadcastFilter[] newArray(int size) {
                return new BroadcastFilter[size];
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public boolean isPackageForFilter(String packageName, BroadcastFilter filter) {
                return packageName.equals(filter.packageName);
            }
        };
        this.mStickyBroadcasts = new SparseArray<>();
        this.mAssociations = new SparseArray<>();
        this.mBackupTargets = new SparseArray<>();
        this.mLaunchingProviders = new ArrayList<>();
        this.mDeviceIdleWhitelist = new int[0];
        this.mDeviceIdleExceptIdleWhitelist = new int[0];
        this.mDeviceIdleTempWhitelist = new int[0];
        this.mPendingTempWhitelist = new PendingTempWhitelists(this);
        this.mFgsWhileInUseTempAllowList = new FgsWhileInUseTempAllowList();
        this.mStringBuilder = new StringBuilder(256);
        this.mProcessesReady = false;
        this.mSystemReady = false;
        this.mOnBattery = false;
        this.mBooting = false;
        this.mCallFinishBooting = false;
        this.mBootAnimationComplete = false;
        this.mWakefulness = 1;
        this.mAllowLowerMemLevel = false;
        this.mLastMemoryLevel = 0;
        this.mLastIdleTime = SystemClock.uptimeMillis();
        this.mLowRamTimeSinceLastIdle = 0L;
        this.mLowRamStartTime = 0L;
        this.mCurResumedPackage = null;
        this.mCurResumedUid = -1;
        this.mForegroundPackages = new ProcessMap<>();
        this.mTestPssMode = false;
        this.mDebugApp = null;
        this.mWaitForDebugger = false;
        this.mDebugTransient = false;
        this.mOrigDebugApp = null;
        this.mOrigWaitForDebugger = false;
        this.mAlwaysFinishActivities = false;
        this.mProfileData = new ProfileData();
        this.mAppAgentMap = null;
        this.mProfileType = 0;
        this.mMemWatchProcesses = new ProcessMap<>();
        this.mTrackAllocationApp = null;
        this.mNativeDebuggingApp = null;
        this.mProcessObservers = new RemoteCallbackList<>();
        this.mActiveProcessChanges = new ProcessChangeItem[5];
        this.mPendingProcessChanges = new ArrayList<>();
        this.mAvailProcessChanges = new ArrayList<>();
        this.mUidObservers = new RemoteCallbackList<>();
        this.mActiveUidChanges = new UidRecord.ChangeItem[5];
        this.mPendingUidChanges = new ArrayList<>();
        this.mAvailUidChanges = new ArrayList<>();
        this.mAnrHelper = new AnrHelper();
        this.mProcessCpuTracker = new ProcessCpuTracker(false);
        this.mLastCpuTime = new AtomicLong(0L);
        this.mProcessCpuMutexFree = new AtomicBoolean(true);
        this.mProcessCpuInitLatch = new CountDownLatch(1);
        this.mLastWriteTime = 0L;
        this.mBooted = false;
        this.mLastMemUsageReportTime = 0L;
        this.mBgHandler = new AnonymousClass5(BackgroundThread.getHandler().getLooper());
        this.mProcessStateStatsLongs = new long[1];
        this.mErrorClusterRecords = new ArrayMap<>();
        boolean hasHandlerThread = handlerThread != null;
        this.mInjector = injector;
        this.mContext = injector.getContext();
        this.mUiContext = null;
        this.mAppErrors = null;
        this.mPackageWatchdog = null;
        this.mAppOpsService = this.mInjector.getAppOpsService(null, null);
        this.mBatteryStatsService = null;
        this.mHandler = hasHandlerThread ? new MainHandler(handlerThread.getLooper()) : null;
        this.mHandlerThread = handlerThread;
        if (!hasHandlerThread) {
            activityManagerConstants = null;
        } else {
            activityManagerConstants = new ActivityManagerConstants(this.mContext, this, this.mHandler);
        }
        this.mConstants = activityManagerConstants;
        ActiveUids activeUids = new ActiveUids(this, false);
        this.mPlatformCompat = null;
        ProcessList processList = injector.getProcessList(this);
        this.mProcessList = processList;
        processList.init(this, activeUids, this.mPlatformCompat);
        this.mLowMemDetector = null;
        if (!hasHandlerThread) {
            oomAdjuster = null;
        } else {
            oomAdjuster = new OomAdjuster(this, this.mProcessList, activeUids, handlerThread);
        }
        this.mOomAdjuster = oomAdjuster;
        if (!hasHandlerThread) {
            intentFirewall = null;
        } else {
            intentFirewall = new IntentFirewall(new IntentFirewallInterface(), this.mHandler);
        }
        this.mIntentFirewall = intentFirewall;
        this.mProcessCpuThread = null;
        this.mProcessStats = null;
        this.mProviderMap = null;
        this.mServices = hasHandlerThread ? new ActiveServices(this) : null;
        this.mSystemThread = null;
        this.mUiHandler = injector.getUiHandler(null);
        this.mUserController = hasHandlerThread ? new UserController(this) : null;
        if (hasHandlerThread) {
            pendingIntentController = new PendingIntentController(handlerThread.getLooper(), this.mUserController, this.mConstants);
        } else {
            pendingIntentController = null;
        }
        this.mPendingIntentController = pendingIntentController;
        this.mProcStartHandlerThread = null;
        this.mProcStartHandler = null;
        this.mHiddenApiBlacklist = null;
        this.mFactoryTest = 0;
        this.mUgmInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
        this.mInternal = new LocalService();
        this.mPendingStartActivityUids = new PendingStartActivityUids(this.mContext);
    }

    public ActivityManagerService(Context systemContext, ActivityTaskManagerService atm) {
        this.pidToPackageNameCache = new SparseArray<>();
        this.mInstrumentationReporter = new InstrumentationReporter();
        this.mActiveInstrumentation = new ArrayList<>();
        this.mOomAdjProfiler = new OomAdjProfiler();
        this.mUseFifoUiScheduling = false;
        this.mBroadcastQueues = new BroadcastQueue[3];
        this.mDeviceOwnerUid = -1;
        this.mActiveCameraUids = new IntArray(4);
        this.mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.1
            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                if (asProto) {
                    return;
                }
                ActivityManagerService.this.doDump(fd, pw, new String[]{ActivityTaskManagerService.DUMP_ACTIVITIES_CMD}, asProto);
                ActivityManagerService.this.doDump(fd, pw, new String[]{"service", "all-platform-critical"}, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpNormal(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                ActivityManagerService.this.doDump(fd, pw, new String[]{"-a", "--normal-priority"}, asProto);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) throws Throwable {
                ActivityManagerService.this.doDump(fd, pw, args, asProto);
            }
        };
        this.mBackgroundAppIdWhitelist = new int[]{1002};
        this.mPidsSelfLocked = new PidMap();
        this.mImportantProcesses = new SparseArray<>();
        this.mProcessesOnHold = new ArrayList<>();
        this.mPersistentStartingProcesses = new ArrayList<>();
        this.mProcessesToGc = new ArrayList<>();
        this.mPendingPssProcesses = new ArrayList<>();
        this.mActivityStartingNesting = new AtomicInteger(0);
        this.mActivityLaunchObserver = new ActivityMetricsLaunchObserver() { // from class: com.android.server.am.ActivityManagerService.2
            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunched(byte[] activity, int temperature) {
                if (ActivityManagerService.this.mPssDeferralTime > 0) {
                    Message msg = ActivityManagerService.this.mBgHandler.obtainMessage(2);
                    ActivityManagerService.this.mBgHandler.sendMessageAtFrontOfQueue(msg);
                }
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onIntentStarted(Intent intent, long timestampNs) {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onIntentFailed() {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchCancelled(byte[] abortingActivity) {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchFinished(byte[] finalActivity, long timestampNs) {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onReportFullyDrawn(byte[] finalActivity, long timestampNs) {
            }
        };
        this.mPssDeferralTime = 0L;
        this.mBinderTransactionTrackingEnabled = false;
        this.mLastFullPssTime = SystemClock.uptimeMillis();
        this.mFullPssPending = false;
        this.mPssDelayConfigListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.am.ActivityManagerService.3
            public void onPropertiesChanged(DeviceConfig.Properties properties) {
                if (properties.getKeyset().contains(ActivityManagerService.ACTIVITY_START_PSS_DEFER_CONFIG)) {
                    ActivityManagerService.this.mPssDeferralTime = properties.getLong(ActivityManagerService.ACTIVITY_START_PSS_DEFER_CONFIG, 0L);
                }
            }
        };
        this.mValidateUids = new ActiveUids(this, false);
        this.mAlreadyLoggedViolatedStacks = new HashSet<>();
        this.mRegisteredReceivers = new HashMap<>();
        this.mReceiverResolver = new IntentResolver<BroadcastFilter, BroadcastFilter>() { // from class: com.android.server.am.ActivityManagerService.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public boolean allowFilterResult(BroadcastFilter filter, List<BroadcastFilter> dest) {
                IBinder target = filter.receiverList.receiver.asBinder();
                for (int i = dest.size() - 1; i >= 0; i--) {
                    if (dest.get(i).receiverList.receiver.asBinder() == target) {
                        return false;
                    }
                }
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public BroadcastFilter newResult(BroadcastFilter filter, int match, int userId) {
                if (userId == -1 || filter.owningUserId == -1 || userId == filter.owningUserId) {
                    return (BroadcastFilter) super.newResult(filter, match, userId);
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public IntentFilter getIntentFilter(BroadcastFilter input) {
                return input;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.android.server.IntentResolver
            public BroadcastFilter[] newArray(int size) {
                return new BroadcastFilter[size];
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.server.IntentResolver
            public boolean isPackageForFilter(String packageName, BroadcastFilter filter) {
                return packageName.equals(filter.packageName);
            }
        };
        this.mStickyBroadcasts = new SparseArray<>();
        this.mAssociations = new SparseArray<>();
        this.mBackupTargets = new SparseArray<>();
        this.mLaunchingProviders = new ArrayList<>();
        this.mDeviceIdleWhitelist = new int[0];
        this.mDeviceIdleExceptIdleWhitelist = new int[0];
        this.mDeviceIdleTempWhitelist = new int[0];
        this.mPendingTempWhitelist = new PendingTempWhitelists(this);
        this.mFgsWhileInUseTempAllowList = new FgsWhileInUseTempAllowList();
        this.mStringBuilder = new StringBuilder(256);
        this.mProcessesReady = false;
        this.mSystemReady = false;
        this.mOnBattery = false;
        this.mBooting = false;
        this.mCallFinishBooting = false;
        this.mBootAnimationComplete = false;
        this.mWakefulness = 1;
        this.mAllowLowerMemLevel = false;
        this.mLastMemoryLevel = 0;
        this.mLastIdleTime = SystemClock.uptimeMillis();
        this.mLowRamTimeSinceLastIdle = 0L;
        this.mLowRamStartTime = 0L;
        this.mCurResumedPackage = null;
        this.mCurResumedUid = -1;
        this.mForegroundPackages = new ProcessMap<>();
        this.mTestPssMode = false;
        this.mDebugApp = null;
        this.mWaitForDebugger = false;
        this.mDebugTransient = false;
        this.mOrigDebugApp = null;
        this.mOrigWaitForDebugger = false;
        this.mAlwaysFinishActivities = false;
        this.mProfileData = new ProfileData();
        this.mAppAgentMap = null;
        this.mProfileType = 0;
        this.mMemWatchProcesses = new ProcessMap<>();
        this.mTrackAllocationApp = null;
        this.mNativeDebuggingApp = null;
        this.mProcessObservers = new RemoteCallbackList<>();
        this.mActiveProcessChanges = new ProcessChangeItem[5];
        this.mPendingProcessChanges = new ArrayList<>();
        this.mAvailProcessChanges = new ArrayList<>();
        this.mUidObservers = new RemoteCallbackList<>();
        this.mActiveUidChanges = new UidRecord.ChangeItem[5];
        this.mPendingUidChanges = new ArrayList<>();
        this.mAvailUidChanges = new ArrayList<>();
        this.mAnrHelper = new AnrHelper();
        this.mProcessCpuTracker = new ProcessCpuTracker(false);
        this.mLastCpuTime = new AtomicLong(0L);
        this.mProcessCpuMutexFree = new AtomicBoolean(true);
        this.mProcessCpuInitLatch = new CountDownLatch(1);
        this.mLastWriteTime = 0L;
        this.mBooted = false;
        this.mLastMemUsageReportTime = 0L;
        this.mBgHandler = new AnonymousClass5(BackgroundThread.getHandler().getLooper());
        this.mProcessStateStatsLongs = new long[1];
        this.mErrorClusterRecords = new ArrayMap<>();
        LockGuard.installLock(this, 6);
        this.mInjector = new Injector(systemContext);
        this.mContext = systemContext;
        this.mFactoryTest = FactoryTest.getMode();
        ActivityThread activityThreadCurrentActivityThread = ActivityThread.currentActivityThread();
        this.mSystemThread = activityThreadCurrentActivityThread;
        this.mUiContext = activityThreadCurrentActivityThread.getSystemUiContext();
        Slog.i("ActivityManager", "Memory class: " + ActivityManager.staticGetMemoryClass());
        ServiceThread serviceThread = new ServiceThread("ActivityManager", -2, false);
        this.mHandlerThread = serviceThread;
        serviceThread.start();
        this.mHandler = new MainHandler(this.mHandlerThread.getLooper());
        this.mUiHandler = this.mInjector.getUiHandler(this);
        ServiceThread serviceThread2 = new ServiceThread("ActivityManager:procStart", -2, false);
        this.mProcStartHandlerThread = serviceThread2;
        serviceThread2.start();
        this.mProcStartHandler = new Handler(this.mProcStartHandlerThread.getLooper());
        this.mConstants = new ActivityManagerConstants(this.mContext, this, this.mHandler);
        ActiveUids activeUids = new ActiveUids(this, true);
        this.mPlatformCompat = (PlatformCompat) ServiceManager.getService("platform_compat");
        ProcessList processList = this.mInjector.getProcessList(this);
        this.mProcessList = processList;
        processList.init(this, activeUids, this.mPlatformCompat);
        this.mLowMemDetector = new LowMemDetector(this);
        this.mOomAdjuster = new OomAdjuster(this, this.mProcessList, activeUids);
        BroadcastConstants foreConstants = new BroadcastConstants("bcast_fg_constants");
        foreConstants.TIMEOUT = JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY;
        BroadcastConstants backConstants = new BroadcastConstants("bcast_bg_constants");
        backConstants.TIMEOUT = 60000L;
        BroadcastConstants offloadConstants = new BroadcastConstants("bcast_offload_constants");
        offloadConstants.TIMEOUT = 60000L;
        offloadConstants.SLOW_TIME = 2147483647L;
        this.mEnableOffloadQueue = SystemProperties.getBoolean("persist.device_config.activity_manager_native_boot.offload_queue_enabled", false);
        this.mFgBroadcastQueue = new BroadcastQueue(this, this.mHandler, "foreground", foreConstants, false);
        this.mBgBroadcastQueue = new BroadcastQueue(this, this.mHandler, "background", backConstants, true);
        BroadcastQueue broadcastQueue = new BroadcastQueue(this, this.mHandler, "offload", offloadConstants, true);
        this.mOffloadBroadcastQueue = broadcastQueue;
        BroadcastQueue[] broadcastQueueArr = this.mBroadcastQueues;
        broadcastQueueArr[0] = this.mFgBroadcastQueue;
        broadcastQueueArr[1] = this.mBgBroadcastQueue;
        broadcastQueueArr[2] = broadcastQueue;
        this.mServices = new ActiveServices(this);
        this.mProviderMap = new ProviderMap(this);
        PackageWatchdog packageWatchdog = PackageWatchdog.getInstance(this.mUiContext);
        this.mPackageWatchdog = packageWatchdog;
        this.mAppErrors = new AppErrors(this.mUiContext, this, packageWatchdog);
        File systemDir = SystemServiceManager.ensureSystemDir();
        BackgroundThread.get();
        BatteryStatsService batteryStatsService = new BatteryStatsService(systemContext, systemDir, BackgroundThread.getHandler());
        this.mBatteryStatsService = batteryStatsService;
        batteryStatsService.getActiveStatistics().readLocked();
        this.mBatteryStatsService.scheduleWriteToDisk();
        this.mOnBattery = this.mBatteryStatsService.getActiveStatistics().getIsOnBattery();
        this.mBatteryStatsService.getActiveStatistics().setCallback(this);
        this.mOomAdjProfiler.batteryPowerChanged(this.mOnBattery);
        this.mProcessStats = new ProcessStatsService(this, new File(systemDir, "procstats"));
        this.mAppOpsService = this.mInjector.getAppOpsService(new File(systemDir, "appops.xml"), this.mHandler);
        this.mUgmInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
        this.mUserController = new UserController(this);
        this.mPendingIntentController = new PendingIntentController(this.mHandlerThread.getLooper(), this.mUserController, this.mConstants);
        if (SystemProperties.getInt("sys.use_fifo_ui", 0) != 0) {
            this.mUseFifoUiScheduling = true;
        }
        this.mTrackingAssociations = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("debug.track-associations"));
        IntentFirewall intentFirewall = new IntentFirewall(new IntentFirewallInterface(), this.mHandler);
        this.mIntentFirewall = intentFirewall;
        this.mActivityTaskManager = atm;
        atm.initialize(intentFirewall, this.mPendingIntentController, DisplayThread.get().getLooper());
        this.mAtmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        this.mProcessCpuThread = new Thread("CpuTracker") { // from class: com.android.server.am.ActivityManagerService.8
            /* JADX WARN: Bottom block not found for handler: all -> 0x0047 */
            /* JADX WARN: Bottom block not found for handler: all -> 0x005e */
            @Override // java.lang.Thread, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    r8 = this;
                    com.android.server.am.ActivityManagerService r0 = com.android.server.am.ActivityManagerService.this
                    com.android.internal.os.ProcessCpuTracker r0 = r0.mProcessCpuTracker
                    monitor-enter(r0)
                    com.android.server.am.ActivityManagerService r1 = com.android.server.am.ActivityManagerService.this     // Catch: java.lang.Throwable -> L5b
                    java.util.concurrent.CountDownLatch r1 = r1.mProcessCpuInitLatch     // Catch: java.lang.Throwable -> L5b
                    r1.countDown()     // Catch: java.lang.Throwable -> L5b
                    com.android.server.am.ActivityManagerService r1 = com.android.server.am.ActivityManagerService.this     // Catch: java.lang.Throwable -> L5b
                    com.android.internal.os.ProcessCpuTracker r1 = r1.mProcessCpuTracker     // Catch: java.lang.Throwable -> L5b
                    r1.init()     // Catch: java.lang.Throwable -> L5b
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L5b
                L14:
                    monitor-enter(r8)     // Catch: java.lang.Exception -> L4a java.lang.InterruptedException -> L4c
                    long r0 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L47
                    com.android.server.am.ActivityManagerService r2 = com.android.server.am.ActivityManagerService.this     // Catch: java.lang.Throwable -> L47
                    java.util.concurrent.atomic.AtomicLong r2 = r2.mLastCpuTime     // Catch: java.lang.Throwable -> L47
                    long r2 = r2.get()     // Catch: java.lang.Throwable -> L47
                    r4 = 60000(0xea60, double:2.9644E-319)
                    long r2 = r2 + r4
                    long r2 = r2 - r0
                    com.android.server.am.ActivityManagerService r4 = com.android.server.am.ActivityManagerService.this     // Catch: java.lang.Throwable -> L47
                    long r4 = r4.mLastWriteTime     // Catch: java.lang.Throwable -> L47
                    r6 = 1800000(0x1b7740, double:8.89318E-318)
                    long r4 = r4 + r6
                    long r4 = r4 - r0
                    int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                    if (r6 >= 0) goto L34
                    r2 = r4
                L34:
                    r6 = 0
                    int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
                    if (r6 <= 0) goto L45
                    com.android.server.am.ActivityManagerService r6 = com.android.server.am.ActivityManagerService.this     // Catch: java.lang.Throwable -> L47
                    java.util.concurrent.atomic.AtomicBoolean r6 = r6.mProcessCpuMutexFree     // Catch: java.lang.Throwable -> L47
                    r7 = 1
                    r6.set(r7)     // Catch: java.lang.Throwable -> L47
                    r8.wait(r2)     // Catch: java.lang.Throwable -> L47
                L45:
                    monitor-exit(r8)     // Catch: java.lang.Throwable -> L47
                    goto L4d
                L47:
                    r0 = move-exception
                    monitor-exit(r8)     // Catch: java.lang.Throwable -> L47
                    throw r0     // Catch: java.lang.Exception -> L4a java.lang.InterruptedException -> L4c
                L4a:
                    r0 = move-exception
                    goto L53
                L4c:
                    r0 = move-exception
                L4d:
                    com.android.server.am.ActivityManagerService r0 = com.android.server.am.ActivityManagerService.this     // Catch: java.lang.Exception -> L4a
                    r0.updateCpuStatsNow()     // Catch: java.lang.Exception -> L4a
                    goto L5a
                L53:
                    java.lang.String r1 = "ActivityManager"
                    java.lang.String r2 = "Unexpected exception collecting process stats"
                    android.util.Slog.e(r1, r2, r0)
                L5a:
                    goto L14
                L5b:
                    r1 = move-exception
                L5c:
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L5e
                    throw r1
                L5e:
                    r1 = move-exception
                    goto L5c
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.AnonymousClass8.run():void");
            }
        };
        this.mHiddenApiBlacklist = new HiddenApiSettings(this.mHandler, this.mContext);
        Watchdog.getInstance().addMonitor(this);
        Watchdog.getInstance().addThread(this.mHandler);
        updateOomAdjLocked("updateOomAdj_meh");
        try {
            Process.setThreadGroupAndCpuset(BackgroundThread.get().getThreadId(), 2);
            Process.setThreadGroupAndCpuset(this.mOomAdjuster.mCachedAppOptimizer.mCachedAppOptimizerThread.getThreadId(), 2);
        } catch (Exception e) {
            Slog.w("ActivityManager", "Setting background thread cpuset failed");
        }
        this.mInternal = new LocalService();
        this.mPendingStartActivityUids = new PendingStartActivityUids(this.mContext);
    }

    public void setSystemServiceManager(SystemServiceManager mgr) {
        this.mSystemServiceManager = mgr;
    }

    public void setInstaller(Installer installer) {
        this.mInstaller = installer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void start() {
        Process.removeAllProcessGroups();
        this.mProcessCpuThread.start();
        this.mBatteryStatsService.publish();
        this.mAppOpsService.publish();
        Slog.d("AppOps", "AppOpsService published");
        LocalServices.addService(ActivityManagerInternal.class, this.mInternal);
        this.mActivityTaskManager.onActivityManagerInternalAdded();
        this.mPendingIntentController.onActivityManagerInternalAdded();
        try {
            this.mProcessCpuInitLatch.await();
        } catch (InterruptedException e) {
            Slog.wtf("ActivityManager", "Interrupted wait during start", e);
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted wait during start");
        }
    }

    public void initPowerManagement() {
        this.mActivityTaskManager.onInitPowerManagement();
        this.mBatteryStatsService.initPowerManagement();
        this.mLocalPowerManager = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
    }

    private ArraySet<String> getBackgroundLaunchBroadcasts() {
        if (this.mBackgroundLaunchBroadcasts == null) {
            this.mBackgroundLaunchBroadcasts = SystemConfig.getInstance().getAllowImplicitBroadcasts();
        }
        return this.mBackgroundLaunchBroadcasts;
    }

    void requireAllowedAssociationsLocked(String packageName) {
        ensureAllowedAssociations();
        if (this.mAllowedAssociations.get(packageName) == null) {
            this.mAllowedAssociations.put(packageName, new PackageAssociationInfo(packageName, new ArraySet(), false));
        }
    }

    boolean validateAssociationAllowedLocked(String pkg1, int uid1, String pkg2, int uid2) {
        ensureAllowedAssociations();
        if (uid1 == uid2 || UserHandle.getAppId(uid1) == 1000 || UserHandle.getAppId(uid2) == 1000) {
            return true;
        }
        PackageAssociationInfo pai = this.mAllowedAssociations.get(pkg1);
        if (pai != null && !pai.isPackageAssociationAllowed(pkg2)) {
            return false;
        }
        PackageAssociationInfo pai2 = this.mAllowedAssociations.get(pkg2);
        if (pai2 == null || pai2.isPackageAssociationAllowed(pkg1)) {
            return true;
        }
        return false;
    }

    private void ensureAllowedAssociations() {
        if (this.mAllowedAssociations == null) {
            ArrayMap<String, ArraySet<String>> allowedAssociations = SystemConfig.getInstance().getAllowedAssociations();
            this.mAllowedAssociations = new ArrayMap<>(allowedAssociations.size());
            getPackageManagerInternalLocked();
            for (int i = 0; i < allowedAssociations.size(); i++) {
                String pkg = allowedAssociations.keyAt(i);
                ArraySet<String> asc = allowedAssociations.valueAt(i);
                boolean isDebuggable = false;
                try {
                    ApplicationInfo ai = AppGlobals.getPackageManager().getApplicationInfo(pkg, 131072, 0);
                    if (ai != null) {
                        isDebuggable = (ai.flags & 2) != 0;
                    }
                } catch (RemoteException e) {
                }
                this.mAllowedAssociations.put(pkg, new PackageAssociationInfo(pkg, asc, isDebuggable));
            }
        }
    }

    private void updateAssociationForApp(ApplicationInfo appInfo) {
        ensureAllowedAssociations();
        PackageAssociationInfo pai = this.mAllowedAssociations.get(appInfo.packageName);
        if (pai != null) {
            pai.setDebuggable((appInfo.flags & 2) != 0);
        }
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        if (code == 1599295570) {
            ArrayList<IBinder> procs = new ArrayList<>();
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    int NP = this.mProcessList.mProcessNames.getMap().size();
                    for (int ip = 0; ip < NP; ip++) {
                        SparseArray<ProcessRecord> apps = (SparseArray) this.mProcessList.mProcessNames.getMap().valueAt(ip);
                        int NA = apps.size();
                        for (int ia = 0; ia < NA; ia++) {
                            ProcessRecord app = apps.valueAt(ia);
                            if (app.thread != null) {
                                procs.add(app.thread.asBinder());
                            }
                        }
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            int N = procs.size();
            for (int i = 0; i < N; i++) {
                Parcel data2 = Parcel.obtain();
                try {
                    procs.get(i).transact(1599295570, data2, null, 1);
                } catch (RemoteException e) {
                }
                data2.recycle();
            }
        }
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (RuntimeException e2) {
            if (!(e2 instanceof SecurityException) && !(e2 instanceof IllegalArgumentException) && !(e2 instanceof IllegalStateException)) {
                Slog.wtf("ActivityManager", "Activity Manager Crash. UID:" + Binder.getCallingUid() + " PID:" + Binder.getCallingPid() + " TRANS:" + code, e2);
            }
            throw e2;
        }
    }

    void updateCpuStats() {
        long now = SystemClock.uptimeMillis();
        if (this.mLastCpuTime.get() < now - 60000 && this.mProcessCpuMutexFree.compareAndSet(true, false)) {
            synchronized (this.mProcessCpuThread) {
                this.mProcessCpuThread.notify();
            }
        }
    }

    void updateCpuStatsNow() {
        PidMap pidMap;
        synchronized (this.mProcessCpuTracker) {
            this.mProcessCpuMutexFree.set(false);
            long now = SystemClock.uptimeMillis();
            boolean haveNewCpuStats = false;
            if (this.mLastCpuTime.get() < now - MONITOR_CPU_MIN_TIME) {
                this.mLastCpuTime.set(now);
                this.mProcessCpuTracker.update();
                if (this.mProcessCpuTracker.hasGoodLastStats()) {
                    haveNewCpuStats = true;
                    if ("true".equals(SystemProperties.get("events.cpu"))) {
                        int user = this.mProcessCpuTracker.getLastUserTime();
                        int system = this.mProcessCpuTracker.getLastSystemTime();
                        int iowait = this.mProcessCpuTracker.getLastIoWaitTime();
                        int irq = this.mProcessCpuTracker.getLastIrqTime();
                        int softIrq = this.mProcessCpuTracker.getLastSoftIrqTime();
                        int idle = this.mProcessCpuTracker.getLastIdleTime();
                        int total = user + system + iowait + irq + softIrq + idle;
                        if (total == 0) {
                            total = 1;
                        }
                        EventLogTags.writeCpu((((((user + system) + iowait) + irq) + softIrq) * 100) / total, (user * 100) / total, (system * 100) / total, (iowait * 100) / total, (irq * 100) / total, (softIrq * 100) / total);
                    }
                }
            }
            boolean haveNewCpuStats2 = haveNewCpuStats;
            BatteryStatsImpl bstats = this.mBatteryStatsService.getActiveStatistics();
            synchronized (bstats) {
                PidMap pidMap2 = this.mPidsSelfLocked;
                synchronized (pidMap2) {
                    if (!haveNewCpuStats2) {
                        pidMap = pidMap2;
                    } else {
                        try {
                            if (!bstats.startAddingCpuLocked()) {
                                pidMap = pidMap2;
                            } else {
                                int totalUTime = 0;
                                int N = this.mProcessCpuTracker.countStats();
                                int i = 0;
                                int totalSTime = 0;
                                while (i < N) {
                                    ProcessCpuTracker.Stats st = this.mProcessCpuTracker.getStats(i);
                                    if (!st.working) {
                                        N = N;
                                        pidMap2 = pidMap2;
                                    } else {
                                        ProcessRecord pr = this.mPidsSelfLocked.get(st.pid);
                                        int totalUTime2 = totalUTime + st.rel_utime;
                                        totalSTime += st.rel_stime;
                                        if (pr != null) {
                                            BatteryStatsImpl.Uid.Proc ps = pr.curProcBatteryStats;
                                            if (ps == null || !ps.isActive()) {
                                                BatteryStatsImpl.Uid.Proc processStatsLocked = bstats.getProcessStatsLocked(pr.info.uid, pr.processName);
                                                ps = processStatsLocked;
                                                pr.curProcBatteryStats = processStatsLocked;
                                            }
                                            ps.addCpuTimeLocked(st.rel_utime, st.rel_stime);
                                            long j = pr.curCpuTime;
                                            int i2 = st.rel_utime;
                                            int totalUTime3 = st.rel_stime;
                                            pr.curCpuTime = j + ((long) (i2 + totalUTime3));
                                            if (pr.lastCpuTime == 0) {
                                                pr.lastCpuTime = pr.curCpuTime;
                                            }
                                        } else {
                                            BatteryStatsImpl.Uid.Proc ps2 = st.batteryStats;
                                            if (ps2 == null || !ps2.isActive()) {
                                                BatteryStatsImpl.Uid.Proc processStatsLocked2 = bstats.getProcessStatsLocked(bstats.mapUid(st.uid), st.name);
                                                ps2 = processStatsLocked2;
                                                st.batteryStats = processStatsLocked2;
                                            }
                                            ps2.addCpuTimeLocked(st.rel_utime, st.rel_stime);
                                        }
                                        totalUTime = totalUTime2;
                                    }
                                    try {
                                        i++;
                                        pidMap2 = pidMap2;
                                        N = N;
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                }
                                pidMap = pidMap2;
                                int userTime = this.mProcessCpuTracker.getLastUserTime();
                                int systemTime = this.mProcessCpuTracker.getLastSystemTime();
                                int iowaitTime = this.mProcessCpuTracker.getLastIoWaitTime();
                                int irqTime = this.mProcessCpuTracker.getLastIrqTime();
                                int softIrqTime = this.mProcessCpuTracker.getLastSoftIrqTime();
                                int idleTime = this.mProcessCpuTracker.getLastIdleTime();
                                bstats.finishAddingCpuLocked(totalUTime, totalSTime, userTime, systemTime, iowaitTime, irqTime, softIrqTime, idleTime);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            pidMap2 = pidMap2;
                        }
                    }
                    if (this.mLastWriteTime < now - 1800000) {
                        this.mLastWriteTime = now;
                        this.mBatteryStatsService.scheduleWriteToDisk();
                    }
                }
            }
        }
    }

    public void batteryNeedsCpuUpdate() {
        updateCpuStatsNow();
    }

    public void batteryPowerChanged(boolean onBattery) {
        updateCpuStatsNow();
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                synchronized (this.mPidsSelfLocked) {
                    this.mOnBattery = onBattery;
                }
                this.mOomAdjProfiler.batteryPowerChanged(onBattery);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void batteryStatsReset() {
        this.mOomAdjProfiler.reset();
    }

    public void batterySendBroadcast(Intent intent) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, -1, null, false, false, -1, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    private ArrayMap<String, IBinder> getCommonServicesLocked(boolean isolated) {
        if (isolated) {
            if (this.mIsolatedAppBindArgs == null) {
                ArrayMap<String, IBinder> arrayMap = new ArrayMap<>(1);
                this.mIsolatedAppBindArgs = arrayMap;
                addServiceToMap(arrayMap, com.android.server.pm.Settings.ATTR_PACKAGE);
                addServiceToMap(this.mIsolatedAppBindArgs, "permissionmgr");
            }
            return this.mIsolatedAppBindArgs;
        }
        if (this.mAppBindArgs == null) {
            ArrayMap<String, IBinder> arrayMap2 = new ArrayMap<>();
            this.mAppBindArgs = arrayMap2;
            addServiceToMap(arrayMap2, com.android.server.pm.Settings.ATTR_PACKAGE);
            addServiceToMap(this.mAppBindArgs, "permissionmgr");
            addServiceToMap(this.mAppBindArgs, "window");
            addServiceToMap(this.mAppBindArgs, "alarm");
            addServiceToMap(this.mAppBindArgs, "display");
            addServiceToMap(this.mAppBindArgs, "network_management");
            addServiceToMap(this.mAppBindArgs, "connectivity");
            addServiceToMap(this.mAppBindArgs, "accessibility");
            addServiceToMap(this.mAppBindArgs, "input_method");
            addServiceToMap(this.mAppBindArgs, "input");
            addServiceToMap(this.mAppBindArgs, "graphicsstats");
            addServiceToMap(this.mAppBindArgs, "appops");
            addServiceToMap(this.mAppBindArgs, ActivityTaskManagerInternal.ASSIST_KEY_CONTENT);
            addServiceToMap(this.mAppBindArgs, "jobscheduler");
            addServiceToMap(this.mAppBindArgs, "notification");
            addServiceToMap(this.mAppBindArgs, "vibrator");
            addServiceToMap(this.mAppBindArgs, "account");
            addServiceToMap(this.mAppBindArgs, "power");
            addServiceToMap(this.mAppBindArgs, "user");
            addServiceToMap(this.mAppBindArgs, "mount");
        }
        return this.mAppBindArgs;
    }

    private static void addServiceToMap(ArrayMap<String, IBinder> map, String name) {
        IBinder service = ServiceManager.getService(name);
        if (service != null) {
            map.put(name, service);
        }
    }

    public void setFocusedStack(int stackId) {
        this.mActivityTaskManager.setFocusedStack(stackId);
    }

    public void registerTaskStackListener(ITaskStackListener listener) {
        this.mActivityTaskManager.registerTaskStackListener(listener);
    }

    public void unregisterTaskStackListener(ITaskStackListener listener) {
        this.mActivityTaskManager.unregisterTaskStackListener(listener);
    }

    final void updateLruProcessLocked(ProcessRecord app, boolean activityChange, ProcessRecord client) {
        this.mProcessList.updateLruProcessLocked(app, activityChange, client);
    }

    final void removeLruProcessLocked(ProcessRecord app) {
        this.mProcessList.removeLruProcessLocked(app);
    }

    final ProcessRecord getProcessRecordLocked(String processName, int uid, boolean keepIfLarge) {
        return this.mProcessList.getProcessRecordLocked(processName, uid, keepIfLarge);
    }

    final ProcessMap<ProcessRecord> getProcessNames() {
        return this.mProcessList.mProcessNames;
    }

    void notifyPackageUse(String packageName, int reason) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                getPackageManagerInternalLocked().notifyPackageUse(packageName, reason);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    boolean startIsolatedProcess(String entryPoint, String[] entryPointArgs, String processName, String abiOverride, int uid, Runnable crashHandler) {
        boolean z;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ApplicationInfo info = new ApplicationInfo();
                info.uid = 1000;
                info.processName = processName;
                info.className = entryPoint;
                info.packageName = PackageManagerService.PLATFORM_PACKAGE_NAME;
                info.seInfoUser = ":complete";
                info.targetSdkVersion = Build.VERSION.SDK_INT;
                ProcessRecord proc = this.mProcessList.startProcessLocked(processName, info, false, 0, sNullHostingRecord, 0, true, true, uid, true, abiOverride, entryPoint, entryPointArgs, crashHandler);
                z = proc != null;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    final ProcessRecord startProcessLocked(String processName, ApplicationInfo info, boolean knownToBeDead, int intentFlags, HostingRecord hostingRecord, int zygotePolicyFlags, boolean allowWhileBooting, boolean isolated, boolean keepIfLarge) {
        return this.mProcessList.startProcessLocked(processName, info, knownToBeDead, intentFlags, hostingRecord, zygotePolicyFlags, allowWhileBooting, isolated, 0, keepIfLarge, null, null, null, null);
    }

    boolean isAllowedWhileBooting(ApplicationInfo ai) {
        return (ai.flags & 8) != 0;
    }

    void updateBatteryStats(ComponentName activity, int uid, int userId, boolean resumed) {
        Slog.d("ActivityManager", "updateBatteryStats: comp=" + activity + "res=" + resumed);
        BatteryStatsImpl stats = this.mBatteryStatsService.getActiveStatistics();
        FrameworkStatsLog.write(42, uid, activity.getPackageName(), activity.getShortClassName(), resumed ? 1 : 0);
        synchronized (stats) {
            try {
                if (resumed) {
                    stats.noteActivityResumedLocked(uid);
                } else {
                    stats.noteActivityPausedLocked(uid);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void updateActivityUsageStats(ComponentName activity, int userId, int event, IBinder appToken, ComponentName taskRoot) {
        Slog.d("ActivityManager", "updateActivityUsageStats: comp=" + activity + " hash=" + appToken.hashCode() + " event=" + event);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mUsageStatsService != null) {
                    this.mUsageStatsService.reportEvent(activity, userId, event, appToken.hashCode(), taskRoot);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (this.mContentCaptureService != null) {
            if (event == 2 || event == 1 || event == 23 || event == 24) {
                this.mContentCaptureService.notifyActivityEvent(userId, activity, event);
            }
        }
    }

    public void updateActivityUsageStats(String packageName, int userId, int event) {
        Slog.d("ActivityManager", "updateActivityUsageStats: package=" + packageName + " event=" + event);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mUsageStatsService != null) {
                    this.mUsageStatsService.reportEvent(packageName, userId, event);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void updateForegroundServiceUsageStats(ComponentName service, int userId, boolean started) {
        Slog.d("ActivityManager", "updateForegroundServiceUsageStats: comp=" + service + " started=" + started);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mUsageStatsService != null) {
                    this.mUsageStatsService.reportEvent(service, userId, started ? 19 : 20, 0, null);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    CompatibilityInfo compatibilityInfoForPackage(ApplicationInfo ai) {
        return this.mAtmInternal.compatibilityInfoForPackage(ai);
    }

    void enforceNotIsolatedCaller(String caller) {
        if (UserHandle.isIsolated(Binder.getCallingUid())) {
            throw new SecurityException("Isolated process not allowed to call " + caller);
        }
    }

    private void enforceCallingPackage(String packageName, int callingUid) {
        int userId = UserHandle.getUserId(callingUid);
        int packageUid = getPackageManagerInternalLocked().getPackageUid(packageName, 0, userId);
        if (packageUid != callingUid) {
            throw new SecurityException(packageName + " does not belong to uid " + callingUid);
        }
    }

    public void setPackageScreenCompatMode(String packageName, int mode) {
        this.mActivityTaskManager.setPackageScreenCompatMode(packageName, mode);
    }

    private boolean hasUsageStatsPermission(String callingPackage) {
        int mode = this.mAppOpsService.noteOperation(43, Binder.getCallingUid(), callingPackage, null, false, "", false);
        if (mode == 3) {
            return checkCallingPermission("android.permission.PACKAGE_USAGE_STATS") == 0;
        }
        return mode == 0;
    }

    public int getPackageProcessState(String packageName, String callingPackage) {
        if (!hasUsageStatsPermission(callingPackage)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "getPackageProcessState");
        }
        int procState = 20;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                for (int i = this.mProcessList.mLruProcesses.size() - 1; i >= 0; i--) {
                    ProcessRecord proc = this.mProcessList.mLruProcesses.get(i);
                    if (procState > proc.setProcState && (proc.pkgList.containsKey(packageName) || (proc.pkgDeps != null && proc.pkgDeps.contains(packageName)))) {
                        procState = proc.setProcState;
                    }
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return procState;
    }

    public boolean setProcessMemoryTrimLevel(String process, int userId, int level) throws RemoteException {
        if (!isCallerShell()) {
            EventLog.writeEvent(1397638484, 160390416, Integer.valueOf(Binder.getCallingUid()), "");
            throw new SecurityException("Only shell can call it");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord app = findProcessLocked(process, userId, "setProcessMemoryTrimLevel");
                if (app == null) {
                    throw new IllegalArgumentException("Unknown process: " + process);
                }
                if (app.thread == null) {
                    throw new IllegalArgumentException("Process has no app thread");
                }
                if (app.trimMemoryLevel >= level) {
                    throw new IllegalArgumentException("Unable to set a higher trim level than current level");
                }
                if (level >= 20 && app.getCurProcState() <= 6) {
                    throw new IllegalArgumentException("Unable to set a background trim level on a foreground process");
                }
                app.thread.scheduleTrimMemory(level);
                app.trimMemoryLevel = level;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchProcessesChanged() {
        int N;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                N = this.mPendingProcessChanges.size();
                if (this.mActiveProcessChanges.length < N) {
                    this.mActiveProcessChanges = new ProcessChangeItem[N];
                }
                this.mPendingProcessChanges.toArray(this.mActiveProcessChanges);
                this.mPendingProcessChanges.clear();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        int i = this.mProcessObservers.beginBroadcast();
        while (i > 0) {
            i--;
            IProcessObserver observer = this.mProcessObservers.getBroadcastItem(i);
            if (observer != null) {
                for (int j = 0; j < N; j++) {
                    try {
                        ProcessChangeItem item = this.mActiveProcessChanges[j];
                        if ((item.changes & 1) != 0) {
                            observer.onForegroundActivitiesChanged(item.pid, item.uid, item.foregroundActivities);
                        }
                        if ((item.changes & 2) != 0) {
                            observer.onForegroundServicesChanged(item.pid, item.uid, item.foregroundServiceTypes);
                        }
                    } catch (RemoteException e) {
                    }
                }
            }
        }
        this.mProcessObservers.finishBroadcast();
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                for (int j2 = 0; j2 < N; j2++) {
                    this.mAvailProcessChanges.add(this.mActiveProcessChanges[j2]);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    ProcessChangeItem enqueueProcessChangeItemLocked(int pid, int uid) {
        int i = this.mPendingProcessChanges.size() - 1;
        ProcessChangeItem item = null;
        while (i >= 0) {
            ProcessChangeItem item2 = this.mPendingProcessChanges.get(i);
            item = item2;
            if (item.pid == pid) {
                break;
            }
            i--;
        }
        if (i < 0) {
            int NA = this.mAvailProcessChanges.size();
            if (NA > 0) {
                ProcessChangeItem item3 = this.mAvailProcessChanges.remove(NA - 1);
                item = item3;
            } else {
                item = new ProcessChangeItem();
            }
            item.changes = 0;
            item.pid = pid;
            item.uid = uid;
            if (this.mPendingProcessChanges.size() == 0) {
                this.mUiHandler.obtainMessage(31).sendToTarget();
            }
            this.mPendingProcessChanges.add(item);
        }
        return item;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchProcessDied(int pid, int uid) {
        int i = this.mProcessObservers.beginBroadcast();
        while (i > 0) {
            i--;
            IProcessObserver observer = this.mProcessObservers.getBroadcastItem(i);
            if (observer != null) {
                try {
                    observer.onProcessDied(pid, uid);
                } catch (RemoteException e) {
                }
            }
        }
        this.mProcessObservers.finishBroadcast();
    }

    void dispatchUidsChanged() {
        int N;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                N = this.mPendingUidChanges.size();
                if (this.mActiveUidChanges.length < N) {
                    this.mActiveUidChanges = new UidRecord.ChangeItem[N];
                }
                for (int i = 0; i < N; i++) {
                    UidRecord.ChangeItem change = this.mPendingUidChanges.get(i);
                    this.mActiveUidChanges[i] = change;
                    if (change.uidRecord != null) {
                        change.uidRecord.pendingChange = null;
                        change.uidRecord = null;
                    }
                }
                this.mPendingUidChanges.clear();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        this.mUidChangeDispatchCount += N;
        int i2 = this.mUidObservers.beginBroadcast();
        while (i2 > 0) {
            i2--;
            dispatchUidsChangedForObserver((IUidObserver) this.mUidObservers.getBroadcastItem(i2), (UidObserverRegistration) this.mUidObservers.getBroadcastCookie(i2), N);
        }
        this.mUidObservers.finishBroadcast();
        if (this.mUidObservers.getRegisteredCallbackCount() > 0) {
            for (int j = 0; j < N; j++) {
                UidRecord.ChangeItem item = this.mActiveUidChanges[j];
                if ((item.change & 1) != 0) {
                    this.mValidateUids.remove(item.uid);
                } else {
                    UidRecord validateUid = this.mValidateUids.get(item.uid);
                    if (validateUid == null) {
                        validateUid = new UidRecord(item.uid);
                        this.mValidateUids.put(item.uid, validateUid);
                    }
                    if ((item.change & 2) != 0) {
                        validateUid.idle = true;
                    } else if ((item.change & 4) != 0) {
                        validateUid.idle = false;
                    }
                    int i3 = item.processState;
                    validateUid.setProcState = i3;
                    validateUid.setCurProcState(i3);
                    int i4 = item.capability;
                    validateUid.setCapability = i4;
                    validateUid.curCapability = i4;
                    validateUid.lastDispatchedProcStateSeq = item.procStateSeq;
                }
            }
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                for (int j2 = 0; j2 < N; j2++) {
                    this.mAvailUidChanges.add(this.mActiveUidChanges[j2]);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    private void dispatchUidsChangedForObserver(IUidObserver observer, UidObserverRegistration reg, int changesSize) {
        boolean doReport;
        if (observer == null) {
            return;
        }
        for (int j = 0; j < changesSize; j++) {
            try {
                UidRecord.ChangeItem item = this.mActiveUidChanges[j];
                int change = item.change;
                if (change != 0 || (reg.which & 1) != 0) {
                    long start = SystemClock.uptimeMillis();
                    if ((change & 2) != 0) {
                        if ((reg.which & 4) != 0) {
                            observer.onUidIdle(item.uid, item.ephemeral);
                        }
                    } else if ((change & 4) != 0 && (reg.which & 8) != 0) {
                        observer.onUidActive(item.uid);
                    }
                    if ((reg.which & 16) != 0) {
                        if ((change & 8) != 0) {
                            observer.onUidCachedChanged(item.uid, true);
                        } else if ((change & 16) != 0) {
                            observer.onUidCachedChanged(item.uid, false);
                        }
                    }
                    if ((change & 1) == 0) {
                        if ((reg.which & 1) != 0) {
                            if (reg.cutpoint < 0) {
                                doReport = true;
                            } else {
                                int lastState = reg.lastProcStates.get(item.uid, -1);
                                if (lastState != -1) {
                                    boolean lastAboveCut = lastState <= reg.cutpoint;
                                    boolean newAboveCut = item.processState <= reg.cutpoint;
                                    doReport = lastAboveCut != newAboveCut;
                                } else {
                                    boolean doReport2 = item.processState != 20;
                                    doReport = doReport2;
                                }
                            }
                            if (doReport) {
                                if (reg.lastProcStates != null) {
                                    reg.lastProcStates.put(item.uid, item.processState);
                                }
                                observer.onUidStateChanged(item.uid, item.processState, item.procStateSeq, item.capability);
                            }
                        }
                    } else {
                        if ((reg.which & 2) != 0) {
                            observer.onUidGone(item.uid, item.ephemeral);
                        }
                        if (reg.lastProcStates != null) {
                            reg.lastProcStates.delete(item.uid);
                        }
                    }
                    int duration = (int) (SystemClock.uptimeMillis() - start);
                    if (reg.mMaxDispatchTime < duration) {
                        reg.mMaxDispatchTime = duration;
                    }
                    if (duration >= 20) {
                        reg.mSlowDispatchCount++;
                    }
                }
            } catch (RemoteException e) {
                return;
            }
        }
    }

    void dispatchOomAdjObserver(String msg) {
        OomAdjObserver observer;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                observer = this.mCurOomAdjObserver;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (observer != null) {
            observer.onOomAdjMessage(msg);
        }
    }

    void setOomAdjObserver(int uid, OomAdjObserver observer) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mCurOomAdjUid = uid;
                this.mCurOomAdjObserver = observer;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void clearOomAdjObserver() {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mCurOomAdjUid = -1;
                this.mCurOomAdjObserver = null;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void reportOomAdjMessageLocked(String tag, String msg) {
        Slog.d(tag, msg);
        if (this.mCurOomAdjObserver != null) {
            this.mUiHandler.obtainMessage(70, msg).sendToTarget();
        }
    }

    void reportUidInfoMessageLocked(String tag, String msg, int uid) {
        Slog.i("ActivityManager", msg);
        if (this.mCurOomAdjObserver != null && uid == this.mCurOomAdjUid) {
            this.mUiHandler.obtainMessage(70, msg).sendToTarget();
        }
    }

    @Deprecated
    public int startActivity(IApplicationThread caller, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions) {
        return this.mActivityTaskManager.startActivity(caller, callingPackage, null, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions);
    }

    public int startActivityWithFeature(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions) {
        return this.mActivityTaskManager.startActivity(caller, callingPackage, callingFeatureId, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions);
    }

    @Deprecated
    public final int startActivityAsUser(IApplicationThread caller, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId) {
        return startActivityAsUserWithFeature(caller, callingPackage, null, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions, userId);
    }

    public final int startActivityAsUserWithFeature(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId) {
        return this.mActivityTaskManager.startActivityAsUser(caller, callingPackage, callingFeatureId, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions, userId);
    }

    WaitResult startActivityAndWait(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId) {
        return this.mActivityTaskManager.startActivityAndWait(caller, callingPackage, callingFeatureId, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions, userId);
    }

    public final int startActivityFromRecents(int taskId, Bundle bOptions) {
        return this.mActivityTaskManager.startActivityFromRecents(taskId, bOptions);
    }

    public void startRecentsActivity(Intent intent, IAssistDataReceiver assistDataReceiver, IRecentsAnimationRunner recentsAnimationRunner) {
        this.mActivityTaskManager.startRecentsActivity(intent, assistDataReceiver, recentsAnimationRunner);
    }

    public void cancelRecentsAnimation(boolean restoreHomeStackPosition) {
        this.mActivityTaskManager.cancelRecentsAnimation(restoreHomeStackPosition);
    }

    public final boolean finishActivity(IBinder token, int resultCode, Intent resultData, int finishTask) {
        return this.mActivityTaskManager.finishActivity(token, resultCode, resultData, finishTask);
    }

    public void setRequestedOrientation(IBinder token, int requestedOrientation) {
        this.mActivityTaskManager.setRequestedOrientation(token, requestedOrientation);
    }

    public final void finishHeavyWeightApp() {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String msg = "Permission Denial: finishHeavyWeightApp() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        this.mAtmInternal.finishHeavyWeightApp();
    }

    public void crashApplication(int uid, int initialPid, String packageName, int userId, String message, boolean force) {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String msg = "Permission Denial: crashApplication() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mAppErrors.scheduleAppCrashLocked(uid, initialPid, packageName, userId, message, force);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final void handleAppDiedLocked(final ProcessRecord app, boolean restarting, boolean allowRestart) {
        int pid = app.pid;
        boolean kept = cleanUpApplicationRecordLocked(app, restarting, allowRestart, -1, false);
        if (!kept && !restarting) {
            removeLruProcessLocked(app);
            if (pid > 0) {
                ProcessList.remove(pid);
            }
        }
        if (this.mProfileData.getProfileProc() == app) {
            clearProfilerLocked();
        }
        this.mAtmInternal.handleAppDied(app.getWindowProcessController(), restarting, new Runnable() { // from class: com.android.server.am.-$$Lambda$ActivityManagerService$2afaFERxNQEnSdevJxY5plp1fS4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleAppDiedLocked$0$ActivityManagerService(app);
            }
        });
    }

    public /* synthetic */ void lambda$handleAppDiedLocked$0$ActivityManagerService(ProcessRecord app) {
        Slog.w("ActivityManager", "Crash of app " + app.processName + " running instrumentation " + app.getActiveInstrumentation().mClass);
        Bundle info = new Bundle();
        info.putString("shortMsg", "Process crashed.");
        finishInstrumentationLocked(app, 0, info);
    }

    ProcessRecord getRecordForAppLocked(IApplicationThread thread) {
        if (thread == null) {
            return null;
        }
        ProcessRecord record = this.mProcessList.getLRURecordForAppLocked(thread);
        if (record != null) {
            return record;
        }
        IBinder threadBinder = thread.asBinder();
        ArrayMap<String, SparseArray<ProcessRecord>> pmap = this.mProcessList.mProcessNames.getMap();
        for (int i = pmap.size() - 1; i >= 0; i--) {
            SparseArray<ProcessRecord> procs = pmap.valueAt(i);
            for (int j = procs.size() - 1; j >= 0; j--) {
                ProcessRecord proc = procs.valueAt(j);
                if (proc.thread != null && proc.thread.asBinder() == threadBinder) {
                    Slog.wtf("ActivityManager", "getRecordForApp: exists in name list but not in LRU list: " + proc);
                    return proc;
                }
            }
        }
        return null;
    }

    final void doLowMemReportIfNeededLocked(ProcessRecord dyingProc) {
        ArrayList<ProcessMemInfo> memInfos;
        if (!this.mProcessList.haveBackgroundProcessLocked()) {
            boolean doReport = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
            if (doReport) {
                long now = SystemClock.uptimeMillis();
                if (now < this.mLastMemUsageReportTime + BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS) {
                    doReport = false;
                } else {
                    this.mLastMemUsageReportTime = now;
                }
            }
            if (doReport) {
                memInfos = new ArrayList<>(this.mProcessList.getLruSizeLocked());
            } else {
                memInfos = null;
            }
            EventLogTags.writeAmLowMemory(this.mProcessList.getLruSizeLocked());
            long now2 = SystemClock.uptimeMillis();
            for (int i = this.mProcessList.mLruProcesses.size() - 1; i >= 0; i--) {
                ProcessRecord rec = this.mProcessList.mLruProcesses.get(i);
                if (rec != dyingProc && rec.thread != null) {
                    if (doReport) {
                        memInfos.add(new ProcessMemInfo(rec.processName, rec.pid, rec.setAdj, rec.setProcState, rec.adjType, rec.makeAdjReason()));
                    }
                    if (rec.lastLowMemory + this.mConstants.GC_MIN_INTERVAL <= now2) {
                        if (rec.setAdj <= 400) {
                            rec.lastRequestedGc = 0L;
                        } else {
                            rec.lastRequestedGc = rec.lastLowMemory;
                        }
                        rec.reportLowMemory = true;
                        rec.lastLowMemory = now2;
                        this.mProcessesToGc.remove(rec);
                        addProcessToGcListLocked(rec);
                    }
                }
            }
            if (doReport) {
                Message msg = this.mHandler.obtainMessage(33, memInfos);
                this.mHandler.sendMessage(msg);
            }
            scheduleAppGcsLocked();
        }
    }

    final void appDiedLocked(ProcessRecord app, String reason) {
        appDiedLocked(app, app.pid, app.thread, false, reason);
    }

    final void appDiedLocked(ProcessRecord app, int pid, IApplicationThread thread, boolean fromBinderDied, String reason) {
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord curProc = this.mPidsSelfLocked.get(pid);
            if (curProc != app) {
                Slog.w("ActivityManager", "Spurious death for " + app + ", curProc for " + pid + ": " + curProc);
                return;
            }
            BatteryStatsImpl stats = this.mBatteryStatsService.getActiveStatistics();
            synchronized (stats) {
                stats.noteProcessDiedLocked(app.info.uid, pid);
            }
            if (!app.killed) {
                if (!fromBinderDied) {
                    Process.killProcessQuiet(pid);
                    this.mProcessList.noteAppKill(app, 13, 0, reason);
                }
                ProcessList.killProcessGroup(app.uid, pid);
                app.killed = true;
            }
            if (app.pid == pid && app.thread != null && app.thread.asBinder() == thread.asBinder()) {
                boolean doLowMem = app.getActiveInstrumentation() == null;
                boolean doOomAdj = doLowMem;
                if (!app.killedByAm) {
                    reportUidInfoMessageLocked("ActivityManager", "Process " + app.processName + " (pid " + pid + ") has died: " + ProcessList.makeOomAdjString(app.setAdj, true) + " " + ProcessList.makeProcStateString(app.setProcState), app.info.uid);
                    this.mAllowLowerMemLevel = true;
                } else {
                    this.mAllowLowerMemLevel = false;
                    doLowMem = false;
                }
                EventLogTags.writeAmProcDied(app.userId, app.pid, app.processName, app.setAdj, app.setProcState);
                handleAppDiedLocked(app, false, true);
                if (doOomAdj) {
                    updateOomAdjLocked("updateOomAdj_processEnd");
                }
                if (doLowMem) {
                    doLowMemReportIfNeededLocked(app);
                }
            } else if (app.pid != pid) {
                reportUidInfoMessageLocked("ActivityManager", "Process " + app.processName + " (pid " + pid + ") has died and restarted (pid " + app.pid + ").", app.info.uid);
                EventLogTags.writeAmProcDied(app.userId, app.pid, app.processName, app.setAdj, app.setProcState);
            }
            if (!MemoryStatUtil.hasMemcg()) {
                FrameworkStatsLog.write(65, SystemClock.elapsedRealtime());
            }
        }
    }

    public static File dumpStackTraces(ArrayList<Integer> firstPids, ProcessCpuTracker processCpuTracker, SparseArray<Boolean> lastPids, ArrayList<Integer> nativePids, StringWriter logExceptionCreatingFile) {
        return dumpStackTraces(firstPids, processCpuTracker, lastPids, nativePids, logExceptionCreatingFile, null);
    }

    static File dumpStackTraces(ArrayList<Integer> firstPids, ProcessCpuTracker processCpuTracker, SparseArray<Boolean> lastPids, ArrayList<Integer> nativePids, StringWriter logExceptionCreatingFile, long[] firstPidOffsets) {
        ArrayList<Integer> extraPids = null;
        Slog.i("ActivityManager", "dumpStackTraces pids=" + lastPids + " nativepids=" + nativePids);
        if (processCpuTracker != null) {
            processCpuTracker.init();
            try {
                Thread.sleep(NETWORK_ACCESS_TIMEOUT_DEFAULT_MS);
            } catch (InterruptedException e) {
            }
            processCpuTracker.update();
            int N = processCpuTracker.countWorkingStats();
            extraPids = new ArrayList<>();
            for (int i = 0; i < N && extraPids.size() < 5; i++) {
                ProcessCpuTracker.Stats stats = processCpuTracker.getWorkingStats(i);
                if (lastPids.indexOfKey(stats.pid) >= 0) {
                    extraPids.add(Integer.valueOf(stats.pid));
                } else {
                    Slog.i("ActivityManager", "Skipping next CPU consuming process, not a java proc: " + stats.pid);
                }
            }
        }
        File tracesDir = new File(ANR_TRACE_DIR);
        maybePruneOldTraces(tracesDir);
        try {
            File tracesFile = createAnrDumpFile(tracesDir);
            Pair<Long, Long> offsets = dumpStackTraces(tracesFile.getAbsolutePath(), firstPids, nativePids, extraPids);
            if (firstPidOffsets != null) {
                if (offsets != null) {
                    firstPidOffsets[0] = ((Long) offsets.first).longValue();
                    firstPidOffsets[1] = ((Long) offsets.second).longValue();
                } else {
                    firstPidOffsets[1] = -1;
                    firstPidOffsets[0] = -1;
                }
            }
            return tracesFile;
        } catch (IOException e2) {
            Slog.w("ActivityManager", "Exception creating ANR dump file:", e2);
            if (logExceptionCreatingFile != null) {
                logExceptionCreatingFile.append("----- Exception creating ANR dump file -----\n");
                e2.printStackTrace(new PrintWriter(logExceptionCreatingFile));
                return null;
            }
            return null;
        }
    }

    private static synchronized File createAnrDumpFile(File tracesDir) throws IOException {
        File anrFile;
        boostPriorityForLockedSection();
        if (sAnrFileDateFormat == null) {
            sAnrFileDateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS");
        }
        String formattedDate = sAnrFileDateFormat.format(new Date());
        anrFile = new File(tracesDir, ANR_FILE_PREFIX + formattedDate);
        if (anrFile.createNewFile()) {
            FileUtils.setPermissions(anrFile.getAbsolutePath(), 384, -1, -1);
            resetPriorityAfterLockedSection();
        } else {
            throw new IOException("Unable to create ANR dump file: createNewFile failed");
        }
        return anrFile;
    }

    private static void maybePruneOldTraces(File tracesDir) {
        File[] files = tracesDir.listFiles();
        if (files == null) {
            return;
        }
        int max = SystemProperties.getInt("tombstoned.max_anr_count", 64);
        long now = System.currentTimeMillis();
        Arrays.sort(files, Comparator.comparingLong(new ToLongFunction() { // from class: com.android.server.am.-$$Lambda$yk1Ms9fVlF6PvprMwF2rru-dw4Q
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((File) obj).lastModified();
            }
        }).reversed());
        for (int i = 0; i < files.length; i++) {
            if ((i > max || now - files[i].lastModified() > 86400000) && !files[i].delete()) {
                Slog.w("ActivityManager", "Unable to prune stale trace file: " + files[i]);
            }
        }
    }

    private static long dumpJavaTracesTombstoned(int pid, String fileName, long timeoutMs) {
        long timeStart = SystemClock.elapsedRealtime();
        boolean javaSuccess = Debug.dumpJavaBacktraceToFileTimeout(pid, fileName, (int) (timeoutMs / 1000));
        if (javaSuccess) {
            try {
                long size = new File(fileName).length();
                if (size < 100) {
                    Slog.w("ActivityManager", "Successfully created Java ANR file is empty!");
                    javaSuccess = false;
                }
            } catch (Exception e) {
                Slog.w("ActivityManager", "Unable to get ANR file size", e);
                javaSuccess = false;
            }
        }
        if (!javaSuccess) {
            Slog.w("ActivityManager", "Dumping Java threads failed, initiating native stack dump.");
            if (!Debug.dumpNativeBacktraceToFileTimeout(pid, fileName, 2)) {
                Slog.w("ActivityManager", "Native stack dump failed!");
            }
        }
        return SystemClock.elapsedRealtime() - timeStart;
    }

    public static Pair<Long, Long> dumpStackTraces(String tracesFile, ArrayList<Integer> firstPids, ArrayList<Integer> nativePids, ArrayList<Integer> extraPids) {
        long firstPidEnd;
        ArrayList<Integer> arrayList = firstPids;
        Slog.i("ActivityManager", "Dumping to " + tracesFile);
        long remainingTime = 20000;
        long firstPidStart = -1;
        long firstPidEnd2 = -1;
        if (arrayList != null) {
            int num = firstPids.size();
            int i = 0;
            while (i < num) {
                int pid = arrayList.get(i).intValue();
                boolean firstPid = i == 0 && MY_PID != pid;
                File tf = null;
                if (firstPid) {
                    tf = new File(tracesFile);
                    firstPidStart = tf.exists() ? tf.length() : 0L;
                }
                Slog.i("ActivityManager", "Collecting stacks for pid " + pid);
                long timeTaken = dumpJavaTracesTombstoned(pid, tracesFile, remainingTime);
                long remainingTime2 = remainingTime - timeTaken;
                if (remainingTime2 > 0) {
                    if (firstPid) {
                        firstPidEnd2 = tf.length();
                    }
                    i++;
                    arrayList = firstPids;
                    remainingTime = remainingTime2;
                } else {
                    Slog.e("ActivityManager", "Aborting stack trace dump (current firstPid=" + pid + "); deadline exceeded.");
                    if (firstPidStart >= 0) {
                        return new Pair<>(Long.valueOf(firstPidStart), Long.valueOf(firstPidEnd2));
                    }
                    return null;
                }
            }
        }
        if (nativePids == null) {
            firstPidEnd = firstPidEnd2;
        } else {
            Iterator<Integer> it = nativePids.iterator();
            while (it.hasNext()) {
                int pid2 = it.next().intValue();
                Slog.i("ActivityManager", "Collecting stacks for native pid " + pid2);
                long nativeDumpTimeoutMs = Math.min(2000L, remainingTime);
                long start = SystemClock.elapsedRealtime();
                long firstPidEnd3 = firstPidEnd2;
                Debug.dumpNativeBacktraceToFileTimeout(pid2, tracesFile, (int) (nativeDumpTimeoutMs / 1000));
                long timeTaken2 = SystemClock.elapsedRealtime() - start;
                remainingTime -= timeTaken2;
                if (remainingTime <= 0) {
                    Slog.e("ActivityManager", "Aborting stack trace dump (current native pid=" + pid2 + "); deadline exceeded.");
                    if (firstPidStart >= 0) {
                        return new Pair<>(Long.valueOf(firstPidStart), Long.valueOf(firstPidEnd3));
                    }
                    return null;
                }
                firstPidEnd2 = firstPidEnd3;
            }
            firstPidEnd = firstPidEnd2;
        }
        if (extraPids != null) {
            Iterator<Integer> it2 = extraPids.iterator();
            while (it2.hasNext()) {
                int pid3 = it2.next().intValue();
                Slog.i("ActivityManager", "Collecting stacks for extra pid " + pid3);
                long timeTaken3 = dumpJavaTracesTombstoned(pid3, tracesFile, remainingTime);
                remainingTime -= timeTaken3;
                if (remainingTime <= 0) {
                    Slog.e("ActivityManager", "Aborting stack trace dump (current extra pid=" + pid3 + "); deadline exceeded.");
                    if (firstPidStart >= 0) {
                        return new Pair<>(Long.valueOf(firstPidStart), Long.valueOf(firstPidEnd));
                    }
                    return null;
                }
            }
        }
        File binder_transactions = new File("/dev/binderfs/binder_logs/transactions");
        if (binder_transactions.exists()) {
            appendBinderTransatctonsToTracesFile(tracesFile, binder_transactions);
        }
        Slog.i("ActivityManager", "Done dumping");
        if (firstPidStart >= 0) {
            return new Pair<>(Long.valueOf(firstPidStart), Long.valueOf(firstPidEnd));
        }
        return null;
    }

    static void appendBinderTransatctonsToTracesFile(String tracesfile, File binder_transactions) {
        try {
            RandomAccessFile randomFile = new RandomAccessFile(tracesfile, "rw");
            long fileLength = randomFile.length();
            randomFile.seek(fileLength);
            FileInputStream inputStream = new FileInputStream(binder_transactions);
            byte[] temp = new byte[1024];
            new StringBuilder("");
            while (true) {
                int len = inputStream.read(temp);
                if (len > 0) {
                    randomFile.writeBytes(new String(temp, 0, len));
                } else {
                    randomFile.close();
                    inputStream.close();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean clearApplicationUserData(String packageName, boolean keepState, final IPackageDataObserver observer, int userId) throws Throwable {
        boolean z;
        enforceNotIsolatedCaller("clearApplicationUserData");
        final int uid = Binder.getCallingUid();
        final int pid = Binder.getCallingPid();
        final int resolvedUserId = this.mUserController.handleIncomingUser(pid, uid, userId, false, 2, "clearApplicationUserData", null);
        long callingId = Binder.clearCallingIdentity();
        try {
            IPackageManager pm = AppGlobals.getPackageManager();
            try {
                synchronized (this) {
                    try {
                        boostPriorityForLockedSection();
                        if (getPackageManagerInternalLocked().isPackageDataProtected(resolvedUserId, packageName)) {
                            throw new SecurityException("Cannot clear data for a protected package: " + packageName);
                        }
                        ApplicationInfo applicationInfo = null;
                        try {
                            try {
                                applicationInfo = pm.getApplicationInfo(packageName, 8192, resolvedUserId);
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (RemoteException e) {
                        }
                        final ApplicationInfo appInfo = applicationInfo;
                        boolean clearingOwnUidData = appInfo != null && appInfo.uid == uid;
                        if (!clearingOwnUidData && checkComponentPermission("android.permission.CLEAR_APP_USER_DATA", pid, uid, -1, true) != 0) {
                            throw new SecurityException("PID " + pid + " does not have permission android.permission.CLEAR_APP_USER_DATA to clear data of package " + packageName);
                        }
                        boolean hasInstantMetadata = getPackageManagerInternalLocked().hasInstantApplicationMetadata(packageName, resolvedUserId);
                        boolean isUninstalledAppWithoutInstantMetadata = appInfo == null && !hasInstantMetadata;
                        boolean isInstantApp = (appInfo != null && appInfo.isInstantApp()) || hasInstantMetadata;
                        boolean canAccessInstantApps = checkComponentPermission("android.permission.ACCESS_INSTANT_APPS", pid, uid, -1, true) == 0;
                        if (isUninstalledAppWithoutInstantMetadata) {
                            z = false;
                        } else if (!isInstantApp || canAccessInstantApps) {
                            if (appInfo != null) {
                                forceStopPackageLocked(packageName, appInfo.uid, "clear data");
                                this.mAtmInternal.removeRecentTasksByPackageName(packageName, resolvedUserId);
                            }
                            try {
                                try {
                                    resetPriorityAfterLockedSection();
                                    final boolean z2 = isInstantApp;
                                    try {
                                        try {
                                            pm.clearApplicationUserData(packageName, new IPackageDataObserver.Stub() { // from class: com.android.server.am.ActivityManagerService.9
                                                public void onRemoveCompleted(String packageName2, boolean succeeded) throws Throwable {
                                                    if (appInfo != null) {
                                                        synchronized (ActivityManagerService.this) {
                                                            try {
                                                                ActivityManagerService.boostPriorityForLockedSection();
                                                                ActivityManagerService.this.finishForceStopPackageLocked(packageName2, appInfo.uid);
                                                            } catch (Throwable th2) {
                                                                ActivityManagerService.resetPriorityAfterLockedSection();
                                                                throw th2;
                                                            }
                                                        }
                                                        ActivityManagerService.resetPriorityAfterLockedSection();
                                                    }
                                                    if (succeeded) {
                                                        Intent intent = new Intent("android.intent.action.PACKAGE_DATA_CLEARED", Uri.fromParts(com.android.server.pm.Settings.ATTR_PACKAGE, packageName2, null));
                                                        intent.addFlags(16777216);
                                                        ApplicationInfo applicationInfo2 = appInfo;
                                                        intent.putExtra("android.intent.extra.UID", applicationInfo2 != null ? applicationInfo2.uid : -1);
                                                        intent.putExtra("android.intent.extra.user_handle", resolvedUserId);
                                                        if (z2) {
                                                            intent.putExtra("android.intent.extra.PACKAGE_NAME", packageName2);
                                                        }
                                                        ActivityManagerService.this.broadcastIntentInPackage(PackageManagerService.PLATFORM_PACKAGE_NAME, null, 1000, uid, pid, intent, null, null, 0, null, null, z2 ? "android.permission.ACCESS_INSTANT_APPS" : null, null, false, false, resolvedUserId, false);
                                                    }
                                                    IPackageDataObserver iPackageDataObserver = observer;
                                                    if (iPackageDataObserver != null) {
                                                        iPackageDataObserver.onRemoveCompleted(packageName2, succeeded);
                                                    }
                                                }
                                            }, resolvedUserId);
                                            if (appInfo != null) {
                                                if (!keepState) {
                                                    this.mUgmInternal.removeUriPermissionsForPackage(packageName, resolvedUserId, true, false);
                                                    INotificationManager inm = NotificationManager.getService();
                                                    inm.clearData(packageName, appInfo.uid, uid == appInfo.uid);
                                                }
                                                JobSchedulerInternal js = (JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class);
                                                js.cancelJobsForUid(appInfo.uid, "clear data");
                                                AlarmManagerInternal ami = (AlarmManagerInternal) LocalServices.getService(AlarmManagerInternal.class);
                                                ami.removeAlarmsForUid(appInfo.uid);
                                            }
                                        } catch (RemoteException e2) {
                                        }
                                        Binder.restoreCallingIdentity(callingId);
                                        return true;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        Binder.restoreCallingIdentity(callingId);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                resetPriorityAfterLockedSection();
                                throw th;
                            }
                        } else {
                            z = false;
                        }
                        try {
                            Slog.w("ActivityManager", "Invalid packageName: " + packageName);
                            boolean z3 = z;
                            if (observer != null) {
                                try {
                                    observer.onRemoveCompleted(packageName, z3);
                                } catch (RemoteException e3) {
                                    Slog.i("ActivityManager", "Observer no longer exists.");
                                }
                            }
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(callingId);
                            return false;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                    try {
                        resetPriorityAfterLockedSection();
                        throw th;
                    } catch (Throwable th7) {
                        th = th7;
                        Binder.restoreCallingIdentity(callingId);
                        throw th;
                    }
                }
            } catch (Throwable th8) {
                th = th8;
            }
        } catch (Throwable th9) {
            th = th9;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0178 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:? -> B:50:0x012b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void killBackgroundProcesses(java.lang.String r27, int r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.killBackgroundProcesses(java.lang.String, int):void");
    }

    public void killAllBackgroundProcesses() {
        ProcessRecord proc;
        if (checkCallingPermission("android.permission.KILL_BACKGROUND_PROCESSES") != 0) {
            String msg = "Permission Denial: killAllBackgroundProcesses() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.KILL_BACKGROUND_PROCESSES";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        synchronized (this.mPidsSelfLocked) {
            proc = this.mPidsSelfLocked.get(callingPid);
        }
        if (callingUid >= 10000 && (proc == null || !proc.info.isSystemApp())) {
            Slog.w("ActivityManager", "Permission Denial: killAllBackgroundProcesses() from pid=" + callingPid + ", uid=" + callingUid + " is not allowed");
            return;
        }
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    this.mAllowLowerMemLevel = true;
                    this.mProcessList.killPackageProcessesLocked(null, -1, -1, 900, 10, 0, "kill all background");
                    doLowMemReportIfNeededLocked(null);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(callingId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    void killAllBackgroundProcessesExcept(int minTargetSdk, int maxProcState) {
        if (checkCallingPermission("android.permission.KILL_BACKGROUND_PROCESSES") != 0) {
            String msg = "Permission Denial: killAllBackgroundProcessesExcept() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.KILL_BACKGROUND_PROCESSES";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    this.mProcessList.killAllBackgroundProcessesExceptLocked(minTargetSdk, maxProcState);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(callingId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public void forceStopPackage(String packageName, int userId) {
        boolean z;
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String msg = "Permission Denial: forceStopPackage() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        int callingPid = Binder.getCallingPid();
        int userId2 = this.mUserController.handleIncomingUser(callingPid, Binder.getCallingUid(), userId, true, 2, "forceStopPackage", null);
        long callingId = Binder.clearCallingIdentity();
        try {
            IPackageManager pm = AppGlobals.getPackageManager();
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    int i = -1;
                    boolean z2 = true;
                    int[] users = userId2 == -1 ? this.mUserController.getUsers() : new int[]{userId2};
                    int length = users.length;
                    int i2 = 0;
                    while (i2 < length) {
                        int user = users[i2];
                        if (getPackageManagerInternalLocked().isPackageStateProtected(packageName, user)) {
                            Slog.w("ActivityManager", "Ignoring request to force stop protected package " + packageName + " u" + user);
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(callingId);
                            return;
                        }
                        int pkgUid = -1;
                        try {
                            pkgUid = pm.getPackageUid(packageName, AudioFormat.EVRC, user);
                        } catch (RemoteException e) {
                        }
                        if (pkgUid == i) {
                            Slog.w("ActivityManager", "Invalid packageName: " + packageName);
                            z = false;
                        } else {
                            try {
                                pm.setPackageStoppedState(packageName, z2, user);
                            } catch (RemoteException e2) {
                            } catch (IllegalArgumentException e3) {
                                Slog.w("ActivityManager", "Failed trying to unstop package " + packageName + ": " + e3);
                            }
                            z = false;
                            if (this.mUserController.isUserRunning(user, 0)) {
                                forceStopPackageLocked(packageName, pkgUid, "from pid " + callingPid);
                                finishForceStopPackageLocked(packageName, pkgUid);
                            }
                        }
                        i2++;
                        i = -1;
                        z2 = true;
                    }
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(callingId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public void addPackageDependency(String packageName) {
        ProcessRecord proc;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                int callingPid = Binder.getCallingPid();
                if (callingPid == Process.myPid()) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                synchronized (this.mPidsSelfLocked) {
                    proc = this.mPidsSelfLocked.get(Binder.getCallingPid());
                }
                if (proc != null) {
                    if (proc.pkgDeps == null) {
                        proc.pkgDeps = new ArraySet<>(1);
                    }
                    proc.pkgDeps.add(packageName);
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void killApplication(String pkg, int appId, int userId, String reason) {
        if (pkg == null) {
            return;
        }
        if (appId < 0) {
            Slog.w("ActivityManager", "Invalid appid specified for pkg : " + pkg);
            return;
        }
        int callerUid = Binder.getCallingUid();
        if (UserHandle.getAppId(callerUid) == 1000) {
            Message msg = this.mHandler.obtainMessage(22);
            msg.arg1 = appId;
            msg.arg2 = userId;
            Bundle bundle = new Bundle();
            bundle.putString("pkg", pkg);
            bundle.putString(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY, reason);
            msg.obj = bundle;
            this.mHandler.sendMessage(msg);
            return;
        }
        throw new SecurityException(callerUid + " cannot kill pkg: " + pkg);
    }

    public void closeSystemDialogs(String reason) {
        this.mAtmInternal.closeSystemDialogs(reason);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x02b8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:147:? -> B:104:0x022d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Debug.MemoryInfo[] getProcessMemoryInfo(int[] r60) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.getProcessMemoryInfo(int[]):android.os.Debug$MemoryInfo[]");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:? -> B:49:0x00f5). Please report as a decompilation issue!!! */
    public long[] getProcessPss(int[] pids) throws Throwable {
        ProcessRecord proc;
        int i;
        int oomAdj;
        int callingPid;
        int[] iArr = pids;
        enforceNotIsolatedCaller("getProcessPss");
        int callingPid2 = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        int i2 = 0;
        boolean allUsers = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        boolean allUids = this.mAtmInternal.isGetTasksAllowed("getProcessPss", callingPid2, callingUid);
        long[] pss = new long[iArr.length];
        int i3 = iArr.length - 1;
        while (i3 >= 0) {
            synchronized (this) {
                try {
                    try {
                        boostPriorityForLockedSection();
                        synchronized (this.mPidsSelfLocked) {
                            try {
                                proc = this.mPidsSelfLocked.get(iArr[i3]);
                                if (proc == null) {
                                    i = i2;
                                } else {
                                    try {
                                        i = proc.setAdj;
                                    } catch (Throwable th) {
                                        th = th;
                                        while (true) {
                                            try {
                                                throw th;
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        }
                                    }
                                }
                                oomAdj = i;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            if (!allUids) {
                callingPid = callingPid2;
            } else if (!allUsers && UserHandle.getUserId(proc.uid) != userId) {
                callingPid = callingPid2;
            } else {
                long[] tmpUss = new long[3];
                long startTime = SystemClock.currentThreadTimeMillis();
                pss[i3] = Debug.getPss(iArr[i3], tmpUss, null);
                long endTime = SystemClock.currentThreadTimeMillis();
                if (proc == null) {
                    callingPid = callingPid2;
                } else {
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            if (proc.thread == null || proc.setAdj != oomAdj) {
                                callingPid = callingPid2;
                            } else {
                                proc.baseProcessTracker.addPss(pss[i3], tmpUss[i2], tmpUss[2], false, 3, endTime - startTime, proc.pkgList.mPkgList);
                                int ipkg = proc.pkgList.size() - 1;
                                while (ipkg >= 0) {
                                    ProcessStats.ProcessStateHolder holder = proc.pkgList.valueAt(ipkg);
                                    int callingPid3 = callingPid2;
                                    try {
                                        FrameworkStatsLog.write(18, proc.info.uid, holder.state.getName(), holder.state.getPackage(), pss[i3], tmpUss[0], tmpUss[2], 3, endTime - startTime, holder.appVersion);
                                        ipkg--;
                                        callingPid2 = callingPid3;
                                    } catch (Throwable th6) {
                                        th = th6;
                                        resetPriorityAfterLockedSection();
                                        throw th;
                                    }
                                }
                                callingPid = callingPid2;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterLockedSection();
                }
            }
            i3--;
            iArr = pids;
            callingPid2 = callingPid;
            i2 = 0;
        }
        return pss;
    }

    public void killApplicationProcess(String processName, int uid) {
        if (processName == null) {
            return;
        }
        int callerUid = Binder.getCallingUid();
        if (callerUid == 1000) {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    ProcessRecord app = getProcessRecordLocked(processName, uid, true);
                    if (app != null && app.thread != null) {
                        try {
                            app.thread.scheduleSuicide();
                        } catch (RemoteException e) {
                        }
                    } else {
                        Slog.w("ActivityManager", "Process/uid not found attempting kill of " + processName + " / " + uid);
                    }
                } finally {
                    resetPriorityAfterLockedSection();
                }
            }
            return;
        }
        throw new SecurityException(callerUid + " cannot kill app process: " + processName);
    }

    private void forceStopPackageLocked(String packageName, int uid, String reason) {
        forceStopPackageLocked(packageName, UserHandle.getAppId(uid), false, false, true, false, false, UserHandle.getUserId(uid), reason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishForceStopPackageLocked(String packageName, int uid) {
        Intent intent = new Intent("android.intent.action.PACKAGE_RESTARTED", Uri.fromParts(com.android.server.pm.Settings.ATTR_PACKAGE, packageName, null));
        if (!this.mProcessesReady) {
            intent.addFlags(1342177280);
        }
        intent.putExtra("android.intent.extra.UID", uid);
        intent.putExtra("android.intent.extra.user_handle", UserHandle.getUserId(uid));
        broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, -1, null, false, false, MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), UserHandle.getUserId(uid));
    }

    private void cleanupDisabledPackageComponentsLocked(String packageName, int userId, String[] changedClasses) {
        Set<String> disabledClasses;
        int i;
        IPackageManager pm = AppGlobals.getPackageManager();
        if (changedClasses == null) {
            return;
        }
        int i2 = changedClasses.length - 1;
        int enabled = 0;
        int enabled2 = 0;
        Set<String> disabledClasses2 = null;
        while (true) {
            if (i2 < 0) {
                disabledClasses = disabledClasses2;
                i = enabled2;
                break;
            }
            String changedClass = changedClasses[i2];
            int i3 = 0;
            if (changedClass.equals(packageName)) {
                try {
                    enabled = pm.getApplicationEnabledSetting(packageName, userId != -1 ? userId : 0);
                    if (enabled != 1 && enabled != 0) {
                        i3 = 1;
                    }
                    enabled2 = i3;
                    if (enabled2 != 0) {
                        disabledClasses = null;
                        i = enabled2;
                        break;
                    }
                } catch (Exception e) {
                    return;
                }
            } else {
                try {
                    int enabled3 = pm.getComponentEnabledSetting(new ComponentName(packageName, changedClass), userId != -1 ? userId : 0);
                    if (enabled3 == 1 || enabled3 == 0) {
                        enabled = enabled3;
                    } else {
                        if (disabledClasses2 == null) {
                            disabledClasses2 = new ArraySet<>(changedClasses.length);
                        }
                        disabledClasses2.add(changedClass);
                        enabled = enabled3;
                    }
                } catch (Exception e2) {
                    return;
                }
            }
            i2--;
        }
        if (i != 0 || disabledClasses != null) {
            this.mAtmInternal.cleanupDisabledPackageComponents(packageName, disabledClasses, userId, this.mBooted);
            Set<String> set = disabledClasses;
            this.mServices.bringDownDisabledPackageServicesLocked(packageName, set, userId, false, true);
            ArrayList<ContentProviderRecord> providers = new ArrayList<>();
            this.mProviderMap.collectPackageProvidersLocked(packageName, set, true, false, userId, providers);
            for (int i4 = providers.size() - 1; i4 >= 0; i4--) {
                removeDyingProviderLocked(null, providers.get(i4), true);
            }
            for (int i5 = this.mBroadcastQueues.length - 1; i5 >= 0; i5--) {
                this.mBroadcastQueues[i5].cleanupDisabledPackageReceiversLocked(packageName, disabledClasses, userId, true);
            }
        }
    }

    final boolean clearBroadcastQueueForUserLocked(int userId) {
        boolean didSomething = false;
        for (int i = this.mBroadcastQueues.length - 1; i >= 0; i--) {
            didSomething |= this.mBroadcastQueues[i].cleanupDisabledPackageReceiversLocked(null, null, userId, true);
        }
        return didSomething;
    }

    final void forceStopAppZygoteLocked(String packageName, int appId, int userId) {
        if (packageName == null) {
            return;
        }
        if (appId < 0) {
            try {
                appId = UserHandle.getAppId(AppGlobals.getPackageManager().getPackageUid(packageName, AudioFormat.EVRC, 0));
            } catch (RemoteException e) {
            }
        }
        this.mProcessList.killAppZygotesLocked(packageName, appId, userId, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    final boolean forceStopPackageLocked(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, String str2) {
        int appId;
        StringBuilder sb;
        ?? r13;
        boolean zRemovePendingIntentsForPackage;
        AttributeCache attributeCacheInstance;
        if (i2 == -1 && str == null) {
            Slog.w("ActivityManager", "Can't force stop all processes of all users, that is insane!");
        }
        if (i < 0 && str != null) {
            try {
                appId = UserHandle.getAppId(AppGlobals.getPackageManager().getPackageUid(str, AudioFormat.EVRC, 0));
            } catch (RemoteException e) {
                appId = i;
            }
        } else {
            appId = i;
        }
        if (z3) {
            if (str != null) {
                Slog.i("ActivityManager", "Force stopping " + str + " appid=" + appId + " user=" + i2 + ": " + str2);
            } else {
                Slog.i("ActivityManager", "Force stopping u" + i2 + ": " + str2);
            }
            this.mAppErrors.resetProcessCrashTimeLocked(str == null, appId, i2);
        }
        ProcessList processList = this.mProcessList;
        int i3 = str == null ? 11 : 10;
        StringBuilder sb2 = new StringBuilder();
        if (str == null) {
            sb = new StringBuilder();
            sb.append("stop user ");
            sb.append(i2);
        } else {
            sb = new StringBuilder();
            sb.append("stop ");
            sb.append(str);
        }
        sb2.append(sb.toString());
        sb2.append(" due to ");
        sb2.append(str2);
        boolean zKillPackageProcessesLocked = processList.killPackageProcessesLocked(str, appId, i2, -10000, z, false, z3, z4, true, i3, 0, sb2.toString()) | this.mAtmInternal.onForceStopPackage(str, z3, z4, i2);
        if (!this.mServices.bringDownDisabledPackageServicesLocked(str, null, i2, z4, z3)) {
            r13 = 1;
            zRemovePendingIntentsForPackage = zKillPackageProcessesLocked;
        } else {
            if (!z3) {
                return true;
            }
            r13 = 1;
            zRemovePendingIntentsForPackage = true;
        }
        if (str == null) {
            this.mStickyBroadcasts.remove(i2);
        }
        ArrayList<ContentProviderRecord> arrayList = new ArrayList<>();
        if (this.mProviderMap.collectPackageProvidersLocked(str, (Set<String>) null, z3, z4, i2, arrayList)) {
            if (!z3) {
                return r13;
            }
            zRemovePendingIntentsForPackage = true;
        }
        for (int size = arrayList.size() - r13; size >= 0; size--) {
            removeDyingProviderLocked(null, arrayList.get(size), r13);
        }
        this.mUgmInternal.removeUriPermissionsForPackage(str, i2, false, false);
        if (z3) {
            for (int length = this.mBroadcastQueues.length - r13; length >= 0; length--) {
                zRemovePendingIntentsForPackage |= this.mBroadcastQueues[length].cleanupDisabledPackageReceiversLocked(str, null, i2, z3);
            }
        }
        if (str == null || z5) {
            zRemovePendingIntentsForPackage |= this.mPendingIntentController.removePendingIntentsForPackage(str, i2, appId, z3);
        }
        if (z3) {
            if (z2 && str != null && (attributeCacheInstance = AttributeCache.instance()) != null) {
                attributeCacheInstance.removePackage(str);
            }
            if (this.mBooted) {
                this.mAtmInternal.resumeTopActivities(r13);
            }
        }
        return zRemovePendingIntentsForPackage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processContentProviderPublishTimedOutLocked(ProcessRecord app) {
        cleanupAppInLaunchingProvidersLocked(app, true);
        this.mProcessList.removeProcessLocked(app, false, true, 7, 0, "timeout publishing content providers");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processStartTimedOutLocked(final ProcessRecord app) {
        int pid = app.pid;
        boolean gone = removePidIfNoThread(app);
        if (gone) {
            Slog.w("ActivityManager", "Process " + app + " failed to attach");
            EventLogTags.writeAmProcessStartTimeout(app.userId, pid, app.uid, app.processName);
            this.mProcessList.removeProcessNameLocked(app.processName, app.uid);
            this.mAtmInternal.clearHeavyWeightProcessIfEquals(app.getWindowProcessController());
            this.mBatteryStatsService.noteProcessFinish(app.processName, app.info.uid);
            cleanupAppInLaunchingProvidersLocked(app, true);
            this.mServices.processStartTimedOutLocked(app);
            app.kill("start timeout", 7, true);
            if (app.isolated) {
                this.mBatteryStatsService.removeIsolatedUid(app.uid, app.info.uid);
            }
            removeLruProcessLocked(app);
            BackupRecord backupTarget = this.mBackupTargets.get(app.userId);
            if (backupTarget != null && backupTarget.app.pid == pid) {
                Slog.w("ActivityManager", "Unattached app died before backup, skipping");
                this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.10
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            IBackupManager bm = IBackupManager.Stub.asInterface(ServiceManager.getService(BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD));
                            bm.agentDisconnectedForUser(app.userId, app.info.packageName);
                        } catch (RemoteException e) {
                        }
                    }
                });
            }
            if (isPendingBroadcastProcessLocked(pid)) {
                Slog.w("ActivityManager", "Unattached app died before broadcast acknowledged, skipping");
                skipPendingBroadcastLocked(pid);
                return;
            }
            return;
        }
        Slog.w("ActivityManager", "Spurious process start timeout - pid not known for " + app);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x07a2 */
    /* JADX WARN: Code duplicated, block: B:100:0x0231  */
    /* JADX WARN: Code duplicated, block: B:118:0x025b  */
    /* JADX WARN: Code duplicated, block: B:121:0x0263 A[Catch: Exception -> 0x026d, TRY_ENTER, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0278 A[Catch: Exception -> 0x026d, TRY_LEAVE, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:127:0x027b A[Catch: Exception -> 0x0763, TRY_ENTER, TryCatch #20 {Exception -> 0x0763, blocks: (B:119:0x025d, B:128:0x027d, B:154:0x0309, B:174:0x037c, B:181:0x038e, B:127:0x027b), top: B:391:0x025d }] */
    /* JADX WARN: Code duplicated, block: B:130:0x028e A[Catch: Exception -> 0x026d, TRY_ENTER, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:149:0x02e8 A[Catch: Exception -> 0x026d, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:153:0x0307  */
    /* JADX WARN: Code duplicated, block: B:156:0x030d A[Catch: Exception -> 0x026d, TRY_ENTER, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0326 A[Catch: Exception -> 0x026d, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:163:0x0345 A[Catch: Exception -> 0x026d, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0349 A[Catch: Exception -> 0x026d, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:167:0x0359 A[Catch: Exception -> 0x026d, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:171:0x0371 A[Catch: Exception -> 0x026d, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:176:0x0382 A[Catch: Exception -> 0x026d, TRY_ENTER, TryCatch #5 {Exception -> 0x026d, blocks: (B:110:0x024d, B:112:0x0251, B:121:0x0263, B:125:0x0278, B:130:0x028e, B:132:0x029a, B:134:0x02a7, B:136:0x02b1, B:142:0x02c1, B:144:0x02ce, B:146:0x02d9, B:156:0x030d, B:158:0x0315, B:160:0x031c, B:162:0x0326, B:163:0x0345, B:165:0x0349, B:167:0x0359, B:169:0x035d, B:171:0x0371, B:173:0x0379, B:176:0x0382, B:178:0x0388, B:194:0x03c5, B:196:0x03d3, B:149:0x02e8, B:151:0x02ec), top: B:361:0x024d }] */
    /* JADX WARN: Code duplicated, block: B:180:0x038b  */
    /* JADX WARN: Code duplicated, block: B:183:0x0398 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:213:0x0438  */
    /* JADX WARN: Code duplicated, block: B:215:0x0440 A[Catch: Exception -> 0x0444, TRY_LEAVE, TryCatch #19 {Exception -> 0x0444, blocks: (B:209:0x041d, B:202:0x03ed, B:204:0x03ff, B:205:0x0408, B:215:0x0440, B:222:0x0456, B:227:0x046a, B:229:0x0474, B:236:0x0495, B:238:0x049f, B:243:0x04cc, B:246:0x04dd), top: B:389:0x041d }] */
    /* JADX WARN: Code duplicated, block: B:222:0x0456 A[Catch: Exception -> 0x0444, TRY_ENTER, TRY_LEAVE, TryCatch #19 {Exception -> 0x0444, blocks: (B:209:0x041d, B:202:0x03ed, B:204:0x03ff, B:205:0x0408, B:215:0x0440, B:222:0x0456, B:227:0x046a, B:229:0x0474, B:236:0x0495, B:238:0x049f, B:243:0x04cc, B:246:0x04dd), top: B:389:0x041d }] */
    /* JADX WARN: Code duplicated, block: B:227:0x046a A[Catch: Exception -> 0x0444, TRY_ENTER, TryCatch #19 {Exception -> 0x0444, blocks: (B:209:0x041d, B:202:0x03ed, B:204:0x03ff, B:205:0x0408, B:215:0x0440, B:222:0x0456, B:227:0x046a, B:229:0x0474, B:236:0x0495, B:238:0x049f, B:243:0x04cc, B:246:0x04dd), top: B:389:0x041d }] */
    /* JADX WARN: Code duplicated, block: B:231:0x0486  */
    /* JADX WARN: Code duplicated, block: B:236:0x0495 A[Catch: Exception -> 0x0444, TRY_ENTER, TryCatch #19 {Exception -> 0x0444, blocks: (B:209:0x041d, B:202:0x03ed, B:204:0x03ff, B:205:0x0408, B:215:0x0440, B:222:0x0456, B:227:0x046a, B:229:0x0474, B:236:0x0495, B:238:0x049f, B:243:0x04cc, B:246:0x04dd), top: B:389:0x041d }] */
    /* JADX WARN: Code duplicated, block: B:240:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:243:0x04cc A[Catch: Exception -> 0x0444, TRY_ENTER, TRY_LEAVE, TryCatch #19 {Exception -> 0x0444, blocks: (B:209:0x041d, B:202:0x03ed, B:204:0x03ff, B:205:0x0408, B:215:0x0440, B:222:0x0456, B:227:0x046a, B:229:0x0474, B:236:0x0495, B:238:0x049f, B:243:0x04cc, B:246:0x04dd), top: B:389:0x041d }] */
    /* JADX WARN: Code duplicated, block: B:246:0x04dd A[Catch: Exception -> 0x0444, TRY_ENTER, TRY_LEAVE, TryCatch #19 {Exception -> 0x0444, blocks: (B:209:0x041d, B:202:0x03ed, B:204:0x03ff, B:205:0x0408, B:215:0x0440, B:222:0x0456, B:227:0x046a, B:229:0x0474, B:236:0x0495, B:238:0x049f, B:243:0x04cc, B:246:0x04dd), top: B:389:0x041d }] */
    /* JADX WARN: Code duplicated, block: B:248:0x04f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:251:0x0503 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:254:0x0509  */
    /* JADX WARN: Code duplicated, block: B:261:0x0575  */
    /* JADX WARN: Code duplicated, block: B:264:0x058e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:267:0x0594  */
    /* JADX WARN: Code duplicated, block: B:270:0x05d8 A[Catch: Exception -> 0x05dd, TRY_ENTER, TRY_LEAVE, TryCatch #13 {Exception -> 0x05dd, blocks: (B:270:0x05d8, B:257:0x0562), top: B:377:0x0562 }] */
    /* JADX WARN: Code duplicated, block: B:295:0x066a  */
    /* JADX WARN: Code duplicated, block: B:297:0x066e  */
    /* JADX WARN: Code duplicated, block: B:303:0x069a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:305:0x069e  */
    /* JADX WARN: Code duplicated, block: B:314:0x06d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:316:0x06db  */
    /* JADX WARN: Code duplicated, block: B:318:0x06e6  */
    /* JADX WARN: Code duplicated, block: B:320:0x06e9  */
    /* JADX WARN: Code duplicated, block: B:323:0x0723  */
    /* JADX WARN: Code duplicated, block: B:324:0x072a  */
    /* JADX WARN: Code duplicated, block: B:351:0x063e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:0x01f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:381:0x04f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:385:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:387:0x0618 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:50:0x0136  */
    /* JADX WARN: Code duplicated, block: B:52:0x013b  */
    /* JADX WARN: Code duplicated, block: B:53:0x0140  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:70:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:78:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:84:0x01fb A[Catch: Exception -> 0x0213, TryCatch #8 {Exception -> 0x0213, blocks: (B:82:0x01f3, B:84:0x01fb, B:88:0x0202, B:90:0x020a, B:97:0x0223, B:99:0x022b, B:103:0x0238, B:105:0x0242, B:107:0x0248), top: B:367:0x01f3 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:87:0x0201  */
    /* JADX WARN: Code duplicated, block: B:90:0x020a A[Catch: Exception -> 0x0213, TRY_LEAVE, TryCatch #8 {Exception -> 0x0213, blocks: (B:82:0x01f3, B:84:0x01fb, B:88:0x0202, B:90:0x020a, B:97:0x0223, B:99:0x022b, B:103:0x0238, B:105:0x0242, B:107:0x0248), top: B:367:0x01f3 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:40:0x00f7, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:78:0x01cd, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r51v0 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v96 */
    /* JADX WARN: Type inference failed for: r8v97 */
    /* JADX WARN: Type inference failed for: r8v98 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean attachApplicationLocked(android.app.IApplicationThread r66, int r67, int r68, long r69) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1981
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.attachApplicationLocked(android.app.IApplicationThread, int, int, long):boolean");
    }

    public final void attachApplication(IApplicationThread thread, long startSeq) {
        if (thread == null) {
            throw new SecurityException("Invalid application interface");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                long origId = Binder.clearCallingIdentity();
                attachApplicationLocked(thread, callingPid, callingUid, startSeq);
                Binder.restoreCallingIdentity(origId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void showBootMessage(CharSequence msg, boolean always) throws Throwable {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException();
        }
        this.mWindowManager.showBootMessage(msg, always);
    }

    final void finishBooting() {
        TimingsTraceAndSlog t = new TimingsTraceAndSlog("ActivityManagerTiming", 64L);
        t.traceBegin("FinishBooting");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (!this.mBootAnimationComplete) {
                    this.mCallFinishBooting = true;
                    resetPriorityAfterLockedSection();
                    return;
                }
                this.mCallFinishBooting = false;
                resetPriorityAfterLockedSection();
                Process.ZYGOTE_PROCESS.bootCompleted();
                VMRuntime.bootCompleted();
                IntentFilter pkgFilter = new IntentFilter();
                pkgFilter.addAction("android.intent.action.QUERY_PACKAGE_RESTART");
                pkgFilter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
                this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.am.ActivityManagerService.11
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) throws Throwable {
                        ActivityManagerService activityManagerService;
                        String[] pkgs = intent.getStringArrayExtra("android.intent.extra.PACKAGES");
                        if (pkgs != null) {
                            for (String pkg : pkgs) {
                                ActivityManagerService activityManagerService2 = ActivityManagerService.this;
                                synchronized (activityManagerService2) {
                                    try {
                                        ActivityManagerService.boostPriorityForLockedSection();
                                        activityManagerService = activityManagerService2;
                                        try {
                                            if (ActivityManagerService.this.forceStopPackageLocked(pkg, -1, false, false, false, false, false, 0, "query restart")) {
                                                setResultCode(-1);
                                                ActivityManagerService.resetPriorityAfterLockedSection();
                                                return;
                                            }
                                            ActivityManagerService.resetPriorityAfterLockedSection();
                                        } catch (Throwable th) {
                                            th = th;
                                            ActivityManagerService.resetPriorityAfterLockedSection();
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        activityManagerService = activityManagerService2;
                                    }
                                }
                            }
                        }
                    }
                }, pkgFilter);
                try {
                    Slog.i("ActivityManager", "About to commit checkpoint");
                    IStorageManager storageManager = PackageHelper.getStorageManager();
                    storageManager.commitChanges();
                } catch (Exception e) {
                    PowerManager pm = (PowerManager) this.mInjector.getContext().getSystemService("power");
                    pm.reboot("Checkpoint commit failed");
                }
                this.mSystemServiceManager.startBootPhase(t, 1000);
                synchronized (this) {
                    try {
                        boostPriorityForLockedSection();
                        int NP = this.mProcessesOnHold.size();
                        if (NP > 0) {
                            ArrayList<ProcessRecord> procs = new ArrayList<>(this.mProcessesOnHold);
                            for (int ip = 0; ip < NP; ip++) {
                                this.mProcessList.startProcessLocked(procs.get(ip), new HostingRecord("on-hold"), 2);
                            }
                        }
                        if (this.mFactoryTest == 1) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        Message nmsg = this.mHandler.obtainMessage(27);
                        this.mHandler.sendMessageDelayed(nmsg, this.mConstants.POWER_CHECK_INTERVAL);
                        if (((Boolean) InitProperties.userspace_reboot_in_progress().orElse(false)).booleanValue()) {
                            UserspaceRebootLogger.noteUserspaceRebootSuccess();
                        }
                        SystemProperties.set("sys.boot_completed", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
                        if (!this.mConstants.mMegaQuickBootEnable) {
                            unlockUserLocked();
                        }
                        Message boot_delay_msg = this.mHandler.obtainMessage(BOOT_COMPLETE_DELAY_MSG);
                        int boot_delay = SystemProperties.getInt("persist.sys.boot_delay", 10000);
                        if (this.mConstants.mBootCompletedSendDelay > boot_delay) {
                            Slog.i("ActivityManager", "use config_bootCompletedSendDelay as set delay property delaytime");
                            boot_delay = this.mConstants.mBootCompletedSendDelay;
                        }
                        Slog.i("ActivityManager", "set boot delay prop after " + boot_delay + "ms");
                        this.mHandler.sendMessageDelayed(boot_delay_msg, (long) boot_delay);
                        if (!"trigger_restart_min_framework".equals(VoldProperties.decrypt().orElse("")) || "".equals(VoldProperties.encrypt_progress().orElse(""))) {
                            SystemProperties.set("dev.bootcomplete", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
                        }
                        this.mUserController.sendBootCompleted(new IIntentReceiver.Stub() { // from class: com.android.server.am.ActivityManagerService.12
                            public void performReceive(Intent intent, int resultCode, String data, Bundle extras, boolean ordered, boolean sticky, int sendingUser) {
                                synchronized (ActivityManagerService.this) {
                                    try {
                                        ActivityManagerService.boostPriorityForLockedSection();
                                        ActivityManagerService.this.mOomAdjuster.mCachedAppOptimizer.compactAllSystem();
                                        ActivityManagerService.this.requestPssAllProcsLocked(SystemClock.uptimeMillis(), true, false);
                                    } finally {
                                        ActivityManagerService.resetPriorityAfterLockedSection();
                                    }
                                }
                            }
                        });
                        maybeLogUserspaceRebootEvent();
                        this.mUserController.scheduleStartProfiles();
                        this.mUserController.sendBootCompletedDelay();
                        resetPriorityAfterLockedSection();
                        showConsoleNotificationIfActive();
                        t.traceEnd();
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    private void unlockUserLocked() {
        Debug.traceBootKpi("M - AMS unlockUser");
        Slog.w("ActivityManager", "unlockUserLocked");
        this.mUserController.sendBootCompleted(null);
        unlockUser(0, null, null, null);
        maybeLogUserspaceRebootEvent();
        this.mUserController.scheduleStartProfiles();
    }

    private void showConsoleNotificationIfActive() {
        if (!SystemProperties.get("init.svc.console").equals(INetd.IF_FLAG_RUNNING)) {
            return;
        }
        String title = this.mContext.getString(R.string.config_secondaryDisplayShape);
        String message = this.mContext.getString(R.string.config_secondaryBuiltInDisplayCutoutRectApproximation);
        Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVELOPER).setSmallIcon(R.drawable.$$loader_horizontal_watch__5__0).setWhen(0L).setOngoing(true).setTicker(title).setDefaults(0).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setContentTitle(title).setContentText(message).setVisibility(1).build();
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
        notificationManager.notifyAsUser(null, 55, notification, UserHandle.ALL);
    }

    public void bootAnimationComplete() {
        boolean callFinishBooting;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                callFinishBooting = this.mCallFinishBooting;
                this.mBootAnimationComplete = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (callFinishBooting) {
            finishBooting();
        }
    }

    final void ensureBootCompleted() {
        boolean booting;
        boolean enableScreen;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                booting = this.mBooting;
                this.mBooting = false;
                enableScreen = this.mBooted ? false : true;
                this.mBooted = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (booting) {
            finishBooting();
        }
        if (enableScreen) {
            this.mAtmInternal.enableScreenAfterBoot(this.mBooted);
        }
    }

    @Deprecated
    public IIntentSender getIntentSender(int type, String packageName, IBinder token, String resultWho, int requestCode, Intent[] intents, String[] resolvedTypes, int flags, Bundle bOptions, int userId) {
        return getIntentSenderWithFeature(type, packageName, null, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions, userId);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0120 A[Catch: RemoteException -> 0x0143, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0143, blocks: (B:59:0x0115, B:63:0x0120), top: B:68:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public IIntentSender getIntentSenderWithFeature(int type, String packageName, String featureId, IBinder token, String resultWho, int requestCode, Intent[] intents, String[] resolvedTypes, int flags, Bundle bOptions, int userId) {
        int userId2;
        enforceNotIsolatedCaller("getIntentSender");
        if (intents != null) {
            if (intents.length < 1) {
                throw new IllegalArgumentException("Intents array length must be >= 1");
            }
            for (int i = 0; i < intents.length; i++) {
                Intent intent = intents[i];
                if (intent != null) {
                    if (intent.hasFileDescriptors()) {
                        throw new IllegalArgumentException("File descriptors passed in Intent");
                    }
                    if (type == 1 && (intent.getFlags() & 33554432) != 0) {
                        throw new IllegalArgumentException("Can't use FLAG_RECEIVER_BOOT_UPGRADE here");
                    }
                    intents[i] = new Intent(intent);
                }
            }
            if (resolvedTypes != null && resolvedTypes.length != intents.length) {
                throw new IllegalArgumentException("Intent array length does not match resolvedTypes length");
            }
        }
        if (bOptions != null && bOptions.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in options");
        }
        int callingUid = Binder.getCallingUid();
        int userId3 = this.mUserController.handleIncomingUser(Binder.getCallingPid(), callingUid, userId, type == 1, 0, "getIntentSender", null);
        if (userId != -2) {
            userId2 = userId3;
        } else {
            userId2 = -2;
        }
        if (callingUid != 0 && callingUid != 1000) {
            try {
                int uid = AppGlobals.getPackageManager().getPackageUid(packageName, AudioFormat.EVRC, UserHandle.getUserId(callingUid));
                if (!UserHandle.isSameApp(callingUid, uid)) {
                    String msg = "Permission Denial: getIntentSender() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + ", (need uid=" + uid + ") is not allowed to send as package " + packageName;
                    Slog.w("ActivityManager", msg);
                    throw new SecurityException(msg);
                }
                if (type == 3) {
                    return this.mPendingIntentController.getIntentSender(type, packageName, featureId, callingUid, userId2, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions);
                }
                return this.mAtmInternal.getIntentSender(type, packageName, featureId, callingUid, userId2, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions);
            } catch (RemoteException e) {
                e = e;
            }
        } else {
            try {
                if (type == 3) {
                    return this.mPendingIntentController.getIntentSender(type, packageName, featureId, callingUid, userId2, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions);
                }
                try {
                    return this.mAtmInternal.getIntentSender(type, packageName, featureId, callingUid, userId2, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions);
                } catch (RemoteException e2) {
                    e = e2;
                }
            } catch (RemoteException e3) {
                e = e3;
            }
        }
        throw new SecurityException(e);
    }

    public int sendIntentSender(IIntentSender target, IBinder whitelistToken, int code, Intent intent, String resolvedType, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
        Intent intent2;
        if (target instanceof PendingIntentRecord) {
            return ((PendingIntentRecord) target).sendWithResult(code, intent, resolvedType, whitelistToken, finishedReceiver, requiredPermission, options);
        }
        if (intent != null) {
            intent2 = intent;
        } else {
            Slog.wtf("ActivityManager", "Can't use null intent with direct IIntentSender call");
            intent2 = new Intent("android.intent.action.MAIN");
        }
        try {
            target.send(code, intent2, resolvedType, whitelistToken, (IIntentReceiver) null, requiredPermission, options);
        } catch (RemoteException e) {
        }
        if (finishedReceiver != null) {
            try {
                finishedReceiver.performReceive(intent2, 0, (String) null, (Bundle) null, false, false, UserHandle.getCallingUserId());
                return 0;
            } catch (RemoteException e2) {
                return 0;
            }
        }
        return 0;
    }

    public void cancelIntentSender(IIntentSender sender) {
        this.mPendingIntentController.cancelIntentSender(sender);
    }

    public String getPackageForIntentSender(IIntentSender pendingResult) {
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return null;
        }
        try {
            PendingIntentRecord res = (PendingIntentRecord) pendingResult;
            return res.key.packageName;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public void registerIntentSenderCancelListener(IIntentSender sender, IResultReceiver receiver) {
        this.mPendingIntentController.registerIntentSenderCancelListener(sender, receiver);
    }

    public void unregisterIntentSenderCancelListener(IIntentSender sender, IResultReceiver receiver) {
        this.mPendingIntentController.unregisterIntentSenderCancelListener(sender, receiver);
    }

    public int getUidForIntentSender(IIntentSender sender) {
        if (sender instanceof PendingIntentRecord) {
            try {
                PendingIntentRecord res = (PendingIntentRecord) sender;
                return res.uid;
            } catch (ClassCastException e) {
                return -1;
            }
        }
        return -1;
    }

    public boolean isIntentSenderTargetedToPackage(IIntentSender pendingResult) {
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return false;
        }
        try {
            PendingIntentRecord res = (PendingIntentRecord) pendingResult;
            if (res.key.allIntents == null) {
                return false;
            }
            for (int i = 0; i < res.key.allIntents.length; i++) {
                Intent intent = res.key.allIntents[i];
                if (intent.getPackage() != null && intent.getComponent() != null) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public boolean isIntentSenderAnActivity(IIntentSender pendingResult) {
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return false;
        }
        try {
            PendingIntentRecord res = (PendingIntentRecord) pendingResult;
            return res.key.type == 2;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public boolean isIntentSenderAForegroundService(IIntentSender pendingResult) {
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return false;
        }
        PendingIntentRecord res = (PendingIntentRecord) pendingResult;
        return res.key.type == 5;
    }

    public boolean isIntentSenderABroadcast(IIntentSender pendingResult) {
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return false;
        }
        PendingIntentRecord res = (PendingIntentRecord) pendingResult;
        return res.key.type == 1;
    }

    public Intent getIntentForIntentSender(IIntentSender pendingResult) {
        enforceCallingPermission("android.permission.GET_INTENT_SENDER_INTENT", "getIntentForIntentSender()");
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return null;
        }
        try {
            PendingIntentRecord res = (PendingIntentRecord) pendingResult;
            if (res.key.requestIntent != null) {
                return new Intent(res.key.requestIntent);
            }
            return null;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public String getTagForIntentSender(IIntentSender pendingResult, String prefix) {
        String tagForIntentSenderLocked;
        if (!(pendingResult instanceof PendingIntentRecord)) {
            return null;
        }
        try {
            PendingIntentRecord res = (PendingIntentRecord) pendingResult;
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    tagForIntentSenderLocked = getTagForIntentSenderLocked(res, prefix);
                } finally {
                    resetPriorityAfterLockedSection();
                }
            }
            return tagForIntentSenderLocked;
        } catch (ClassCastException e) {
            return null;
        }
    }

    String getTagForIntentSenderLocked(PendingIntentRecord res, String prefix) {
        Intent intent = res.key.requestIntent;
        if (intent != null) {
            if (res.lastTag != null && res.lastTagPrefix == prefix && (res.lastTagPrefix == null || res.lastTagPrefix.equals(prefix))) {
                return res.lastTag;
            }
            res.lastTagPrefix = prefix;
            StringBuilder sb = new StringBuilder(128);
            if (prefix != null) {
                sb.append(prefix);
            }
            if (intent.getAction() != null) {
                sb.append(intent.getAction());
            } else if (intent.getComponent() != null) {
                intent.getComponent().appendShortString(sb);
            } else {
                sb.append("?");
            }
            String string = sb.toString();
            res.lastTag = string;
            return string;
        }
        return null;
    }

    public void setProcessLimit(int max) {
        enforceCallingPermission("android.permission.SET_PROCESS_LIMIT", "setProcessLimit()");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mConstants.setOverrideMaxCachedProcesses(max);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        trimApplications("updateOomAdj_processEnd");
    }

    public int getProcessLimit() {
        int overrideMaxCachedProcesses;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                overrideMaxCachedProcesses = this.mConstants.getOverrideMaxCachedProcesses();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return overrideMaxCachedProcesses;
    }

    void importanceTokenDied(ImportanceToken token) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                synchronized (this.mPidsSelfLocked) {
                    ImportanceToken cur = this.mImportantProcesses.get(token.pid);
                    if (cur != token) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    this.mImportantProcesses.remove(token.pid);
                    ProcessRecord pr = this.mPidsSelfLocked.get(token.pid);
                    if (pr == null) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    pr.forcingToImportant = null;
                    updateProcessForegroundLocked(pr, false, 0, false);
                    updateOomAdjLocked(pr, "updateOomAdj_uiVisibility");
                    resetPriorityAfterLockedSection();
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void setProcessImportant(IBinder token, int pid, boolean isForeground, String reason) {
        enforceCallingPermission("android.permission.SET_PROCESS_LIMIT", "setProcessImportant()");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                boolean changed = false;
                synchronized (this.mPidsSelfLocked) {
                    ProcessRecord pr = this.mPidsSelfLocked.get(pid);
                    if (pr == null && isForeground) {
                        Slog.w("ActivityManager", "setProcessForeground called on unknown pid: " + pid);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    ImportanceToken oldToken = this.mImportantProcesses.get(pid);
                    if (oldToken != null) {
                        oldToken.token.unlinkToDeath(oldToken, 0);
                        this.mImportantProcesses.remove(pid);
                        if (pr != null) {
                            pr.forcingToImportant = null;
                        }
                        changed = true;
                    }
                    if (isForeground && token != null) {
                        ImportanceToken newToken = new ImportanceToken(pid, token, reason) { // from class: com.android.server.am.ActivityManagerService.13
                            @Override // android.os.IBinder.DeathRecipient
                            public void binderDied() {
                                ActivityManagerService.this.importanceTokenDied(this);
                            }
                        };
                        try {
                            token.linkToDeath(newToken, 0);
                            this.mImportantProcesses.put(pid, newToken);
                            pr.forcingToImportant = newToken;
                            changed = true;
                        } catch (RemoteException e) {
                        }
                    }
                    if (changed) {
                        updateOomAdjLocked(pr, "updateOomAdj_uiVisibility");
                    }
                    resetPriorityAfterLockedSection();
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAppForeground(int uid) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                UidRecord uidRec = this.mProcessList.mActiveUids.get(uid);
                if (uidRec != null && !uidRec.idle) {
                    return uidRec.getCurProcState() <= 6;
                }
                return false;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAppBad(ApplicationInfo info) {
        return this.mAppErrors.isBadProcess(info.processName, info.uid);
    }

    int getUidState(int uid) {
        int uidProcStateLocked;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                uidProcStateLocked = this.mProcessList.getUidProcStateLocked(uid);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return uidProcStateLocked;
    }

    static class ProcessInfoService extends IProcessInfoService.Stub {
        final ActivityManagerService mActivityManagerService;

        ProcessInfoService(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        public void getProcessStatesFromPids(int[] pids, int[] states) {
            this.mActivityManagerService.getProcessStatesAndOomScoresForPIDs(pids, states, null);
        }

        public void getProcessStatesAndOomScoresFromPids(int[] pids, int[] states, int[] scores) {
            this.mActivityManagerService.getProcessStatesAndOomScoresForPIDs(pids, states, scores);
        }
    }

    public void getProcessStatesAndOomScoresForPIDs(int[] pids, int[] states, int[] scores) {
        if (scores != null) {
            enforceCallingPermission("android.permission.GET_PROCESS_STATE_AND_OOM_SCORE", "getProcessStatesAndOomScoresForPIDs()");
        }
        if (pids == null) {
            throw new NullPointerException("pids");
        }
        if (states == null) {
            throw new NullPointerException("states");
        }
        if (pids.length != states.length) {
            throw new IllegalArgumentException("pids and states arrays have different lengths!");
        }
        if (scores != null && pids.length != scores.length) {
            throw new IllegalArgumentException("pids and scores arrays have different lengths!");
        }
        synchronized (this.mPidsSelfLocked) {
            for (int i = 0; i < pids.length; i++) {
                ProcessRecord pr = this.mPidsSelfLocked.get(pids[i]);
                if (pr != null) {
                    boolean isPendingTop = this.mPendingStartActivityUids.isPendingTopPid(pr.uid, pids[i]);
                    states[i] = isPendingTop ? 2 : pr.getCurProcState();
                    if (scores != null) {
                        scores[i] = isPendingTop ? -1 : pr.curAdj;
                    }
                } else {
                    states[i] = 20;
                    if (scores != null) {
                        scores[i] = -10000;
                    }
                }
            }
        }
    }

    static class PermissionController extends IPermissionController.Stub {
        ActivityManagerService mActivityManagerService;

        PermissionController(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        public boolean checkPermission(String permission, int pid, int uid) {
            return this.mActivityManagerService.checkPermission(permission, pid, uid) == 0;
        }

        public int noteOp(String op, int uid, String packageName) {
            return this.mActivityManagerService.mAppOpsService.noteOperation(AppOpsManager.strOpToOp(op), uid, packageName, null, false, "", false);
        }

        public String[] getPackagesForUid(int uid) {
            return this.mActivityManagerService.mContext.getPackageManager().getPackagesForUid(uid);
        }

        public boolean isRuntimePermission(String permission) {
            try {
                PermissionInfo info = this.mActivityManagerService.mContext.getPackageManager().getPermissionInfo(permission, 0);
                return (info.protectionLevel & 15) == 1;
            } catch (PackageManager.NameNotFoundException nnfe) {
                Slog.e("ActivityManager", "No such permission: " + permission, nnfe);
                return false;
            }
        }

        public int getPackageUid(String packageName, int flags) {
            try {
                return this.mActivityManagerService.mContext.getPackageManager().getPackageUid(packageName, flags);
            } catch (PackageManager.NameNotFoundException e) {
                return -1;
            }
        }
    }

    class IntentFirewallInterface implements IntentFirewall.AMSInterface {
        IntentFirewallInterface() {
        }

        @Override // com.android.server.firewall.IntentFirewall.AMSInterface
        public int checkComponentPermission(String permission, int pid, int uid, int owningUid, boolean exported) {
            return ActivityManagerService.checkComponentPermission(permission, pid, uid, owningUid, exported);
        }

        @Override // com.android.server.firewall.IntentFirewall.AMSInterface
        public Object getAMSLock() {
            return ActivityManagerService.this;
        }
    }

    public static int checkComponentPermission(String permission, int pid, int uid, int owningUid, boolean exported) {
        if (pid == MY_PID) {
            return 0;
        }
        if (permission != null) {
            synchronized (sActiveProcessInfoSelfLocked) {
                ProcessInfo procInfo = sActiveProcessInfoSelfLocked.get(pid);
                if (procInfo != null && procInfo.deniedPermissions != null && procInfo.deniedPermissions.contains(permission)) {
                    return -1;
                }
            }
        }
        return ActivityManager.checkComponentPermission(permission, uid, owningUid, exported);
    }

    public int checkPermission(String permission, int pid, int uid) {
        if (permission == null) {
            return -1;
        }
        String[] mPermission = this.mContext.getResources().getStringArray(R.array.config_nightDisplayColorTemperatureCoefficientsNative);
        if (mPermission.length == 0 || !Arrays.asList(mPermission).contains(permission) || !getPackageNamePermission(permission, pid, uid)) {
            return checkComponentPermission(permission, pid, uid, -1, true);
        }
        return -1;
    }

    private boolean getPackageNamePermission(String permission, int pid, int uid) {
        Boolean mPermissionExemptFlag = Boolean.valueOf(this.mContext.getResources().getBoolean(R.bool.config_defaultWindowFeatureOptionsPanel));
        if (!mPermissionExemptFlag.booleanValue()) {
            return false;
        }
        String mPackagerName = getPackageNameFromPid(pid);
        String[] mPermissionExempt = this.mContext.getResources().getStringArray(R.array.config_nightDisplayColorTemperatureCoefficients);
        if (mPermissionExempt.length == 0 || !Arrays.asList(mPermissionExempt).contains(mPackagerName)) {
            return false;
        }
        if (SystemProperties.get("persist." + mPackagerName, "0").equals(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION)) {
            return false;
        }
        Log.d("ActivityManagerService:", "getPackageNamePermission will return true");
        return true;
    }

    private String getPackageNameFromPid(int pid) {
        String cachedPackageName = this.pidToPackageNameCache.get(pid);
        if (cachedPackageName != null) {
            return cachedPackageName;
        }
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningProcesses = activityManager.getRunningAppProcesses();
        for (ActivityManager.RunningAppProcessInfo processInfo : runningProcesses) {
            if (processInfo.pid == pid) {
                return processInfo.processName;
            }
        }
        return null;
    }

    public int checkPermissionWithToken(String permission, int pid, int uid, IBinder callerToken) {
        if (permission == null) {
            return -1;
        }
        Identity tlsIdentity = sCallerIdentity.get();
        if (tlsIdentity != null && tlsIdentity.token == callerToken) {
            Slog.d("ActivityManager", "checkComponentPermission() adjusting {pid,uid} to {" + tlsIdentity.pid + "," + tlsIdentity.uid + "}");
            uid = tlsIdentity.uid;
            pid = tlsIdentity.pid;
        }
        return checkComponentPermission(permission, pid, uid, -1, true);
    }

    int checkCallingPermission(String permission) {
        return checkPermission(permission, Binder.getCallingPid(), Binder.getCallingUid());
    }

    void enforceCallingPermission(String permission, String func) {
        if (checkCallingPermission(permission) == 0) {
            return;
        }
        String msg = "Permission Denial: " + func + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires " + permission;
        Slog.w("ActivityManager", msg);
        throw new SecurityException(msg);
    }

    void enforcePermission(String permission, int pid, int uid, String func) {
        if (checkPermission(permission, pid, uid) == 0) {
            return;
        }
        String msg = "Permission Denial: " + func + " from pid=" + pid + ", uid=" + uid + " requires " + permission;
        Slog.w("ActivityManager", msg);
        throw new SecurityException(msg);
    }

    public boolean isAppStartModeDisabled(int uid, String packageName) {
        boolean z;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                z = getAppStartModeLocked(uid, packageName, 0, -1, false, true, false) == 3;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    private boolean isInRestrictedBucket(int userId, String packageName, long nowElapsed) {
        return 45 <= this.mUsageStatsService.getAppStandbyBucket(packageName, userId, nowElapsed);
    }

    int appRestrictedInBackgroundLocked(int uid, String packageName, int packageTargetSdk) {
        if (packageTargetSdk >= 26) {
            return 2;
        }
        if (this.mOnBattery && this.mConstants.FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS && isInRestrictedBucket(UserHandle.getUserId(uid), packageName, SystemClock.elapsedRealtime())) {
            return 1;
        }
        int appop = getAppOpsManager().noteOpNoThrow(63, uid, packageName, (String) null, "");
        if (appop != 0) {
            return appop != 1 ? 2 : 1;
        }
        return (!this.mForceBackgroundCheck || UserHandle.isCore(uid) || isOnDeviceIdleWhitelistLocked(uid, true)) ? 0 : 1;
    }

    int appServicesRestrictedInBackgroundLocked(int uid, String packageName, int packageTargetSdk) {
        if (this.mPackageManagerInt.isPackagePersistent(packageName) || uidOnBackgroundWhitelist(uid) || isOnDeviceIdleWhitelistLocked(uid, false)) {
            return 0;
        }
        return appRestrictedInBackgroundLocked(uid, packageName, packageTargetSdk);
    }

    int getAppStartModeLocked(int uid, String packageName, int packageTargetSdk, int callingPid, boolean alwaysRestrict, boolean disabledOnly, boolean forcedStandby) {
        boolean ephemeral;
        int startMode;
        ProcessRecord proc;
        if (this.mInternal.isPendingTopUid(uid)) {
            return 0;
        }
        UidRecord uidRec = this.mProcessList.getUidRecordLocked(uid);
        if (uidRec != null && !alwaysRestrict && !forcedStandby && !uidRec.idle) {
            return 0;
        }
        if (uidRec == null) {
            ephemeral = getPackageManagerInternalLocked().isPackageEphemeral(UserHandle.getUserId(uid), packageName);
        } else {
            ephemeral = uidRec.ephemeral;
        }
        if (ephemeral) {
            return 3;
        }
        if (disabledOnly) {
            return 0;
        }
        if (alwaysRestrict) {
            startMode = appRestrictedInBackgroundLocked(uid, packageName, packageTargetSdk);
        } else {
            startMode = appServicesRestrictedInBackgroundLocked(uid, packageName, packageTargetSdk);
        }
        if (startMode == 1 && callingPid >= 0) {
            synchronized (this.mPidsSelfLocked) {
                proc = this.mPidsSelfLocked.get(callingPid);
            }
            if (proc != null && !ActivityManager.isProcStateBackground(proc.getCurProcState())) {
                return 0;
            }
        }
        return startMode;
    }

    boolean isOnDeviceIdleWhitelistLocked(int uid, boolean allowExceptIdleToo) {
        int[] whitelist;
        int appId = UserHandle.getAppId(uid);
        if (allowExceptIdleToo) {
            whitelist = this.mDeviceIdleExceptIdleWhitelist;
        } else {
            whitelist = this.mDeviceIdleWhitelist;
        }
        return Arrays.binarySearch(whitelist, appId) >= 0 || Arrays.binarySearch(this.mDeviceIdleTempWhitelist, appId) >= 0 || this.mPendingTempWhitelist.indexOfKey(uid) >= 0;
    }

    String getPendingTempWhitelistTagForUidLocked(int uid) {
        PendingTempWhitelist ptw = this.mPendingTempWhitelist.get(uid);
        if (ptw != null) {
            return ptw.tag;
        }
        return null;
    }

    private ProviderInfo getProviderInfoLocked(String authority, int userId, int pmFlags) {
        ContentProviderRecord cpr = this.mProviderMap.getProviderByName(authority, userId);
        if (cpr != null) {
            ProviderInfo pi = cpr.info;
            return pi;
        }
        try {
            ProviderInfo pi2 = AppGlobals.getPackageManager().resolveContentProvider(authority, pmFlags | 2048, userId);
            return pi2;
        } catch (RemoteException e) {
            return null;
        }
    }

    public void grantImplicitAccess(int userId, Intent intent, int visibleUid, int recipientAppId) {
        getPackageManagerInternalLocked().grantImplicitAccess(userId, intent, recipientAppId, visibleUid, true);
    }

    public int checkUriPermission(Uri uri, int pid, int uid, int modeFlags, int userId, IBinder callerToken) {
        enforceNotIsolatedCaller("checkUriPermission");
        Identity tlsIdentity = sCallerIdentity.get();
        if (tlsIdentity != null && tlsIdentity.token == callerToken) {
            uid = tlsIdentity.uid;
            pid = tlsIdentity.pid;
        }
        return (pid == MY_PID || this.mUgmInternal.checkUriPermission(new GrantUri(userId, uri, modeFlags), uid, modeFlags)) ? 0 : -1;
    }

    public void grantUriPermission(IApplicationThread caller, String targetPkg, Uri uri, int modeFlags, int userId) {
        enforceNotIsolatedCaller("grantUriPermission");
        GrantUri grantUri = new GrantUri(userId, uri, modeFlags);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord r = getRecordForAppLocked(caller);
                if (r == null) {
                    throw new SecurityException("Unable to find app for caller " + caller + " when granting permission to uri " + grantUri);
                }
                if (targetPkg == null) {
                    throw new IllegalArgumentException("null target");
                }
                Preconditions.checkFlagsArgument(modeFlags, 195);
                Intent intent = new Intent();
                intent.setData(uri);
                intent.setFlags(modeFlags);
                NeededUriGrants needed = this.mUgmInternal.checkGrantUriPermissionFromIntent(intent, r.uid, targetPkg, UserHandle.getUserId(r.uid));
                this.mUgmInternal.grantUriPermissionUncheckedFromIntent(needed, null);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void revokeUriPermission(IApplicationThread caller, String targetPackage, Uri uri, int modeFlags, int userId) {
        enforceNotIsolatedCaller("revokeUriPermission");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord r = getRecordForAppLocked(caller);
                if (r == null) {
                    throw new SecurityException("Unable to find app for caller " + caller + " when revoking permission to uri " + uri);
                }
                if (uri == null) {
                    Slog.w("ActivityManager", "revokeUriPermission: null uri");
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (!Intent.isAccessUriMode(modeFlags)) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                String authority = uri.getAuthority();
                ProviderInfo pi = getProviderInfoLocked(authority, userId, 786432);
                if (pi == null) {
                    Slog.w("ActivityManager", "No content provider found for permission revoke: " + uri.toSafeString());
                    resetPriorityAfterLockedSection();
                    return;
                }
                this.mUgmInternal.revokeUriPermission(targetPackage, r.uid, new GrantUri(userId, uri, modeFlags), modeFlags);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void showWaitingForDebugger(IApplicationThread who, boolean waiting) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord app = who != null ? getRecordForAppLocked(who) : null;
                if (app == null) {
                    return;
                }
                Message msg = Message.obtain();
                msg.what = 6;
                msg.obj = app;
                msg.arg1 = waiting ? 1 : 0;
                this.mUiHandler.sendMessage(msg);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void getMemoryInfo(ActivityManager.MemoryInfo outInfo) {
        this.mProcessList.getMemoryInfo(outInfo);
    }

    public List<ActivityManager.RunningTaskInfo> getTasks(int maxNum) {
        return this.mActivityTaskManager.getTasks(maxNum);
    }

    public void cancelTaskWindowTransition(int taskId) {
        this.mActivityTaskManager.cancelTaskWindowTransition(taskId);
    }

    public void setTaskResizeable(int taskId, int resizeableMode) {
        this.mActivityTaskManager.setTaskResizeable(taskId, resizeableMode);
    }

    public ActivityManager.TaskSnapshot getTaskSnapshot(int taskId, boolean isLowResolution) {
        return this.mActivityTaskManager.getTaskSnapshot(taskId, isLowResolution);
    }

    public void resizeTask(int taskId, Rect bounds, int resizeMode) {
        this.mActivityTaskManager.resizeTask(taskId, bounds, resizeMode);
    }

    public Rect getTaskBounds(int taskId) {
        return this.mActivityTaskManager.getTaskBounds(taskId);
    }

    public void removeStack(int stackId) {
        this.mActivityTaskManager.removeStack(stackId);
    }

    public boolean removeTask(int taskId) {
        return this.mActivityTaskManager.removeTask(taskId);
    }

    public void moveTaskToFront(IApplicationThread appThread, String callingPackage, int taskId, int flags, Bundle bOptions) {
        this.mActivityTaskManager.moveTaskToFront(appThread, callingPackage, taskId, flags, bOptions);
    }

    public boolean moveActivityTaskToBack(IBinder token, boolean nonRoot) {
        return this.mActivityTaskManager.moveActivityTaskToBack(token, nonRoot);
    }

    public void moveTaskToStack(int taskId, int stackId, boolean toTop) {
        this.mActivityTaskManager.moveTaskToStack(taskId, stackId, toTop);
    }

    public ParceledListSlice<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags, int userId) {
        return this.mActivityTaskManager.getRecentTasks(maxNum, flags, userId);
    }

    public boolean moveTopActivityToPinnedStack(int stackId, Rect bounds) {
        return this.mActivityTaskManager.moveTopActivityToPinnedStack(stackId, bounds);
    }

    public void positionTaskInStack(int taskId, int stackId, int position) {
        this.mActivityTaskManager.positionTaskInStack(taskId, stackId, position);
    }

    public List<ActivityManager.StackInfo> getAllStackInfos() {
        return this.mActivityTaskManager.getAllStackInfos();
    }

    public int getTaskForActivity(IBinder token, boolean onlyRoot) {
        return this.mActivityTaskManager.getTaskForActivity(token, onlyRoot);
    }

    public void updateDeviceOwner(String packageName) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != 1000) {
            throw new SecurityException("updateDeviceOwner called from non-system process");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mDeviceOwnerName = packageName;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void updateLockTaskPackages(int userId, String[] packages) {
        this.mActivityTaskManager.updateLockTaskPackages(userId, packages);
    }

    public boolean isInLockTaskMode() {
        return this.mActivityTaskManager.isInLockTaskMode();
    }

    public int getLockTaskModeState() {
        return this.mActivityTaskManager.getLockTaskModeState();
    }

    public void startSystemLockTaskMode(int taskId) throws RemoteException {
        this.mActivityTaskManager.startSystemLockTaskMode(taskId);
    }

    private final List<ProviderInfo> generateApplicationProvidersLocked(ProcessRecord app) {
        List<ProviderInfo> providers;
        try {
            providers = AppGlobals.getPackageManager().queryContentProviders(app.processName, app.uid, 268438528, (String) null).getList();
        } catch (RemoteException e) {
            providers = null;
        }
        int userId = app.userId;
        if (providers != null) {
            int N = providers.size();
            app.pubProviders.ensureCapacity(app.pubProviders.size() + N);
            int N2 = N;
            int i = 0;
            while (i < N2) {
                ProviderInfo cpi = providers.get(i);
                boolean singleton = isSingleton(cpi.processName, cpi.applicationInfo, cpi.name, cpi.flags);
                if (singleton && UserHandle.getUserId(app.uid) != 0) {
                    providers.remove(i);
                    N2--;
                    i--;
                } else {
                    ComponentName comp = new ComponentName(cpi.packageName, cpi.name);
                    ContentProviderRecord cpr = this.mProviderMap.getProviderByClass(comp, userId);
                    if (cpr == null) {
                        cpr = new ContentProviderRecord(this, cpi, app.info, comp, singleton);
                        this.mProviderMap.putProviderByClass(comp, cpr);
                    }
                    app.pubProviders.put(cpi.name, cpr);
                    if (!cpi.multiprocess || !PackageManagerService.PLATFORM_PACKAGE_NAME.equals(cpi.packageName)) {
                        app.addPackage(cpi.applicationInfo.packageName, cpi.applicationInfo.longVersionCode, this.mProcessStats);
                    }
                    notifyPackageUse(cpi.applicationInfo.packageName, 4);
                }
                i++;
            }
        }
        return providers;
    }

    public String checkContentProviderAccess(String authority, int userId) {
        ProcessRecord r;
        String strCheckContentProviderPermissionLocked;
        if (userId == -1) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "ActivityManager");
            userId = UserHandle.getCallingUserId();
        }
        ProviderInfo cpi = null;
        try {
            cpi = AppGlobals.getPackageManager().resolveContentProvider(authority, 790016, userId);
        } catch (RemoteException e) {
        }
        if (cpi == null) {
            return "Failed to find provider " + authority + " for user " + userId + "; expected to find a valid ContentProvider for this authority";
        }
        synchronized (this.mPidsSelfLocked) {
            r = this.mPidsSelfLocked.get(Binder.getCallingPid());
        }
        if (r == null) {
            return "Failed to find PID " + Binder.getCallingPid();
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                strCheckContentProviderPermissionLocked = checkContentProviderPermissionLocked(cpi, r, userId, true);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return strCheckContentProviderPermissionLocked;
    }

    private final String checkContentProviderPermissionLocked(ProviderInfo cpi, ProcessRecord r, int userId, boolean checkUser) {
        boolean checkedGrants;
        int userId2;
        String suffix;
        int callingPid = r != null ? r.pid : Binder.getCallingPid();
        int callingUid = r != null ? r.uid : Binder.getCallingUid();
        if (!checkUser) {
            checkedGrants = false;
            userId2 = userId;
        } else {
            int tmpTargetUserId = this.mUserController.unsafeConvertIncomingUser(userId);
            if (tmpTargetUserId == UserHandle.getUserId(callingUid)) {
                checkedGrants = false;
            } else {
                if (this.mUgmInternal.checkAuthorityGrants(callingUid, cpi, tmpTargetUserId, checkUser)) {
                    return null;
                }
                checkedGrants = true;
            }
            userId2 = this.mUserController.handleIncomingUser(callingPid, callingUid, userId, false, 0, "checkContentProviderPermissionLocked " + cpi.authority, null);
            if (userId2 != tmpTargetUserId) {
                checkedGrants = false;
            }
        }
        if (checkComponentPermission(cpi.readPermission, callingPid, callingUid, cpi.applicationInfo.uid, cpi.exported) == 0 || checkComponentPermission(cpi.writePermission, callingPid, callingUid, cpi.applicationInfo.uid, cpi.exported) == 0) {
            return null;
        }
        PathPermission[] pps = cpi.pathPermissions;
        if (pps != null) {
            int i = pps.length;
            while (i > 0) {
                i--;
                PathPermission pp = pps[i];
                String pprperm = pp.getReadPermission();
                if (pprperm != null && checkComponentPermission(pprperm, callingPid, callingUid, cpi.applicationInfo.uid, cpi.exported) == 0) {
                    return null;
                }
                String ppwperm = pp.getWritePermission();
                if (ppwperm != null && checkComponentPermission(ppwperm, callingPid, callingUid, cpi.applicationInfo.uid, cpi.exported) == 0) {
                    return null;
                }
            }
        }
        if (!checkedGrants && this.mUgmInternal.checkAuthorityGrants(callingUid, cpi, userId2, checkUser)) {
            return null;
        }
        if (!cpi.exported) {
            suffix = " that is not exported from UID " + cpi.applicationInfo.uid;
        } else {
            String suffix2 = cpi.readPermission;
            if ("android.permission.MANAGE_DOCUMENTS".equals(suffix2)) {
                suffix = " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs";
            } else {
                suffix = " requires " + cpi.readPermission + " or " + cpi.writePermission;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Permission Denial: opening provider ");
        sb.append(cpi.name);
        sb.append(" from ");
        sb.append(r != null ? r : "(null)");
        sb.append(" (pid=");
        sb.append(callingPid);
        sb.append(", uid=");
        sb.append(callingUid);
        sb.append(")");
        sb.append(suffix);
        String msg = sb.toString();
        Slog.w("ActivityManager", msg);
        return msg;
    }

    ContentProviderConnection incProviderCountLocked(ProcessRecord r, ContentProviderRecord cpr, IBinder externalProcessToken, int callingUid, String callingPackage, String callingTag, boolean stable) {
        if (r != null) {
            for (int i = 0; i < r.conProviders.size(); i++) {
                ContentProviderConnection conn = r.conProviders.get(i);
                if (conn.provider == cpr) {
                    if (stable) {
                        conn.stableCount++;
                        conn.numStableIncs++;
                    } else {
                        conn.unstableCount++;
                        conn.numUnstableIncs++;
                    }
                    return conn;
                }
            }
            ContentProviderConnection conn2 = new ContentProviderConnection(cpr, r, callingPackage);
            conn2.startAssociationIfNeeded();
            if (stable) {
                conn2.stableCount = 1;
                conn2.numStableIncs = 1;
            } else {
                conn2.unstableCount = 1;
                conn2.numUnstableIncs = 1;
            }
            cpr.connections.add(conn2);
            r.conProviders.add(conn2);
            startAssociationLocked(r.uid, r.processName, r.getCurProcState(), cpr.uid, cpr.appInfo.longVersionCode, cpr.name, cpr.info.processName);
            return conn2;
        }
        cpr.addExternalProcessHandleLocked(externalProcessToken, callingUid, callingTag);
        return null;
    }

    boolean decProviderCountLocked(ContentProviderConnection conn, ContentProviderRecord cpr, IBinder externalProcessToken, boolean stable) {
        if (conn != null) {
            ContentProviderRecord cpr2 = conn.provider;
            if (stable) {
                conn.stableCount--;
            } else {
                conn.unstableCount--;
            }
            if (conn.stableCount != 0 || conn.unstableCount != 0) {
                return false;
            }
            conn.stopAssociation();
            cpr2.connections.remove(conn);
            conn.client.conProviders.remove(conn);
            if (conn.client.setProcState < 15 && cpr2.proc != null) {
                cpr2.proc.lastProviderTime = SystemClock.uptimeMillis();
            }
            stopAssociationLocked(conn.client.uid, conn.client.processName, cpr2.uid, cpr2.appInfo.longVersionCode, cpr2.name, cpr2.info.processName);
            return true;
        }
        cpr.removeExternalProcessHandleLocked(externalProcessToken);
        return false;
    }

    void checkTime(long startTime, String where) {
        long now = SystemClock.uptimeMillis();
        if (now - startTime > 50) {
            Slog.w("ActivityManager", "Slow operation: " + (now - startTime) + "ms so far, now at " + where);
        }
    }

    boolean isProcessAliveLocked(ProcessRecord proc) {
        if (proc.pid <= 0) {
            return false;
        }
        if (proc.procStatFile == null) {
            proc.procStatFile = "/proc/" + proc.pid + "/stat";
        }
        this.mProcessStateStatsLongs[0] = 0;
        if (!Process.readProcFile(proc.procStatFile, PROCESS_STATE_STATS_FORMAT, null, this.mProcessStateStatsLongs, null)) {
            return false;
        }
        long state = this.mProcessStateStatsLongs[0];
        return (state == 90 || state == 88 || state == 120 || state == 75 || Process.getUidForPid(proc.pid) != proc.uid) ? false : true;
    }

    private String checkContentProviderAssociation(ProcessRecord callingApp, int callingUid, ProviderInfo cpi) {
        if (callingApp == null) {
            if (validateAssociationAllowedLocked(cpi.packageName, cpi.applicationInfo.uid, null, callingUid)) {
                return null;
            }
            return "<null>";
        }
        for (int i = callingApp.pkgList.size() - 1; i >= 0; i--) {
            if (!validateAssociationAllowedLocked(callingApp.pkgList.keyAt(i), callingApp.uid, cpi.packageName, cpi.applicationInfo.uid)) {
                return cpi.packageName;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01bc A[Catch: all -> 0x037f, TryCatch #51 {all -> 0x037f, blocks: (B:99:0x01b5, B:101:0x01bc, B:103:0x01c8), top: B:579:0x01b5 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x01c8 A[Catch: all -> 0x037f, TRY_LEAVE, TryCatch #51 {all -> 0x037f, blocks: (B:99:0x01b5, B:101:0x01bc, B:103:0x01c8), top: B:579:0x01b5 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:115:0x0202 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:122:0x0220  */
    /* JADX WARN: Code duplicated, block: B:127:0x023e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0257 A[Catch: all -> 0x0267, TRY_ENTER, TryCatch #43 {all -> 0x0267, blocks: (B:120:0x020e, B:130:0x0257, B:132:0x025d, B:140:0x027f), top: B:571:0x020e }] */
    /* JADX WARN: Code duplicated, block: B:140:0x027f A[Catch: all -> 0x0267, TRY_ENTER, TRY_LEAVE, TryCatch #43 {all -> 0x0267, blocks: (B:120:0x020e, B:130:0x0257, B:132:0x025d, B:140:0x027f), top: B:571:0x020e }] */
    /* JADX WARN: Code duplicated, block: B:150:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:155:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:179:0x0337  */
    /* JADX WARN: Code duplicated, block: B:182:0x0345 A[Catch: all -> 0x0372, TryCatch #46 {all -> 0x0372, blocks: (B:180:0x033f, B:181:0x0344, B:182:0x0345, B:183:0x0371), top: B:575:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:190:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:198:0x03d6 A[Catch: all -> 0x03c9, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #27 {all -> 0x03c9, blocks: (B:192:0x03b3, B:198:0x03d6, B:206:0x03f4, B:223:0x0435, B:226:0x0441, B:227:0x0448, B:230:0x044d, B:232:0x0455, B:235:0x0461, B:236:0x047e, B:239:0x0488, B:240:0x04c3, B:251:0x04f6, B:263:0x0535, B:264:0x0538, B:205:0x03f2), top: B:553:0x03b3 }] */
    /* JADX WARN: Code duplicated, block: B:203:0x03ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:204:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:205:0x03f2 A[Catch: all -> 0x03c9, TRY_ENTER, TryCatch #27 {all -> 0x03c9, blocks: (B:192:0x03b3, B:198:0x03d6, B:206:0x03f4, B:223:0x0435, B:226:0x0441, B:227:0x0448, B:230:0x044d, B:232:0x0455, B:235:0x0461, B:236:0x047e, B:239:0x0488, B:240:0x04c3, B:251:0x04f6, B:263:0x0535, B:264:0x0538, B:205:0x03f2), top: B:553:0x03b3 }] */
    /* JADX WARN: Code duplicated, block: B:208:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:209:0x0400  */
    /* JADX WARN: Code duplicated, block: B:212:0x0405  */
    /* JADX WARN: Code duplicated, block: B:215:0x041b A[Catch: all -> 0x093e, TryCatch #21 {all -> 0x093e, blocks: (B:213:0x0407, B:215:0x041b, B:219:0x0425, B:221:0x042c, B:228:0x0449, B:237:0x047f, B:243:0x04c9), top: B:545:0x0407 }] */
    /* JADX WARN: Code duplicated, block: B:217:0x0422  */
    /* JADX WARN: Code duplicated, block: B:218:0x0424  */
    /* JADX WARN: Code duplicated, block: B:221:0x042c A[Catch: all -> 0x093e, TRY_LEAVE, TryCatch #21 {all -> 0x093e, blocks: (B:213:0x0407, B:215:0x041b, B:219:0x0425, B:221:0x042c, B:228:0x0449, B:237:0x047f, B:243:0x04c9), top: B:545:0x0407 }] */
    /* JADX WARN: Code duplicated, block: B:239:0x0488 A[Catch: all -> 0x03c9, TRY_ENTER, TryCatch #27 {all -> 0x03c9, blocks: (B:192:0x03b3, B:198:0x03d6, B:206:0x03f4, B:223:0x0435, B:226:0x0441, B:227:0x0448, B:230:0x044d, B:232:0x0455, B:235:0x0461, B:236:0x047e, B:239:0x0488, B:240:0x04c3, B:251:0x04f6, B:263:0x0535, B:264:0x0538, B:205:0x03f2), top: B:553:0x03b3 }] */
    /* JADX WARN: Code duplicated, block: B:243:0x04c9 A[Catch: all -> 0x093e, TRY_ENTER, TRY_LEAVE, TryCatch #21 {all -> 0x093e, blocks: (B:213:0x0407, B:215:0x041b, B:219:0x0425, B:221:0x042c, B:228:0x0449, B:237:0x047f, B:243:0x04c9), top: B:545:0x0407 }] */
    /* JADX WARN: Code duplicated, block: B:245:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:246:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:251:0x04f6 A[Catch: all -> 0x03c9, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #27 {all -> 0x03c9, blocks: (B:192:0x03b3, B:198:0x03d6, B:206:0x03f4, B:223:0x0435, B:226:0x0441, B:227:0x0448, B:230:0x044d, B:232:0x0455, B:235:0x0461, B:236:0x047e, B:239:0x0488, B:240:0x04c3, B:251:0x04f6, B:263:0x0535, B:264:0x0538, B:205:0x03f2), top: B:553:0x03b3 }] */
    /* JADX WARN: Code duplicated, block: B:275:0x0581  */
    /* JADX WARN: Code duplicated, block: B:308:0x064a  */
    /* JADX WARN: Code duplicated, block: B:318:0x067c A[Catch: all -> 0x0667, TRY_ENTER, TryCatch #42 {all -> 0x0667, blocks: (B:299:0x0620, B:300:0x0624, B:303:0x0634, B:318:0x067c, B:320:0x0682, B:321:0x0686, B:327:0x0696, B:280:0x05a8, B:312:0x065e), top: B:570:0x04ea }] */
    /* JADX WARN: Code duplicated, block: B:327:0x0696 A[Catch: all -> 0x0667, TRY_ENTER, TRY_LEAVE, TryCatch #42 {all -> 0x0667, blocks: (B:299:0x0620, B:300:0x0624, B:303:0x0634, B:318:0x067c, B:320:0x0682, B:321:0x0686, B:327:0x0696, B:280:0x05a8, B:312:0x065e), top: B:570:0x04ea }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:351:0x0712 A[Catch: all -> 0x0742, TryCatch #24 {all -> 0x0742, blocks: (B:349:0x070e, B:351:0x0712, B:353:0x0716, B:355:0x0720, B:356:0x072c), top: B:550:0x070e }] */
    /* JADX WARN: Code duplicated, block: B:362:0x0752 A[Catch: all -> 0x0834, TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x0834, blocks: (B:346:0x0700, B:362:0x0752), top: B:531:0x0700 }] */
    /* JADX WARN: Code duplicated, block: B:372:0x07b9 A[Catch: all -> 0x080a, TRY_LEAVE, TryCatch #58 {all -> 0x080a, blocks: (B:370:0x07b4, B:372:0x07b9), top: B:587:0x07b4 }] */
    /* JADX WARN: Code duplicated, block: B:379:0x07f8  */
    /* JADX WARN: Code duplicated, block: B:400:0x086a  */
    /* JADX WARN: Code duplicated, block: B:403:0x087f A[Catch: all -> 0x0887, TRY_ENTER, TRY_LEAVE, TryCatch #57 {all -> 0x0887, blocks: (B:381:0x0801, B:403:0x087f, B:375:0x07ef, B:376:0x07f2, B:396:0x0852, B:397:0x0856), top: B:586:0x06a2 }] */
    /* JADX WARN: Code duplicated, block: B:407:0x0896  */
    /* JADX WARN: Code duplicated, block: B:412:0x08b5  */
    /* JADX WARN: Code duplicated, block: B:422:0x08f7  */
    /* JADX WARN: Code duplicated, block: B:425:0x0908 A[Catch: all -> 0x092e, TryCatch #9 {all -> 0x092e, blocks: (B:410:0x08af, B:423:0x0900, B:424:0x0907, B:425:0x0908, B:426:0x092d), top: B:526:0x0419 }] */
    /* JADX WARN: Code duplicated, block: B:433:0x0960  */
    /* JADX WARN: Code duplicated, block: B:448:0x09db  */
    /* JADX WARN: Code duplicated, block: B:451:0x09e9  */
    /* JADX WARN: Code duplicated, block: B:458:0x09f8 A[Catch: all -> 0x0a10, EDGE_INSN: B:458:0x09f8->B:476:0x0a18 BREAK  A[LOOP:0: B:598:0x098a->B:638:0x098a], TRY_ENTER, TryCatch #63 {all -> 0x0a10, blocks: (B:442:0x098e, B:444:0x0992, B:445:0x09d8, B:458:0x09f8, B:472:0x0a0c, B:466:0x0a04, B:468:0x0a07, B:449:0x09dd, B:452:0x09ea, B:454:0x09ee), top: B:597:0x098e, inners: #53 }] */
    /* JADX WARN: Code duplicated, block: B:459:0x09fb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:478:0x0a1b  */
    /* JADX WARN: Code duplicated, block: B:480:0x0a22  */
    /* JADX WARN: Code duplicated, block: B:483:0x0a2e A[Catch: all -> 0x0a36, TryCatch #15 {all -> 0x0a36, blocks: (B:481:0x0a23, B:483:0x0a2e, B:484:0x0a31), top: B:533:0x0a23 }] */
    /* JADX WARN: Code duplicated, block: B:493:0x0a8b  */
    /* JADX WARN: Code duplicated, block: B:527:0x01f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:0x0a23 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:0x02ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:541:0x04ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:550:0x070e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x03b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x03dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x06a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:567:0x0139 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x012c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x098e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:0x098a A[EXC_TOP_SPLITTER, LOOP:0: B:598:0x098a->B:638:0x098a, LOOP_START, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x04fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:0x051a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0120  */
    /* JADX WARN: Code duplicated, block: B:631:0x09f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:632:0x09fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x0992 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:0x09ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:639:0x098a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0132 A[Catch: all -> 0x018b, TRY_LEAVE, TryCatch #60 {all -> 0x018b, blocks: (B:68:0x012c, B:70:0x0132, B:83:0x0164), top: B:591:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0145 A[Catch: all -> 0x015b, TryCatch #37 {all -> 0x015b, blocks: (B:73:0x0139, B:75:0x0145, B:76:0x0150, B:79:0x0155, B:80:0x015a), top: B:567:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0155 A[Catch: all -> 0x015b, TRY_ENTER, TryCatch #37 {all -> 0x015b, blocks: (B:73:0x0139, B:75:0x0145, B:76:0x0150, B:79:0x0155, B:80:0x015a), top: B:567:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0164 A[Catch: all -> 0x018b, TRY_ENTER, TRY_LEAVE, TryCatch #60 {all -> 0x018b, blocks: (B:68:0x012c, B:70:0x0132, B:83:0x0164), top: B:591:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0196  */
    /* JADX WARN: Code duplicated, block: B:92:0x01a3 A[Catch: all -> 0x01a9, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x01a9, blocks: (B:85:0x016d, B:86:0x018a, B:90:0x0198, B:92:0x01a3), top: B:517:0x012a }] */
    /* JADX WARN: Instruction removed from duplicated block: B:140:0x027f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:182:0x0345, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:239:0x0488, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:425:0x0908, please report this as an issue */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x088c: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('userId' int)]), block:B:406:0x0888 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0934: MOVE (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('userId' int)]), block:B:428:0x092f */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x01b0: MOVE (r9 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY] A[D('conn' com.android.server.am.ContentProviderConnection)]), block:B:97:0x01aa */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0938: MOVE (r2 I:??[OBJECT, ARRAY]) = (r22 I:??[OBJECT, ARRAY] A[D('cpi' android.content.pm.ProviderInfo)]), block:B:428:0x092f */
    /* JADX WARN: Not initialized variable reg: 29, insn: 0x0671: MOVE (r2 I:??[OBJECT, ARRAY]) = (r29 I:??[OBJECT, ARRAY] A[D('cpi' android.content.pm.ProviderInfo)]), block:B:315:0x0668 */
    /* JADX WARN: Not initialized variable reg: 30, insn: 0x0890: MOVE (r3 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r30 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('providerRunning' boolean)]), block:B:406:0x0888 */
    /* JADX WARN: Not initialized variable reg: 30, insn: 0x093a: MOVE (r3 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r30 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('providerRunning' boolean)]), block:B:428:0x092f */
    private ContentProviderHolder getContentProviderImpl(IApplicationThread caller, String name, IBinder token, int callingUid, String callingPackage, String callingTag, boolean stable, int userId) throws Throwable {
        Throwable th;
        ProcessRecord r;
        boolean providerRunning;
        int userId2;
        boolean checkCrossUser;
        ProcessRecord dyingProc;
        ProviderInfo cpi;
        ProviderInfo cpi2;
        String msg;
        String msg2;
        ContentProviderConnection conn;
        String msg3;
        String msg4;
        long origId;
        ProviderInfo cpi3;
        Throwable th2;
        ContentProviderConnection conn2;
        ContentProviderRecord cpr;
        boolean success;
        boolean success2;
        boolean providerRunning2;
        ProcessRecord dyingProc2;
        ProviderInfo cpi4;
        boolean lastRef;
        ProcessRecord dyingProc3;
        boolean z;
        boolean singleton;
        String msg5;
        boolean z2;
        String msg6;
        ComponentName comp;
        ContentProviderRecord cpr2;
        boolean z3;
        boolean firstClass;
        long ident;
        Throwable th3;
        ContentProviderRecord cpr3;
        ProviderInfo cpi5;
        ComponentName comp2;
        ContentProviderConnection contentProviderConnection;
        boolean providerRunning3;
        ProcessRecord dyingProc4;
        ContentProviderRecord cpr4;
        ContentProviderRecord cpr5;
        ApplicationInfo ai;
        int N;
        int i;
        long origId2;
        Throwable th4;
        ProviderInfo cpi6;
        ProcessRecord proc;
        boolean providerRunning4;
        boolean providerRunning5;
        long startTime;
        ProviderInfo cpi7;
        ComponentName comp3;
        ContentProviderConnection conn3;
        long startTime2;
        ContentProviderConnection conn4;
        int i2;
        long timeout;
        boolean timedOut;
        Throwable th5;
        String callerName;
        ProcessRecord record;
        ProviderInfo cpi8 = null;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                long startTime3 = SystemClock.uptimeMillis();
                if (caller != null) {
                    try {
                        ProcessRecord r2 = getRecordForAppLocked(caller);
                        if (r2 == null) {
                            throw new SecurityException("Unable to find app for caller " + caller + " (pid=" + Binder.getCallingPid() + ") when getting content provider " + name);
                        }
                        r = r2;
                    } catch (Throwable th6) {
                        th = th6;
                    }
                    while (true) {
                        try {
                            resetPriorityAfterLockedSection();
                            throw th;
                        } catch (Throwable th7) {
                            th = th7;
                        }
                    }
                } else {
                    r = null;
                }
                checkTime(startTime3, "getContentProviderImpl: getProviderByName");
                ContentProviderRecord cpr6 = this.mProviderMap.getProviderByName(name, userId);
                if (cpr6 != null || userId == 0) {
                    providerRunning = false;
                    userId2 = userId;
                    checkCrossUser = true;
                } else {
                    try {
                        cpr6 = this.mProviderMap.getProviderByName(name, 0);
                        if (cpr6 != null) {
                            cpi8 = cpr6.info;
                            providerRunning = false;
                            try {
                                if (isSingleton(cpi8.processName, cpi8.applicationInfo, cpi8.name, cpi8.flags)) {
                                    if (isValidSingletonCall(r == null ? callingUid : r.uid, cpi8.applicationInfo.uid)) {
                                        userId2 = 0;
                                        checkCrossUser = false;
                                    } else {
                                        cpr6 = null;
                                        cpi8 = null;
                                        userId2 = userId;
                                        checkCrossUser = true;
                                    }
                                } else {
                                    cpr6 = null;
                                    cpi8 = null;
                                    userId2 = userId;
                                    checkCrossUser = true;
                                }
                            } catch (Throwable th8) {
                                th = th8;
                            }
                        } else {
                            providerRunning = false;
                            userId2 = userId;
                            checkCrossUser = true;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                    }
                }
                if (cpr6 == null) {
                    dyingProc = null;
                    cpi = cpi8;
                    if (providerRunning) {
                        cpi2 = cpr6.info;
                        if (r == null) {
                            conn = null;
                            if (AppGlobals.getPackageManager().resolveContentProvider(name, 0, userId2) == null) {
                                resetPriorityAfterLockedSection();
                                return null;
                            }
                            msg3 = checkContentProviderAssociation(r, callingUid, cpi2);
                            if (msg3 == null) {
                                throw new SecurityException("Content provider lookup " + cpr6.name.flattenToShortString() + " failed: association not allowed with package " + msg3);
                            }
                            checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                            msg4 = checkContentProviderPermissionLocked(cpi2, r, userId2, checkCrossUser);
                            if (msg4 == null) {
                                throw new SecurityException(msg4);
                            }
                            checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                            origId = Binder.clearCallingIdentity();
                            checkTime(startTime3, "getContentProviderImpl: incProviderCountLocked");
                            cpi3 = cpi2;
                            cpr = cpr6;
                            conn2 = incProviderCountLocked(r, cpr6, token, callingUid, callingPackage, callingTag, stable);
                            if (conn2 != null) {
                                if (conn2.stableCount + conn2.unstableCount == 1) {
                                    cpr6 = cpr;
                                    if (cpr6.proc != null) {
                                        startTime3 = startTime3;
                                    } else {
                                        startTime3 = startTime3;
                                    }
                                } else {
                                    cpr6 = cpr;
                                    startTime3 = startTime3;
                                }
                                checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                int verifiedAdj = cpr6.proc.verifiedAdj;
                                success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                if (success) {
                                    success = false;
                                }
                                maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                if (success) {
                                    conn = conn2;
                                    cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                    success2 = providerRunning;
                                } else {
                                    Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                    lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                    if (!lastRef) {
                                        Binder.restoreCallingIdentity(origId);
                                        resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    providerRunning = false;
                                    conn = null;
                                    ProcessRecord dyingProc5 = cpr6.proc;
                                    dyingProc = dyingProc5;
                                    success2 = false;
                                }
                                Binder.restoreCallingIdentity(origId);
                                providerRunning2 = success2;
                                dyingProc2 = dyingProc;
                                cpi4 = cpi3;
                            } else {
                                cpr6 = cpr;
                                startTime3 = startTime3;
                                checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                int verifiedAdj2 = cpr6.proc.verifiedAdj;
                                success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                if (success) {
                                    success = false;
                                }
                                maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                if (success) {
                                    Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                    lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                    if (!lastRef) {
                                        Binder.restoreCallingIdentity(origId);
                                        resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    providerRunning = false;
                                    conn = null;
                                    ProcessRecord dyingProc6 = cpr6.proc;
                                    dyingProc = dyingProc6;
                                    success2 = false;
                                } else {
                                    conn = conn2;
                                    cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                    success2 = providerRunning;
                                }
                                Binder.restoreCallingIdentity(origId);
                                providerRunning2 = success2;
                                dyingProc2 = dyingProc;
                                cpi4 = cpi3;
                            }
                        } else {
                            if (cpr6.canRunHere(r)) {
                                msg = checkContentProviderAssociation(r, callingUid, cpi2);
                                if (msg == null) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Content provider lookup ");
                                    sb.append(cpr6.name.flattenToShortString());
                                    sb.append(" failed: association not allowed with package ");
                                    sb.append(msg);
                                    throw new SecurityException(sb.toString());
                                }
                                checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                                msg2 = checkContentProviderPermissionLocked(cpi2, r, userId2, checkCrossUser);
                                if (msg2 == null) {
                                    throw new SecurityException(msg2);
                                }
                                checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                                ContentProviderHolder holder = cpr6.newHolder(null);
                                holder.provider = null;
                                resetPriorityAfterLockedSection();
                                return holder;
                            }
                            conn = null;
                            if (AppGlobals.getPackageManager().resolveContentProvider(name, 0, userId2) == null) {
                                resetPriorityAfterLockedSection();
                                return null;
                            }
                            msg3 = checkContentProviderAssociation(r, callingUid, cpi2);
                            if (msg3 == null) {
                                throw new SecurityException("Content provider lookup " + cpr6.name.flattenToShortString() + " failed: association not allowed with package " + msg3);
                            }
                            checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                            msg4 = checkContentProviderPermissionLocked(cpi2, r, userId2, checkCrossUser);
                            if (msg4 == null) {
                                throw new SecurityException(msg4);
                            }
                            checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                            origId = Binder.clearCallingIdentity();
                            checkTime(startTime3, "getContentProviderImpl: incProviderCountLocked");
                            cpi3 = cpi2;
                            cpr = cpr6;
                            conn2 = incProviderCountLocked(r, cpr6, token, callingUid, callingPackage, callingTag, stable);
                            if (conn2 != null) {
                                if (conn2.stableCount + conn2.unstableCount == 1) {
                                    cpr6 = cpr;
                                    if (cpr6.proc != null) {
                                        startTime3 = startTime3;
                                    } else {
                                        startTime3 = startTime3;
                                    }
                                } else {
                                    cpr6 = cpr;
                                    startTime3 = startTime3;
                                }
                                checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                int verifiedAdj3 = cpr6.proc.verifiedAdj;
                                success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                if (success) {
                                    success = false;
                                }
                                maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                if (success) {
                                    Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                    lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                    if (!lastRef) {
                                        Binder.restoreCallingIdentity(origId);
                                        resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    providerRunning = false;
                                    conn = null;
                                    ProcessRecord dyingProc7 = cpr6.proc;
                                    dyingProc = dyingProc7;
                                    success2 = false;
                                } else {
                                    conn = conn2;
                                    cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                    success2 = providerRunning;
                                }
                                Binder.restoreCallingIdentity(origId);
                                providerRunning2 = success2;
                                dyingProc2 = dyingProc;
                                cpi4 = cpi3;
                            } else {
                                cpr6 = cpr;
                                startTime3 = startTime3;
                                checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                int verifiedAdj4 = cpr6.proc.verifiedAdj;
                                success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                if (success) {
                                    success = false;
                                }
                                maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                if (success) {
                                    Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                    lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                    if (!lastRef) {
                                        Binder.restoreCallingIdentity(origId);
                                        resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    providerRunning = false;
                                    conn = null;
                                    ProcessRecord dyingProc8 = cpr6.proc;
                                    dyingProc = dyingProc8;
                                    success2 = false;
                                } else {
                                    conn = conn2;
                                    cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                    success2 = providerRunning;
                                }
                                Binder.restoreCallingIdentity(origId);
                                providerRunning2 = success2;
                                dyingProc2 = dyingProc;
                                cpi4 = cpi3;
                            }
                        }
                    } else {
                        conn = null;
                        providerRunning2 = providerRunning;
                        dyingProc2 = dyingProc;
                        cpi4 = cpi;
                    }
                    if (providerRunning2) {
                        startTime2 = startTime3;
                        providerRunning4 = providerRunning2;
                        providerRunning5 = false;
                        conn4 = conn;
                    } else {
                        checkTime(startTime3, "getContentProviderImpl: before resolveContentProvider");
                        cpi4 = AppGlobals.getPackageManager().resolveContentProvider(name, 3072, userId2);
                        checkTime(startTime3, "getContentProviderImpl: after resolveContentProvider");
                        if (cpi4 == null) {
                            resetPriorityAfterLockedSection();
                            return null;
                        }
                        dyingProc3 = dyingProc2;
                        if (isSingleton(cpi4.processName, cpi4.applicationInfo, cpi4.name, cpi4.flags)) {
                            if (r == null) {
                                i2 = callingUid;
                            } else {
                                i2 = r.uid;
                            }
                            if (isValidSingletonCall(i2, cpi4.applicationInfo.uid)) {
                                z = true;
                            } else {
                                z = false;
                            }
                        } else {
                            z = false;
                        }
                        singleton = z;
                        if (singleton) {
                            userId2 = 0;
                        }
                        cpi4.applicationInfo = getAppInfoForUser(cpi4.applicationInfo, userId2);
                        checkTime(startTime3, "getContentProviderImpl: got app info for user");
                        msg5 = checkContentProviderAssociation(r, callingUid, cpi4);
                        if (msg5 == null) {
                            throw new SecurityException("Content provider lookup " + name + " failed: association not allowed with package " + msg5);
                        }
                        checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                        if (singleton) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        msg6 = checkContentProviderPermissionLocked(cpi4, r, userId2, z2);
                        if (msg6 == null) {
                            throw new SecurityException(msg6);
                        }
                        checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                        if (!this.mProcessesReady) {
                            throw new IllegalArgumentException("Attempt to launch content provider before system ready");
                        }
                        if (!this.mSystemProvidersInstalled) {
                            throw new IllegalStateException("Cannot access system provider: '" + cpi4.authority + "' before system providers are installed!");
                        }
                        if (!this.mUserController.isUserRunning(userId2, 0)) {
                            Slog.w("ActivityManager", "Unable to launch app " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + ": user " + userId2 + " is stopped");
                            resetPriorityAfterLockedSection();
                            return null;
                        }
                        comp = new ComponentName(cpi4.packageName, cpi4.name);
                        checkTime(startTime3, "getContentProviderImpl: before getProviderByClass");
                        cpr2 = this.mProviderMap.getProviderByClass(comp, userId2);
                        checkTime(startTime3, "getContentProviderImpl: after getProviderByClass");
                        if (cpr2 == null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        firstClass = z3;
                        if (firstClass) {
                            ident = Binder.clearCallingIdentity();
                            if (!requestTargetProviderPermissionsReviewIfNeededLocked(cpi4, r, userId2)) {
                                resetPriorityAfterLockedSection();
                                return null;
                            }
                            checkTime(startTime3, "getContentProviderImpl: before getApplicationInfo");
                            comp2 = comp;
                            ai = AppGlobals.getPackageManager().getApplicationInfo(cpi4.applicationInfo.packageName, 1024, userId2);
                            checkTime(startTime3, "getContentProviderImpl: after getApplicationInfo");
                            if (ai == null) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("No package info for content provider ");
                                sb2.append(cpi4.name);
                                Slog.w("ActivityManager", sb2.toString());
                                Binder.restoreCallingIdentity(ident);
                                resetPriorityAfterLockedSection();
                                return null;
                            }
                            ProviderInfo cpi9 = cpi4;
                            cpi5 = cpi9;
                            providerRunning3 = providerRunning2;
                            dyingProc4 = dyingProc3;
                            cpr3 = cpr2;
                            contentProviderConnection = null;
                            cpr4 = new ContentProviderRecord(this, cpi9, getAppInfoForUser(ai, userId2), comp2, singleton);
                            Binder.restoreCallingIdentity(ident);
                            cpr5 = cpr4;
                        } else {
                            cpr5 = cpr2;
                            cpi5 = cpi4;
                            comp2 = comp;
                            contentProviderConnection = null;
                            providerRunning3 = providerRunning2;
                            dyingProc4 = dyingProc3;
                            if (dyingProc4 == cpr5.proc) {
                                firstClass = true;
                                cpr5 = new ContentProviderRecord(cpr5);
                            }
                        }
                        checkTime(startTime3, "getContentProviderImpl: now have ContentProviderRecord");
                        if (r == null) {
                        }
                        N = this.mLaunchingProviders.size();
                        i = 0;
                        while (i < N) {
                            i++;
                        }
                        if (i >= N) {
                            origId2 = Binder.clearCallingIdentity();
                            checkTime(startTime3, "getContentProviderImpl: before set stopped state");
                            AppGlobals.getPackageManager().setPackageStoppedState(cpr5.appInfo.packageName, false, userId2);
                            checkTime(startTime3, "getContentProviderImpl: after set stopped state");
                            checkTime(startTime3, "getContentProviderImpl: looking for process record");
                            cpi6 = cpi5;
                            proc = getProcessRecordLocked(cpi6.processName, cpr5.appInfo.uid, false);
                            if (proc == null) {
                                checkTime(startTime3, "getContentProviderImpl: before start process");
                                long startTime4 = startTime3;
                                providerRunning4 = providerRunning3;
                                providerRunning5 = false;
                                proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                startTime = startTime4;
                                checkTime(startTime, "getContentProviderImpl: after start process");
                                if (proc == null) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("Unable to launch app ");
                                    sb3.append(cpi6.applicationInfo.packageName);
                                    sb3.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                    sb3.append(cpi6.applicationInfo.uid);
                                    sb3.append(" for provider ");
                                    sb3.append(name);
                                    sb3.append(": process is bad");
                                    Slog.w("ActivityManager", sb3.toString());
                                    Binder.restoreCallingIdentity(origId2);
                                    resetPriorityAfterLockedSection();
                                    return null;
                                }
                                cpi7 = cpi6;
                                cpr5.launchingApp = proc;
                                this.mLaunchingProviders.add(cpr5);
                                Binder.restoreCallingIdentity(origId2);
                            } else if (proc.thread != null) {
                                checkTime(startTime3, "getContentProviderImpl: before start process");
                                long startTime5 = startTime3;
                                providerRunning4 = providerRunning3;
                                providerRunning5 = false;
                                proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                startTime = startTime5;
                                checkTime(startTime, "getContentProviderImpl: after start process");
                                if (proc == null) {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("Unable to launch app ");
                                    sb4.append(cpi6.applicationInfo.packageName);
                                    sb4.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                    sb4.append(cpi6.applicationInfo.uid);
                                    sb4.append(" for provider ");
                                    sb4.append(name);
                                    sb4.append(": process is bad");
                                    Slog.w("ActivityManager", sb4.toString());
                                    Binder.restoreCallingIdentity(origId2);
                                    resetPriorityAfterLockedSection();
                                    return null;
                                }
                                cpi7 = cpi6;
                                cpr5.launchingApp = proc;
                                this.mLaunchingProviders.add(cpr5);
                                Binder.restoreCallingIdentity(origId2);
                            } else {
                                checkTime(startTime3, "getContentProviderImpl: before start process");
                                long startTime6 = startTime3;
                                providerRunning4 = providerRunning3;
                                providerRunning5 = false;
                                proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                startTime = startTime6;
                                checkTime(startTime, "getContentProviderImpl: after start process");
                                if (proc == null) {
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("Unable to launch app ");
                                    sb5.append(cpi6.applicationInfo.packageName);
                                    sb5.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                    sb5.append(cpi6.applicationInfo.uid);
                                    sb5.append(" for provider ");
                                    sb5.append(name);
                                    sb5.append(": process is bad");
                                    Slog.w("ActivityManager", sb5.toString());
                                    Binder.restoreCallingIdentity(origId2);
                                    resetPriorityAfterLockedSection();
                                    return null;
                                }
                                cpi7 = cpi6;
                                cpr5.launchingApp = proc;
                                this.mLaunchingProviders.add(cpr5);
                                Binder.restoreCallingIdentity(origId2);
                            }
                        } else {
                            userId2 = userId2;
                            providerRunning4 = providerRunning3;
                            providerRunning5 = false;
                            startTime = startTime3;
                            cpi7 = cpi5;
                        }
                        checkTime(startTime, "getContentProviderImpl: updating data structures");
                        if (firstClass) {
                            comp3 = comp2;
                            this.mProviderMap.putProviderByClass(comp3, cpr5);
                        } else {
                            comp3 = comp2;
                        }
                        this.mProviderMap.putProviderByName(name, cpr5);
                        ProviderInfo cpi10 = cpi7;
                        conn3 = incProviderCountLocked(r, cpr5, token, callingUid, callingPackage, callingTag, stable);
                        if (conn3 != null) {
                            conn3.waiting = true;
                        }
                        startTime2 = startTime;
                        cpr6 = cpr5;
                        userId2 = userId2;
                        cpi4 = cpi10;
                        conn4 = conn3;
                    }
                    checkTime(startTime2, "getContentProviderImpl: done!");
                    grantImplicitAccess(userId2, null, callingUid, UserHandle.getAppId(cpi4.applicationInfo.uid));
                    resetPriorityAfterLockedSection();
                    timeout = SystemClock.uptimeMillis() + 20000;
                    timedOut = false;
                    synchronized (cpr6) {
                        while (cpr6.provider == null) {
                            if (cpr6.launchingApp == null) {
                                Slog.w("ActivityManager", "Unable to launch app " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + ": launching app became null");
                                EventLogTags.writeAmProviderLostProcess(UserHandle.getUserId(cpi4.applicationInfo.uid), cpi4.applicationInfo.packageName, cpi4.applicationInfo.uid, name);
                                return null;
                            }
                            long wait = Math.max(0L, timeout - SystemClock.uptimeMillis());
                            if (conn4 != null) {
                                conn4.waiting = true;
                            }
                            cpr6.wait(wait);
                            if (cpr6.provider == null) {
                                timedOut = true;
                                if (conn4 == null) {
                                    break;
                                }
                                conn4.waiting = providerRunning5;
                                break;
                            }
                            if (conn4 != null) {
                                conn4.waiting = providerRunning5;
                            }
                        }
                        if (!timedOut) {
                            return cpr6.newHolder(conn4);
                        }
                        callerName = UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
                        if (caller != null) {
                            synchronized (this) {
                                boostPriorityForLockedSection();
                                record = this.mProcessList.getLRURecordForAppLocked(caller);
                                if (record != null) {
                                    callerName = record.processName;
                                }
                                resetPriorityAfterLockedSection();
                            }
                        }
                        Slog.wtf("ActivityManager", "Timeout waiting for provider " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + " providerRunning=" + providerRunning4 + " caller=" + callerName + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingUid());
                        return null;
                    }
                }
                try {
                    if (cpr6.proc != null) {
                        boolean providerRunning6 = !cpr6.proc.killed;
                        try {
                            if (cpr6.proc.killed && cpr6.proc.killedByAm) {
                                StringBuilder sb6 = new StringBuilder();
                                cpi = cpi8;
                                try {
                                    sb6.append(cpr6.proc.toString());
                                    sb6.append(" was killed by AM but isn't really dead");
                                    Slog.wtf("ActivityManager", sb6.toString());
                                    dyingProc = cpr6.proc;
                                    providerRunning = providerRunning6;
                                } catch (Throwable th10) {
                                    th = th10;
                                }
                            } else {
                                dyingProc = null;
                                cpi = cpi8;
                                providerRunning = providerRunning6;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                        }
                    } else {
                        dyingProc = null;
                        cpi = cpi8;
                    }
                    if (providerRunning) {
                        try {
                            cpi2 = cpr6.info;
                            try {
                                if (r == null) {
                                    try {
                                        if (cpr6.canRunHere(r)) {
                                            msg = checkContentProviderAssociation(r, callingUid, cpi2);
                                            if (msg == null) {
                                                StringBuilder sb7 = new StringBuilder();
                                                sb7.append("Content provider lookup ");
                                                sb7.append(cpr6.name.flattenToShortString());
                                                sb7.append(" failed: association not allowed with package ");
                                                sb7.append(msg);
                                                throw new SecurityException(sb7.toString());
                                            }
                                            try {
                                                checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                                                msg2 = checkContentProviderPermissionLocked(cpi2, r, userId2, checkCrossUser);
                                                if (msg2 == null) {
                                                    throw new SecurityException(msg2);
                                                }
                                                checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                                                ContentProviderHolder holder2 = cpr6.newHolder(null);
                                                holder2.provider = null;
                                                resetPriorityAfterLockedSection();
                                                return holder2;
                                            } catch (Throwable th12) {
                                                th = th12;
                                            }
                                        } else {
                                            conn = null;
                                            try {
                                                if (AppGlobals.getPackageManager().resolveContentProvider(name, 0, userId2) == null) {
                                                    resetPriorityAfterLockedSection();
                                                    return null;
                                                }
                                            } catch (RemoteException e) {
                                            }
                                            try {
                                                msg3 = checkContentProviderAssociation(r, callingUid, cpi2);
                                                try {
                                                    if (msg3 == null) {
                                                        throw new SecurityException("Content provider lookup " + cpr6.name.flattenToShortString() + " failed: association not allowed with package " + msg3);
                                                    }
                                                    checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                                                    msg4 = checkContentProviderPermissionLocked(cpi2, r, userId2, checkCrossUser);
                                                    if (msg4 == null) {
                                                        throw new SecurityException(msg4);
                                                    }
                                                    checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                                                    origId = Binder.clearCallingIdentity();
                                                    try {
                                                        checkTime(startTime3, "getContentProviderImpl: incProviderCountLocked");
                                                        cpi3 = cpi2;
                                                        cpr = cpr6;
                                                        try {
                                                            conn2 = incProviderCountLocked(r, cpr6, token, callingUid, callingPackage, callingTag, stable);
                                                            if (conn2 != null) {
                                                                try {
                                                                    if (conn2.stableCount + conn2.unstableCount == 1) {
                                                                        cpr6 = cpr;
                                                                        try {
                                                                            if (cpr6.proc != null || r == null || r.setAdj > 250) {
                                                                                startTime3 = startTime3;
                                                                            } else {
                                                                                startTime3 = startTime3;
                                                                                try {
                                                                                    checkTime(startTime3, "getContentProviderImpl: before updateLruProcess");
                                                                                    this.mProcessList.updateLruProcessLocked(cpr6.proc, false, null);
                                                                                    checkTime(startTime3, "getContentProviderImpl: after updateLruProcess");
                                                                                } catch (Throwable th13) {
                                                                                    th = th13;
                                                                                    th2 = th;
                                                                                    try {
                                                                                        Binder.restoreCallingIdentity(origId);
                                                                                        throw th2;
                                                                                    } catch (Throwable th14) {
                                                                                        th = th14;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } catch (Throwable th15) {
                                                                            th2 = th15;
                                                                            Binder.restoreCallingIdentity(origId);
                                                                            throw th2;
                                                                        }
                                                                    } else {
                                                                        cpr6 = cpr;
                                                                        startTime3 = startTime3;
                                                                    }
                                                                    try {
                                                                        checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                                                        int verifiedAdj5 = cpr6.proc.verifiedAdj;
                                                                        success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                                                        if (success && verifiedAdj5 != cpr6.proc.setAdj && !isProcessAliveLocked(cpr6.proc)) {
                                                                            success = false;
                                                                        }
                                                                        maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                                                        checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                                                        try {
                                                                            if (success) {
                                                                                Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                                                                try {
                                                                                    lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                                                                    if (!lastRef) {
                                                                                        try {
                                                                                            Binder.restoreCallingIdentity(origId);
                                                                                            resetPriorityAfterLockedSection();
                                                                                            return null;
                                                                                        } catch (Throwable th16) {
                                                                                            th = th16;
                                                                                        }
                                                                                    } else {
                                                                                        providerRunning = false;
                                                                                        conn = null;
                                                                                        ProcessRecord dyingProc9 = cpr6.proc;
                                                                                        dyingProc = dyingProc9;
                                                                                        success2 = false;
                                                                                    }
                                                                                } catch (Throwable th17) {
                                                                                    th = th17;
                                                                                    th2 = th;
                                                                                    Binder.restoreCallingIdentity(origId);
                                                                                    throw th2;
                                                                                }
                                                                            } else {
                                                                                try {
                                                                                    conn = conn2;
                                                                                    cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                                                                    success2 = providerRunning;
                                                                                } catch (Throwable th18) {
                                                                                    th = th18;
                                                                                    th2 = th;
                                                                                    Binder.restoreCallingIdentity(origId);
                                                                                    throw th2;
                                                                                }
                                                                            }
                                                                            try {
                                                                                Binder.restoreCallingIdentity(origId);
                                                                                providerRunning2 = success2;
                                                                                dyingProc2 = dyingProc;
                                                                                cpi4 = cpi3;
                                                                            } catch (Throwable th19) {
                                                                                th = th19;
                                                                            }
                                                                        } catch (Throwable th20) {
                                                                            th2 = th20;
                                                                            conn2 = conn;
                                                                            Binder.restoreCallingIdentity(origId);
                                                                            throw th2;
                                                                        }
                                                                    } catch (Throwable th21) {
                                                                        th = th21;
                                                                    }
                                                                } catch (Throwable th22) {
                                                                    th2 = th22;
                                                                }
                                                            } else {
                                                                cpr6 = cpr;
                                                                startTime3 = startTime3;
                                                                checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                                                int verifiedAdj6 = cpr6.proc.verifiedAdj;
                                                                success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                                                if (success) {
                                                                    success = false;
                                                                }
                                                                maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                                                checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                                                if (success) {
                                                                    Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                                                    lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                                                    if (!lastRef) {
                                                                        Binder.restoreCallingIdentity(origId);
                                                                        resetPriorityAfterLockedSection();
                                                                        return null;
                                                                    }
                                                                    providerRunning = false;
                                                                    conn = null;
                                                                    ProcessRecord dyingProc10 = cpr6.proc;
                                                                    dyingProc = dyingProc10;
                                                                    success2 = false;
                                                                } else {
                                                                    conn = conn2;
                                                                    cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                                                    success2 = providerRunning;
                                                                }
                                                                Binder.restoreCallingIdentity(origId);
                                                                providerRunning2 = success2;
                                                                dyingProc2 = dyingProc;
                                                                cpi4 = cpi3;
                                                            }
                                                        } catch (Throwable th23) {
                                                            th2 = th23;
                                                            conn2 = null;
                                                        }
                                                    } catch (Throwable th24) {
                                                        cpi3 = cpi2;
                                                        th2 = th24;
                                                        conn2 = null;
                                                    }
                                                } catch (Throwable th25) {
                                                    th = th25;
                                                }
                                            } catch (Throwable th26) {
                                                th = th26;
                                            }
                                        }
                                    } catch (Throwable th27) {
                                        th = th27;
                                    }
                                } else {
                                    conn = null;
                                    if (AppGlobals.getPackageManager().resolveContentProvider(name, 0, userId2) == null) {
                                        resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    msg3 = checkContentProviderAssociation(r, callingUid, cpi2);
                                    if (msg3 == null) {
                                        throw new SecurityException("Content provider lookup " + cpr6.name.flattenToShortString() + " failed: association not allowed with package " + msg3);
                                    }
                                    checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                                    msg4 = checkContentProviderPermissionLocked(cpi2, r, userId2, checkCrossUser);
                                    if (msg4 == null) {
                                        throw new SecurityException(msg4);
                                    }
                                    checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                                    origId = Binder.clearCallingIdentity();
                                    checkTime(startTime3, "getContentProviderImpl: incProviderCountLocked");
                                    cpi3 = cpi2;
                                    cpr = cpr6;
                                    conn2 = incProviderCountLocked(r, cpr6, token, callingUid, callingPackage, callingTag, stable);
                                    if (conn2 != null) {
                                        if (conn2.stableCount + conn2.unstableCount == 1) {
                                            cpr6 = cpr;
                                            if (cpr6.proc != null) {
                                                startTime3 = startTime3;
                                            } else {
                                                startTime3 = startTime3;
                                            }
                                        } else {
                                            cpr6 = cpr;
                                            startTime3 = startTime3;
                                        }
                                        checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                        int verifiedAdj7 = cpr6.proc.verifiedAdj;
                                        success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                        if (success) {
                                            success = false;
                                        }
                                        maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                        checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                        if (success) {
                                            Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                            lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                            if (!lastRef) {
                                                Binder.restoreCallingIdentity(origId);
                                                resetPriorityAfterLockedSection();
                                                return null;
                                            }
                                            providerRunning = false;
                                            conn = null;
                                            ProcessRecord dyingProc11 = cpr6.proc;
                                            dyingProc = dyingProc11;
                                            success2 = false;
                                        } else {
                                            conn = conn2;
                                            cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                            success2 = providerRunning;
                                        }
                                        Binder.restoreCallingIdentity(origId);
                                        providerRunning2 = success2;
                                        dyingProc2 = dyingProc;
                                        cpi4 = cpi3;
                                    } else {
                                        cpr6 = cpr;
                                        startTime3 = startTime3;
                                        checkTime(startTime3, "getContentProviderImpl: before updateOomAdj");
                                        int verifiedAdj8 = cpr6.proc.verifiedAdj;
                                        success = updateOomAdjLocked(cpr6.proc, true, "updateOomAdj_getProvider");
                                        if (success) {
                                            success = false;
                                        }
                                        maybeUpdateProviderUsageStatsLocked(r, cpr6.info.packageName, name);
                                        checkTime(startTime3, "getContentProviderImpl: after updateOomAdj");
                                        if (success) {
                                            Slog.wtf("ActivityManager", "Existing provider " + cpr6.name.flattenToShortString() + " is crashing; detaching " + r);
                                            lastRef = decProviderCountLocked(conn2, cpr6, token, stable);
                                            if (!lastRef) {
                                                Binder.restoreCallingIdentity(origId);
                                                resetPriorityAfterLockedSection();
                                                return null;
                                            }
                                            providerRunning = false;
                                            conn = null;
                                            ProcessRecord dyingProc12 = cpr6.proc;
                                            dyingProc = dyingProc12;
                                            success2 = false;
                                        } else {
                                            conn = conn2;
                                            cpr6.proc.verifiedAdj = cpr6.proc.setAdj;
                                            success2 = providerRunning;
                                        }
                                        Binder.restoreCallingIdentity(origId);
                                        providerRunning2 = success2;
                                        dyingProc2 = dyingProc;
                                        cpi4 = cpi3;
                                    }
                                }
                            } catch (Throwable th28) {
                                th = th28;
                            }
                        } catch (Throwable th29) {
                            th = th29;
                        }
                    } else {
                        conn = null;
                        providerRunning2 = providerRunning;
                        dyingProc2 = dyingProc;
                        cpi4 = cpi;
                    }
                    if (providerRunning2) {
                        try {
                            try {
                                checkTime(startTime3, "getContentProviderImpl: before resolveContentProvider");
                                cpi4 = AppGlobals.getPackageManager().resolveContentProvider(name, 3072, userId2);
                                checkTime(startTime3, "getContentProviderImpl: after resolveContentProvider");
                            } catch (Throwable th30) {
                                th = th30;
                            }
                        } catch (RemoteException e2) {
                        }
                        if (cpi4 == null) {
                            resetPriorityAfterLockedSection();
                            return null;
                        }
                        try {
                            dyingProc3 = dyingProc2;
                            if (isSingleton(cpi4.processName, cpi4.applicationInfo, cpi4.name, cpi4.flags)) {
                                z = false;
                            } else {
                                if (r == null) {
                                    i2 = callingUid;
                                } else {
                                    i2 = r.uid;
                                }
                                if (isValidSingletonCall(i2, cpi4.applicationInfo.uid)) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                            }
                            singleton = z;
                            if (singleton) {
                                userId2 = 0;
                            }
                            try {
                                cpi4.applicationInfo = getAppInfoForUser(cpi4.applicationInfo, userId2);
                                checkTime(startTime3, "getContentProviderImpl: got app info for user");
                                msg5 = checkContentProviderAssociation(r, callingUid, cpi4);
                                try {
                                    if (msg5 == null) {
                                        throw new SecurityException("Content provider lookup " + name + " failed: association not allowed with package " + msg5);
                                    }
                                    checkTime(startTime3, "getContentProviderImpl: before checkContentProviderPermission");
                                    if (singleton) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    msg6 = checkContentProviderPermissionLocked(cpi4, r, userId2, z2);
                                    if (msg6 == null) {
                                        throw new SecurityException(msg6);
                                    }
                                    checkTime(startTime3, "getContentProviderImpl: after checkContentProviderPermission");
                                    if (!this.mProcessesReady && !cpi4.processName.equals("system")) {
                                        throw new IllegalArgumentException("Attempt to launch content provider before system ready");
                                    }
                                    if (!this.mSystemProvidersInstalled && cpi4.applicationInfo.isSystemApp() && "system".equals(cpi4.processName)) {
                                        throw new IllegalStateException("Cannot access system provider: '" + cpi4.authority + "' before system providers are installed!");
                                    }
                                    if (!this.mUserController.isUserRunning(userId2, 0)) {
                                        Slog.w("ActivityManager", "Unable to launch app " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + ": user " + userId2 + " is stopped");
                                        resetPriorityAfterLockedSection();
                                        return null;
                                    }
                                    comp = new ComponentName(cpi4.packageName, cpi4.name);
                                    checkTime(startTime3, "getContentProviderImpl: before getProviderByClass");
                                    cpr2 = this.mProviderMap.getProviderByClass(comp, userId2);
                                    checkTime(startTime3, "getContentProviderImpl: after getProviderByClass");
                                    if (cpr2 == null) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    firstClass = z3;
                                    try {
                                        if (firstClass) {
                                            try {
                                                ident = Binder.clearCallingIdentity();
                                                if (!requestTargetProviderPermissionsReviewIfNeededLocked(cpi4, r, userId2)) {
                                                    resetPriorityAfterLockedSection();
                                                    return null;
                                                }
                                                try {
                                                    checkTime(startTime3, "getContentProviderImpl: before getApplicationInfo");
                                                    try {
                                                        comp2 = comp;
                                                        try {
                                                            ai = AppGlobals.getPackageManager().getApplicationInfo(cpi4.applicationInfo.packageName, 1024, userId2);
                                                            checkTime(startTime3, "getContentProviderImpl: after getApplicationInfo");
                                                            if (ai == null) {
                                                                try {
                                                                    StringBuilder sb8 = new StringBuilder();
                                                                    try {
                                                                        sb8.append("No package info for content provider ");
                                                                        sb8.append(cpi4.name);
                                                                        Slog.w("ActivityManager", sb8.toString());
                                                                        Binder.restoreCallingIdentity(ident);
                                                                        resetPriorityAfterLockedSection();
                                                                        return null;
                                                                    } catch (RemoteException e3) {
                                                                        cpi5 = cpi4;
                                                                        contentProviderConnection = null;
                                                                        cpr3 = cpr2;
                                                                        providerRunning3 = providerRunning2;
                                                                        dyingProc4 = dyingProc3;
                                                                        Binder.restoreCallingIdentity(ident);
                                                                        cpr4 = cpr3;
                                                                        cpr5 = cpr4;
                                                                        checkTime(startTime3, "getContentProviderImpl: now have ContentProviderRecord");
                                                                        if (r == null) {
                                                                        }
                                                                        N = this.mLaunchingProviders.size();
                                                                        i = 0;
                                                                        while (i < N) {
                                                                            i++;
                                                                        }
                                                                        try {
                                                                            if (i >= N) {
                                                                                try {
                                                                                    origId2 = Binder.clearCallingIdentity();
                                                                                    try {
                                                                                        try {
                                                                                            checkTime(startTime3, "getContentProviderImpl: before set stopped state");
                                                                                            AppGlobals.getPackageManager().setPackageStoppedState(cpr5.appInfo.packageName, false, userId2);
                                                                                            checkTime(startTime3, "getContentProviderImpl: after set stopped state");
                                                                                        } catch (Throwable th31) {
                                                                                            th4 = th31;
                                                                                            Binder.restoreCallingIdentity(origId2);
                                                                                            throw th4;
                                                                                        }
                                                                                    } catch (RemoteException e4) {
                                                                                    } catch (IllegalArgumentException e5) {
                                                                                        Slog.w("ActivityManager", "Failed trying to unstop package " + cpr5.appInfo.packageName + ": " + e5);
                                                                                    }
                                                                                    try {
                                                                                        checkTime(startTime3, "getContentProviderImpl: looking for process record");
                                                                                        cpi6 = cpi5;
                                                                                        try {
                                                                                            proc = getProcessRecordLocked(cpi6.processName, cpr5.appInfo.uid, false);
                                                                                            try {
                                                                                                if (proc == null) {
                                                                                                    try {
                                                                                                        if (proc.thread != null) {
                                                                                                            checkTime(startTime3, "getContentProviderImpl: before start process");
                                                                                                            try {
                                                                                                                try {
                                                                                                                    long startTime7 = startTime3;
                                                                                                                    providerRunning4 = providerRunning3;
                                                                                                                    providerRunning5 = false;
                                                                                                                    try {
                                                                                                                        proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                                                                                                        startTime = startTime7;
                                                                                                                        try {
                                                                                                                            checkTime(startTime, "getContentProviderImpl: after start process");
                                                                                                                            if (proc == null) {
                                                                                                                                StringBuilder sb9 = new StringBuilder();
                                                                                                                                sb9.append("Unable to launch app ");
                                                                                                                                sb9.append(cpi6.applicationInfo.packageName);
                                                                                                                                sb9.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                                                                                                                sb9.append(cpi6.applicationInfo.uid);
                                                                                                                                sb9.append(" for provider ");
                                                                                                                                sb9.append(name);
                                                                                                                                sb9.append(": process is bad");
                                                                                                                                Slog.w("ActivityManager", sb9.toString());
                                                                                                                                Binder.restoreCallingIdentity(origId2);
                                                                                                                                resetPriorityAfterLockedSection();
                                                                                                                                return null;
                                                                                                                            }
                                                                                                                            cpi7 = cpi6;
                                                                                                                            cpr5.launchingApp = proc;
                                                                                                                            this.mLaunchingProviders.add(cpr5);
                                                                                                                            Binder.restoreCallingIdentity(origId2);
                                                                                                                        } catch (Throwable th32) {
                                                                                                                            th4 = th32;
                                                                                                                            Binder.restoreCallingIdentity(origId2);
                                                                                                                            throw th4;
                                                                                                                        }
                                                                                                                    } catch (Throwable th33) {
                                                                                                                        th4 = th33;
                                                                                                                    }
                                                                                                                } catch (Throwable th34) {
                                                                                                                    th4 = th34;
                                                                                                                }
                                                                                                            } catch (Throwable th35) {
                                                                                                                th4 = th35;
                                                                                                            }
                                                                                                        } else {
                                                                                                            checkTime(startTime3, "getContentProviderImpl: before start process");
                                                                                                            long startTime8 = startTime3;
                                                                                                            providerRunning4 = providerRunning3;
                                                                                                            providerRunning5 = false;
                                                                                                            proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                                                                                            startTime = startTime8;
                                                                                                            checkTime(startTime, "getContentProviderImpl: after start process");
                                                                                                            if (proc == null) {
                                                                                                                StringBuilder sb10 = new StringBuilder();
                                                                                                                sb10.append("Unable to launch app ");
                                                                                                                sb10.append(cpi6.applicationInfo.packageName);
                                                                                                                sb10.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                                                                                                sb10.append(cpi6.applicationInfo.uid);
                                                                                                                sb10.append(" for provider ");
                                                                                                                sb10.append(name);
                                                                                                                sb10.append(": process is bad");
                                                                                                                Slog.w("ActivityManager", sb10.toString());
                                                                                                                Binder.restoreCallingIdentity(origId2);
                                                                                                                resetPriorityAfterLockedSection();
                                                                                                                return null;
                                                                                                            }
                                                                                                            cpi7 = cpi6;
                                                                                                            cpr5.launchingApp = proc;
                                                                                                            this.mLaunchingProviders.add(cpr5);
                                                                                                            Binder.restoreCallingIdentity(origId2);
                                                                                                        }
                                                                                                    } catch (Throwable th36) {
                                                                                                        th4 = th36;
                                                                                                        Binder.restoreCallingIdentity(origId2);
                                                                                                        throw th4;
                                                                                                    }
                                                                                                } else {
                                                                                                    checkTime(startTime3, "getContentProviderImpl: before start process");
                                                                                                    long startTime9 = startTime3;
                                                                                                    providerRunning4 = providerRunning3;
                                                                                                    providerRunning5 = false;
                                                                                                    proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                                                                                    startTime = startTime9;
                                                                                                    checkTime(startTime, "getContentProviderImpl: after start process");
                                                                                                    if (proc == null) {
                                                                                                        StringBuilder sb11 = new StringBuilder();
                                                                                                        sb11.append("Unable to launch app ");
                                                                                                        sb11.append(cpi6.applicationInfo.packageName);
                                                                                                        sb11.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                                                                                        sb11.append(cpi6.applicationInfo.uid);
                                                                                                        sb11.append(" for provider ");
                                                                                                        sb11.append(name);
                                                                                                        sb11.append(": process is bad");
                                                                                                        Slog.w("ActivityManager", sb11.toString());
                                                                                                        Binder.restoreCallingIdentity(origId2);
                                                                                                        resetPriorityAfterLockedSection();
                                                                                                        return null;
                                                                                                    }
                                                                                                    cpi7 = cpi6;
                                                                                                    cpr5.launchingApp = proc;
                                                                                                    this.mLaunchingProviders.add(cpr5);
                                                                                                    Binder.restoreCallingIdentity(origId2);
                                                                                                }
                                                                                            } catch (Throwable th37) {
                                                                                                th4 = th37;
                                                                                            }
                                                                                        } catch (Throwable th38) {
                                                                                            th4 = th38;
                                                                                        }
                                                                                    } catch (Throwable th39) {
                                                                                        th4 = th39;
                                                                                    }
                                                                                } catch (Throwable th40) {
                                                                                    th = th40;
                                                                                }
                                                                                while (true) {
                                                                                    resetPriorityAfterLockedSection();
                                                                                    throw th;
                                                                                }
                                                                            }
                                                                            userId2 = userId2;
                                                                            providerRunning4 = providerRunning3;
                                                                            providerRunning5 = false;
                                                                            startTime = startTime3;
                                                                            cpi7 = cpi5;
                                                                            try {
                                                                                checkTime(startTime, "getContentProviderImpl: updating data structures");
                                                                                if (firstClass) {
                                                                                    comp3 = comp2;
                                                                                    this.mProviderMap.putProviderByClass(comp3, cpr5);
                                                                                } else {
                                                                                    comp3 = comp2;
                                                                                }
                                                                                this.mProviderMap.putProviderByName(name, cpr5);
                                                                                ProviderInfo cpi11 = cpi7;
                                                                                conn3 = incProviderCountLocked(r, cpr5, token, callingUid, callingPackage, callingTag, stable);
                                                                                if (conn3 != null) {
                                                                                    try {
                                                                                        conn3.waiting = true;
                                                                                    } catch (Throwable th41) {
                                                                                        th = th41;
                                                                                    }
                                                                                }
                                                                                startTime2 = startTime;
                                                                                cpr6 = cpr5;
                                                                                userId2 = userId2;
                                                                                cpi4 = cpi11;
                                                                                conn4 = conn3;
                                                                                checkTime(startTime2, "getContentProviderImpl: done!");
                                                                                try {
                                                                                    grantImplicitAccess(userId2, null, callingUid, UserHandle.getAppId(cpi4.applicationInfo.uid));
                                                                                    resetPriorityAfterLockedSection();
                                                                                    timeout = SystemClock.uptimeMillis() + 20000;
                                                                                    timedOut = false;
                                                                                    synchronized (cpr6) {
                                                                                        while (cpr6.provider == null) {
                                                                                            try {
                                                                                                try {
                                                                                                    if (cpr6.launchingApp == null) {
                                                                                                        Slog.w("ActivityManager", "Unable to launch app " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + ": launching app became null");
                                                                                                        EventLogTags.writeAmProviderLostProcess(UserHandle.getUserId(cpi4.applicationInfo.uid), cpi4.applicationInfo.packageName, cpi4.applicationInfo.uid, name);
                                                                                                        return null;
                                                                                                    }
                                                                                                    try {
                                                                                                        try {
                                                                                                            long wait2 = Math.max(0L, timeout - SystemClock.uptimeMillis());
                                                                                                            if (conn4 != null) {
                                                                                                                try {
                                                                                                                    conn4.waiting = true;
                                                                                                                } catch (InterruptedException e6) {
                                                                                                                    if (conn4 != null) {
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            cpr6.wait(wait2);
                                                                                                            if (cpr6.provider == null) {
                                                                                                                timedOut = true;
                                                                                                                if (conn4 == null) {
                                                                                                                    break;
                                                                                                                }
                                                                                                                conn4.waiting = providerRunning5;
                                                                                                                break;
                                                                                                            }
                                                                                                            if (conn4 != null) {
                                                                                                                conn4.waiting = providerRunning5;
                                                                                                            }
                                                                                                        } catch (InterruptedException e7) {
                                                                                                        }
                                                                                                    } catch (Throwable th42) {
                                                                                                        if (conn4 == null) {
                                                                                                            throw th42;
                                                                                                        }
                                                                                                        conn4.waiting = providerRunning5;
                                                                                                        throw th42;
                                                                                                    }
                                                                                                } catch (Throwable th43) {
                                                                                                    th5 = th43;
                                                                                                    while (true) {
                                                                                                        try {
                                                                                                            throw th5;
                                                                                                        } catch (Throwable th44) {
                                                                                                            th5 = th44;
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            } catch (Throwable th45) {
                                                                                                th5 = th45;
                                                                                            }
                                                                                        }
                                                                                        if (!timedOut) {
                                                                                            return cpr6.newHolder(conn4);
                                                                                        }
                                                                                        callerName = UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
                                                                                        if (caller != null) {
                                                                                            synchronized (this) {
                                                                                                try {
                                                                                                    boostPriorityForLockedSection();
                                                                                                    record = this.mProcessList.getLRURecordForAppLocked(caller);
                                                                                                    if (record != null) {
                                                                                                        callerName = record.processName;
                                                                                                    }
                                                                                                    resetPriorityAfterLockedSection();
                                                                                                } catch (Throwable th46) {
                                                                                                    resetPriorityAfterLockedSection();
                                                                                                    throw th46;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        Slog.wtf("ActivityManager", "Timeout waiting for provider " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + " providerRunning=" + providerRunning4 + " caller=" + callerName + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingUid());
                                                                                        return null;
                                                                                    }
                                                                                } catch (Throwable th47) {
                                                                                    th = th47;
                                                                                    th = th;
                                                                                    while (true) {
                                                                                        resetPriorityAfterLockedSection();
                                                                                        throw th;
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th48) {
                                                                                th = th48;
                                                                            }
                                                                        } catch (Throwable th49) {
                                                                            th = th49;
                                                                        }
                                                                    } catch (Throwable th50) {
                                                                        th3 = th50;
                                                                        Binder.restoreCallingIdentity(ident);
                                                                        throw th3;
                                                                    }
                                                                } catch (RemoteException e8) {
                                                                    cpi5 = cpi4;
                                                                    contentProviderConnection = null;
                                                                    cpr3 = cpr2;
                                                                    providerRunning3 = providerRunning2;
                                                                    dyingProc4 = dyingProc3;
                                                                } catch (Throwable th51) {
                                                                    th3 = th51;
                                                                }
                                                            } else {
                                                                try {
                                                                    ProviderInfo cpi12 = cpi4;
                                                                    cpi5 = cpi12;
                                                                    providerRunning3 = providerRunning2;
                                                                    dyingProc4 = dyingProc3;
                                                                    cpr3 = cpr2;
                                                                    contentProviderConnection = null;
                                                                    try {
                                                                        cpr4 = new ContentProviderRecord(this, cpi12, getAppInfoForUser(ai, userId2), comp2, singleton);
                                                                        Binder.restoreCallingIdentity(ident);
                                                                    } catch (RemoteException e9) {
                                                                        Binder.restoreCallingIdentity(ident);
                                                                        cpr4 = cpr3;
                                                                    } catch (Throwable th52) {
                                                                        th3 = th52;
                                                                        Binder.restoreCallingIdentity(ident);
                                                                        throw th3;
                                                                    }
                                                                } catch (RemoteException e10) {
                                                                    cpi5 = cpi4;
                                                                    contentProviderConnection = null;
                                                                    cpr3 = cpr2;
                                                                    providerRunning3 = providerRunning2;
                                                                    dyingProc4 = dyingProc3;
                                                                } catch (Throwable th53) {
                                                                    th3 = th53;
                                                                }
                                                            }
                                                        } catch (RemoteException e11) {
                                                            cpi5 = cpi4;
                                                            cpr3 = cpr2;
                                                            contentProviderConnection = null;
                                                            providerRunning3 = providerRunning2;
                                                            dyingProc4 = dyingProc3;
                                                        } catch (Throwable th54) {
                                                            th3 = th54;
                                                        }
                                                    } catch (RemoteException e12) {
                                                        cpi5 = cpi4;
                                                        comp2 = comp;
                                                        cpr3 = cpr2;
                                                        contentProviderConnection = null;
                                                        providerRunning3 = providerRunning2;
                                                        dyingProc4 = dyingProc3;
                                                    } catch (Throwable th55) {
                                                        th3 = th55;
                                                    }
                                                } catch (RemoteException e13) {
                                                    cpr3 = cpr2;
                                                    cpi5 = cpi4;
                                                    comp2 = comp;
                                                    contentProviderConnection = null;
                                                    providerRunning3 = providerRunning2;
                                                    dyingProc4 = dyingProc3;
                                                } catch (Throwable th56) {
                                                    th3 = th56;
                                                }
                                                cpr5 = cpr4;
                                            } catch (Throwable th57) {
                                                th = th57;
                                            }
                                        } else {
                                            cpr5 = cpr2;
                                            cpi5 = cpi4;
                                            comp2 = comp;
                                            contentProviderConnection = null;
                                            providerRunning3 = providerRunning2;
                                            dyingProc4 = dyingProc3;
                                            try {
                                                if (dyingProc4 == cpr5.proc && dyingProc4 != null) {
                                                    firstClass = true;
                                                    cpr5 = new ContentProviderRecord(cpr5);
                                                }
                                            } catch (Throwable th58) {
                                                th = th58;
                                            }
                                        }
                                        checkTime(startTime3, "getContentProviderImpl: now have ContentProviderRecord");
                                        if (r == null && cpr5.canRunHere(r)) {
                                            ContentProviderHolder contentProviderHolderNewHolder = cpr5.newHolder(contentProviderConnection);
                                            resetPriorityAfterLockedSection();
                                            return contentProviderHolderNewHolder;
                                        }
                                        N = this.mLaunchingProviders.size();
                                        i = 0;
                                        while (i < N && this.mLaunchingProviders.get(i) != cpr5) {
                                            i++;
                                        }
                                        if (i >= N) {
                                            origId2 = Binder.clearCallingIdentity();
                                            checkTime(startTime3, "getContentProviderImpl: before set stopped state");
                                            AppGlobals.getPackageManager().setPackageStoppedState(cpr5.appInfo.packageName, false, userId2);
                                            checkTime(startTime3, "getContentProviderImpl: after set stopped state");
                                            checkTime(startTime3, "getContentProviderImpl: looking for process record");
                                            cpi6 = cpi5;
                                            proc = getProcessRecordLocked(cpi6.processName, cpr5.appInfo.uid, false);
                                            if (proc == null) {
                                                if (proc.thread != null || proc.killed) {
                                                    checkTime(startTime3, "getContentProviderImpl: before start process");
                                                    long startTime10 = startTime3;
                                                    providerRunning4 = providerRunning3;
                                                    providerRunning5 = false;
                                                    proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                                    startTime = startTime10;
                                                    checkTime(startTime, "getContentProviderImpl: after start process");
                                                    if (proc == null) {
                                                        StringBuilder sb12 = new StringBuilder();
                                                        sb12.append("Unable to launch app ");
                                                        sb12.append(cpi6.applicationInfo.packageName);
                                                        sb12.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                                        sb12.append(cpi6.applicationInfo.uid);
                                                        sb12.append(" for provider ");
                                                        sb12.append(name);
                                                        sb12.append(": process is bad");
                                                        Slog.w("ActivityManager", sb12.toString());
                                                        Binder.restoreCallingIdentity(origId2);
                                                        resetPriorityAfterLockedSection();
                                                        return null;
                                                    }
                                                    cpi7 = cpi6;
                                                } else {
                                                    if (!proc.pubProviders.containsKey(cpi6.name)) {
                                                        checkTime(startTime3, "getContentProviderImpl: scheduling install");
                                                        proc.pubProviders.put(cpi6.name, cpr5);
                                                        try {
                                                            proc.thread.scheduleInstallProvider(cpi6);
                                                        } catch (RemoteException e14) {
                                                        }
                                                    }
                                                    providerRunning4 = providerRunning3;
                                                    providerRunning5 = false;
                                                    startTime = startTime3;
                                                    cpi7 = cpi6;
                                                }
                                                cpr5.launchingApp = proc;
                                                this.mLaunchingProviders.add(cpr5);
                                                Binder.restoreCallingIdentity(origId2);
                                            } else {
                                                checkTime(startTime3, "getContentProviderImpl: before start process");
                                                long startTime11 = startTime3;
                                                providerRunning4 = providerRunning3;
                                                providerRunning5 = false;
                                                proc = startProcessLocked(cpi6.processName, cpr5.appInfo, false, 0, new HostingRecord("content provider", new ComponentName(cpi6.applicationInfo.packageName, cpi6.name)), 0, false, false, false);
                                                startTime = startTime11;
                                                checkTime(startTime, "getContentProviderImpl: after start process");
                                                if (proc == null) {
                                                    StringBuilder sb13 = new StringBuilder();
                                                    sb13.append("Unable to launch app ");
                                                    sb13.append(cpi6.applicationInfo.packageName);
                                                    sb13.append(SliceClientPermissions.SliceAuthority.DELIMITER);
                                                    sb13.append(cpi6.applicationInfo.uid);
                                                    sb13.append(" for provider ");
                                                    sb13.append(name);
                                                    sb13.append(": process is bad");
                                                    Slog.w("ActivityManager", sb13.toString());
                                                    Binder.restoreCallingIdentity(origId2);
                                                    resetPriorityAfterLockedSection();
                                                    return null;
                                                }
                                                cpi7 = cpi6;
                                                cpr5.launchingApp = proc;
                                                this.mLaunchingProviders.add(cpr5);
                                                Binder.restoreCallingIdentity(origId2);
                                            }
                                        } else {
                                            userId2 = userId2;
                                            providerRunning4 = providerRunning3;
                                            providerRunning5 = false;
                                            startTime = startTime3;
                                            cpi7 = cpi5;
                                        }
                                        checkTime(startTime, "getContentProviderImpl: updating data structures");
                                        if (firstClass) {
                                            comp3 = comp2;
                                            this.mProviderMap.putProviderByClass(comp3, cpr5);
                                        } else {
                                            comp3 = comp2;
                                        }
                                        this.mProviderMap.putProviderByName(name, cpr5);
                                        ProviderInfo cpi13 = cpi7;
                                        conn3 = incProviderCountLocked(r, cpr5, token, callingUid, callingPackage, callingTag, stable);
                                        if (conn3 != null) {
                                            conn3.waiting = true;
                                        }
                                        startTime2 = startTime;
                                        cpr6 = cpr5;
                                        userId2 = userId2;
                                        cpi4 = cpi13;
                                        conn4 = conn3;
                                    } catch (Throwable th59) {
                                        th = th59;
                                    }
                                } catch (Throwable th60) {
                                    th = th60;
                                }
                            } catch (Throwable th61) {
                                th = th61;
                            }
                        } catch (Throwable th62) {
                            th = th62;
                        }
                    } else {
                        startTime2 = startTime3;
                        providerRunning4 = providerRunning2;
                        providerRunning5 = false;
                        conn4 = conn;
                    }
                    try {
                        checkTime(startTime2, "getContentProviderImpl: done!");
                        grantImplicitAccess(userId2, null, callingUid, UserHandle.getAppId(cpi4.applicationInfo.uid));
                        resetPriorityAfterLockedSection();
                        timeout = SystemClock.uptimeMillis() + 20000;
                        timedOut = false;
                        synchronized (cpr6) {
                            while (cpr6.provider == null) {
                                if (cpr6.launchingApp == null) {
                                    Slog.w("ActivityManager", "Unable to launch app " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + ": launching app became null");
                                    EventLogTags.writeAmProviderLostProcess(UserHandle.getUserId(cpi4.applicationInfo.uid), cpi4.applicationInfo.packageName, cpi4.applicationInfo.uid, name);
                                    return null;
                                }
                                long wait3 = Math.max(0L, timeout - SystemClock.uptimeMillis());
                                if (conn4 != null) {
                                    conn4.waiting = true;
                                }
                                cpr6.wait(wait3);
                                if (cpr6.provider == null) {
                                    timedOut = true;
                                    if (conn4 == null) {
                                        break;
                                    }
                                    conn4.waiting = providerRunning5;
                                    break;
                                }
                                if (conn4 != null) {
                                    conn4.waiting = providerRunning5;
                                }
                            }
                            if (!timedOut) {
                                return cpr6.newHolder(conn4);
                            }
                            callerName = UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
                            if (caller != null) {
                                synchronized (this) {
                                    boostPriorityForLockedSection();
                                    record = this.mProcessList.getLRURecordForAppLocked(caller);
                                    if (record != null) {
                                        callerName = record.processName;
                                    }
                                }
                                resetPriorityAfterLockedSection();
                            }
                            Slog.wtf("ActivityManager", "Timeout waiting for provider " + cpi4.applicationInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + cpi4.applicationInfo.uid + " for provider " + name + " providerRunning=" + providerRunning4 + " caller=" + callerName + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingUid());
                            return null;
                        }
                    } catch (Throwable th63) {
                        th = th63;
                    }
                } catch (Throwable th64) {
                    th = th64;
                }
            } catch (Throwable th65) {
                th = th65;
            }
            while (true) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private static final class StartActivityRunnable implements Runnable {
        private final Context mContext;
        private final Intent mIntent;
        private final UserHandle mUserHandle;

        StartActivityRunnable(Context context, Intent intent, UserHandle userHandle) {
            this.mContext = context;
            this.mIntent = intent;
            this.mUserHandle = userHandle;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mContext.startActivityAsUser(this.mIntent, this.mUserHandle);
        }
    }

    private boolean requestTargetProviderPermissionsReviewIfNeededLocked(ProviderInfo cpi, ProcessRecord r, int userId) {
        boolean callerForeground = true;
        if (!getPackageManagerInternalLocked().isPermissionsReviewRequired(cpi.packageName, userId)) {
            return true;
        }
        if (r != null && r.setSchedGroup == 0) {
            callerForeground = false;
        }
        if (!callerForeground) {
            Slog.w("ActivityManager", "u" + userId + " Instantiating a provider in package" + cpi.packageName + " requires a permissions review");
            return false;
        }
        Intent intent = new Intent("android.intent.action.REVIEW_PERMISSIONS");
        intent.addFlags(276824064);
        intent.putExtra("android.intent.extra.PACKAGE_NAME", cpi.packageName);
        UserHandle userHandle = new UserHandle(userId);
        this.mHandler.post(new StartActivityRunnable(this.mContext, intent, userHandle));
        return false;
    }

    public IPackageManager getPackageManager() {
        return AppGlobals.getPackageManager();
    }

    public PackageManagerInternal getPackageManagerInternalLocked() {
        if (this.mPackageManagerInt == null) {
            this.mPackageManagerInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }
        return this.mPackageManagerInt;
    }

    private PermissionManagerServiceInternal getPermissionManagerInternalLocked() {
        if (this.mPermissionManagerInt == null) {
            this.mPermissionManagerInt = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        }
        return this.mPermissionManagerInt;
    }

    public final ContentProviderHolder getContentProvider(IApplicationThread caller, String callingPackage, String name, int userId, boolean stable) {
        enforceNotIsolatedCaller("getContentProvider");
        if (caller == null) {
            String msg = "null IApplicationThread when getting content provider " + name;
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        int callingUid = Binder.getCallingUid();
        if (callingPackage != null && this.mAppOpsService.checkPackage(callingUid, callingPackage) != 0) {
            throw new SecurityException("Given calling package " + callingPackage + " does not match caller's uid " + callingUid);
        }
        return getContentProviderImpl(caller, name, null, callingUid, callingPackage, null, stable, userId);
    }

    public ContentProviderHolder getContentProviderExternal(String name, int userId, IBinder token, String tag) {
        enforceCallingPermission("android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY", "Do not have permission in call getContentProviderExternal()");
        return getContentProviderExternalUnchecked(name, token, Binder.getCallingUid(), tag != null ? tag : "*external*", this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, 2, "getContentProvider", null));
    }

    private ContentProviderHolder getContentProviderExternalUnchecked(String name, IBinder token, int callingUid, String callingTag, int userId) {
        return getContentProviderImpl(null, name, token, callingUid, null, callingTag, true, userId);
    }

    public void removeContentProvider(IBinder connection, boolean stable) {
        enforceNotIsolatedCaller("removeContentProvider");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this) {
                try {
                    try {
                        boostPriorityForLockedSection();
                        ContentProviderConnection conn = (ContentProviderConnection) connection;
                        if (conn == null) {
                            throw new NullPointerException("connection is null");
                        }
                        if (decProviderCountLocked(conn, null, null, stable)) {
                            updateOomAdjLocked("updateOomAdj_removeProvider");
                        }
                    } catch (ClassCastException e) {
                        String msg = "removeContentProvider: " + connection + " not a ContentProviderConnection";
                        Slog.w("ActivityManager", msg);
                        throw new IllegalArgumentException(msg);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    @Deprecated
    public void removeContentProviderExternal(String name, IBinder token) {
        removeContentProviderExternalAsUser(name, token, UserHandle.getCallingUserId());
    }

    public void removeContentProviderExternalAsUser(String name, IBinder token, int userId) {
        enforceCallingPermission("android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY", "Do not have permission in call removeContentProviderExternal()");
        long ident = Binder.clearCallingIdentity();
        try {
            removeContentProviderExternalUnchecked(name, token, userId);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private void removeContentProviderExternalUnchecked(String name, IBinder token, int userId) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ContentProviderRecord cpr = this.mProviderMap.getProviderByName(name, userId);
                if (cpr == null) {
                    return;
                }
                ComponentName comp = new ComponentName(cpr.info.packageName, cpr.info.name);
                ContentProviderRecord localCpr = this.mProviderMap.getProviderByClass(comp, userId);
                if (localCpr.hasExternalProcessHandles()) {
                    if (localCpr.removeExternalProcessHandleLocked(token)) {
                        updateOomAdjLocked("updateOomAdj_removeProvider");
                    } else {
                        Slog.e("ActivityManager", "Attmpt to remove content provider " + localCpr + " with no external reference for token: " + token + ".");
                    }
                } else {
                    Slog.e("ActivityManager", "Attmpt to remove content provider: " + localCpr + " with no external references.");
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public final void publishContentProviders(IApplicationThread caller, List<ContentProviderHolder> providers) throws Throwable {
        ContentProviderRecord dst;
        if (providers != null) {
            enforceNotIsolatedCaller("publishContentProviders");
            synchronized (this) {
                try {
                    try {
                        boostPriorityForLockedSection();
                        ProcessRecord r = getRecordForAppLocked(caller);
                        if (r == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Unable to find app for caller ");
                            sb.append(caller);
                            sb.append(" (pid=");
                            sb.append(Binder.getCallingPid());
                            sb.append(") when publishing content providers");
                            throw new SecurityException(sb.toString());
                        }
                        long origId = Binder.clearCallingIdentity();
                        int N = providers.size();
                        for (int i = 0; i < N; i++) {
                            ContentProviderHolder src = providers.get(i);
                            if (src != null && src.info != null && src.provider != null && (dst = r.pubProviders.get(src.info.name)) != null) {
                                ComponentName comp = new ComponentName(dst.info.packageName, dst.info.name);
                                this.mProviderMap.putProviderByClass(comp, dst);
                                String[] names = dst.info.authority.split(";");
                                for (String str : names) {
                                    this.mProviderMap.putProviderByName(str, dst);
                                }
                                int launchingCount = this.mLaunchingProviders.size();
                                int j = 0;
                                boolean wasInLaunchingProviders = false;
                                int launchingCount2 = launchingCount;
                                while (j < launchingCount2) {
                                    if (this.mLaunchingProviders.get(j) == dst) {
                                        this.mLaunchingProviders.remove(j);
                                        wasInLaunchingProviders = true;
                                        j--;
                                        launchingCount2--;
                                    }
                                    j++;
                                }
                                if (wasInLaunchingProviders) {
                                    this.mHandler.removeMessages(CONTENT_PROVIDER_PUBLISH_TIMEOUT_MSG, r);
                                }
                                r.addPackage(dst.info.applicationInfo.packageName, dst.info.applicationInfo.longVersionCode, this.mProcessStats);
                                synchronized (dst) {
                                    dst.provider = src.provider;
                                    dst.setProcess(r);
                                    dst.notifyAll();
                                }
                                dst.mRestartCount = 0;
                                updateOomAdjLocked(r, true, "updateOomAdj_getProvider");
                                maybeUpdateProviderUsageStatsLocked(r, src.info.packageName, src.info.authority);
                            }
                        }
                        Binder.restoreCallingIdentity(origId);
                        resetPriorityAfterLockedSection();
                    } catch (Throwable th) {
                        th = th;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }
    }

    public boolean refContentProvider(IBinder connection, int stable, int unstable) {
        boolean z;
        try {
            ContentProviderConnection conn = (ContentProviderConnection) connection;
            if (conn == null) {
                throw new NullPointerException("connection is null");
            }
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    if (stable > 0) {
                        conn.numStableIncs += stable;
                    }
                    int stable2 = stable + conn.stableCount;
                    if (stable2 < 0) {
                        throw new IllegalStateException("stableCount < 0: " + stable2);
                    }
                    if (unstable > 0) {
                        conn.numUnstableIncs += unstable;
                    }
                    int unstable2 = unstable + conn.unstableCount;
                    if (unstable2 < 0) {
                        throw new IllegalStateException("unstableCount < 0: " + unstable2);
                    }
                    if (stable2 + unstable2 <= 0) {
                        throw new IllegalStateException("ref counts can't go to zero here: stable=" + stable2 + " unstable=" + unstable2);
                    }
                    conn.stableCount = stable2;
                    conn.unstableCount = unstable2;
                    z = !conn.dead;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            return z;
        } catch (ClassCastException e) {
            String msg = "refContentProvider: " + connection + " not a ContentProviderConnection";
            Slog.w("ActivityManager", msg);
            throw new IllegalArgumentException(msg);
        }
    }

    public void unstableProviderDied(IBinder connection) {
        IContentProvider provider;
        try {
            ContentProviderConnection conn = (ContentProviderConnection) connection;
            if (conn == null) {
                throw new NullPointerException("connection is null");
            }
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    provider = conn.provider.provider;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            if (provider == null) {
                return;
            }
            if (provider.asBinder().pingBinder()) {
                synchronized (this) {
                    try {
                        boostPriorityForLockedSection();
                        Slog.w("ActivityManager", "unstableProviderDied: caller " + Binder.getCallingUid() + " says " + conn + " died, but we don't agree");
                    } finally {
                        resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    if (conn.provider.provider != provider) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    ProcessRecord proc = conn.provider.proc;
                    if (proc != null && proc.thread != null) {
                        reportUidInfoMessageLocked("ActivityManager", "Process " + proc.processName + " (pid " + proc.pid + ") early provider death", proc.info.uid);
                        long ident = Binder.clearCallingIdentity();
                        try {
                            appDiedLocked(proc, "unstable content provider");
                            Binder.restoreCallingIdentity(ident);
                            resetPriorityAfterLockedSection();
                            return;
                        } catch (Throwable th2) {
                            Binder.restoreCallingIdentity(ident);
                            throw th2;
                        }
                    }
                    resetPriorityAfterLockedSection();
                } catch (Throwable th3) {
                    resetPriorityAfterLockedSection();
                    throw th3;
                }
            }
        } catch (ClassCastException e) {
            String msg = "refContentProvider: " + connection + " not a ContentProviderConnection";
            Slog.w("ActivityManager", msg);
            throw new IllegalArgumentException(msg);
        }
    }

    public void appNotRespondingViaProvider(IBinder connection) {
        enforceCallingPermission("android.permission.REMOVE_TASKS", "appNotRespondingViaProvider()");
        ContentProviderConnection conn = (ContentProviderConnection) connection;
        if (conn == null) {
            Slog.w("ActivityManager", "ContentProviderConnection is null");
            return;
        }
        ProcessRecord host = conn.provider.proc;
        if (host == null) {
            Slog.w("ActivityManager", "Failed to find hosting ProcessRecord");
        } else {
            this.mAnrHelper.appNotResponding(host, "ContentProvider not responding");
        }
    }

    public void appNotResponding(String reason) {
        int callingPid = Binder.getCallingPid();
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord app = this.mPidsSelfLocked.get(callingPid);
            if (app == null) {
                throw new SecurityException("Unknown process: " + callingPid);
            }
            this.mAnrHelper.appNotResponding(app, null, app.info, null, null, false, "App requested: " + reason);
        }
    }

    public final void installSystemProviders() {
        List<ProviderInfo> providers;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord app = (ProcessRecord) this.mProcessList.mProcessNames.get("system", 1000);
                providers = generateApplicationProvidersLocked(app);
                if (providers != null) {
                    for (int i = providers.size() - 1; i >= 0; i--) {
                        ProviderInfo pi = providers.get(i);
                        if ((pi.applicationInfo.flags & 1) == 0) {
                            Slog.w("ActivityManager", "Not installing system proc provider " + pi.name + ": not system .apk");
                            providers.remove(i);
                        }
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (providers != null) {
            this.mSystemThread.installSystemProviders(providers);
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mSystemProvidersInstalled = true;
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
        this.mConstants.start(this.mContext.getContentResolver());
        this.mCoreSettingsObserver = new CoreSettingsObserver(this);
        this.mActivityTaskManager.installSystemProviders();
        this.mDevelopmentSettingsObserver = new DevelopmentSettingsObserver();
        SettingsToPropertiesMapper.start(this.mContext.getContentResolver());
        this.mOomAdjuster.initSettings();
        RescueParty.onSettingsProviderPublished(this.mContext);
    }

    void startPersistentApps(int matchFlags) {
        if (this.mFactoryTest == 1) {
            return;
        }
        if (this.mConstants.mMegaQuickBootEnable && !this.mBootAnimationComplete && this.mConstants.mPersistentStartDelay > 0) {
            Slog.i("ActivityManager", "delay persist apps for " + this.mConstants.mPersistentStartDelay + "ms");
            handleEarlyPersistentApps(matchFlags, true);
            MainHandler mainHandler = this.mHandler;
            mainHandler.sendMessageDelayed(mainHandler.obtainMessage(START_PERSISTENT_APPS_MSG, Integer.valueOf(matchFlags)), (long) this.mConstants.mPersistentStartDelay);
            return;
        }
        handlePersistentApps(matchFlags);
    }

    void handleEarlyPersistentApps(int matchFlags, boolean earlyPerssitent) {
        boolean callFinishBooting;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                callFinishBooting = this.mCallFinishBooting;
                this.mBootAnimationComplete = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (callFinishBooting) {
            finishBooting();
        }
        synchronized (this) {
            try {
                try {
                    boostPriorityForLockedSection();
                    List<ApplicationInfo> apps = AppGlobals.getPackageManager().getPersistentApplications(matchFlags | 1024).getList();
                    for (ApplicationInfo app : apps) {
                        if (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(app.packageName)) {
                            if (earlyPerssitent) {
                                if (this.mConstants.mEarlyPersistentAppList.contains(app.packageName)) {
                                    addAppLocked(app, null, false, null, 2);
                                    Slog.i("ActivityManager", "Early persist apps :" + app.packageName);
                                } else {
                                    Slog.i("ActivityManager", "Delay persist apps :" + app.packageName);
                                }
                            } else if (!this.mConstants.mEarlyPersistentAppList.contains(app.packageName)) {
                                addAppLocked(app, null, false, null, 2);
                            }
                        }
                    }
                } finally {
                    resetPriorityAfterLockedSection();
                }
            } catch (RemoteException e) {
            }
        }
    }

    void handlePersistentApps(int matchFlags) {
        boolean callFinishBooting;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                callFinishBooting = this.mCallFinishBooting;
                this.mBootAnimationComplete = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (callFinishBooting) {
            finishBooting();
        }
        synchronized (this) {
            try {
                try {
                    boostPriorityForLockedSection();
                    List<ApplicationInfo> apps = AppGlobals.getPackageManager().getPersistentApplications(matchFlags | 1024).getList();
                    for (ApplicationInfo app : apps) {
                        if (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(app.packageName)) {
                            addAppLocked(app, null, false, null, 2);
                        }
                    }
                } finally {
                    resetPriorityAfterLockedSection();
                }
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:51:0x00de A[Catch: RemoteException -> 0x0104, all -> 0x0183, TRY_LEAVE, TryCatch #1 {all -> 0x0183, blocks: (B:26:0x0089, B:28:0x0091, B:35:0x00a2, B:37:0x00a6, B:39:0x00aa, B:41:0x00ae, B:43:0x00b6, B:50:0x00c2, B:51:0x00de, B:77:0x017e, B:72:0x0176), top: B:84:0x0008 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:51:0x00de, please report this as an issue */
    void installEncryptionUnawareProviders(int userId) throws Throwable {
        int matchFlags;
        int NP;
        SparseArray<ProcessRecord> apps;
        int NA;
        int matchFlags2;
        int NP2;
        SparseArray<ProcessRecord> apps2;
        int NA2;
        boolean processMatch;
        String str;
        ApplicationInfo applicationInfo;
        String str2;
        int NA3;
        boolean userMatch;
        int matchFlags3 = 262152;
        synchronized (this) {
            try {
                try {
                    boostPriorityForLockedSection();
                    int NP3 = this.mProcessList.mProcessNames.getMap().size();
                    for (int ip = 0; ip < NP3; ip++) {
                        SparseArray<ProcessRecord> apps3 = (SparseArray) this.mProcessList.mProcessNames.getMap().valueAt(ip);
                        int NA4 = apps3.size();
                        int ia = 0;
                        while (ia < NA4) {
                            ProcessRecord app = apps3.valueAt(ia);
                            if (app.userId != userId || app.thread == null) {
                                matchFlags = matchFlags3;
                                NP = NP3;
                                apps = apps3;
                                NA = NA4;
                            } else if (app.unlocked) {
                                matchFlags = matchFlags3;
                                NP = NP3;
                                apps = apps3;
                                NA = NA4;
                            } else {
                                int NG = app.pkgList.size();
                                int ig = 0;
                                while (ig < NG) {
                                    try {
                                        String pkgName = app.pkgList.keyAt(ig);
                                        PackageInfo pkgInfo = AppGlobals.getPackageManager().getPackageInfo(pkgName, 262152, userId);
                                        if (pkgInfo == null || ArrayUtils.isEmpty(pkgInfo.providers)) {
                                            matchFlags2 = matchFlags3;
                                            NP2 = NP3;
                                            apps2 = apps3;
                                            NA2 = NA4;
                                        } else {
                                            ProviderInfo[] providerInfoArr = pkgInfo.providers;
                                            int length = providerInfoArr.length;
                                            int i = 0;
                                            while (i < length) {
                                                ProviderInfo pi = providerInfoArr[i];
                                                String pkgName2 = pkgName;
                                                matchFlags2 = matchFlags3;
                                                try {
                                                    if (Objects.equals(pi.processName, app.processName)) {
                                                        processMatch = true;
                                                        str = pi.processName;
                                                        NP2 = NP3;
                                                        applicationInfo = pi.applicationInfo;
                                                        apps2 = apps3;
                                                        str2 = pi.name;
                                                        NA2 = NA4;
                                                        NA3 = pi.flags;
                                                        if (isSingleton(str, applicationInfo, str2, NA3)) {
                                                            userMatch = true;
                                                        } else {
                                                            userMatch = true;
                                                        }
                                                        if (!processMatch) {
                                                            Log.v("ActivityManager", "Skipping " + pi);
                                                        } else {
                                                            Log.v("ActivityManager", "Skipping " + pi);
                                                        }
                                                        i++;
                                                        pkgName = pkgName2;
                                                        matchFlags3 = matchFlags2;
                                                        NP3 = NP2;
                                                        apps3 = apps2;
                                                        NA4 = NA2;
                                                    } else {
                                                        try {
                                                            if (pi.multiprocess) {
                                                                processMatch = true;
                                                            } else {
                                                                processMatch = false;
                                                            }
                                                            str = pi.processName;
                                                            NP2 = NP3;
                                                            try {
                                                                applicationInfo = pi.applicationInfo;
                                                                apps2 = apps3;
                                                                try {
                                                                    str2 = pi.name;
                                                                    NA2 = NA4;
                                                                    try {
                                                                        NA3 = pi.flags;
                                                                        if (isSingleton(str, applicationInfo, str2, NA3) || app.userId == 0) {
                                                                            userMatch = true;
                                                                        } else {
                                                                            userMatch = false;
                                                                        }
                                                                        if (!processMatch && userMatch) {
                                                                            Log.v("ActivityManager", "Installing " + pi);
                                                                            app.thread.scheduleInstallProvider(pi);
                                                                        } else {
                                                                            Log.v("ActivityManager", "Skipping " + pi);
                                                                        }
                                                                        i++;
                                                                        pkgName = pkgName2;
                                                                        matchFlags3 = matchFlags2;
                                                                        NP3 = NP2;
                                                                        apps3 = apps2;
                                                                        NA4 = NA2;
                                                                    } catch (RemoteException e) {
                                                                    }
                                                                } catch (RemoteException e2) {
                                                                    NA2 = NA4;
                                                                }
                                                            } catch (RemoteException e3) {
                                                                apps2 = apps3;
                                                                NA2 = NA4;
                                                            }
                                                        } catch (RemoteException e4) {
                                                            NP2 = NP3;
                                                            apps2 = apps3;
                                                            NA2 = NA4;
                                                        }
                                                    }
                                                } catch (RemoteException e5) {
                                                    NP2 = NP3;
                                                    apps2 = apps3;
                                                    NA2 = NA4;
                                                }
                                            }
                                            matchFlags2 = matchFlags3;
                                            NP2 = NP3;
                                            apps2 = apps3;
                                            NA2 = NA4;
                                        }
                                    } catch (RemoteException e6) {
                                        matchFlags2 = matchFlags3;
                                        NP2 = NP3;
                                        apps2 = apps3;
                                        NA2 = NA4;
                                    }
                                    ig++;
                                    userId = userId;
                                    matchFlags3 = matchFlags2;
                                    NP3 = NP2;
                                    apps3 = apps2;
                                    NA4 = NA2;
                                }
                                matchFlags = matchFlags3;
                                NP = NP3;
                                apps = apps3;
                                NA = NA4;
                            }
                            ia++;
                            userId = userId;
                            matchFlags3 = matchFlags;
                            NP3 = NP;
                            apps3 = apps;
                            NA4 = NA;
                        }
                    }
                    resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    th = th;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    @Deprecated
    public String getProviderMimeType(Uri uri, int userId) throws Throwable {
        long ident;
        boolean clearedIdentity;
        enforceNotIsolatedCaller("getProviderMimeType");
        String name = uri.getAuthority();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int userId2 = this.mUserController.unsafeConvertIncomingUser(userId);
        if (canClearIdentity(callingPid, callingUid, userId2)) {
            long ident2 = Binder.clearCallingIdentity();
            ident = ident2;
            clearedIdentity = true;
        } else {
            ident = 0;
            clearedIdentity = false;
        }
        ContentProviderHolder holder = null;
        try {
            try {
                ContentProviderHolder holder2 = getContentProviderExternalUnchecked(name, null, callingUid, "*getmimetype*", userId2);
                if (holder2 == null) {
                    if (!clearedIdentity) {
                        ident = Binder.clearCallingIdentity();
                    }
                    if (holder2 != null) {
                        try {
                            removeContentProviderExternalUnchecked(name, null, userId2);
                        } finally {
                            Binder.restoreCallingIdentity(ident);
                        }
                    }
                    return null;
                }
                try {
                    final IBinder providerConnection = holder2.connection;
                    final ComponentName providerName = holder2.info.getComponentName();
                    Runnable providerNotResponding = new Runnable() { // from class: com.android.server.am.ActivityManagerService.14
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.w("ActivityManager", "Provider " + providerName + " didn't return from getType().");
                            ActivityManagerService.this.appNotRespondingViaProvider(providerConnection);
                        }
                    };
                    this.mHandler.postDelayed(providerNotResponding, 1000L);
                    try {
                        String type = holder2.provider.getType(uri);
                        this.mHandler.removeCallbacks(providerNotResponding);
                        if (!clearedIdentity) {
                            ident = Binder.clearCallingIdentity();
                        }
                        if (holder2 != null) {
                            try {
                                removeContentProviderExternalUnchecked(name, null, userId2);
                            } finally {
                                Binder.restoreCallingIdentity(ident);
                            }
                        }
                        return type;
                    } catch (Throwable th) {
                        this.mHandler.removeCallbacks(providerNotResponding);
                        throw th;
                    }
                } catch (RemoteException e) {
                    e = e;
                    holder = holder2;
                    Log.w("ActivityManager", "Content provider dead retrieving " + uri, e);
                    if (!clearedIdentity) {
                        ident = Binder.clearCallingIdentity();
                    }
                    if (holder != null) {
                        try {
                            removeContentProviderExternalUnchecked(name, null, userId2);
                        } finally {
                            Binder.restoreCallingIdentity(ident);
                        }
                    }
                    return null;
                } catch (Exception e2) {
                    e = e2;
                    holder = holder2;
                    Log.w("ActivityManager", "Exception while determining type of " + uri, e);
                    if (!clearedIdentity) {
                        ident = Binder.clearCallingIdentity();
                    }
                    if (holder != null) {
                        try {
                            removeContentProviderExternalUnchecked(name, null, userId2);
                        } finally {
                            Binder.restoreCallingIdentity(ident);
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    holder = holder2;
                    if (!clearedIdentity) {
                        ident = Binder.clearCallingIdentity();
                    }
                    if (holder != null) {
                        try {
                            removeContentProviderExternalUnchecked(name, null, userId2);
                        } finally {
                            Binder.restoreCallingIdentity(ident);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (RemoteException e3) {
            e = e3;
        } catch (Exception e4) {
            e = e4;
        }
    }

    public void getProviderMimeTypeAsync(Uri uri, int userId, final RemoteCallback resultCallback) {
        enforceNotIsolatedCaller("getProviderMimeTypeAsync");
        final String name = uri.getAuthority();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        final int safeUserId = this.mUserController.unsafeConvertIncomingUser(userId);
        long ident = canClearIdentity(callingPid, callingUid, userId) ? Binder.clearCallingIdentity() : 0L;
        try {
            try {
                ContentProviderHolder holder = getContentProviderExternalUnchecked(name, null, callingUid, "*getmimetype*", safeUserId);
                if (holder != null) {
                    holder.provider.getTypeAsync(uri, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg
                        public final void onResult(Bundle bundle) {
                            this.f$0.lambda$getProviderMimeTypeAsync$1$ActivityManagerService(name, safeUserId, resultCallback, bundle);
                        }
                    }));
                } else {
                    resultCallback.sendResult(Bundle.EMPTY);
                }
            } catch (RemoteException e) {
                Log.w("ActivityManager", "Content provider dead retrieving " + uri, e);
                resultCallback.sendResult(Bundle.EMPTY);
            }
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public /* synthetic */ void lambda$getProviderMimeTypeAsync$1$ActivityManagerService(String name, int safeUserId, RemoteCallback resultCallback, Bundle result) {
        long identity = Binder.clearCallingIdentity();
        try {
            removeContentProviderExternalUnchecked(name, null, safeUserId);
            Binder.restoreCallingIdentity(identity);
            resultCallback.sendResult(result);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    int checkContentProviderUriPermission(Uri uri, int userId, int callingUid, int modeFlags) {
        if (Thread.holdsLock(this.mActivityTaskManager.getGlobalLock())) {
            Slog.wtf("ActivityManager", new IllegalStateException("Unable to check Uri permission because caller is holding WM lock; assuming permission denied"));
            return -1;
        }
        String name = uri.getAuthority();
        long ident = Binder.clearCallingIdentity();
        ContentProviderHolder holder = null;
        try {
            try {
                holder = getContentProviderExternalUnchecked(name, null, callingUid, "*checkContentProviderUriPermission*", userId);
                if (holder == null) {
                    if (holder != null) {
                        try {
                            removeContentProviderExternalUnchecked(name, null, userId);
                        } finally {
                            Binder.restoreCallingIdentity(ident);
                        }
                    }
                    return -1;
                }
                int iCheckUriPermission = holder.provider.checkUriPermission((String) null, (String) null, uri, callingUid, modeFlags);
                if (holder != null) {
                    try {
                        removeContentProviderExternalUnchecked(name, null, userId);
                    } finally {
                        Binder.restoreCallingIdentity(ident);
                    }
                }
                return iCheckUriPermission;
            } catch (RemoteException e) {
                Log.w("ActivityManager", "Content provider dead retrieving " + uri, e);
                if (holder != null) {
                    try {
                        removeContentProviderExternalUnchecked(name, null, userId);
                    } finally {
                        Binder.restoreCallingIdentity(ident);
                    }
                }
                return -1;
            } catch (Exception e2) {
                Log.w("ActivityManager", "Exception while determining type of " + uri, e2);
                if (holder != null) {
                    try {
                        removeContentProviderExternalUnchecked(name, null, userId);
                    } finally {
                        Binder.restoreCallingIdentity(ident);
                    }
                }
                return -1;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    removeContentProviderExternalUnchecked(name, -1, userId);
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw th;
        }
    }

    private boolean canClearIdentity(int callingPid, int callingUid, int userId) {
        return UserHandle.getUserId(callingUid) == userId || checkComponentPermission("android.permission.INTERACT_ACROSS_USERS", callingPid, callingUid, -1, true) == 0 || checkComponentPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingPid, callingUid, -1, true) == 0;
    }

    private boolean uidOnBackgroundWhitelist(int uid) {
        int appId = UserHandle.getAppId(uid);
        int[] whitelist = this.mBackgroundAppIdWhitelist;
        for (int i : whitelist) {
            if (appId == i) {
                return true;
            }
        }
        return false;
    }

    public boolean isBackgroundRestricted(String packageName) {
        int callingUid = Binder.getCallingUid();
        IPackageManager pm = AppGlobals.getPackageManager();
        try {
            int packageUid = pm.getPackageUid(packageName, AudioFormat.EVRC, UserHandle.getUserId(callingUid));
            if (packageUid != callingUid) {
                throw new IllegalArgumentException("Uid " + callingUid + " cannot query restriction state for package " + packageName);
            }
        } catch (RemoteException e) {
        }
        return isBackgroundRestrictedNoCheck(callingUid, packageName);
    }

    boolean isBackgroundRestrictedNoCheck(int uid, String packageName) {
        int mode = getAppOpsManager().checkOpNoThrow(70, uid, packageName);
        return mode != 0;
    }

    public void backgroundWhitelistUid(int uid) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Only the OS may call backgroundWhitelistUid()");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                int N = this.mBackgroundAppIdWhitelist.length;
                int[] newList = new int[N + 1];
                System.arraycopy(this.mBackgroundAppIdWhitelist, 0, newList, 0, N);
                newList[N] = UserHandle.getAppId(uid);
                this.mBackgroundAppIdWhitelist = newList;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final ProcessRecord addAppLocked(ApplicationInfo info, String customProcess, boolean isolated, String abiOverride, int zygotePolicyFlags) {
        return addAppLocked(info, customProcess, isolated, false, false, abiOverride, zygotePolicyFlags);
    }

    final ProcessRecord addAppLocked(ApplicationInfo info, String customProcess, boolean isolated, boolean disableHiddenApiChecks, boolean mountExtStorageFull, String abiOverride, int zygotePolicyFlags) {
        return addAppLocked(info, customProcess, isolated, disableHiddenApiChecks, false, mountExtStorageFull, abiOverride, zygotePolicyFlags);
    }

    final ProcessRecord addAppLocked(ApplicationInfo info, String customProcess, boolean isolated, boolean disableHiddenApiChecks, boolean disableTestApiChecks, boolean mountExtStorageFull, String abiOverride, int zygotePolicyFlags) {
        ProcessRecord app;
        ProcessRecord app2;
        if (!isolated) {
            app = getProcessRecordLocked(customProcess != null ? customProcess : info.processName, info.uid, true);
        } else {
            app = null;
        }
        if (app != null) {
            app2 = app;
        } else {
            ProcessRecord app3 = this.mProcessList.newProcessRecordLocked(info, customProcess, isolated, 0, new HostingRecord("added application", customProcess != null ? customProcess : info.processName));
            this.mProcessList.updateLruProcessLocked(app3, false, null);
            updateOomAdjLocked(app3, "updateOomAdj_processBegin");
            app2 = app3;
        }
        try {
            AppGlobals.getPackageManager().setPackageStoppedState(info.packageName, false, UserHandle.getUserId(app2.uid));
        } catch (RemoteException e) {
        } catch (IllegalArgumentException e2) {
            Slog.w("ActivityManager", "Failed trying to unstop package " + info.packageName + ": " + e2);
        }
        if ((info.flags & 9) == 9) {
            app2.setPersistent(true);
            app2.maxAdj = -800;
        }
        if (app2.thread == null && this.mPersistentStartingProcesses.indexOf(app2) < 0) {
            this.mPersistentStartingProcesses.add(app2);
            this.mProcessList.startProcessLocked(app2, new HostingRecord("added application", customProcess != null ? customProcess : app2.processName), zygotePolicyFlags, disableHiddenApiChecks, disableTestApiChecks, mountExtStorageFull, abiOverride);
        }
        return app2;
    }

    public void unhandledBack() {
        this.mActivityTaskManager.unhandledBack();
    }

    public ParcelFileDescriptor openContentUri(String uriString) throws RemoteException {
        String packageName;
        enforceNotIsolatedCaller("openContentUri");
        int userId = UserHandle.getCallingUserId();
        Uri uri = Uri.parse(uriString);
        String name = uri.getAuthority();
        ContentProviderHolder cph = getContentProviderExternalUnchecked(name, null, Binder.getCallingUid(), "*opencontent*", userId);
        if (cph == null) {
            Slog.d("ActivityManager", "Failed to get provider for authority '" + name + "'");
            return null;
        }
        Binder token = new Binder();
        sCallerIdentity.set(new Identity(token, Binder.getCallingPid(), Binder.getCallingUid()));
        try {
            int uid = Binder.getCallingUid();
            if (uid == 0) {
                packageName = "root";
            } else if (uid == NATIVE_DUMP_TIMEOUT_MS) {
                packageName = SHELL_APP_PACKAGE;
            } else if (uid == 1013) {
                packageName = "media";
            } else if (uid == 1041) {
                packageName = "audioserver";
            } else if (uid == 1047) {
                packageName = "cameraserver";
            } else {
                packageName = uid == 1000 ? PackageManagerService.PLATFORM_PACKAGE_NAME : null;
            }
            AndroidPackage androidPackage = packageName != null ? this.mPackageManagerInt.getPackage(packageName) : this.mPackageManagerInt.getPackage(uid);
            if (androidPackage == null) {
                Log.e("ActivityManager", "Cannot find package for uid: " + uid);
                sCallerIdentity.remove();
                try {
                    removeContentProviderExternalUnchecked(name, null, userId);
                } catch (SecurityException e) {
                    if (1 == 0) {
                        throw e;
                    }
                }
                return null;
            }
            ApplicationInfo appInfo = this.mPackageManagerInt.getApplicationInfo(androidPackage.getPackageName(), 0, 1000, 0);
            if (appInfo.isVendor() || appInfo.isSystemApp() || appInfo.isSystemExt() || appInfo.isProduct()) {
                ParcelFileDescriptor pfd = cph.provider.openFile((String) null, (String) null, uri, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD, (ICancellationSignal) null, token);
                sCallerIdentity.remove();
                try {
                    removeContentProviderExternalUnchecked(name, null, userId);
                } catch (SecurityException e2) {
                    if (0 == 0) {
                        throw e2;
                    }
                }
                return pfd;
            }
            Log.e("ActivityManager", "openContentUri may only be used by vendor/system/product.");
            sCallerIdentity.remove();
            try {
                removeContentProviderExternalUnchecked(name, null, userId);
            } catch (SecurityException e3) {
                if (1 == 0) {
                    throw e3;
                }
            }
            return null;
        } catch (FileNotFoundException e4) {
            sCallerIdentity.remove();
            try {
                removeContentProviderExternalUnchecked(name, null, userId);
                return null;
            } catch (SecurityException e5) {
                if (0 != 0) {
                    return null;
                }
                throw e5;
            }
        } catch (Throwable e6) {
            sCallerIdentity.remove();
            try {
                removeContentProviderExternalUnchecked(name, null, userId);
                throw e6;
            } catch (SecurityException e7) {
                if (0 == 0) {
                    throw e7;
                }
                throw e6;
            }
        }
    }

    void reportGlobalUsageEventLocked(int event) {
        int currentUserId = this.mUserController.getCurrentUserId();
        this.mUsageStatsService.reportEvent(PackageManagerService.PLATFORM_PACKAGE_NAME, currentUserId, event);
        int[] profiles = this.mUserController.getCurrentProfileIds();
        if (profiles != null) {
            for (int i = profiles.length - 1; i >= 0; i--) {
                if (profiles[i] != currentUserId) {
                    this.mUsageStatsService.reportEvent(PackageManagerService.PLATFORM_PACKAGE_NAME, profiles[i], event);
                }
            }
        }
    }

    void reportCurWakefulnessUsageEventLocked() {
        int i;
        if (this.mWakefulness == 1) {
            i = 15;
        } else {
            i = 16;
        }
        reportGlobalUsageEventLocked(i);
    }

    void onWakefulnessChanged(int wakefulness) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                boolean wasAwake = this.mWakefulness == 1;
                boolean isAwake = wakefulness == 1;
                this.mWakefulness = wakefulness;
                if (wasAwake != isAwake) {
                    this.mServices.updateScreenStateLocked(isAwake);
                    reportCurWakefulnessUsageEventLocked();
                    this.mActivityTaskManager.onScreenAwakeChanged(isAwake);
                    this.mOomAdjProfiler.onWakefulnessChanged(wakefulness);
                }
                updateOomAdjLocked("updateOomAdj_uiVisibility");
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void notifyCleartextNetwork(int uid, byte[] firstPacket) {
        this.mHandler.obtainMessage(49, uid, 0, firstPacket).sendToTarget();
    }

    public boolean shutdown(int timeout) {
        if (checkCallingPermission("android.permission.SHUTDOWN") != 0) {
            throw new SecurityException("Requires permission android.permission.SHUTDOWN");
        }
        boolean timedout = this.mAtmInternal.shuttingDown(this.mBooted, timeout);
        this.mAppOpsService.shutdown();
        UsageStatsManagerInternal usageStatsManagerInternal = this.mUsageStatsService;
        if (usageStatsManagerInternal != null) {
            usageStatsManagerInternal.prepareShutdown();
        }
        this.mBatteryStatsService.shutdown();
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mProcessStats.shutdownLocked();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return timedout;
    }

    public void notifyLockedProfile(int userId) {
        this.mAtmInternal.notifyLockedProfile(userId, this.mUserController.getCurrentUserId());
    }

    public void startConfirmDeviceCredentialIntent(Intent intent, Bundle options) {
        this.mAtmInternal.startConfirmDeviceCredentialIntent(intent, options);
    }

    public void stopAppSwitches() {
        this.mActivityTaskManager.stopAppSwitches();
    }

    public void resumeAppSwitches() {
        this.mActivityTaskManager.resumeAppSwitches();
    }

    public void setDebugApp(String packageName, boolean waitForDebugger, boolean persistent) {
        enforceCallingPermission("android.permission.SET_DEBUG_APP", "setDebugApp()");
        long ident = Binder.clearCallingIdentity();
        boolean z = true;
        if (persistent) {
            try {
                ContentResolver resolver = this.mContext.getContentResolver();
                Settings.Global.putString(resolver, "debug_app", packageName);
                Settings.Global.putInt(resolver, "wait_for_debugger", waitForDebugger ? 1 : 0);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (!persistent) {
                    this.mOrigDebugApp = this.mDebugApp;
                    this.mOrigWaitForDebugger = this.mWaitForDebugger;
                }
                this.mDebugApp = packageName;
                this.mWaitForDebugger = waitForDebugger;
                if (persistent) {
                    z = false;
                }
                this.mDebugTransient = z;
                if (packageName != null) {
                    forceStopPackageLocked(packageName, -1, false, false, true, true, false, -1, "set debug app");
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
        Binder.restoreCallingIdentity(ident);
    }

    public void setAgentApp(String packageName, String agent) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
                    throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
                }
                if (agent == null) {
                    if (this.mAppAgentMap != null) {
                        this.mAppAgentMap.remove(packageName);
                        if (this.mAppAgentMap.isEmpty()) {
                            this.mAppAgentMap = null;
                        }
                    }
                } else {
                    if (this.mAppAgentMap == null) {
                        this.mAppAgentMap = new HashMap();
                    }
                    if (this.mAppAgentMap.size() >= 100) {
                        Slog.e("ActivityManager", "App agent map has too many entries, cannot add " + packageName + SliceClientPermissions.SliceAuthority.DELIMITER + agent);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    this.mAppAgentMap.put(packageName, agent);
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    void setTrackAllocationApp(ApplicationInfo app, String processName) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
                if (!isDebuggable && (app.flags & 2) == 0) {
                    throw new SecurityException("Process not debuggable: " + app.packageName);
                }
                this.mTrackAllocationApp = processName;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    void setProfileApp(ApplicationInfo app, String processName, ProfilerInfo profilerInfo) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
                if (!isDebuggable && !app.isProfileableByShell()) {
                    throw new SecurityException("Process not debuggable, and not profileable by shell: " + app.packageName);
                }
                this.mProfileData.setProfileApp(processName);
                if (this.mProfileData.getProfilerInfo() != null && this.mProfileData.getProfilerInfo().profileFd != null) {
                    try {
                        this.mProfileData.getProfilerInfo().profileFd.close();
                    } catch (IOException e) {
                    }
                }
                this.mProfileData.setProfilerInfo(new ProfilerInfo(profilerInfo));
                this.mProfileType = 0;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    void setNativeDebuggingAppLocked(ApplicationInfo app, String processName) {
        boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
        if (!isDebuggable && (app.flags & 2) == 0) {
            throw new SecurityException("Process not debuggable: " + app.packageName);
        }
        this.mNativeDebuggingApp = processName;
    }

    public void setAlwaysFinish(boolean enabled) {
        enforceCallingPermission("android.permission.SET_ALWAYS_FINISH", "setAlwaysFinish()");
        long ident = Binder.clearCallingIdentity();
        try {
            Settings.Global.putInt(this.mContext.getContentResolver(), "always_finish_activities", enabled ? 1 : 0);
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    this.mAlwaysFinishActivities = enabled;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void setActivityController(IActivityController controller, boolean imAMonkey) {
        if (controller != null) {
            Binder.allowBlocking(controller.asBinder());
        }
        this.mActivityTaskManager.setActivityController(controller, imAMonkey);
    }

    public void setUserIsMonkey(boolean userIsMonkey) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                synchronized (this.mPidsSelfLocked) {
                    int callingPid = Binder.getCallingPid();
                    ProcessRecord proc = this.mPidsSelfLocked.get(callingPid);
                    if (proc == null) {
                        throw new SecurityException("Unknown process: " + callingPid);
                    }
                    if (proc.getActiveInstrumentation() == null || proc.getActiveInstrumentation().mUiAutomationConnection == null) {
                        throw new SecurityException("Only an instrumentation process with a UiAutomation can call setUserIsMonkey");
                    }
                }
                this.mUserIsMonkey = userIsMonkey;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public boolean isUserAMonkey() {
        boolean z;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                z = this.mUserIsMonkey || this.mActivityTaskManager.isControllerAMonkey();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    public void requestSystemServerHeapDump() {
        ProcessRecord pr;
        if (!Build.IS_DEBUGGABLE) {
            Slog.wtf("ActivityManager", "requestSystemServerHeapDump called on a user build");
            return;
        }
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Only the system process is allowed to request a system heap dump");
        }
        synchronized (this.mPidsSelfLocked) {
            pr = this.mPidsSelfLocked.get(Process.myPid());
        }
        if (pr == null) {
            Slog.w("ActivityManager", "system process not in mPidsSelfLocked: " + Process.myPid());
            return;
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                startHeapDumpLocked(pr, true);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void requestBugReport(int bugreportType) {
        requestBugReportWithDescription(null, null, bugreportType);
    }

    public void requestBugReportWithDescription(String shareTitle, String shareDescription, int bugreportType) {
        String type;
        if (bugreportType == 0) {
            type = "bugreportfull";
        } else if (bugreportType == 1) {
            type = "bugreportplus";
        } else if (bugreportType == 2) {
            type = "bugreportremote";
        } else if (bugreportType == 3) {
            type = "bugreportwear";
        } else if (bugreportType == 4) {
            type = "bugreporttelephony";
        } else if (bugreportType == 5) {
            type = "bugreportwifi";
        } else {
            throw new IllegalArgumentException("Provided bugreport type is not correct, value: " + bugreportType);
        }
        Slog.i("ActivityManager", type + " requested by UID " + Binder.getCallingUid());
        enforceCallingPermission("android.permission.DUMP", "requestBugReport");
        if (!TextUtils.isEmpty(shareTitle)) {
            if (shareTitle.length() > 50) {
                throw new IllegalArgumentException("shareTitle should be less than 50 characters");
            }
            if (!TextUtils.isEmpty(shareDescription) && shareDescription.length() > 150) {
                throw new IllegalArgumentException("shareDescription should be less than 150 characters");
            }
            Slog.d("ActivityManager", "Bugreport notification title " + shareTitle + " description " + shareDescription);
        }
        Intent triggerShellBugreport = new Intent();
        triggerShellBugreport.setAction(INTENT_BUGREPORT_REQUESTED);
        triggerShellBugreport.setPackage(SHELL_APP_PACKAGE);
        triggerShellBugreport.putExtra(EXTRA_BUGREPORT_TYPE, bugreportType);
        triggerShellBugreport.addFlags(AudioFormat.EVRC);
        triggerShellBugreport.addFlags(16777216);
        if (shareTitle != null) {
            triggerShellBugreport.putExtra(EXTRA_TITLE, shareTitle);
        }
        if (shareDescription != null) {
            triggerShellBugreport.putExtra(EXTRA_DESCRIPTION, shareDescription);
        }
        long identity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendBroadcast(triggerShellBugreport);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void requestTelephonyBugReport(String shareTitle, String shareDescription) {
        requestBugReportWithDescription(shareTitle, shareDescription, 4);
    }

    public void requestWifiBugReport(String shareTitle, String shareDescription) {
        requestBugReportWithDescription(shareTitle, shareDescription, 5);
    }

    public void requestInteractiveBugReport() {
        requestBugReportWithDescription(null, null, 1);
    }

    public void requestInteractiveBugReportWithDescription(String shareTitle, String shareDescription) {
        requestBugReportWithDescription(shareTitle, shareDescription, 1);
    }

    public void requestFullBugReport() {
        requestBugReportWithDescription(null, null, 0);
    }

    public void requestRemoteBugReport() {
        requestBugReportWithDescription(null, null, 2);
    }

    public boolean launchBugReportHandlerApp() {
        if (!BugReportHandlerUtil.isBugReportHandlerEnabled(this.mContext)) {
            return false;
        }
        Slog.i("ActivityManager", "launchBugReportHandlerApp requested by UID " + Binder.getCallingUid());
        enforceCallingPermission("android.permission.DUMP", "launchBugReportHandlerApp");
        return BugReportHandlerUtil.launchBugReportHandlerApp(this.mContext);
    }

    public List<String> getBugreportWhitelistedPackages() {
        enforceCallingPermission("android.permission.MANAGE_DEBUGGING", "getBugreportWhitelistedPackages");
        return new ArrayList(SystemConfig.getInstance().getBugreportWhitelistedPackages());
    }

    public void registerProcessObserver(IProcessObserver observer) {
        enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "registerProcessObserver()");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mProcessObservers.register(observer);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void unregisterProcessObserver(IProcessObserver observer) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mProcessObservers.unregister(observer);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public int getUidProcessState(int uid, String callingPackage) {
        int uidProcStateLocked;
        if (!hasUsageStatsPermission(callingPackage)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "getUidProcessState");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                uidProcStateLocked = this.mProcessList.getUidProcStateLocked(uid);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return uidProcStateLocked;
    }

    public void registerUidObserver(IUidObserver observer, int which, int cutpoint, String callingPackage) {
        if (!hasUsageStatsPermission(callingPackage)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "registerUidObserver");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mUidObservers.register(observer, new UidObserverRegistration(Binder.getCallingUid(), callingPackage, which, cutpoint));
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void unregisterUidObserver(IUidObserver observer) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mUidObservers.unregister(observer);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean isUidActive(int uid, String callingPackage) {
        if (!hasUsageStatsPermission(callingPackage)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "isUidActive");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (isUidActiveLocked(uid)) {
                    return true;
                }
                return this.mInternal.isPendingTopUid(uid);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    boolean isUidActiveLocked(int uid) {
        UidRecord uidRecord = this.mProcessList.getUidRecordLocked(uid);
        return (uidRecord == null || uidRecord.setIdle) ? false : true;
    }

    public void setPersistentVrThread(int tid) {
        this.mActivityTaskManager.setPersistentVrThread(tid);
    }

    public static boolean scheduleAsRegularPriority(int tid, boolean suppressLogs) {
        try {
            Process.setThreadScheduler(tid, 0, 0);
            return true;
        } catch (IllegalArgumentException e) {
            if (!suppressLogs) {
                Slog.w("ActivityManager", "Failed to set scheduling policy, thread does not exist:\n" + e);
            }
            return false;
        } catch (SecurityException e2) {
            if (!suppressLogs) {
                Slog.w("ActivityManager", "Failed to set scheduling policy, not allowed:\n" + e2);
            }
            return false;
        }
    }

    public static boolean scheduleAsFifoPriority(int tid, boolean suppressLogs) {
        try {
            Process.setThreadScheduler(tid, WindowManagerPolicy.COLOR_FADE_LAYER, 1);
            return true;
        } catch (IllegalArgumentException e) {
            if (!suppressLogs) {
                Slog.w("ActivityManager", "Failed to set scheduling policy, thread does not exist:\n" + e);
                return false;
            }
            return false;
        } catch (SecurityException e2) {
            if (!suppressLogs) {
                Slog.w("ActivityManager", "Failed to set scheduling policy, not allowed:\n" + e2);
                return false;
            }
            return false;
        }
    }

    public void setRenderThread(int tid) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                int pid = Binder.getCallingPid();
                if (pid == Process.myPid()) {
                    demoteSystemServerRenderThread(tid);
                    resetPriorityAfterLockedSection();
                    return;
                }
                synchronized (this.mPidsSelfLocked) {
                    ProcessRecord proc = this.mPidsSelfLocked.get(pid);
                    if (proc != null && proc.renderThreadTid == 0 && tid > 0) {
                        if (!Process.isThreadInProcess(pid, tid)) {
                            throw new IllegalArgumentException("Render thread does not belong to process");
                        }
                        proc.renderThreadTid = tid;
                        if (proc.getCurrentSchedulingGroup() == 3) {
                            if (this.mUseFifoUiScheduling) {
                                Process.setThreadScheduler(proc.renderThreadTid, WindowManagerPolicy.COLOR_FADE_LAYER, 1);
                            } else {
                                Process.setThreadPriority(proc.renderThreadTid, -10);
                            }
                        }
                    }
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private void demoteSystemServerRenderThread(int tid) {
        Process.setThreadPriority(tid, 10);
    }

    public boolean isVrModePackageEnabled(ComponentName packageName) {
        this.mActivityTaskManager.enforceSystemHasVrFeature();
        VrManagerInternal vrService = (VrManagerInternal) LocalServices.getService(VrManagerInternal.class);
        return vrService.hasVrPackage(packageName, UserHandle.getCallingUserId()) == 0;
    }

    public boolean isTopActivityImmersive() {
        return this.mActivityTaskManager.isTopActivityImmersive();
    }

    public boolean isTopOfTask(IBinder token) {
        return this.mActivityTaskManager.isTopOfTask(token);
    }

    public void setHasTopUi(boolean hasTopUi) throws RemoteException {
        if (checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW") != 0) {
            String msg = "Permission Denial: setHasTopUi() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERNAL_SYSTEM_WINDOW";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        int pid = Binder.getCallingPid();
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    boolean changed = false;
                    synchronized (this.mPidsSelfLocked) {
                        ProcessRecord pr = this.mPidsSelfLocked.get(pid);
                        if (pr == null) {
                            Slog.w("ActivityManager", "setHasTopUi called on unknown pid: " + pid);
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                            return;
                        }
                        if (pr.hasTopUi() != hasTopUi) {
                            pr.setHasTopUi(hasTopUi);
                            changed = true;
                        }
                        if (changed) {
                            updateOomAdjLocked(pr, true, "updateOomAdj_uiVisibility");
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public final void enterSafeMode() {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (!this.mSystemReady) {
                    try {
                        AppGlobals.getPackageManager().enterSafeMode();
                    } catch (RemoteException e) {
                    }
                }
                this.mSafeMode = true;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public final void showSafeModeOverlay() {
        View v = LayoutInflater.from(this.mContext).inflate(R.layout.notification_template_messaging_text_message, (ViewGroup) null);
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
        lp.type = 2015;
        lp.width = -2;
        lp.height = -2;
        lp.gravity = 8388691;
        lp.format = v.getBackground().getOpacity();
        lp.flags = 24;
        lp.privateFlags |= 16;
        ((WindowManager) this.mContext.getSystemService("window")).addView(v, lp);
    }

    public void noteWakeupAlarm(IIntentSender sender, WorkSource workSource, int sourceUid, String sourcePkg, String tag) {
        int standbyBucket;
        if (workSource != null && workSource.isEmpty()) {
            workSource = null;
        }
        if (sourceUid <= 0 && workSource == null) {
            if (sender == null || !(sender instanceof PendingIntentRecord)) {
                return;
            }
            PendingIntentRecord rec = (PendingIntentRecord) sender;
            int callerUid = Binder.getCallingUid();
            sourceUid = rec.uid == callerUid ? 1000 : rec.uid;
        }
        int standbyBucket2 = 0;
        this.mBatteryStatsService.noteWakupAlarm(sourcePkg, sourceUid, workSource, tag);
        if (workSource != null) {
            String workSourcePackage = workSource.getPackageName(0);
            int workSourceUid = workSource.getAttributionUid();
            if (workSourcePackage == null) {
                workSourcePackage = sourcePkg;
                workSourceUid = sourceUid;
            }
            UsageStatsManagerInternal usageStatsManagerInternal = this.mUsageStatsService;
            if (usageStatsManagerInternal != null) {
                standbyBucket2 = usageStatsManagerInternal.getAppStandbyBucket(workSourcePackage, UserHandle.getUserId(workSourceUid), SystemClock.elapsedRealtime());
            }
            FrameworkStatsLog.write(35, workSource, tag, sourcePkg, standbyBucket2);
            return;
        }
        UsageStatsManagerInternal usageStatsManagerInternal2 = this.mUsageStatsService;
        if (usageStatsManagerInternal2 == null) {
            standbyBucket = 0;
        } else {
            int standbyBucket3 = usageStatsManagerInternal2.getAppStandbyBucket(sourcePkg, UserHandle.getUserId(sourceUid), SystemClock.elapsedRealtime());
            standbyBucket = standbyBucket3;
        }
        FrameworkStatsLog.write_non_chained(35, sourceUid, (String) null, tag, sourcePkg, standbyBucket);
    }

    public void noteAlarmStart(IIntentSender sender, WorkSource workSource, int sourceUid, String tag) {
        if (workSource != null && workSource.isEmpty()) {
            workSource = null;
        }
        if (sourceUid <= 0 && workSource == null) {
            if (sender == null || !(sender instanceof PendingIntentRecord)) {
                return;
            }
            PendingIntentRecord rec = (PendingIntentRecord) sender;
            int callerUid = Binder.getCallingUid();
            sourceUid = rec.uid == callerUid ? 1000 : rec.uid;
        }
        this.mBatteryStatsService.noteAlarmStart(tag, workSource, sourceUid);
    }

    public void noteAlarmFinish(IIntentSender sender, WorkSource workSource, int sourceUid, String tag) {
        if (workSource != null && workSource.isEmpty()) {
            workSource = null;
        }
        if (sourceUid <= 0 && workSource == null) {
            if (sender == null || !(sender instanceof PendingIntentRecord)) {
                return;
            }
            PendingIntentRecord rec = (PendingIntentRecord) sender;
            int callerUid = Binder.getCallingUid();
            sourceUid = rec.uid == callerUid ? 1000 : rec.uid;
        }
        this.mBatteryStatsService.noteAlarmFinish(tag, workSource, sourceUid);
    }

    public boolean killPids(int[] pids, String pReason, boolean secure) {
        int type;
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("killPids only available to the system");
        }
        String reason = pReason == null ? "Unknown" : pReason;
        boolean killed = false;
        synchronized (this.mPidsSelfLocked) {
            int worstType = 0;
            for (int i : pids) {
                ProcessRecord proc = this.mPidsSelfLocked.get(i);
                if (proc != null && (type = proc.setAdj) > worstType) {
                    worstType = type;
                }
            }
            if (worstType < 999 && worstType > 900) {
                worstType = 900;
            }
            if (!secure && worstType < 500) {
                worstType = 500;
            }
            Slog.w("ActivityManager", "Killing processes " + reason + " at adjustment " + worstType);
            for (int i2 : pids) {
                ProcessRecord proc2 = this.mPidsSelfLocked.get(i2);
                if (proc2 != null) {
                    int adj = proc2.setAdj;
                    if (adj >= worstType && !proc2.killedByAm) {
                        proc2.kill(reason, 13, 12, true);
                        killed = true;
                    }
                }
            }
        }
        return killed;
    }

    public void killUid(int appId, int userId, String reason) {
        enforceCallingPermission("android.permission.KILL_UID", "killUid");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                long identity = Binder.clearCallingIdentity();
                try {
                    this.mProcessList.killPackageProcessesLocked(null, appId, userId, -800, false, true, true, true, false, 13, 11, reason != null ? reason : "kill uid");
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void killUidForPermissionChange(int appId, int userId, String reason) {
        enforceCallingPermission("android.permission.KILL_UID", "killUid");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                long identity = Binder.clearCallingIdentity();
                try {
                    this.mProcessList.killPackageProcessesLocked(null, appId, userId, -800, false, true, true, true, false, 8, 0, reason != null ? reason : "kill uid");
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public boolean killProcessesBelowForeground(String reason) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("killProcessesBelowForeground() only available to system");
        }
        return killProcessesBelowAdj(0, reason);
    }

    private boolean killProcessesBelowAdj(int belowAdj, String reason) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("killProcessesBelowAdj() only available to system");
        }
        boolean killed = false;
        synchronized (this.mPidsSelfLocked) {
            int size = this.mPidsSelfLocked.size();
            for (int i = 0; i < size; i++) {
                this.mPidsSelfLocked.keyAt(i);
                ProcessRecord proc = this.mPidsSelfLocked.valueAt(i);
                if (proc != null) {
                    int adj = proc.setAdj;
                    if (adj > belowAdj && !proc.killedByAm) {
                        proc.kill(reason, 8, true);
                        killed = true;
                    }
                }
            }
        }
        return killed;
    }

    public void killProcessesWhenImperceptible(int[] pids, String reason) {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            throw new SecurityException("Requires permission android.permission.FORCE_STOP_PACKAGES");
        }
        int callerUid = Binder.getCallingUid();
        long iden = Binder.clearCallingIdentity();
        try {
            this.mProcessList.killProcessesWhenImperceptible(pids, reason, callerUid);
        } finally {
            Binder.restoreCallingIdentity(iden);
        }
    }

    public void hang(IBinder who, boolean allowRestart) {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        IBinder.DeathRecipient death = new IBinder.DeathRecipient() { // from class: com.android.server.am.ActivityManagerService.15
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (this) {
                    notifyAll();
                }
            }
        };
        try {
            who.linkToDeath(death, 0);
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    Watchdog.getInstance().setAllowRestart(allowRestart);
                    Slog.i("ActivityManager", "Hanging system process at request of pid " + Binder.getCallingPid());
                    synchronized (death) {
                        while (who.isBinderAlive()) {
                            try {
                                death.wait();
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                    Watchdog.getInstance().setAllowRestart(true);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
        } catch (RemoteException e2) {
            Slog.w("ActivityManager", "hang: given caller IBinder is already dead.");
        }
    }

    public void restart() {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        Log.i("ActivityManager", "Sending shutdown broadcast...");
        BroadcastReceiver br = new BroadcastReceiver() { // from class: com.android.server.am.ActivityManagerService.16
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Log.i("ActivityManager", "Shutting down activity manager...");
                ActivityManagerService.this.shutdown(10000);
                Log.i("ActivityManager", "Shutdown complete, restarting!");
                Process.killProcess(Process.myPid());
                System.exit(10);
            }
        };
        Intent intent = new Intent("android.intent.action.ACTION_SHUTDOWN");
        intent.addFlags(AudioFormat.EVRC);
        intent.putExtra("android.intent.extra.SHUTDOWN_USERSPACE_ONLY", true);
        br.onReceive(this.mContext, intent);
    }

    private long getLowRamTimeSinceIdle(long now) {
        long j = this.mLowRamTimeSinceLastIdle;
        long j2 = this.mLowRamStartTime;
        return j + (j2 > 0 ? now - j2 : 0L);
    }

    public void performIdleMaintenance() {
        int i;
        boolean z;
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                long now = SystemClock.uptimeMillis();
                long timeSinceLastIdle = now - this.mLastIdleTime;
                this.mOomAdjuster.mCachedAppOptimizer.compactAllSystem();
                long lowRamSinceLastIdle = getLowRamTimeSinceIdle(now);
                this.mLastIdleTime = now;
                long j = 0;
                this.mLowRamTimeSinceLastIdle = 0L;
                if (this.mLowRamStartTime != 0) {
                    this.mLowRamStartTime = now;
                }
                int i2 = 128;
                StringBuilder sb = new StringBuilder(128);
                sb.append("Idle maintenance over ");
                TimeUtils.formatDuration(timeSinceLastIdle, sb);
                sb.append(" low RAM for ");
                TimeUtils.formatDuration(lowRamSinceLastIdle, sb);
                Slog.i("ActivityManager", sb.toString());
                boolean z2 = true;
                boolean doKilling = lowRamSinceLastIdle > timeSinceLastIdle / 3;
                long totalMemoryInKb = Process.getTotalMemory() / 1000;
                long memoryGrowthThreshold = Math.max(totalMemoryInKb / 100, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
                int i3 = this.mProcessList.mLruProcesses.size() - 1;
                while (i3 >= 0) {
                    ProcessRecord proc = this.mProcessList.mLruProcesses.get(i3);
                    if (proc.notCachedSinceIdle) {
                        if (proc.setProcState < 5 || proc.setProcState > 10) {
                            i = i2;
                            z = z2;
                        } else if (!doKilling || proc.initialIdlePss == j || proc.lastPss <= (proc.initialIdlePss * 3) / 2 || proc.lastPss <= proc.initialIdlePss + memoryGrowthThreshold) {
                            i = i2;
                            z = z2;
                        } else {
                            StringBuilder sb2 = new StringBuilder(i2);
                            sb2.append("Kill");
                            sb2.append(proc.processName);
                            sb2.append(" in idle maint: pss=");
                            sb2.append(proc.lastPss);
                            sb2.append(", swapPss=");
                            sb2.append(proc.lastSwapPss);
                            sb2.append(", initialPss=");
                            sb2.append(proc.initialIdlePss);
                            sb2.append(", period=");
                            TimeUtils.formatDuration(timeSinceLastIdle, sb2);
                            sb2.append(", lowRamPeriod=");
                            TimeUtils.formatDuration(lowRamSinceLastIdle, sb2);
                            Slog.wtfQuiet("ActivityManager", sb2.toString());
                            proc.kill("idle maint (pss " + proc.lastPss + " from " + proc.initialIdlePss + ")", 13, 6, z2);
                            i = i2;
                            z = z2;
                        }
                    } else if (proc.setProcState >= 14 || proc.setProcState < 0) {
                        i = i2;
                        z = z2;
                    } else {
                        proc.notCachedSinceIdle = z2;
                        proc.initialIdlePss = 0L;
                        i = 128;
                        z = true;
                        proc.nextPssTime = ProcessList.computeNextPssTime(proc.setProcState, null, this.mTestPssMode, this.mAtmInternal.isSleeping(), now);
                    }
                    i3--;
                    i2 = i;
                    z2 = z;
                    j = 0;
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void sendIdleJobTrigger() {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            Intent intent = new Intent(ACTION_TRIGGER_IDLE).setPackage(PackageManagerService.PLATFORM_PACKAGE_NAME).addFlags(1073741824);
            broadcastIntent(null, intent, null, null, 0, null, null, null, -1, null, false, false, -1);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private void retrieveSettings() {
        ContentResolver resolver = this.mContext.getContentResolver();
        this.mActivityTaskManager.retrieveSettings(resolver);
        String debugApp = Settings.Global.getString(resolver, "debug_app");
        boolean waitForDebugger = Settings.Global.getInt(resolver, "wait_for_debugger", 0) != 0;
        boolean alwaysFinishActivities = Settings.Global.getInt(resolver, "always_finish_activities", 0) != 0;
        long waitForNetworkTimeoutMs = Settings.Global.getLong(resolver, "network_access_timeout_ms", NETWORK_ACCESS_TIMEOUT_DEFAULT_MS);
        this.mHiddenApiBlacklist.registerObserver();
        long pssDeferralMs = DeviceConfig.getLong("activity_manager", ACTIVITY_START_PSS_DEFER_CONFIG, 0L);
        DeviceConfig.addOnPropertiesChangedListener("activity_manager", ActivityThread.currentApplication().getMainExecutor(), this.mPssDelayConfigListener);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mOrigDebugApp = debugApp;
                this.mDebugApp = debugApp;
                this.mOrigWaitForDebugger = waitForDebugger;
                this.mWaitForDebugger = waitForDebugger;
                this.mAlwaysFinishActivities = alwaysFinishActivities;
                Resources res = this.mContext.getResources();
                this.mAppErrors.loadAppsNotReportingCrashesFromConfigLocked(res.getString(R.string.config_defaultDockManagerPackageName));
                boolean userSwitchUiEnabled = res.getBoolean(R.bool.config_bg_prompt_abusive_apps_to_bg_restricted) ? false : true;
                int maxRunningUsers = res.getInteger(R.integer.config_doublelineClockDefault);
                boolean delayUserDataLocking = res.getBoolean(R.bool.config_cecQuerySadMaxEnabled_default);
                this.mUserController.setInitialConfig(userSwitchUiEnabled, maxRunningUsers, delayUserDataLocking);
                this.mWaitForNetworkTimeoutMs = waitForNetworkTimeoutMs;
                this.mPssDeferralTime = pssDeferralMs;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x040b */
    /* JADX WARN: Bottom block not found for handler: all -> 0x041a */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0424 */
    /* JADX WARN: Code duplicated, block: B:123:0x0386 A[Catch: all -> 0x03ee, TryCatch #7 {all -> 0x03ee, blocks: (B:117:0x036d, B:119:0x0376, B:120:0x037a, B:123:0x0386, B:116:0x0366), top: B:177:0x02a7, inners: #12 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x03b7 A[Catch: all -> 0x03ff, TryCatch #21 {all -> 0x03ff, blocks: (B:126:0x03a9, B:128:0x03b7, B:129:0x03c6, B:130:0x03e9, B:137:0x03fa), top: B:203:0x021e }] */
    /* JADX WARN: Code duplicated, block: B:196:0x02a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0251 A[Catch: all -> 0x03f2, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x03f2, blocks: (B:76:0x021e, B:92:0x027b, B:96:0x0299, B:83:0x0251), top: B:182:0x021e }] */
    /* JADX WARN: Code duplicated, block: B:85:0x025a A[Catch: all -> 0x0247, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0247, blocks: (B:78:0x0237, B:85:0x025a, B:87:0x0269, B:88:0x0271, B:95:0x0283, B:90:0x0276, B:91:0x027a), top: B:172:0x0237, inners: #18 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0281 A[ADDED_TO_REGION] */
    /* JADX WARN: Instruction removed from duplicated block: B:123:0x0386, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void systemReady(java.lang.Runnable r48, com.android.server.utils.TimingsTraceAndSlog r49) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.systemReady(java.lang.Runnable, com.android.server.utils.TimingsTraceAndSlog):void");
    }

    public /* synthetic */ void lambda$systemReady$2$ActivityManagerService(PowerSaveState state) {
        updateForceBackgroundCheck(state.batterySaverEnabled);
    }

    public /* synthetic */ void lambda$systemReady$3$ActivityManagerService(int uid) {
        Slog.wtf("ActivityManager", "Uid " + uid + " sent too many Binders to uid " + Process.myUid());
        BinderProxy.dumpProxyDebugInfo();
        if (uid == 1000) {
            Slog.i("ActivityManager", "Skipping kill (uid is SYSTEM)");
        } else {
            killUid(UserHandle.getAppId(uid), UserHandle.getUserId(uid), "Too many Binders sent to SYSTEM");
        }
    }

    private void watchDeviceProvisioning(final Context context) {
        if (isDeviceProvisioned(context)) {
            SystemProperties.set(SYSTEM_PROPERTY_DEVICE_PROVISIONED, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
        } else {
            context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("device_provisioned"), false, new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.android.server.am.ActivityManagerService.18
                @Override // android.database.ContentObserver
                public void onChange(boolean selfChange) {
                    if (ActivityManagerService.this.isDeviceProvisioned(context)) {
                        SystemProperties.set(ActivityManagerService.SYSTEM_PROPERTY_DEVICE_PROVISIONED, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
                        context.getContentResolver().unregisterContentObserver(this);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDeviceProvisioned(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "device_provisioned", 0) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBroadcastObservers() {
        for (BroadcastQueue queue : this.mBroadcastQueues) {
            queue.start(this.mContext.getContentResolver());
        }
    }

    private void updateForceBackgroundCheck(boolean enabled) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mForceBackgroundCheck != enabled) {
                    this.mForceBackgroundCheck = enabled;
                    if (enabled) {
                        this.mProcessList.doStopUidForIdleUidsLocked();
                    }
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void killAppAtUsersRequest(ProcessRecord app) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mAppErrors.killAppAtUserRequestLocked(app);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void skipCurrentReceiverLocked(ProcessRecord app) {
        for (BroadcastQueue queue : this.mBroadcastQueues) {
            queue.skipCurrentReceiverLocked(app);
        }
    }

    public void handleApplicationCrash(IBinder app, ApplicationErrorReport.ParcelableCrashInfo crashInfo) {
        String processName;
        ProcessRecord r = findAppProcess(app, "Crash");
        if (app == null) {
            processName = "system_server";
        } else {
            processName = r == null ? UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN : r.processName;
        }
        handleApplicationCrashInner("crash", r, processName, crashInfo);
    }

    void handleApplicationCrashInner(String eventType, ProcessRecord r, String processName, ApplicationErrorReport.CrashInfo crashInfo) {
        int i;
        int i2;
        int processClassEnum;
        EventLogTags.writeAmCrash(Binder.getCallingPid(), UserHandle.getUserId(Binder.getCallingUid()), processName, r == null ? -1 : r.info.flags, crashInfo.exceptionClassName, crashInfo.exceptionMessage, crashInfo.throwFileName, crashInfo.throwLineNumber);
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        String str = (r == null || r.info == null) ? "" : r.info.packageName;
        if (r != null && r.info != null) {
            if (r.info.isInstantApp()) {
                i = 2;
            } else {
                i = 1;
            }
        } else {
            i = 0;
        }
        if (r == null) {
            i2 = 0;
        } else if (r.isInterestingToUserLocked()) {
            i2 = 2;
        } else {
            i2 = 1;
        }
        if (processName.equals("system_server")) {
            processClassEnum = 3;
        } else {
            processClassEnum = r != null ? r.getProcessClassEnum() : 0;
        }
        FrameworkStatsLog.write(78, callingUid, eventType, processName, callingPid, str, i, i2, processClassEnum);
        int relaunchReason = r != null ? r.getWindowProcessController().computeRelaunchReason() : 0;
        String relaunchReasonString = ActivityTaskManagerService.relaunchReasonToString(relaunchReason);
        if (crashInfo.crashTag == null) {
            crashInfo.crashTag = relaunchReasonString;
        } else {
            crashInfo.crashTag += " " + relaunchReasonString;
        }
        addErrorToDropBox(eventType, r, processName, null, null, null, null, null, null, crashInfo);
        this.mAppErrors.crashApplication(r, crashInfo);
    }

    public void handleApplicationStrictModeViolation(IBinder app, int penaltyMask, StrictMode.ViolationInfo info) {
        ProcessRecord r = findAppProcess(app, "StrictMode");
        if ((67108864 & penaltyMask) != 0) {
            Integer stackFingerprint = Integer.valueOf(info.hashCode());
            boolean logIt = true;
            synchronized (this.mAlreadyLoggedViolatedStacks) {
                if (this.mAlreadyLoggedViolatedStacks.contains(stackFingerprint)) {
                    logIt = false;
                } else {
                    if (this.mAlreadyLoggedViolatedStacks.size() >= 5000) {
                        this.mAlreadyLoggedViolatedStacks.clear();
                    }
                    this.mAlreadyLoggedViolatedStacks.add(stackFingerprint);
                }
            }
            if (logIt) {
                logStrictModeViolationToDropBox(r, info);
            }
        }
        if ((536870912 & penaltyMask) != 0) {
            AppErrorResult result = new AppErrorResult();
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    long origId = Binder.clearCallingIdentity();
                    Message msg = Message.obtain();
                    msg.what = 26;
                    HashMap<String, Object> data = new HashMap<>();
                    data.put("result", result);
                    data.put("app", r);
                    data.put("info", info);
                    msg.obj = data;
                    this.mUiHandler.sendMessage(msg);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            int res = result.get();
            Slog.w("ActivityManager", "handleApplicationStrictModeViolation; res=" + res);
        }
    }

    private void logStrictModeViolationToDropBox(ProcessRecord process, StrictMode.ViolationInfo info) {
        if (info == null) {
            return;
        }
        boolean isSystemApp = process == null || (process.info.flags & CecMessageType.ROUTING_INFORMATION) != 0;
        String processName = process == null ? UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN : process.processName;
        final DropBoxManager dbox = (DropBoxManager) this.mContext.getSystemService("dropbox");
        final String dropboxTag = processClass(process) + "_strictmode";
        if (dbox == null || !dbox.isTagEnabled(dropboxTag)) {
            return;
        }
        StringBuilder sb = new StringBuilder(1024);
        synchronized (sb) {
            appendDropBoxProcessHeaders(process, processName, sb);
            sb.append("Build: ");
            sb.append(Build.FINGERPRINT);
            sb.append("\n");
            sb.append("System-App: ");
            sb.append(isSystemApp);
            sb.append("\n");
            sb.append("Uptime-Millis: ");
            sb.append(info.violationUptimeMillis);
            sb.append("\n");
            if (info.violationNumThisLoop != 0) {
                sb.append("Loop-Violation-Number: ");
                sb.append(info.violationNumThisLoop);
                sb.append("\n");
            }
            if (info.numAnimationsRunning != 0) {
                sb.append("Animations-Running: ");
                sb.append(info.numAnimationsRunning);
                sb.append("\n");
            }
            if (info.broadcastIntentAction != null) {
                sb.append("Broadcast-Intent-Action: ");
                sb.append(info.broadcastIntentAction);
                sb.append("\n");
            }
            if (info.durationMillis != -1) {
                sb.append("Duration-Millis: ");
                sb.append(info.durationMillis);
                sb.append("\n");
            }
            if (info.numInstances != -1) {
                sb.append("Instance-Count: ");
                sb.append(info.numInstances);
                sb.append("\n");
            }
            if (info.tags != null) {
                for (String tag : info.tags) {
                    sb.append("Span-Tag: ");
                    sb.append(tag);
                    sb.append("\n");
                }
            }
            sb.append("\n");
            sb.append(info.getStackTrace());
            sb.append("\n");
            if (info.getViolationDetails() != null) {
                sb.append(info.getViolationDetails());
                sb.append("\n");
            }
        }
        final String res = sb.toString();
        IoThread.getHandler().post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ActivityManagerService$sgcouPmrltwdDp2DCHkd89xkLZ4
            @Override // java.lang.Runnable
            public final void run() {
                dbox.addText(dropboxTag, res);
            }
        });
    }

    public boolean handleApplicationWtf(final IBinder app, final String tag, boolean system, final ApplicationErrorReport.ParcelableCrashInfo crashInfo, int immediateCallerPid) {
        final int callingUid = Binder.getCallingUid();
        final int callingPid = Binder.getCallingPid();
        if (system || immediateCallerPid == Process.myPid()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.19
                @Override // java.lang.Runnable
                public void run() {
                    ActivityManagerService.this.handleApplicationWtfInner(callingUid, callingPid, app, tag, crashInfo);
                }
            });
            return false;
        }
        ProcessRecord r = handleApplicationWtfInner(callingUid, callingPid, app, tag, crashInfo);
        boolean isFatal = Build.IS_ENG || Settings.Global.getInt(this.mContext.getContentResolver(), "wtf_is_fatal", 0) != 0;
        boolean isSystem = r == null || r.isPersistent();
        if (!isFatal || isSystem) {
            return false;
        }
        this.mAppErrors.crashApplication(r, crashInfo);
        return true;
    }

    ProcessRecord handleApplicationWtfInner(int callingUid, int callingPid, IBinder app, String tag, ApplicationErrorReport.CrashInfo crashInfo) {
        String processName;
        ProcessRecord r = findAppProcess(app, "WTF");
        if (app == null) {
            processName = "system_server";
        } else {
            processName = r == null ? UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN : r.processName;
        }
        EventLogTags.writeAmWtf(UserHandle.getUserId(callingUid), callingPid, processName, r == null ? -1 : r.info.flags, tag, crashInfo.exceptionMessage);
        FrameworkStatsLog.write(80, callingUid, tag, processName, callingPid, r != null ? r.getProcessClassEnum() : 0);
        addErrorToDropBox("wtf", r, processName, null, null, null, tag, null, null, crashInfo);
        return r;
    }

    public void schedulePendingSystemServerWtfs(final LinkedList<Pair<String, ApplicationErrorReport.CrashInfo>> list) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.-$$Lambda$ActivityManagerService$pX-Vr8s3Kipu36jOoNke4LqODY0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$schedulePendingSystemServerWtfs$5$ActivityManagerService(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handlePendingSystemServerWtfs, reason: merged with bridge method [inline-methods] */
    public void lambda$schedulePendingSystemServerWtfs$5$ActivityManagerService(LinkedList<Pair<String, ApplicationErrorReport.CrashInfo>> list) {
        ProcessRecord proc;
        synchronized (this.mPidsSelfLocked) {
            proc = this.mPidsSelfLocked.get(MY_PID);
        }
        Pair<String, ApplicationErrorReport.CrashInfo> p = list.poll();
        while (p != null) {
            addErrorToDropBox("wtf", proc, "system_server", null, null, null, (String) p.first, null, null, (ApplicationErrorReport.CrashInfo) p.second);
            Pair<String, ApplicationErrorReport.CrashInfo> p2 = list.poll();
            p = p2;
        }
    }

    private ProcessRecord findAppProcess(IBinder app, String reason) {
        ProcessRecord processRecordFindAppProcessLocked;
        if (app == null) {
            return null;
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                processRecordFindAppProcessLocked = this.mProcessList.findAppProcessLocked(app, reason);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return processRecordFindAppProcessLocked;
    }

    void appendDropBoxProcessHeaders(ProcessRecord process, String processName, StringBuilder sb) {
        if (process == null) {
            sb.append("Process: ");
            sb.append(processName);
            sb.append("\n");
            return;
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                sb.append("Process: ");
                sb.append(processName);
                sb.append("\n");
                sb.append("PID: ");
                sb.append(process.pid);
                sb.append("\n");
                sb.append("UID: ");
                sb.append(process.uid);
                sb.append("\n");
                int flags = process.info.flags;
                IPackageManager pm = AppGlobals.getPackageManager();
                sb.append("Flags: 0x");
                sb.append(Integer.toHexString(flags));
                sb.append("\n");
                for (int ip = 0; ip < process.pkgList.size(); ip++) {
                    String pkg = process.pkgList.keyAt(ip);
                    sb.append("Package: ");
                    sb.append(pkg);
                    try {
                        PackageInfo pi = pm.getPackageInfo(pkg, 0, UserHandle.getCallingUserId());
                        if (pi != null) {
                            sb.append(" v");
                            sb.append(pi.getLongVersionCode());
                            if (pi.versionName != null) {
                                sb.append(" (");
                                sb.append(pi.versionName);
                                sb.append(")");
                            }
                        }
                    } catch (RemoteException e) {
                        Slog.e("ActivityManager", "Error getting package info: " + pkg, e);
                    }
                    sb.append("\n");
                }
                if (process.info.isInstantApp()) {
                    sb.append("Instant-App: true\n");
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    private static String processClass(ProcessRecord process) {
        if (process == null || process.pid == MY_PID) {
            return "system_server";
        }
        if ((process.info.flags & 1) != 0) {
            return "system_app";
        }
        return "data_app";
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x019d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addErrorToDropBox(java.lang.String r22, com.android.server.am.ProcessRecord r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, com.android.server.am.ProcessRecord r27, java.lang.String r28, final java.lang.String r29, final java.io.File r30, final android.app.ApplicationErrorReport.CrashInfo r31) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.addErrorToDropBox(java.lang.String, com.android.server.am.ProcessRecord, java.lang.String, java.lang.String, java.lang.String, com.android.server.am.ProcessRecord, java.lang.String, java.lang.String, java.io.File, android.app.ApplicationErrorReport$CrashInfo):void");
    }

    public List<ActivityManager.ProcessErrorStateInfo> getProcessesInErrorState() {
        enforceNotIsolatedCaller("getProcessesInErrorState");
        List<ActivityManager.ProcessErrorStateInfo> errList = null;
        boolean allUsers = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", Binder.getCallingUid()) == 0;
        int userId = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                for (int i = this.mProcessList.mLruProcesses.size() - 1; i >= 0; i--) {
                    ProcessRecord app = this.mProcessList.mLruProcesses.get(i);
                    if (allUsers || app.userId == userId) {
                        boolean crashing = app.isCrashing();
                        boolean notResponding = app.isNotResponding();
                        if (app.thread != null && (crashing || notResponding)) {
                            ActivityManager.ProcessErrorStateInfo report = null;
                            if (crashing) {
                                report = app.crashingReport;
                            } else if (notResponding) {
                                report = app.notRespondingReport;
                            }
                            if (report != null) {
                                if (errList == null) {
                                    errList = new ArrayList<>(1);
                                }
                                errList.add(report);
                            } else {
                                Slog.w("ActivityManager", "Missing app error report, app = " + app.processName + " crashing = " + crashing + " notResponding = " + notResponding);
                            }
                        }
                    }
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return errList;
    }

    public List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcessesLocked;
        enforceNotIsolatedCaller("getRunningAppProcesses");
        int callingUid = Binder.getCallingUid();
        int clientTargetSdk = this.mPackageManagerInt.getUidTargetSdkVersion(callingUid);
        boolean allUsers = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        int userId = UserHandle.getUserId(callingUid);
        boolean allUids = this.mAtmInternal.isGetTasksAllowed("getRunningAppProcesses", Binder.getCallingPid(), callingUid);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                runningAppProcessesLocked = this.mProcessList.getRunningAppProcessesLocked(allUsers, userId, allUids, callingUid, clientTargetSdk);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return runningAppProcessesLocked;
    }

    public List<ApplicationInfo> getRunningExternalApplications() {
        enforceNotIsolatedCaller("getRunningExternalApplications");
        List<ActivityManager.RunningAppProcessInfo> runningApps = getRunningAppProcesses();
        List<ApplicationInfo> retList = new ArrayList<>();
        if (runningApps != null && runningApps.size() > 0) {
            Set<String> extList = new HashSet<>();
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningApps.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo app = it.next();
                if (app.pkgList != null) {
                    for (String pkg : app.pkgList) {
                        extList.add(pkg);
                    }
                }
            }
            IPackageManager pm = AppGlobals.getPackageManager();
            for (String pkg2 : extList) {
                try {
                    ApplicationInfo info = pm.getApplicationInfo(pkg2, 0, UserHandle.getCallingUserId());
                    if ((info.flags & 262144) != 0) {
                        retList.add(info);
                    }
                } catch (RemoteException e) {
                }
            }
        }
        return retList;
    }

    public ParceledListSlice<ApplicationExitInfo> getHistoricalProcessExitReasons(String packageName, int pid, int maxNum, int userId) {
        enforceNotIsolatedCaller("getHistoricalProcessExitReasons");
        if (userId == -1 || userId == -2) {
            throw new IllegalArgumentException("Unsupported userId");
        }
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        UserHandle.getCallingUserId();
        this.mUserController.handleIncomingUser(callingPid, callingUid, userId, true, 0, "getHistoricalProcessExitReasons", null);
        ArrayList<ApplicationExitInfo> results = new ArrayList<>();
        if (!TextUtils.isEmpty(packageName)) {
            int uid = enforceDumpPermissionForPackage(packageName, userId, callingUid, "getHistoricalProcessExitReasons");
            if (uid != -1) {
                this.mProcessList.mAppExitInfoTracker.getExitInfo(packageName, uid, pid, maxNum, results);
            }
        } else {
            this.mProcessList.mAppExitInfoTracker.getExitInfo(packageName, callingUid, pid, maxNum, results);
        }
        return new ParceledListSlice<>(results);
    }

    public void setProcessStateSummary(byte[] state) {
        if (state != null && state.length > 128) {
            throw new IllegalArgumentException("Data size is too large");
        }
        this.mProcessList.mAppExitInfoTracker.setProcessStateSummary(Binder.getCallingUid(), Binder.getCallingPid(), state);
    }

    int enforceDumpPermissionForPackage(String packageName, int userId, int callingUid, String function) {
        long identity = Binder.clearCallingIdentity();
        try {
            int uid = this.mPackageManagerInt.getPackageUid(packageName, 786432, userId);
            Binder.restoreCallingIdentity(identity);
            if (UserHandle.getAppId(uid) != UserHandle.getAppId(callingUid)) {
                enforceCallingPermission("android.permission.DUMP", function);
            }
            return uid;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public void getMyMemoryState(ActivityManager.RunningAppProcessInfo outState) {
        ProcessRecord proc;
        if (outState == null) {
            throw new IllegalArgumentException("outState is null");
        }
        enforceNotIsolatedCaller("getMyMemoryState");
        int callingUid = Binder.getCallingUid();
        int clientTargetSdk = this.mPackageManagerInt.getUidTargetSdkVersion(callingUid);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                synchronized (this.mPidsSelfLocked) {
                    proc = this.mPidsSelfLocked.get(Binder.getCallingPid());
                }
                if (proc != null) {
                    this.mProcessList.fillInProcMemInfoLocked(proc, outState, clientTargetSdk);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public int getMemoryTrimLevel() {
        int i;
        enforceNotIsolatedCaller("getMyMemoryState");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                i = this.mLastMemoryLevel;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new ActivityManagerShellCommand(this, false).exec(this, in, out, err, args, callback, resultReceiver);
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        PriorityDump.dump(this.mPriorityDumper, fd, pw, args);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01f5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void dumpEverything(java.io.FileDescriptor r21, java.io.PrintWriter r22, java.lang.String[] r23, int r24, boolean r25, java.lang.String r26, boolean r27, boolean r28, int r29, boolean r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpEverything(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[], int, boolean, java.lang.String, boolean, boolean, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void doDump(FileDescriptor fd, PrintWriter pw, String[] args, boolean useProto) throws Throwable {
        String[] args2;
        String dumpPackage;
        int opti;
        String dumpPackage2;
        String dumpPackage3;
        int opti2;
        String dumpPackage4;
        ActiveServices.ServiceDumper dumper;
        String[] args3;
        String name;
        int opti3;
        String[] newArgs;
        String name2;
        int opti4;
        String[] newArgs2;
        int opti5;
        String dumpPackage5;
        int opti6;
        String dumpPackage6;
        int opti7;
        String dumpPackage7;
        String name3;
        String[] newArgs3;
        String opt;
        String[] args4 = args;
        if (DumpUtils.checkDumpAndUsageStatsPermission(this.mContext, "ActivityManager", pw)) {
            int opti8 = 0;
            boolean dumpAll = false;
            boolean dumpClient = false;
            boolean dumpCheckin = false;
            boolean dumpCheckinFormat = false;
            boolean dumpNormalPriority = false;
            boolean dumpVisibleStacksOnly = false;
            boolean dumpFocusedStackOnly = false;
            String dumpPackage8 = null;
            while (opti8 < args4.length && (opt = args4[opti8]) != null && opt.length() > 0 && opt.charAt(0) == '-') {
                opti8++;
                if ("-a".equals(opt)) {
                    dumpAll = true;
                } else if ("-c".equals(opt)) {
                    dumpClient = true;
                } else if ("-v".equals(opt)) {
                    dumpVisibleStacksOnly = true;
                } else if ("-f".equals(opt)) {
                    dumpFocusedStackOnly = true;
                } else if ("-p".equals(opt)) {
                    if (opti8 < args4.length) {
                        String dumpPackage9 = args4[opti8];
                        opti8++;
                        dumpPackage8 = dumpPackage9;
                        dumpClient = true;
                    } else {
                        pw.println("Error: -p option requires package argument");
                        return;
                    }
                } else if ("--checkin".equals(opt)) {
                    dumpCheckinFormat = true;
                    dumpCheckin = true;
                } else if ("-C".equals(opt)) {
                    dumpCheckinFormat = true;
                } else if ("--normal-priority".equals(opt)) {
                    dumpNormalPriority = true;
                } else {
                    if ("-h".equals(opt)) {
                        ActivityManagerShellCommand.dumpHelp(pw, true);
                        return;
                    }
                    pw.println("Unknown argument: " + opt + "; use -h for help");
                }
            }
            long origId = Binder.clearCallingIdentity();
            if (useProto) {
                ProtoOutputStream proto = new ProtoOutputStream(fd);
                String cmd = opti8 < args4.length ? args4[opti8] : "";
                int opti9 = opti8 + 1;
                if (ActivityTaskManagerService.DUMP_ACTIVITIES_CMD.equals(cmd) || ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD.equals(cmd)) {
                    this.mAtmInternal.writeActivitiesToProto(proto);
                } else if ("broadcasts".equals(cmd) || "b".equals(cmd)) {
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            writeBroadcastsToProtoLocked(proto);
                        } catch (Throwable th) {
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterLockedSection();
                } else if ("provider".equals(cmd)) {
                    if (opti9 >= args4.length) {
                        name3 = null;
                        newArgs3 = EMPTY_STRING_ARRAY;
                    } else {
                        String name4 = args4[opti9];
                        int opti10 = opti9 + 1;
                        String[] newArgs4 = new String[args4.length - opti10];
                        if (args4.length > 2) {
                            System.arraycopy(args4, opti10, newArgs4, 0, args4.length - opti10);
                        }
                        name3 = name4;
                        newArgs3 = newArgs4;
                    }
                    if (!dumpProviderProto(fd, pw, name3, newArgs3)) {
                        pw.println("No providers match: " + name3);
                        pw.println("Use -h for help.");
                    }
                } else if ("service".equals(cmd)) {
                    this.mServices.dumpDebug(proto, 1146756268033L);
                } else if ("processes".equals(cmd) || "p".equals(cmd)) {
                    if (opti9 >= args4.length) {
                        opti7 = opti9;
                        dumpPackage7 = dumpPackage8;
                    } else {
                        String dumpPackage10 = args4[opti9];
                        opti7 = opti9 + 1;
                        dumpPackage7 = dumpPackage10;
                    }
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            writeProcessesToProtoLocked(proto, dumpPackage7);
                        } catch (Throwable th2) {
                            resetPriorityAfterLockedSection();
                            throw th2;
                        }
                    }
                    resetPriorityAfterLockedSection();
                } else {
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            long activityToken = proto.start(1146756268033L);
                            this.mAtmInternal.writeActivitiesToProto(proto);
                            proto.end(activityToken);
                            long broadcastToken = proto.start(1146756268034L);
                            writeBroadcastsToProtoLocked(proto);
                            proto.end(broadcastToken);
                            long serviceToken = proto.start(1146756268035L);
                            this.mServices.dumpDebug(proto, 1146756268033L);
                            proto.end(serviceToken);
                            long processToken = proto.start(1146756268036L);
                            writeProcessesToProtoLocked(proto, dumpPackage8);
                            proto.end(processToken);
                        } catch (Throwable th3) {
                            resetPriorityAfterLockedSection();
                            throw th3;
                        }
                    }
                    resetPriorityAfterLockedSection();
                }
                proto.flush();
                Binder.restoreCallingIdentity(origId);
                return;
            }
            int dumpAppId = getAppId(dumpPackage8);
            boolean more = false;
            if (opti8 >= args4.length) {
                args2 = args4;
                dumpPackage = dumpPackage8;
                opti = opti8;
            } else {
                String cmd2 = args4[opti8];
                int opti11 = opti8 + 1;
                if (ActivityTaskManagerService.DUMP_ACTIVITIES_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_LASTANR_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_LASTANR_TRACES_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_STARTER_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_CONTAINERS_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_RECENTS_CMD.equals(cmd2) || ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD.equals(cmd2)) {
                    opti11 = opti11;
                    this.mAtmInternal.dump(cmd2, fd, pw, args, opti11, true, dumpClient, dumpPackage8);
                    opti11 = opti11;
                } else if ("binder-proxies".equals(cmd2)) {
                    if (opti11 >= args4.length) {
                        dumpBinderProxies(pw, 0);
                        opti11 = opti11;
                        opti11 = opti11;
                    } else {
                        String uid = args4[opti11];
                        opti11++;
                        System.gc();
                        System.runFinalization();
                        System.gc();
                        pw.println(BinderInternal.nGetBinderProxyCount(Integer.parseInt(uid)));
                    }
                } else if ("allowed-associations".equals(cmd2)) {
                    if (opti11 >= args4.length) {
                        opti6 = opti11;
                        dumpPackage6 = dumpPackage8;
                    } else {
                        String dumpPackage11 = args4[opti11];
                        opti6 = opti11 + 1;
                        dumpPackage6 = dumpPackage11;
                    }
                    synchronized (this) {
                        try {
                            try {
                                boostPriorityForLockedSection();
                                dumpAllowedAssociationsLocked(fd, pw, args, opti6, true, dumpPackage6);
                                resetPriorityAfterLockedSection();
                                opti11 = opti6;
                                dumpPackage8 = dumpPackage6;
                            } catch (Throwable th4) {
                                th = th4;
                                resetPriorityAfterLockedSection();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                } else if ("broadcasts".equals(cmd2) || "b".equals(cmd2)) {
                    if (opti11 >= args4.length) {
                        opti11 = opti11;
                        dumpPackage2 = dumpPackage8;
                    } else {
                        String dumpPackage12 = args4[opti11];
                        opti11++;
                        dumpPackage2 = dumpPackage12;
                    }
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            dumpBroadcastsLocked(fd, pw, args, opti11, true, dumpPackage2);
                        } catch (Throwable th6) {
                            resetPriorityAfterLockedSection();
                            throw th6;
                        }
                    }
                    resetPriorityAfterLockedSection();
                    dumpPackage8 = dumpPackage2;
                } else if ("broadcast-stats".equals(cmd2)) {
                    if (opti11 >= args4.length) {
                        opti5 = opti11;
                        dumpPackage5 = dumpPackage8;
                    } else {
                        String dumpPackage13 = args4[opti11];
                        opti5 = opti11 + 1;
                        dumpPackage5 = dumpPackage13;
                    }
                    synchronized (this) {
                        try {
                            try {
                                boostPriorityForLockedSection();
                                if (dumpCheckinFormat) {
                                    dumpBroadcastStatsCheckinLocked(fd, pw, args, opti5, dumpCheckin, dumpPackage5);
                                } else {
                                    dumpBroadcastStatsLocked(fd, pw, args, opti5, true, dumpPackage5);
                                }
                                resetPriorityAfterLockedSection();
                                opti11 = opti5;
                                dumpPackage8 = dumpPackage5;
                            } catch (Throwable th7) {
                                th = th7;
                                resetPriorityAfterLockedSection();
                                throw th;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                } else if ("intents".equals(cmd2) || "i".equals(cmd2)) {
                    if (opti11 >= args4.length) {
                        opti11 = opti11;
                        dumpPackage3 = dumpPackage8;
                    } else {
                        String dumpPackage14 = args4[opti11];
                        opti11++;
                        dumpPackage3 = dumpPackage14;
                    }
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            this.mPendingIntentController.dumpPendingIntents(pw, true, dumpPackage3);
                        } catch (Throwable th9) {
                            resetPriorityAfterLockedSection();
                            throw th9;
                        }
                    }
                    resetPriorityAfterLockedSection();
                    dumpPackage8 = dumpPackage3;
                } else if ("processes".equals(cmd2) || "p".equals(cmd2)) {
                    if (opti11 >= args4.length) {
                        opti2 = opti11;
                        dumpPackage4 = dumpPackage8;
                    } else {
                        String dumpPackage15 = args4[opti11];
                        opti2 = opti11 + 1;
                        dumpPackage4 = dumpPackage15;
                    }
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            dumpProcessesLocked(fd, pw, args, opti2, true, dumpPackage4, dumpAppId);
                        } catch (Throwable th10) {
                            resetPriorityAfterLockedSection();
                            throw th10;
                        }
                    }
                    resetPriorityAfterLockedSection();
                    opti11 = opti2;
                    dumpPackage8 = dumpPackage4;
                } else if ("oom".equals(cmd2) || "o".equals(cmd2)) {
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            dumpOomLocked(fd, pw, false, args, opti11, true, dumpPackage8, true);
                        } catch (Throwable th11) {
                            resetPriorityAfterLockedSection();
                            throw th11;
                        }
                    }
                    resetPriorityAfterLockedSection();
                    opti11 = opti11;
                } else {
                    if ("lmk".equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                dumpLmkLocked(pw);
                            } catch (Throwable th12) {
                                resetPriorityAfterLockedSection();
                                throw th12;
                            }
                        }
                        resetPriorityAfterLockedSection();
                        opti11 = opti11;
                    } else if ("lru".equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                dumpLruLocked(pw, dumpPackage8, null);
                            } catch (Throwable th13) {
                                resetPriorityAfterLockedSection();
                                throw th13;
                            }
                        }
                        resetPriorityAfterLockedSection();
                        opti11 = opti11;
                    } else if ("permissions".equals(cmd2) || "perm".equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                dumpPermissionsLocked(fd, pw, args, opti11, true, dumpPackage8);
                            } catch (Throwable th14) {
                                resetPriorityAfterLockedSection();
                                throw th14;
                            }
                        }
                        resetPriorityAfterLockedSection();
                    } else if ("provider".equals(cmd2)) {
                        if (opti11 >= args4.length) {
                            name2 = null;
                            opti4 = opti11;
                            newArgs2 = EMPTY_STRING_ARRAY;
                        } else {
                            String name5 = args4[opti11];
                            int opti12 = opti11 + 1;
                            String[] newArgs5 = new String[args4.length - opti12];
                            if (args4.length > 2) {
                                System.arraycopy(args4, opti12, newArgs5, 0, args4.length - opti12);
                            }
                            name2 = name5;
                            opti4 = opti12;
                            newArgs2 = newArgs5;
                        }
                        if (!dumpProvider(fd, pw, name2, newArgs2, 0, dumpAll)) {
                            pw.println("No providers match: " + name2);
                            pw.println("Use -h for help.");
                        }
                        opti11 = opti4;
                    } else if ("providers".equals(cmd2) || "prov".equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                dumpProvidersLocked(fd, pw, args, opti11, true, dumpPackage8);
                            } catch (Throwable th15) {
                                resetPriorityAfterLockedSection();
                                throw th15;
                            }
                        }
                        resetPriorityAfterLockedSection();
                    } else if ("service".equals(cmd2)) {
                        if (opti11 >= args4.length) {
                            name = null;
                            opti3 = opti11;
                            newArgs = EMPTY_STRING_ARRAY;
                        } else {
                            String name6 = args4[opti11];
                            int opti13 = opti11 + 1;
                            String[] newArgs6 = new String[args4.length - opti13];
                            if (args4.length > 2) {
                                System.arraycopy(args4, opti13, newArgs6, 0, args4.length - opti13);
                            }
                            name = name6;
                            opti3 = opti13;
                            newArgs = newArgs6;
                        }
                        if (!this.mServices.dumpService(fd, pw, name, newArgs, 0, dumpAll)) {
                            pw.println("No services match: " + name);
                            pw.println("Use -h for help.");
                        }
                        opti11 = opti3;
                    } else if (com.android.server.pm.Settings.ATTR_PACKAGE.equals(cmd2)) {
                        if (opti11 >= args4.length) {
                            pw.println("package: no package name specified");
                            pw.println("Use -h for help.");
                            args3 = args4;
                        } else {
                            dumpPackage8 = args4[opti11];
                            int opti14 = opti11 + 1;
                            String[] newArgs7 = new String[args4.length - opti14];
                            if (args4.length > 2) {
                                System.arraycopy(args4, opti14, newArgs7, 0, args4.length - opti14);
                            }
                            args3 = newArgs7;
                            opti11 = 0;
                            more = true;
                        }
                        args4 = args3;
                    } else if ("associations".equals(cmd2) || "as".equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                dumpAssociationsLocked(fd, pw, args, opti11, true, dumpClient, dumpPackage8);
                            } catch (Throwable th16) {
                                resetPriorityAfterLockedSection();
                                throw th16;
                            }
                        }
                        resetPriorityAfterLockedSection();
                    } else if ("settings".equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                this.mConstants.dump(pw);
                                this.mOomAdjuster.dumpCachedAppOptimizerSettings(pw);
                            } catch (Throwable th17) {
                                resetPriorityAfterLockedSection();
                                throw th17;
                            }
                        }
                        resetPriorityAfterLockedSection();
                        opti11 = opti11;
                    } else if ("services".equals(cmd2) || "s".equals(cmd2)) {
                        if (dumpClient) {
                            synchronized (this) {
                                try {
                                    boostPriorityForLockedSection();
                                    dumper = this.mServices.newServiceDumperLocked(fd, pw, args, opti11, true, dumpPackage8);
                                } catch (Throwable th18) {
                                    resetPriorityAfterLockedSection();
                                    throw th18;
                                }
                            }
                            resetPriorityAfterLockedSection();
                            dumper.dumpWithClient();
                        } else {
                            synchronized (this) {
                                try {
                                    boostPriorityForLockedSection();
                                    this.mServices.newServiceDumperLocked(fd, pw, args, opti11, true, dumpPackage8).dumpLocked();
                                } catch (Throwable th19) {
                                    resetPriorityAfterLockedSection();
                                    throw th19;
                                }
                            }
                            resetPriorityAfterLockedSection();
                        }
                    } else if ("locks".equals(cmd2)) {
                        LockGuard.dump(fd, pw, args);
                        opti11 = opti11;
                    } else if (DatabaseHelper.SoundModelContract.KEY_USERS.equals(cmd2)) {
                        synchronized (this) {
                            try {
                                boostPriorityForLockedSection();
                                dumpUsersLocked(pw);
                            } catch (Throwable th20) {
                                resetPriorityAfterLockedSection();
                                throw th20;
                            }
                        }
                        resetPriorityAfterLockedSection();
                        opti11 = opti11;
                    } else if ("exit-info".equals(cmd2)) {
                        if (opti11 < args4.length) {
                            dumpPackage8 = args4[opti11];
                            opti11++;
                        }
                        this.mProcessList.mAppExitInfoTracker.dumpHistoryProcessExitInfo(pw, dumpPackage8);
                    } else {
                        opti11 = opti11;
                        if (!this.mAtmInternal.dumpActivity(fd, pw, cmd2, args, opti11, dumpAll, dumpVisibleStacksOnly, dumpFocusedStackOnly)) {
                            ActivityManagerShellCommand shell = new ActivityManagerShellCommand(this, true);
                            int res = shell.exec(this, null, fd, null, args, null, new ResultReceiver(null));
                            if (res < 0) {
                                pw.println("Bad activity command, or no activities match: " + cmd2);
                                pw.println("Use -h for help.");
                            }
                        }
                    }
                    opti11 = opti11;
                }
                if (more) {
                    args2 = args4;
                    dumpPackage = dumpPackage8;
                    opti = opti11;
                } else {
                    Binder.restoreCallingIdentity(origId);
                    return;
                }
            }
            if (dumpCheckinFormat) {
                dumpBroadcastStatsCheckinLocked(fd, pw, args2, opti, dumpCheckin, dumpPackage);
            } else if (dumpClient) {
                dumpEverything(fd, pw, args2, opti, dumpAll, dumpPackage, dumpClient, dumpNormalPriority, dumpAppId, true);
            } else {
                synchronized (this) {
                    try {
                        boostPriorityForLockedSection();
                        dumpEverything(fd, pw, args2, opti, dumpAll, dumpPackage, dumpClient, dumpNormalPriority, dumpAppId, false);
                    } catch (Throwable th21) {
                        resetPriorityAfterLockedSection();
                        throw th21;
                    }
                }
                resetPriorityAfterLockedSection();
            }
            Binder.restoreCallingIdentity(origId);
        }
    }

    void dumpAssociationsLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, boolean dumpClient, String dumpPackage) {
        ArrayMap<String, Association> sourceProcesses;
        int dumpUid;
        int N1;
        ActivityManagerService activityManagerService = this;
        String str = dumpPackage;
        pw.println("ACTIVITY MANAGER ASSOCIATIONS (dumpsys activity associations)");
        int dumpUid2 = 0;
        int i = 0;
        if (str != null) {
            IPackageManager pm = AppGlobals.getPackageManager();
            try {
                dumpUid2 = pm.getPackageUid(str, 4194304, 0);
            } catch (RemoteException e) {
            }
        }
        boolean printedAnything = false;
        long now = SystemClock.uptimeMillis();
        int i1 = 0;
        int N2 = activityManagerService.mAssociations.size();
        while (i1 < N2) {
            ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>> targetComponents = activityManagerService.mAssociations.valueAt(i1);
            int i2 = 0;
            int N3 = targetComponents.size();
            while (i2 < N3) {
                SparseArray<ArrayMap<String, Association>> sourceUids = targetComponents.valueAt(i2);
                int i3 = 0;
                int N4 = sourceUids.size();
                while (i3 < N4) {
                    ArrayMap<String, Association> sourceProcesses2 = sourceUids.valueAt(i3);
                    boolean printedAnything2 = printedAnything;
                    int N5 = sourceProcesses2.size();
                    int i4 = 0;
                    while (i4 < N5) {
                        int N6 = N5;
                        Association ass = sourceProcesses2.valueAt(i4);
                        if (str == null) {
                            sourceProcesses = sourceProcesses2;
                        } else {
                            sourceProcesses = sourceProcesses2;
                            if (!ass.mTargetComponent.getPackageName().equals(str) && UserHandle.getAppId(ass.mSourceUid) != dumpUid2) {
                                dumpUid = dumpUid2;
                                N1 = N2;
                                targetComponents = targetComponents;
                            }
                            i4++;
                            str = dumpPackage;
                            sourceProcesses2 = sourceProcesses;
                            N5 = N6;
                            dumpUid2 = dumpUid;
                            N2 = N1;
                            targetComponents = targetComponents;
                        }
                        printedAnything2 = true;
                        pw.print("  ");
                        pw.print(ass.mTargetProcess);
                        pw.print(SliceClientPermissions.SliceAuthority.DELIMITER);
                        dumpUid = dumpUid2;
                        UserHandle.formatUid(pw, ass.mTargetUid);
                        pw.print(" <- ");
                        pw.print(ass.mSourceProcess);
                        pw.print(SliceClientPermissions.SliceAuthority.DELIMITER);
                        UserHandle.formatUid(pw, ass.mSourceUid);
                        pw.println();
                        pw.print("    via ");
                        pw.print(ass.mTargetComponent.flattenToShortString());
                        pw.println();
                        pw.print("    ");
                        long dur = ass.mTime;
                        N1 = N2;
                        int N7 = ass.mNesting;
                        if (N7 > 0) {
                            dur += now - ass.mStartTime;
                        }
                        TimeUtils.formatDuration(dur, pw);
                        pw.print(" (");
                        pw.print(ass.mCount);
                        pw.print(" times)");
                        pw.print("  ");
                        int i5 = 0;
                        while (i5 < ass.mStateTimes.length) {
                            long amt = ass.mStateTimes[i5];
                            long dur2 = dur;
                            if (ass.mLastState - 0 == i5) {
                                amt += now - ass.mLastStateUptime;
                            }
                            if (amt != 0) {
                                pw.print(" ");
                                pw.print(ProcessList.makeProcStateString(i5 + 0));
                                pw.print("=");
                                TimeUtils.formatDuration(amt, pw);
                                if (ass.mLastState - 0 == i5) {
                                    pw.print("*");
                                }
                            }
                            i5++;
                            dur = dur2;
                        }
                        pw.println();
                        if (ass.mNesting > 0) {
                            pw.print("    Currently active: ");
                            TimeUtils.formatDuration(now - ass.mStartTime, pw);
                            pw.println();
                        }
                        i4++;
                        str = dumpPackage;
                        sourceProcesses2 = sourceProcesses;
                        N5 = N6;
                        dumpUid2 = dumpUid;
                        N2 = N1;
                        targetComponents = targetComponents;
                    }
                    i3++;
                    str = dumpPackage;
                    i = 0;
                    printedAnything = printedAnything2;
                    dumpUid2 = dumpUid2;
                }
                i2++;
                str = dumpPackage;
                dumpUid2 = dumpUid2;
            }
            i1++;
            activityManagerService = this;
            str = dumpPackage;
            dumpUid2 = dumpUid2;
        }
        if (!printedAnything) {
            pw.println("  (nothing)");
        }
    }

    private int getAppId(String dumpPackage) {
        if (dumpPackage != null) {
            try {
                ApplicationInfo info = this.mContext.getPackageManager().getApplicationInfo(dumpPackage, 0);
                return UserHandle.getAppId(info.uid);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                return -1;
            }
        }
        return -1;
    }

    boolean dumpUids(PrintWriter pw, String dumpPackage, int dumpAppId, ActiveUids uids, String header, boolean needSep) {
        boolean printed = false;
        for (int i = 0; i < uids.size(); i++) {
            UidRecord uidRec = uids.valueAt(i);
            if (dumpPackage == null || UserHandle.getAppId(uidRec.uid) == dumpAppId) {
                if (!printed) {
                    printed = true;
                    if (needSep) {
                        pw.println();
                    }
                    pw.print("  ");
                    pw.println(header);
                    needSep = true;
                }
                pw.print("    UID ");
                UserHandle.formatUid(pw, uidRec.uid);
                pw.print(": ");
                pw.println(uidRec);
                pw.print("      curProcState=");
                pw.print(uidRec.mCurProcState);
                pw.print(" curCapability=");
                ActivityManager.printCapabilitiesFull(pw, uidRec.curCapability);
                pw.println();
                for (int j = uidRec.procRecords.size() - 1; j >= 0; j--) {
                    pw.print("      proc=");
                    pw.println(uidRec.procRecords.valueAt(j));
                }
            }
        }
        return printed;
    }

    void dumpBinderProxyInterfaceCounts(PrintWriter pw, String header) {
        BinderProxy.InterfaceCount[] proxyCounts = BinderProxy.getSortedInterfaceCounts(50);
        pw.println(header);
        for (int i = 0; i < proxyCounts.length; i++) {
            pw.println("    #" + (i + 1) + ": " + proxyCounts[i]);
        }
    }

    boolean dumpBinderProxiesCounts(PrintWriter pw, String header) {
        SparseIntArray counts = BinderInternal.nGetBinderProxyPerUidCounts();
        if (counts != null) {
            pw.println(header);
            for (int i = 0; i < counts.size(); i++) {
                int uid = counts.keyAt(i);
                int binderCount = counts.valueAt(i);
                pw.print("    UID ");
                pw.print(uid);
                pw.print(", binder count = ");
                pw.print(binderCount);
                pw.print(", package(s)= ");
                String[] pkgNames = this.mContext.getPackageManager().getPackagesForUid(uid);
                if (pkgNames != null) {
                    for (String str : pkgNames) {
                        pw.print(str);
                        pw.print("; ");
                    }
                } else {
                    pw.print("NO PACKAGE NAME FOUND");
                }
                pw.println();
            }
            return true;
        }
        return false;
    }

    void dumpBinderProxies(PrintWriter pw, int minCountToDumpInterfaces) {
        pw.println("ACTIVITY MANAGER BINDER PROXY STATE (dumpsys activity binder-proxies)");
        int proxyCount = BinderProxy.getProxyCount();
        if (proxyCount >= minCountToDumpInterfaces) {
            dumpBinderProxyInterfaceCounts(pw, "Top proxy interface names held by SYSTEM");
        } else {
            pw.print("Not dumping proxy interface counts because size (" + Integer.toString(proxyCount) + ") looks reasonable");
            pw.println();
        }
        dumpBinderProxiesCounts(pw, "  Counts of Binder Proxies held by SYSTEM");
    }

    void dumpLruEntryLocked(PrintWriter pw, int index, ProcessRecord proc, String prefix) {
        pw.print(prefix);
        pw.print('#');
        if (index < 10) {
            pw.print(' ');
        }
        pw.print(index);
        pw.print(": ");
        pw.print(ProcessList.makeOomAdjString(proc.setAdj, false));
        pw.print(' ');
        pw.print(ProcessList.makeProcStateString(proc.getCurProcState()));
        pw.print(' ');
        ActivityManager.printCapabilitiesSummary(pw, proc.curCapability);
        pw.print(' ');
        pw.print(proc.toShortString());
        if (proc.hasActivitiesOrRecentTasks() || proc.hasClientActivities() || proc.treatLikeActivity) {
            pw.print(" act:");
            boolean printed = false;
            if (proc.hasActivities()) {
                pw.print(ActivityTaskManagerService.DUMP_ACTIVITIES_CMD);
                printed = true;
            }
            if (proc.hasRecentTasks()) {
                if (printed) {
                    pw.print("|");
                }
                pw.print(ActivityTaskManagerService.DUMP_RECENTS_CMD);
                printed = true;
            }
            if (proc.hasClientActivities()) {
                if (printed) {
                    pw.print("|");
                }
                pw.print("client");
                printed = true;
            }
            if (proc.treatLikeActivity) {
                if (printed) {
                    pw.print("|");
                }
                pw.print("treated");
            }
        }
        pw.println();
    }

    boolean dumpLruLocked(PrintWriter pw, String dumpPackage, String prefix) {
        String innerPrefix;
        int N = this.mProcessList.mLruProcesses.size();
        if (prefix == null) {
            pw.println("ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)");
            innerPrefix = "  ";
        } else {
            boolean haveAny = false;
            for (int i = N - 1; i >= 0; i--) {
                ProcessRecord r = this.mProcessList.mLruProcesses.get(i);
                if (dumpPackage == null || r.pkgList.containsKey(dumpPackage)) {
                    haveAny = true;
                    break;
                }
            }
            if (!haveAny) {
                return false;
            }
            pw.print(prefix);
            pw.println("Raw LRU list (dumpsys activity lru):");
            innerPrefix = prefix + "  ";
        }
        boolean first = true;
        int i2 = N - 1;
        while (i2 >= this.mProcessList.mLruProcessActivityStart) {
            ProcessRecord r2 = this.mProcessList.mLruProcesses.get(i2);
            if (dumpPackage == null || r2.pkgList.containsKey(dumpPackage)) {
                if (first) {
                    pw.print(innerPrefix);
                    pw.println("Activities:");
                    first = false;
                }
                dumpLruEntryLocked(pw, i2, r2, innerPrefix);
            }
            i2--;
        }
        boolean first2 = true;
        while (i2 >= this.mProcessList.mLruProcessServiceStart) {
            ProcessRecord r3 = this.mProcessList.mLruProcesses.get(i2);
            if (dumpPackage == null || r3.pkgList.containsKey(dumpPackage)) {
                if (first2) {
                    pw.print(innerPrefix);
                    pw.println("Services:");
                    first2 = false;
                }
                dumpLruEntryLocked(pw, i2, r3, innerPrefix);
            }
            i2--;
        }
        boolean first3 = true;
        while (i2 >= 0) {
            ProcessRecord r4 = this.mProcessList.mLruProcesses.get(i2);
            if (dumpPackage == null || r4.pkgList.containsKey(dumpPackage)) {
                if (first3) {
                    pw.print(innerPrefix);
                    pw.println("Other:");
                    first3 = false;
                }
                dumpLruEntryLocked(pw, i2, r4, innerPrefix);
            }
            i2--;
        }
        return true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x08f9 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0900 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void dumpProcessesLocked(java.io.FileDescriptor r17, java.io.PrintWriter r18, java.lang.String[] r19, int r20, boolean r21, java.lang.String r22, int r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpProcessesLocked(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[], int, boolean, java.lang.String, int):void");
    }

    private void dumpUsersLocked(PrintWriter pw) {
        pw.println("ACTIVITY MANAGER USERS (dumpsys activity users)");
        this.mUserController.dump(pw);
    }

    void writeProcessesToProtoLocked(ProtoOutputStream proto, String dumpPackage) {
        int NP = this.mProcessList.mProcessNames.getMap().size();
        int numPers = 0;
        for (int ip = 0; ip < NP; ip++) {
            SparseArray<ProcessRecord> procs = (SparseArray) this.mProcessList.mProcessNames.getMap().valueAt(ip);
            int NA = procs.size();
            for (int ia = 0; ia < NA; ia++) {
                ProcessRecord r = procs.valueAt(ia);
                if (dumpPackage == null || r.pkgList.containsKey(dumpPackage)) {
                    r.dumpDebug(proto, 2246267895809L, this.mProcessList.mLruProcesses.indexOf(r));
                    if (r.isPersistent()) {
                        numPers++;
                    }
                }
            }
        }
        for (int i = 0; i < this.mProcessList.mIsolatedProcesses.size(); i++) {
            ProcessRecord r2 = this.mProcessList.mIsolatedProcesses.valueAt(i);
            if (dumpPackage == null || r2.pkgList.containsKey(dumpPackage)) {
                r2.dumpDebug(proto, 2246267895810L, this.mProcessList.mLruProcesses.indexOf(r2));
            }
        }
        for (int i2 = 0; i2 < this.mActiveInstrumentation.size(); i2++) {
            ActiveInstrumentation ai = this.mActiveInstrumentation.get(i2);
            if (dumpPackage == null || ai.mClass.getPackageName().equals(dumpPackage) || ai.mTargetInfo.packageName.equals(dumpPackage)) {
                ai.dumpDebug(proto, 2246267895811L);
            }
        }
        int whichAppId = getAppId(dumpPackage);
        for (int i3 = 0; i3 < this.mProcessList.mActiveUids.size(); i3++) {
            UidRecord uidRec = this.mProcessList.mActiveUids.valueAt(i3);
            if (dumpPackage == null || UserHandle.getAppId(uidRec.uid) == whichAppId) {
                uidRec.dumpDebug(proto, 2246267895812L);
            }
        }
        for (int i4 = 0; i4 < this.mValidateUids.size(); i4++) {
            UidRecord uidRec2 = this.mValidateUids.valueAt(i4);
            if (dumpPackage == null || UserHandle.getAppId(uidRec2.uid) == whichAppId) {
                uidRec2.dumpDebug(proto, 2246267895813L);
            }
        }
        if (this.mProcessList.getLruSizeLocked() > 0) {
            long lruToken = proto.start(1146756268038L);
            int total = this.mProcessList.getLruSizeLocked();
            proto.write(1120986464257L, total);
            proto.write(1120986464258L, total - this.mProcessList.mLruProcessActivityStart);
            proto.write(1120986464259L, total - this.mProcessList.mLruProcessServiceStart);
            writeProcessOomListToProto(proto, 2246267895812L, this, this.mProcessList.mLruProcesses, false, dumpPackage);
            proto.end(lruToken);
        }
        if (dumpPackage != null) {
            synchronized (this.mPidsSelfLocked) {
                for (int i5 = 0; i5 < this.mPidsSelfLocked.size(); i5++) {
                    ProcessRecord r3 = this.mPidsSelfLocked.valueAt(i5);
                    if (r3.pkgList.containsKey(dumpPackage)) {
                        r3.dumpDebug(proto, 2246267895815L);
                    }
                }
            }
        }
        if (this.mImportantProcesses.size() > 0) {
            synchronized (this.mPidsSelfLocked) {
                for (int i6 = 0; i6 < this.mImportantProcesses.size(); i6++) {
                    ImportanceToken it = this.mImportantProcesses.valueAt(i6);
                    ProcessRecord r4 = this.mPidsSelfLocked.get(it.pid);
                    if (dumpPackage == null || (r4 != null && r4.pkgList.containsKey(dumpPackage))) {
                        it.dumpDebug(proto, 2246267895816L);
                    }
                }
            }
        }
        for (int i7 = 0; i7 < this.mPersistentStartingProcesses.size(); i7++) {
            ProcessRecord r5 = this.mPersistentStartingProcesses.get(i7);
            if (dumpPackage == null || dumpPackage.equals(r5.info.packageName)) {
                r5.dumpDebug(proto, 2246267895817L);
            }
        }
        for (int i8 = 0; i8 < this.mProcessList.mRemovedProcesses.size(); i8++) {
            ProcessRecord r6 = this.mProcessList.mRemovedProcesses.get(i8);
            if (dumpPackage == null || dumpPackage.equals(r6.info.packageName)) {
                r6.dumpDebug(proto, 2246267895818L);
            }
        }
        for (int i9 = 0; i9 < this.mProcessesOnHold.size(); i9++) {
            ProcessRecord r7 = this.mProcessesOnHold.get(i9);
            if (dumpPackage == null || dumpPackage.equals(r7.info.packageName)) {
                r7.dumpDebug(proto, 2246267895819L);
            }
        }
        writeProcessesToGcToProto(proto, 2246267895820L, dumpPackage);
        this.mAppErrors.dumpDebug(proto, 1146756268045L, dumpPackage);
        this.mAtmInternal.writeProcessesToProto(proto, dumpPackage, this.mWakefulness, this.mTestPssMode);
        if (dumpPackage == null) {
            this.mUserController.dumpDebug(proto, 1146756268046L);
        }
        int NI = this.mUidObservers.getRegisteredCallbackCount();
        for (int i10 = 0; i10 < NI; i10++) {
            UidObserverRegistration reg = (UidObserverRegistration) this.mUidObservers.getRegisteredCallbackCookie(i10);
            if (dumpPackage == null || dumpPackage.equals(reg.pkg)) {
                reg.dumpDebug(proto, 2246267895831L);
            }
        }
        for (int v : this.mDeviceIdleWhitelist) {
            proto.write(2220498092056L, v);
        }
        for (int v2 : this.mDeviceIdleTempWhitelist) {
            proto.write(2220498092057L, v2);
        }
        if (this.mPendingTempWhitelist.size() > 0) {
            for (int i11 = 0; i11 < this.mPendingTempWhitelist.size(); i11++) {
                this.mPendingTempWhitelist.valueAt(i11).dumpDebug(proto, 2246267895834L);
            }
        }
        long j = 1138166333441L;
        if ((this.mDebugApp != null || this.mOrigDebugApp != null || this.mDebugTransient || this.mOrigWaitForDebugger) && (dumpPackage == null || dumpPackage.equals(this.mDebugApp) || dumpPackage.equals(this.mOrigDebugApp))) {
            long debugAppToken = proto.start(1146756268062L);
            proto.write(1138166333441L, this.mDebugApp);
            proto.write(1138166333442L, this.mOrigDebugApp);
            proto.write(1133871366147L, this.mDebugTransient);
            proto.write(1133871366148L, this.mOrigWaitForDebugger);
            proto.end(debugAppToken);
        }
        if (this.mMemWatchProcesses.getMap().size() > 0) {
            long token = proto.start(1146756268064L);
            ArrayMap<String, SparseArray<Pair<Long, String>>> procs2 = this.mMemWatchProcesses.getMap();
            int i12 = 0;
            while (i12 < procs2.size()) {
                String proc = procs2.keyAt(i12);
                SparseArray<Pair<Long, String>> uids = procs2.valueAt(i12);
                int NI2 = NI;
                ArrayMap<String, SparseArray<Pair<Long, String>>> procs3 = procs2;
                long ptoken = proto.start(2246267895809L);
                proto.write(j, proc);
                int j2 = 0;
                while (j2 < uids.size()) {
                    String proc2 = proc;
                    long utoken = proto.start(2246267895810L);
                    Pair<Long, String> val = uids.valueAt(j2);
                    proto.write(1120986464257L, uids.keyAt(j2));
                    proto.write(1138166333442L, DebugUtils.sizeValueToString(((Long) val.first).longValue(), new StringBuilder()));
                    proto.write(1138166333443L, (String) val.second);
                    proto.end(utoken);
                    j2++;
                    whichAppId = whichAppId;
                    proc = proc2;
                    uids = uids;
                    procs3 = procs3;
                    token = token;
                }
                proto.end(ptoken);
                i12++;
                NI = NI2;
                procs2 = procs3;
                token = token;
                j = 1138166333441L;
            }
            long dtoken = proto.start(1146756268034L);
            proto.write(1138166333441L, this.mMemWatchDumpProcName);
            proto.write(1138166333446L, this.mMemWatchDumpUri.toString());
            proto.write(1120986464259L, this.mMemWatchDumpPid);
            proto.write(1120986464260L, this.mMemWatchDumpUid);
            proto.write(1133871366149L, this.mMemWatchIsUserInitiated);
            proto.end(dtoken);
            proto.end(token);
        }
        String str = this.mTrackAllocationApp;
        if (str != null && (dumpPackage == null || dumpPackage.equals(str))) {
            proto.write(1138166333473L, this.mTrackAllocationApp);
        }
        if ((this.mProfileData.getProfileApp() != null || this.mProfileData.getProfileProc() != null || (this.mProfileData.getProfilerInfo() != null && (this.mProfileData.getProfilerInfo().profileFile != null || this.mProfileData.getProfilerInfo().profileFd != null))) && (dumpPackage == null || dumpPackage.equals(this.mProfileData.getProfileApp()))) {
            long token2 = proto.start(1146756268066L);
            proto.write(1138166333441L, this.mProfileData.getProfileApp());
            this.mProfileData.getProfileProc().dumpDebug(proto, 1146756268034L);
            if (this.mProfileData.getProfilerInfo() != null) {
                this.mProfileData.getProfilerInfo().dumpDebug(proto, 1146756268035L);
                proto.write(1120986464260L, this.mProfileType);
            }
            proto.end(token2);
        }
        if (dumpPackage == null || dumpPackage.equals(this.mNativeDebuggingApp)) {
            proto.write(1138166333475L, this.mNativeDebuggingApp);
        }
        if (dumpPackage == null) {
            proto.write(1133871366180L, this.mAlwaysFinishActivities);
            proto.write(1120986464294L, numPers);
            proto.write(1133871366183L, this.mProcessesReady);
            proto.write(1133871366184L, this.mSystemReady);
            proto.write(1133871366185L, this.mBooted);
            proto.write(1120986464298L, this.mFactoryTest);
            proto.write(1133871366187L, this.mBooting);
            proto.write(1133871366188L, this.mCallFinishBooting);
            proto.write(1133871366189L, this.mBootAnimationComplete);
            proto.write(1112396529710L, this.mLastPowerCheckUptime);
            this.mOomAdjuster.dumpProcessListVariablesLocked(proto);
            proto.write(1133871366199L, this.mAllowLowerMemLevel);
            proto.write(1120986464312L, this.mLastMemoryLevel);
            proto.write(1120986464313L, this.mLastNumProcesses);
            long now = SystemClock.uptimeMillis();
            ProtoUtils.toDuration(proto, 1146756268090L, this.mLastIdleTime, now);
            proto.write(1112396529723L, getLowRamTimeSinceIdle(now));
        }
    }

    void writeProcessesToGcToProto(ProtoOutputStream proto, long fieldId, String dumpPackage) {
        if (this.mProcessesToGc.size() > 0) {
            long now = SystemClock.uptimeMillis();
            for (int i = 0; i < this.mProcessesToGc.size(); i++) {
                ProcessRecord r = this.mProcessesToGc.get(i);
                if (dumpPackage == null || dumpPackage.equals(r.info.packageName)) {
                    long token = proto.start(fieldId);
                    r.dumpDebug(proto, 1146756268033L);
                    proto.write(1133871366146L, r.reportLowMemory);
                    proto.write(1112396529667L, now);
                    proto.write(1112396529668L, r.lastRequestedGc);
                    proto.write(1112396529669L, r.lastLowMemory);
                    proto.end(token);
                }
            }
        }
    }

    boolean dumpProcessesToGc(PrintWriter pw, boolean needSep, String dumpPackage) {
        if (this.mProcessesToGc.size() > 0) {
            boolean printed = false;
            long now = SystemClock.uptimeMillis();
            for (int i = 0; i < this.mProcessesToGc.size(); i++) {
                ProcessRecord proc = this.mProcessesToGc.get(i);
                if (dumpPackage == null || dumpPackage.equals(proc.info.packageName)) {
                    if (!printed) {
                        if (needSep) {
                            pw.println();
                        }
                        needSep = true;
                        pw.println("  Processes that are waiting to GC:");
                        printed = true;
                    }
                    pw.print("    Process ");
                    pw.println(proc);
                    pw.print("      lowMem=");
                    pw.print(proc.reportLowMemory);
                    pw.print(", last gced=");
                    pw.print(now - proc.lastRequestedGc);
                    pw.print(" ms ago, last lowMem=");
                    pw.print(now - proc.lastLowMemory);
                    pw.println(" ms ago");
                }
            }
        }
        return needSep;
    }

    void printOomLevel(PrintWriter pw, String name, int adj) {
        pw.print("    ");
        if (adj >= 0) {
            pw.print(' ');
            if (adj < 10) {
                pw.print(' ');
            }
        } else if (adj > -10) {
            pw.print(' ');
        }
        pw.print(adj);
        pw.print(": ");
        pw.print(name);
        pw.print(" (");
        pw.print(stringifySize(this.mProcessList.getMemLevel(adj), 1024));
        pw.println(")");
    }

    boolean dumpOomLocked(FileDescriptor fd, PrintWriter pw, boolean needSep, String[] args, int opti, boolean dumpAll, String dumpPackage, boolean inclGc) {
        boolean needSep2;
        if (this.mProcessList.getLruSizeLocked() <= 0) {
            needSep2 = needSep;
        } else {
            if (needSep) {
                pw.println();
            }
            pw.println("  OOM levels:");
            printOomLevel(pw, "SYSTEM_ADJ", -900);
            printOomLevel(pw, "PERSISTENT_PROC_ADJ", -800);
            printOomLevel(pw, "PERSISTENT_SERVICE_ADJ", -700);
            printOomLevel(pw, "FOREGROUND_APP_ADJ", 0);
            printOomLevel(pw, "VISIBLE_APP_ADJ", 100);
            printOomLevel(pw, "PERCEPTIBLE_APP_ADJ", 200);
            printOomLevel(pw, "PERCEPTIBLE_LOW_APP_ADJ", 250);
            printOomLevel(pw, "BACKUP_APP_ADJ", DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR);
            printOomLevel(pw, "HEAVY_WEIGHT_APP_ADJ", 400);
            printOomLevel(pw, "SERVICE_ADJ", 500);
            printOomLevel(pw, "HOME_APP_ADJ", SystemService.PHASE_THIRD_PARTY_APPS_CAN_START);
            printOomLevel(pw, "PREVIOUS_APP_ADJ", 700);
            printOomLevel(pw, "SERVICE_B_ADJ", 800);
            printOomLevel(pw, "CACHED_APP_MIN_ADJ", 900);
            printOomLevel(pw, "CACHED_APP_MAX_ADJ", 999);
            if (1 != 0) {
                pw.println();
            }
            pw.print("  Process OOM control (");
            pw.print(this.mProcessList.getLruSizeLocked());
            pw.print(" total, non-act at ");
            pw.print(this.mProcessList.getLruSizeLocked() - this.mProcessList.mLruProcessActivityStart);
            pw.print(", non-svc at ");
            pw.print(this.mProcessList.getLruSizeLocked() - this.mProcessList.mLruProcessServiceStart);
            pw.println("):");
            dumpProcessOomList(pw, this, this.mProcessList.mLruProcesses, "    ", "Proc", "PERS", true, dumpPackage);
            needSep2 = true;
        }
        dumpProcessesToGc(pw, needSep2, dumpPackage);
        pw.println();
        this.mAtmInternal.dumpForOom(pw);
        return true;
    }

    private boolean reportLmkKillAtOrBelow(PrintWriter pw, int oom_adj) {
        Integer cnt = ProcessList.getLmkdKillCount(0, oom_adj);
        if (cnt == null) {
            return false;
        }
        pw.println("    kills at or below oom_adj " + oom_adj + ": " + cnt);
        return true;
    }

    boolean dumpLmkLocked(PrintWriter pw) {
        pw.println("ACTIVITY MANAGER LMK KILLS (dumpsys activity lmk)");
        Integer cnt = ProcessList.getLmkdKillCount(NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE, NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE);
        if (cnt == null) {
            return false;
        }
        pw.println("  Total number of kills: " + cnt);
        return reportLmkKillAtOrBelow(pw, 999) && reportLmkKillAtOrBelow(pw, 900) && reportLmkKillAtOrBelow(pw, 800) && reportLmkKillAtOrBelow(pw, 700) && reportLmkKillAtOrBelow(pw, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START) && reportLmkKillAtOrBelow(pw, 500) && reportLmkKillAtOrBelow(pw, 400) && reportLmkKillAtOrBelow(pw, DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR) && reportLmkKillAtOrBelow(pw, 250) && reportLmkKillAtOrBelow(pw, 200) && reportLmkKillAtOrBelow(pw, 100) && reportLmkKillAtOrBelow(pw, 0);
    }

    protected boolean dumpProvider(FileDescriptor fd, PrintWriter pw, String name, String[] args, int opti, boolean dumpAll) {
        return this.mProviderMap.dumpProvider(fd, pw, name, args, opti, dumpAll);
    }

    protected boolean dumpProviderProto(FileDescriptor fd, PrintWriter pw, String name, String[] args) {
        return this.mProviderMap.dumpProviderProto(fd, pw, name, args);
    }

    public static class ItemMatcher {
        boolean all = true;
        ArrayList<ComponentName> components;
        ArrayList<Integer> objects;
        ArrayList<String> strings;

        public void build(String name) {
            ComponentName componentName = ComponentName.unflattenFromString(name);
            if (componentName != null) {
                if (this.components == null) {
                    this.components = new ArrayList<>();
                }
                this.components.add(componentName);
                this.all = false;
                return;
            }
            try {
                int objectId = Integer.parseInt(name, 16);
                if (this.objects == null) {
                    this.objects = new ArrayList<>();
                }
                this.objects.add(Integer.valueOf(objectId));
                this.all = false;
            } catch (RuntimeException e) {
                if (this.strings == null) {
                    this.strings = new ArrayList<>();
                }
                this.strings.add(name);
                this.all = false;
            }
        }

        public int build(String[] args, int opti) {
            while (opti < args.length) {
                String name = args[opti];
                if ("--".equals(name)) {
                    return opti + 1;
                }
                build(name);
                opti++;
            }
            return opti;
        }

        public boolean match(Object object, ComponentName comp) {
            if (this.all) {
                return true;
            }
            if (this.components != null) {
                for (int i = 0; i < this.components.size(); i++) {
                    if (this.components.get(i).equals(comp)) {
                        return true;
                    }
                }
            }
            if (this.objects != null) {
                for (int i2 = 0; i2 < this.objects.size(); i2++) {
                    if (System.identityHashCode(object) == this.objects.get(i2).intValue()) {
                        return true;
                    }
                }
            }
            if (this.strings != null) {
                String flat = comp.flattenToString();
                for (int i3 = 0; i3 < this.strings.size(); i3++) {
                    if (flat.contains(this.strings.get(i3))) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    void writeBroadcastsToProtoLocked(ProtoOutputStream proto) {
        if (this.mRegisteredReceivers.size() > 0) {
            for (ReceiverList r : this.mRegisteredReceivers.values()) {
                r.dumpDebug(proto, 2246267895809L);
            }
        }
        this.mReceiverResolver.dumpDebug(proto, 1146756268034L);
        for (BroadcastQueue q : this.mBroadcastQueues) {
            q.dumpDebug(proto, 2246267895811L);
        }
        int user = 0;
        while (true) {
            long token = 1138166333441L;
            if (user < this.mStickyBroadcasts.size()) {
                long token2 = proto.start(2246267895812L);
                proto.write(1120986464257L, this.mStickyBroadcasts.keyAt(user));
                for (Map.Entry<String, ArrayList<Intent>> ent : this.mStickyBroadcasts.valueAt(user).entrySet()) {
                    long actionToken = proto.start(2246267895810L);
                    proto.write(token, ent.getKey());
                    for (Intent intent : ent.getValue()) {
                        intent.dumpDebug(proto, 2246267895810L, false, true, true, false);
                        actionToken = actionToken;
                        token2 = token2;
                    }
                    proto.end(actionToken);
                    token = 1138166333441L;
                }
                proto.end(token2);
                user++;
            } else {
                long handlerToken = proto.start(1146756268037L);
                proto.write(1138166333441L, this.mHandler.toString());
                this.mHandler.getLooper().dumpDebug(proto, 1146756268034L);
                proto.end(handlerToken);
                return;
            }
        }
    }

    void dumpAllowedAssociationsLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
        pw.println("ACTIVITY MANAGER ALLOWED ASSOCIATION STATE (dumpsys activity allowed-associations)");
        boolean printed = false;
        if (this.mAllowedAssociations != null) {
            for (int i = 0; i < this.mAllowedAssociations.size(); i++) {
                String pkg = this.mAllowedAssociations.keyAt(i);
                ArraySet<String> asc = this.mAllowedAssociations.valueAt(i).getAllowedPackageAssociations();
                if (!printed) {
                    pw.println("  Allowed associations (by restricted package):");
                    printed = true;
                }
                pw.print("  * ");
                pw.print(pkg);
                pw.println(":");
                for (int j = 0; j < asc.size(); j++) {
                    if (dumpPackage == null || pkg.equals(dumpPackage) || asc.valueAt(j).equals(dumpPackage)) {
                        pw.print("      Allow: ");
                        pw.println(asc.valueAt(j));
                    }
                }
                if (this.mAllowedAssociations.valueAt(i).isDebuggable()) {
                    pw.println("      (debuggable)");
                }
            }
        }
        if (!printed) {
            pw.println("  (No association restrictions)");
        }
    }

    void dumpBroadcastsLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
        boolean dumpAll2;
        boolean onlyHistory;
        String dumpPackage2;
        boolean needSep;
        String str;
        boolean needSep2;
        boolean printedAnything;
        boolean dumpAll3;
        boolean needSep3 = false;
        boolean printedAnything2 = false;
        if (!"history".equals(dumpPackage)) {
            dumpAll2 = dumpAll;
            onlyHistory = false;
            dumpPackage2 = dumpPackage;
        } else {
            if (opti < args.length && "-s".equals(args[opti])) {
                dumpAll3 = false;
            } else {
                dumpAll3 = dumpAll;
            }
            onlyHistory = true;
            dumpAll2 = dumpAll3;
            dumpPackage2 = null;
        }
        pw.println("ACTIVITY MANAGER BROADCAST STATE (dumpsys activity broadcasts)");
        if (!onlyHistory && dumpAll2) {
            if (this.mRegisteredReceivers.size() <= 0) {
                needSep2 = false;
                printedAnything = false;
            } else {
                boolean printed = false;
                for (ReceiverList r : this.mRegisteredReceivers.values()) {
                    if (dumpPackage2 == null || (r.app != null && dumpPackage2.equals(r.app.info.packageName))) {
                        if (!printed) {
                            pw.println("  Registered Receivers:");
                            needSep3 = true;
                            printed = true;
                            printedAnything2 = true;
                        }
                        pw.print("  * ");
                        pw.println(r);
                        r.dump(pw, "    ");
                    }
                }
                needSep2 = needSep3;
                printedAnything = printedAnything2;
            }
            if (!this.mReceiverResolver.dump(pw, needSep2 ? "\n  Receiver Resolver Table:" : "  Receiver Resolver Table:", "    ", dumpPackage2, false, false)) {
                needSep3 = needSep2;
                printedAnything2 = printedAnything;
            } else {
                needSep3 = true;
                printedAnything2 = true;
            }
        }
        BroadcastQueue[] broadcastQueueArr = this.mBroadcastQueues;
        int length = broadcastQueueArr.length;
        boolean z = false;
        boolean needSep4 = needSep3;
        boolean printedAnything3 = printedAnything2;
        int i = 0;
        while (i < length) {
            BroadcastQueue q = broadcastQueueArr[i];
            needSep4 = q.dumpLocked(fd, pw, args, opti, dumpAll2, dumpPackage2, needSep4);
            printedAnything3 |= needSep4;
            i++;
            z = z;
            length = length;
            broadcastQueueArr = broadcastQueueArr;
        }
        boolean needSep5 = true;
        if (!onlyHistory && this.mStickyBroadcasts != null && dumpPackage2 == null) {
            for (int user = 0; user < this.mStickyBroadcasts.size(); user++) {
                if (needSep5) {
                    pw.println();
                }
                needSep5 = true;
                printedAnything3 = true;
                pw.print("  Sticky broadcasts for user ");
                pw.print(this.mStickyBroadcasts.keyAt(user));
                String str2 = ":";
                pw.println(":");
                StringBuilder sb = new StringBuilder(128);
                for (Map.Entry<String, ArrayList<Intent>> ent : this.mStickyBroadcasts.valueAt(user).entrySet()) {
                    pw.print("  * Sticky action ");
                    pw.print(ent.getKey());
                    if (dumpAll2) {
                        pw.println(str2);
                        ArrayList<Intent> intents = ent.getValue();
                        int N = intents.size();
                        int i2 = 0;
                        while (i2 < N) {
                            boolean needSep6 = needSep5;
                            sb.setLength(0);
                            sb.append("    Intent: ");
                            intents.get(i2).toShortString(sb, false, true, false, false);
                            pw.println(sb.toString());
                            Bundle bundle = intents.get(i2).getExtras();
                            if (bundle != null) {
                                pw.print("      ");
                                pw.println(bundle.toString());
                            }
                            i2++;
                            needSep5 = needSep6;
                            str2 = str2;
                        }
                        needSep = needSep5;
                        str = str2;
                    } else {
                        needSep = needSep5;
                        str = str2;
                        pw.println("");
                    }
                    needSep5 = needSep;
                    str2 = str;
                }
            }
        }
        if (!onlyHistory && dumpAll2) {
            pw.println();
            for (BroadcastQueue queue : this.mBroadcastQueues) {
                pw.println("  mBroadcastsScheduled [" + queue.mQueueName + "]=" + queue.mBroadcastsScheduled);
            }
            pw.println("  mHandler:");
            this.mHandler.dump(new PrintWriterPrinter(pw), "    ");
            printedAnything3 = true;
        }
        if (!printedAnything3) {
            pw.println("  (nothing)");
        }
    }

    void dumpBroadcastStatsLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
        if (this.mCurBroadcastStats == null) {
            return;
        }
        pw.println("ACTIVITY MANAGER BROADCAST STATS STATE (dumpsys activity broadcast-stats)");
        long now = SystemClock.elapsedRealtime();
        if (this.mLastBroadcastStats != null) {
            pw.print("  Last stats (from ");
            TimeUtils.formatDuration(this.mLastBroadcastStats.mStartRealtime, now, pw);
            pw.print(" to ");
            TimeUtils.formatDuration(this.mLastBroadcastStats.mEndRealtime, now, pw);
            pw.print(", ");
            TimeUtils.formatDuration(this.mLastBroadcastStats.mEndUptime - this.mLastBroadcastStats.mStartUptime, pw);
            pw.println(" uptime):");
            if (!this.mLastBroadcastStats.dumpStats(pw, "    ", dumpPackage)) {
                pw.println("    (nothing)");
            }
            pw.println();
        }
        pw.print("  Current stats (from ");
        TimeUtils.formatDuration(this.mCurBroadcastStats.mStartRealtime, now, pw);
        pw.print(" to now, ");
        TimeUtils.formatDuration(SystemClock.uptimeMillis() - this.mCurBroadcastStats.mStartUptime, pw);
        pw.println(" uptime):");
        if (!this.mCurBroadcastStats.dumpStats(pw, "    ", dumpPackage)) {
            pw.println("    (nothing)");
        }
    }

    void dumpBroadcastStatsCheckinLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean fullCheckin, String dumpPackage) {
        if (this.mCurBroadcastStats == null) {
            return;
        }
        BroadcastStats broadcastStats = this.mLastBroadcastStats;
        if (broadcastStats != null) {
            broadcastStats.dumpCheckinStats(pw, dumpPackage);
            if (fullCheckin) {
                this.mLastBroadcastStats = null;
                return;
            }
        }
        this.mCurBroadcastStats.dumpCheckinStats(pw, dumpPackage);
        if (fullCheckin) {
            this.mCurBroadcastStats = null;
        }
    }

    void dumpProvidersLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
        ItemMatcher matcher = new ItemMatcher();
        matcher.build(args, opti);
        pw.println("ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)");
        boolean needSep = this.mProviderMap.dumpProvidersLocked(pw, dumpAll, dumpPackage);
        boolean printedAnything = false | needSep;
        if (this.mLaunchingProviders.size() > 0) {
            boolean printed = false;
            for (int i = this.mLaunchingProviders.size() - 1; i >= 0; i--) {
                ContentProviderRecord r = this.mLaunchingProviders.get(i);
                if (dumpPackage == null || dumpPackage.equals(r.name.getPackageName())) {
                    if (!printed) {
                        if (needSep) {
                            pw.println();
                        }
                        needSep = true;
                        pw.println("  Launching content providers:");
                        printed = true;
                        printedAnything = true;
                    }
                    pw.print("  Launching #");
                    pw.print(i);
                    pw.print(": ");
                    pw.println(r);
                }
            }
        }
        if (!printedAnything) {
            pw.println("  (nothing)");
        }
    }

    void dumpPermissionsLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, String dumpPackage) {
        pw.println("ACTIVITY MANAGER URI PERMISSIONS (dumpsys activity permissions)");
        this.mUgmInternal.dump(pw, dumpAll, dumpPackage);
    }

    private static final int dumpProcessList(PrintWriter pw, ActivityManagerService service, List list, String prefix, String normalLabel, String persistentLabel, String dumpPackage) {
        int numPers = 0;
        int N = list.size() - 1;
        for (int i = N; i >= 0; i--) {
            ProcessRecord r = (ProcessRecord) list.get(i);
            if (dumpPackage == null || dumpPackage.equals(r.info.packageName)) {
                Object[] objArr = new Object[4];
                objArr[0] = prefix;
                objArr[1] = r.isPersistent() ? persistentLabel : normalLabel;
                objArr[2] = Integer.valueOf(i);
                objArr[3] = r.toString();
                pw.println(String.format("%s%s #%2d: %s", objArr));
                if (r.isPersistent()) {
                    numPers++;
                }
            }
        }
        return numPers;
    }

    private static final ArrayList<Pair<ProcessRecord, Integer>> sortProcessOomList(List<ProcessRecord> origList, String dumpPackage) {
        ArrayList<Pair<ProcessRecord, Integer>> list = new ArrayList<>(origList.size());
        for (int i = 0; i < origList.size(); i++) {
            ProcessRecord r = origList.get(i);
            if (dumpPackage == null || r.pkgList.containsKey(dumpPackage)) {
                list.add(new Pair<>(origList.get(i), Integer.valueOf(i)));
            }
        }
        Comparator<Pair<ProcessRecord, Integer>> comparator = new Comparator<Pair<ProcessRecord, Integer>>() { // from class: com.android.server.am.ActivityManagerService.21
            @Override // java.util.Comparator
            public int compare(Pair<ProcessRecord, Integer> object1, Pair<ProcessRecord, Integer> object2) {
                if (((ProcessRecord) object1.first).setAdj != ((ProcessRecord) object2.first).setAdj) {
                    return ((ProcessRecord) object1.first).setAdj > ((ProcessRecord) object2.first).setAdj ? -1 : 1;
                }
                if (((ProcessRecord) object1.first).setProcState != ((ProcessRecord) object2.first).setProcState) {
                    return ((ProcessRecord) object1.first).setProcState > ((ProcessRecord) object2.first).setProcState ? -1 : 1;
                }
                if (((Integer) object1.second).intValue() != ((Integer) object2.second).intValue()) {
                    return ((Integer) object1.second).intValue() > ((Integer) object2.second).intValue() ? -1 : 1;
                }
                return 0;
            }
        };
        Collections.sort(list, comparator);
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v19 */
    private static final boolean writeProcessOomListToProto(ProtoOutputStream protoOutputStream, long fieldId, ActivityManagerService service, List<ProcessRecord> origList, boolean inclDetails, String dumpPackage) {
        ArrayList<Pair<ProcessRecord, Integer>> list = sortProcessOomList(origList, dumpPackage);
        if (list.isEmpty()) {
            return false;
        }
        long curUptime = SystemClock.uptimeMillis();
        ?? r7 = 1;
        int i = list.size() - 1;
        while (i >= 0) {
            ProcessRecord r = (ProcessRecord) list.get(i).first;
            long token = protoOutputStream.start(fieldId);
            String oomAdj = ProcessList.makeOomAdjString(r.setAdj, r7);
            protoOutputStream.write(1133871366145L, r.isPersistent());
            protoOutputStream.write(1120986464258L, (origList.size() - r7) - ((Integer) list.get(i).second).intValue());
            protoOutputStream.write(1138166333443L, oomAdj);
            int schedGroup = -1;
            int i2 = r.setSchedGroup;
            if (i2 == 0) {
                schedGroup = 0;
            } else if (i2 == 2) {
                schedGroup = 1;
            } else if (i2 == 3) {
                schedGroup = 2;
            } else if (i2 == 4) {
                schedGroup = 3;
            }
            if (schedGroup != -1) {
                protoOutputStream.write(1159641169924L, schedGroup);
            }
            if (r.hasForegroundActivities()) {
                protoOutputStream.write(1133871366149L, (boolean) r7);
            } else if (r.hasForegroundServices()) {
                protoOutputStream.write(1133871366150L, (boolean) r7);
            }
            protoOutputStream.write(1159641169927L, ProcessList.makeProcStateProtoEnum(r.getCurProcState()));
            protoOutputStream.write(1120986464264L, r.trimMemoryLevel);
            r.dumpDebug(protoOutputStream, 1146756268041L);
            protoOutputStream.write(1138166333450L, r.adjType);
            if (r.adjSource != null || r.adjTarget != null) {
                if (r.adjTarget instanceof ComponentName) {
                    ComponentName cn = (ComponentName) r.adjTarget;
                    cn.dumpDebug(protoOutputStream, 1146756268043L);
                } else if (r.adjTarget != null) {
                    protoOutputStream.write(1138166333452L, r.adjTarget.toString());
                }
                if (r.adjSource instanceof ProcessRecord) {
                    ProcessRecord p = (ProcessRecord) r.adjSource;
                    p.dumpDebug(protoOutputStream, 1146756268045L);
                } else if (r.adjSource != null) {
                    protoOutputStream.write(1138166333454L, r.adjSource.toString());
                }
            }
            if (inclDetails) {
                long detailToken = protoOutputStream.start(1146756268047L);
                protoOutputStream.write(1120986464257L, r.maxAdj);
                protoOutputStream.write(1120986464258L, r.getCurRawAdj());
                protoOutputStream.write(1120986464259L, r.setRawAdj);
                protoOutputStream.write(1120986464260L, r.curAdj);
                protoOutputStream.write(1120986464261L, r.setAdj);
                protoOutputStream.write(1159641169927L, ProcessList.makeProcStateProtoEnum(r.getCurProcState()));
                protoOutputStream.write(1159641169928L, ProcessList.makeProcStateProtoEnum(r.setProcState));
                protoOutputStream.write(1138166333449L, DebugUtils.sizeValueToString(r.lastPss * 1024, new StringBuilder()));
                protoOutputStream.write(1138166333450L, DebugUtils.sizeValueToString(r.lastSwapPss * 1024, new StringBuilder()));
                protoOutputStream.write(1138166333451L, DebugUtils.sizeValueToString(r.lastCachedPss * 1024, new StringBuilder()));
                protoOutputStream.write(1133871366156L, r.isCached());
                protoOutputStream.write(1133871366157L, r.empty);
                protoOutputStream.write(1133871366158L, r.hasAboveClient);
                if (r.setProcState >= 10 && r.lastCpuTime != 0) {
                    long uptimeSince = curUptime - service.mLastPowerCheckUptime;
                    long timeUsed = r.curCpuTime - r.lastCpuTime;
                    long cpuTimeToken = protoOutputStream.start(1146756268047L);
                    protoOutputStream.write(1112396529665L, uptimeSince);
                    protoOutputStream.write(1112396529666L, timeUsed);
                    protoOutputStream.write(1108101562371L, (timeUsed * 100.0d) / uptimeSince);
                    protoOutputStream.end(cpuTimeToken);
                }
                protoOutputStream.end(detailToken);
            } else {
                list = list;
                curUptime = curUptime;
            }
            protoOutputStream.end(token);
            i--;
            list = list;
            curUptime = curUptime;
            r7 = 1;
        }
        return true;
    }

    private static final boolean dumpProcessOomList(PrintWriter pw, ActivityManagerService service, List<ProcessRecord> origList, String prefix, String normalLabel, String persistentLabel, boolean inclDetails, String dumpPackage) {
        char schedGroup;
        char foreground;
        char c;
        ArrayList<Pair<ProcessRecord, Integer>> list = sortProcessOomList(origList, dumpPackage);
        boolean z = false;
        if (list.isEmpty()) {
            return false;
        }
        long curUptime = SystemClock.uptimeMillis();
        long uptimeSince = curUptime - service.mLastPowerCheckUptime;
        int i = 1;
        int i2 = list.size() - 1;
        while (i2 >= 0) {
            ProcessRecord r = (ProcessRecord) list.get(i2).first;
            String oomAdj = ProcessList.makeOomAdjString(r.setAdj, z);
            int i3 = r.setSchedGroup;
            if (i3 == 0) {
                schedGroup = 'b';
            } else if (i3 == i) {
                schedGroup = 'R';
            } else if (i3 == 2) {
                schedGroup = 'F';
            } else if (i3 == 3) {
                schedGroup = 'T';
            } else if (i3 == 4) {
                schedGroup = 'B';
            } else {
                schedGroup = '?';
            }
            if (r.hasForegroundActivities()) {
                foreground = 'A';
            } else if (r.hasForegroundServices()) {
                foreground = 'S';
            } else {
                foreground = ' ';
            }
            String procState = ProcessList.makeProcStateString(r.getCurProcState());
            pw.print(prefix);
            pw.print(r.isPersistent() ? persistentLabel : normalLabel);
            pw.print(" #");
            int num = (origList.size() - 1) - ((Integer) list.get(i2).second).intValue();
            ArrayList<Pair<ProcessRecord, Integer>> list2 = list;
            if (num < 10) {
                pw.print(' ');
            }
            pw.print(num);
            pw.print(": ");
            pw.print(oomAdj);
            pw.print(' ');
            pw.print(schedGroup);
            pw.print('/');
            pw.print(foreground);
            pw.print('/');
            pw.print(procState);
            pw.print(' ');
            ActivityManager.printCapabilitiesSummary(pw, r.curCapability);
            pw.print(' ');
            pw.print(" t:");
            if (r.trimMemoryLevel < 10) {
                c = ' ';
                pw.print(' ');
            } else {
                c = ' ';
            }
            pw.print(r.trimMemoryLevel);
            pw.print(c);
            pw.print(r.toShortString());
            pw.print(" (");
            pw.print(r.adjType);
            pw.println(')');
            if (r.adjSource != null || r.adjTarget != null) {
                pw.print(prefix);
                pw.print("    ");
                if (r.adjTarget instanceof ComponentName) {
                    pw.print(((ComponentName) r.adjTarget).flattenToShortString());
                } else if (r.adjTarget != null) {
                    pw.print(r.adjTarget.toString());
                } else {
                    pw.print("{null}");
                }
                pw.print("<=");
                if (r.adjSource instanceof ProcessRecord) {
                    pw.print("Proc{");
                    pw.print(((ProcessRecord) r.adjSource).toShortString());
                    pw.println("}");
                } else if (r.adjSource != null) {
                    pw.println(r.adjSource.toString());
                } else {
                    pw.println("{null}");
                }
            }
            if (inclDetails) {
                pw.print(prefix);
                pw.print("    ");
                pw.print("oom: max=");
                pw.print(r.maxAdj);
                pw.print(" curRaw=");
                pw.print(r.getCurRawAdj());
                pw.print(" setRaw=");
                pw.print(r.setRawAdj);
                pw.print(" cur=");
                pw.print(r.curAdj);
                pw.print(" set=");
                pw.println(r.setAdj);
                pw.print(prefix);
                pw.print("    ");
                pw.print("state: cur=");
                pw.print(ProcessList.makeProcStateString(r.getCurProcState()));
                pw.print(" set=");
                pw.print(ProcessList.makeProcStateString(r.setProcState));
                pw.print(" lastPss=");
                DebugUtils.printSizeValue(pw, r.lastPss * 1024);
                pw.print(" lastSwapPss=");
                DebugUtils.printSizeValue(pw, r.lastSwapPss * 1024);
                pw.print(" lastCachedPss=");
                DebugUtils.printSizeValue(pw, r.lastCachedPss * 1024);
                pw.println();
                pw.print(prefix);
                pw.print("    ");
                pw.print("cached=");
                pw.print(r.isCached());
                pw.print(" empty=");
                pw.print(r.empty);
                pw.print(" hasAboveClient=");
                pw.println(r.hasAboveClient);
                if (r.setProcState >= 10 && r.lastCpuTime != 0) {
                    long timeUsed = r.curCpuTime - r.lastCpuTime;
                    pw.print(prefix);
                    pw.print("    ");
                    pw.print("run cpu over ");
                    TimeUtils.formatDuration(uptimeSince, pw);
                    pw.print(" used ");
                    TimeUtils.formatDuration(timeUsed, pw);
                    pw.print(" (");
                    pw.print((100 * timeUsed) / uptimeSince);
                    pw.println("%)");
                }
            }
            i2--;
            list = list2;
            curUptime = curUptime;
            z = false;
            i = 1;
        }
        return true;
    }

    ArrayList<ProcessRecord> collectProcesses(PrintWriter pw, int start, boolean allPkgs, String[] args) {
        ArrayList<ProcessRecord> arrayListCollectProcessesLocked;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                arrayListCollectProcessesLocked = this.mProcessList.collectProcessesLocked(start, allPkgs, args);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return arrayListCollectProcessesLocked;
    }

    final void dumpGraphicsHardwareUsage(FileDescriptor fd, PrintWriter pw, String[] args) {
        ArrayList<ProcessRecord> procs = collectProcesses(pw, 0, false, args);
        if (procs == null) {
            pw.println("No process found for: " + args[0]);
            return;
        }
        long uptime = SystemClock.uptimeMillis();
        long realtime = SystemClock.elapsedRealtime();
        pw.println("Applications Graphics Acceleration Info:");
        pw.println("Uptime: " + uptime + " Realtime: " + realtime);
        for (int i = procs.size() + (-1); i >= 0; i--) {
            ProcessRecord r = procs.get(i);
            if (r.thread != null) {
                pw.println("\n** Graphics info for pid " + r.pid + " [" + r.processName + "] **");
                pw.flush();
                try {
                    TransferPipe tp = new TransferPipe();
                    try {
                        r.thread.dumpGfxInfo(tp.getWriteFd(), args);
                        tp.go(fd);
                        tp.kill();
                    } catch (Throwable th) {
                        tp.kill();
                        throw th;
                    }
                } catch (RemoteException e) {
                    pw.println("Got a RemoteException while dumping the app " + r);
                    pw.flush();
                } catch (IOException e2) {
                    pw.println("Failure while dumping the app: " + r);
                    pw.flush();
                }
            }
        }
    }

    final void dumpBinderCacheContents(FileDescriptor fd, PrintWriter pw, String[] args) {
        ArrayList<ProcessRecord> procs = collectProcesses(pw, 0, false, args);
        if (procs == null) {
            pw.println("No process found for: " + args[0]);
            return;
        }
        pw.println("Per-process Binder Cache Contents");
        for (int i = procs.size() - 1; i >= 0; i--) {
            ProcessRecord r = procs.get(i);
            if (r.thread != null) {
                pw.println("\n\n** Cache info for pid " + r.pid + " [" + r.processName + "] **");
                pw.flush();
                if (r.pid == MY_PID) {
                    PropertyInvalidatedCache.dumpCacheInfo(fd, args);
                } else {
                    try {
                        TransferPipe tp = new TransferPipe();
                        try {
                            r.thread.dumpCacheInfo(tp.getWriteFd(), args);
                            tp.go(fd);
                            tp.kill();
                        } catch (Throwable th) {
                            tp.kill();
                            throw th;
                        }
                    } catch (RemoteException e) {
                        pw.println("Got a RemoteException while dumping the app " + r);
                        pw.flush();
                    } catch (IOException e2) {
                        pw.println("Failure while dumping the app " + r);
                        pw.flush();
                    }
                }
            }
        }
    }

    final void dumpDbInfo(FileDescriptor fd, PrintWriter pw, String[] args) {
        ArrayList<ProcessRecord> procs = collectProcesses(pw, 0, false, args);
        if (procs == null) {
            pw.println("No process found for: " + args[0]);
            return;
        }
        pw.println("Applications Database Info:");
        for (int i = procs.size() - 1; i >= 0; i--) {
            ProcessRecord r = procs.get(i);
            if (r.thread != null) {
                pw.println("\n** Database info for pid " + r.pid + " [" + r.processName + "] **");
                pw.flush();
                try {
                    TransferPipe tp = new TransferPipe();
                    try {
                        r.thread.dumpDbInfo(tp.getWriteFd(), args);
                        tp.go(fd);
                        tp.kill();
                    } catch (Throwable th) {
                        tp.kill();
                        throw th;
                    }
                } catch (RemoteException e) {
                    pw.println("Got a RemoteException while dumping the app " + r);
                    pw.flush();
                } catch (IOException e2) {
                    pw.println("Failure while dumping the app: " + r);
                    pw.flush();
                }
            }
        }
    }

    static final class MemItem {
        final boolean hasActivities;
        final int id;
        final boolean isProc;
        final String label;
        final long mRss;
        final long pss;
        final String shortLabel;
        ArrayList<MemItem> subitems;
        final long swapPss;

        MemItem(String label, String shortLabel, long pss, long swapPss, long rss, int id, boolean hasActivities) {
            this.isProc = true;
            this.label = label;
            this.shortLabel = shortLabel;
            this.pss = pss;
            this.swapPss = swapPss;
            this.mRss = rss;
            this.id = id;
            this.hasActivities = hasActivities;
        }

        MemItem(String label, String shortLabel, long pss, long swapPss, long rss, int id) {
            this.isProc = false;
            this.label = label;
            this.shortLabel = shortLabel;
            this.pss = pss;
            this.swapPss = swapPss;
            this.mRss = rss;
            this.id = id;
            this.hasActivities = false;
        }
    }

    private static void sortMemItems(List<MemItem> items, final boolean pss) {
        Collections.sort(items, new Comparator<MemItem>() { // from class: com.android.server.am.ActivityManagerService.22
            @Override // java.util.Comparator
            public int compare(MemItem lhs, MemItem rhs) {
                long lss = pss ? lhs.pss : lhs.mRss;
                long rss = pss ? rhs.pss : rhs.mRss;
                if (lss < rss) {
                    return 1;
                }
                if (lss > rss) {
                    return -1;
                }
                return 0;
            }
        });
    }

    static final void dumpMemItems(PrintWriter pw, String prefix, String tag, ArrayList<MemItem> items, boolean sort, boolean isCompact, boolean dumpPss, boolean dumpSwapPss) {
        if (sort && !isCompact) {
            sortMemItems(items, dumpPss);
        }
        for (int i = 0; i < items.size(); i++) {
            MemItem mi = items.get(i);
            if (isCompact) {
                if (mi.isProc) {
                    pw.print("proc,");
                    pw.print(tag);
                    pw.print(",");
                    pw.print(mi.shortLabel);
                    pw.print(",");
                    pw.print(mi.id);
                    pw.print(",");
                    pw.print(dumpPss ? mi.pss : mi.mRss);
                    pw.print(",");
                    pw.print(dumpSwapPss ? Long.valueOf(mi.swapPss) : "N/A");
                    pw.println(mi.hasActivities ? ",a" : ",e");
                } else {
                    pw.print(tag);
                    pw.print(",");
                    pw.print(mi.shortLabel);
                    pw.print(",");
                    pw.print(dumpPss ? mi.pss : mi.mRss);
                    pw.print(",");
                    pw.println(dumpSwapPss ? Long.valueOf(mi.swapPss) : "N/A");
                }
            } else if (dumpPss && dumpSwapPss) {
                pw.printf("%s%s: %-60s (%s in swap)\n", prefix, stringifyKBSize(mi.pss), mi.label, stringifyKBSize(mi.swapPss));
            } else {
                Object[] objArr = new Object[3];
                objArr[0] = prefix;
                objArr[1] = stringifyKBSize(dumpPss ? mi.pss : mi.mRss);
                objArr[2] = mi.label;
                pw.printf("%s%s: %s\n", objArr);
            }
            if (mi.subitems != null) {
                dumpMemItems(pw, prefix + "    ", mi.shortLabel, mi.subitems, true, isCompact, dumpPss, dumpSwapPss);
            }
        }
    }

    static final void dumpMemItems(ProtoOutputStream proto, long fieldId, String tag, ArrayList<MemItem> items, boolean sort, boolean dumpPss, boolean dumpSwapPss) {
        if (sort) {
            sortMemItems(items, dumpPss);
        }
        for (int i = 0; i < items.size(); i++) {
            MemItem mi = items.get(i);
            long token = proto.start(fieldId);
            proto.write(1138166333441L, tag);
            proto.write(1138166333442L, mi.shortLabel);
            proto.write(1133871366148L, mi.isProc);
            proto.write(1120986464259L, mi.id);
            proto.write(1133871366149L, mi.hasActivities);
            proto.write(1112396529670L, mi.pss);
            proto.write(1112396529673L, mi.mRss);
            if (dumpSwapPss) {
                proto.write(1112396529671L, mi.swapPss);
            }
            if (mi.subitems != null) {
                dumpMemItems(proto, 2246267895816L, mi.shortLabel, mi.subitems, true, dumpPss, dumpSwapPss);
            }
            proto.end(token);
        }
    }

    static final void appendMemBucket(StringBuilder out, long memKB, String label, boolean stackLike) {
        int start = label.lastIndexOf(46);
        int start2 = start >= 0 ? start + 1 : 0;
        int end = label.length();
        int i = 0;
        while (true) {
            long[] jArr = DUMP_MEM_BUCKETS;
            if (i >= jArr.length) {
                out.append(memKB / 1024);
                out.append(stackLike ? "MB." : "MB ");
                out.append((CharSequence) label, start2, end);
                return;
            } else if (jArr[i] < memKB) {
                i++;
            } else {
                long bucket = jArr[i] / 1024;
                out.append(bucket);
                out.append(stackLike ? "MB." : "MB ");
                out.append((CharSequence) label, start2, end);
                return;
            }
        }
    }

    private final void dumpApplicationMemoryUsageHeader(PrintWriter pw, long uptime, long realtime, boolean isCheckinRequest, boolean isCompact) {
        if (isCompact) {
            pw.print("version,");
            pw.println(1);
        }
        if (isCheckinRequest || isCompact) {
            pw.print("time,");
            pw.print(uptime);
            pw.print(",");
            pw.println(realtime);
            return;
        }
        pw.println("Applications Memory Usage (in Kilobytes):");
        pw.println("Uptime: " + uptime + " Realtime: " + realtime);
    }

    private final long[] getKsmInfo() {
        int[] SINGLE_LONG_FORMAT = {8224};
        long[] longTmp = {0};
        Process.readProcFile("/sys/kernel/mm/ksm/pages_shared", SINGLE_LONG_FORMAT, null, longTmp, null);
        Process.readProcFile("/sys/kernel/mm/ksm/pages_sharing", SINGLE_LONG_FORMAT, null, longTmp, null);
        longTmp[0] = 0;
        Process.readProcFile("/sys/kernel/mm/ksm/pages_unshared", SINGLE_LONG_FORMAT, null, longTmp, null);
        longTmp[0] = 0;
        Process.readProcFile("/sys/kernel/mm/ksm/pages_volatile", SINGLE_LONG_FORMAT, null, longTmp, null);
        long[] longOut = {(longTmp[0] * 4096) / 1024, (longTmp[0] * 4096) / 1024, (longTmp[0] * 4096) / 1024, (longTmp[0] * 4096) / 1024};
        return longOut;
    }

    private static String stringifySize(long size, int order) {
        Locale locale = Locale.US;
        if (order == 1) {
            return String.format(locale, "%,13d", Long.valueOf(size));
        }
        if (order == 1024) {
            return String.format(locale, "%,9dK", Long.valueOf(size / 1024));
        }
        if (order == 1048576) {
            return String.format(locale, "%,5dM", Long.valueOf((size / 1024) / 1024));
        }
        if (order == 1073741824) {
            return String.format(locale, "%,1dG", Long.valueOf(((size / 1024) / 1024) / 1024));
        }
        throw new IllegalArgumentException("Invalid size order");
    }

    private static String stringifyKBSize(long size) {
        return stringifySize(1024 * size, 1024);
    }

    private static class MemoryUsageDumpOptions {
        boolean dumpDalvik;
        boolean dumpDetails;
        boolean dumpFullDetails;
        boolean dumpProto;
        boolean dumpSummaryOnly;
        boolean dumpSwapPss;
        boolean dumpUnreachable;
        boolean isCheckinRequest;
        boolean isCompact;
        boolean localOnly;
        boolean oomOnly;
        boolean packages;

        private MemoryUsageDumpOptions() {
        }
    }

    final void dumpApplicationMemoryUsage(FileDescriptor fd, PrintWriter pw, String prefix, String[] args, boolean brief, PrintWriter categoryPw, boolean asProto) throws Throwable {
        String opt;
        MemoryUsageDumpOptions opts = new MemoryUsageDumpOptions();
        opts.dumpDetails = false;
        opts.dumpFullDetails = false;
        opts.dumpDalvik = false;
        opts.dumpSummaryOnly = false;
        opts.dumpUnreachable = false;
        opts.oomOnly = false;
        opts.isCompact = false;
        opts.localOnly = false;
        opts.packages = false;
        opts.isCheckinRequest = false;
        opts.dumpSwapPss = false;
        opts.dumpProto = asProto;
        int opti = 0;
        while (opti < args.length && (opt = args[opti]) != null && opt.length() > 0 && opt.charAt(0) == '-') {
            opti++;
            if ("-a".equals(opt)) {
                opts.dumpDetails = true;
                opts.dumpFullDetails = true;
                opts.dumpDalvik = true;
                opts.dumpSwapPss = true;
            } else if ("-d".equals(opt)) {
                opts.dumpDalvik = true;
            } else if ("-c".equals(opt)) {
                opts.isCompact = true;
            } else if ("-s".equals(opt)) {
                opts.dumpDetails = true;
                opts.dumpSummaryOnly = true;
            } else if ("-S".equals(opt)) {
                opts.dumpSwapPss = true;
            } else if ("--unreachable".equals(opt)) {
                opts.dumpUnreachable = true;
            } else if ("--oom".equals(opt)) {
                opts.oomOnly = true;
            } else if ("--local".equals(opt)) {
                opts.localOnly = true;
            } else if ("--package".equals(opt)) {
                opts.packages = true;
            } else if ("--checkin".equals(opt)) {
                opts.isCheckinRequest = true;
            } else if (PriorityDump.PROTO_ARG.equals(opt)) {
                opts.dumpProto = true;
            } else {
                if ("-h".equals(opt)) {
                    pw.println("meminfo dump options: [-a] [-d] [-c] [-s] [--oom] [process]");
                    pw.println("  -a: include all available information for each process.");
                    pw.println("  -d: include dalvik details.");
                    pw.println("  -c: dump in a compact machine-parseable representation.");
                    pw.println("  -s: dump only summary of application memory usage.");
                    pw.println("  -S: dump also SwapPss.");
                    pw.println("  --oom: only show processes organized by oom adj.");
                    pw.println("  --local: only collect details locally, don't call process.");
                    pw.println("  --package: interpret process arg as package, dumping all");
                    pw.println("             processes that have loaded that package.");
                    pw.println("  --checkin: dump data for a checkin");
                    pw.println("  --proto: dump data to proto");
                    pw.println("If [process] is specified it can be the name or ");
                    pw.println("pid of a specific process to dump.");
                    return;
                }
                pw.println("Unknown argument: " + opt + "; use -h for help");
            }
        }
        String[] innerArgs = new String[args.length - opti];
        System.arraycopy(args, opti, innerArgs, 0, args.length - opti);
        ArrayList<ProcessRecord> procs = collectProcesses(pw, opti, opts.packages, args);
        if (opts.dumpProto) {
            dumpApplicationMemoryUsage(fd, opts, innerArgs, brief, procs);
        } else {
            dumpApplicationMemoryUsage(fd, pw, prefix, opts, innerArgs, brief, procs, categoryPw);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x015f */
    /* JADX WARN: Bottom block not found for handler: all -> 0x06af */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0701 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x110f */
    /* JADX WARN: Code duplicated, block: B:129:0x02ef A[PHI: r39 r74 r89
  0x02ef: PHI (r39v6 'oomProcs' java.util.ArrayList<com.android.server.am.ActivityManagerService$MemItem>[]) = 
  (r10v8 'oomProcs' java.util.ArrayList<com.android.server.am.ActivityManagerService$MemItem>[])
  (r39v8 'oomProcs' java.util.ArrayList<com.android.server.am.ActivityManagerService$MemItem>[])
 binds: [B:128:0x02ec, B:123:0x02bb] A[DONT_GENERATE, DONT_INLINE]
  0x02ef: PHI (r74v5 'numProcs' int) = (r11v2 'numProcs' int), (r74v7 'numProcs' int) binds: [B:128:0x02ec, B:123:0x02bb] A[DONT_GENERATE, DONT_INLINE]
  0x02ef: PHI (r89v6 'miscRss' long[]) = (r4v2 'miscRss' long[]), (r89v8 'miscRss' long[]) binds: [B:128:0x02ec, B:123:0x02bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:138:0x0341  */
    /* JADX WARN: Code duplicated, block: B:140:0x0345  */
    /* JADX WARN: Code duplicated, block: B:142:0x037a  */
    /* JADX WARN: Code duplicated, block: B:143:0x0381  */
    /* JADX WARN: Code duplicated, block: B:144:0x0385  */
    /* JADX WARN: Code duplicated, block: B:151:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:152:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:179:0x0419  */
    /* JADX WARN: Code duplicated, block: B:191:0x0472 A[Catch: all -> 0x04ec, TRY_LEAVE, TryCatch #9 {all -> 0x04ec, blocks: (B:189:0x0455, B:191:0x0472), top: B:566:0x0455 }] */
    /* JADX WARN: Code duplicated, block: B:210:0x0513  */
    /* JADX WARN: Code duplicated, block: B:213:0x0530  */
    /* JADX WARN: Code duplicated, block: B:248:0x0673  */
    /* JADX WARN: Code duplicated, block: B:325:0x0870 A[Catch: all -> 0x094f, TRY_LEAVE, TryCatch #30 {all -> 0x094f, blocks: (B:323:0x086d, B:325:0x0870), top: B:606:0x086d }] */
    /* JADX WARN: Code duplicated, block: B:335:0x08db A[Catch: all -> 0x0934, LOOP:13: B:333:0x08d7->B:335:0x08db, LOOP_END, TryCatch #13 {all -> 0x0934, blocks: (B:329:0x088d, B:332:0x08c1, B:335:0x08db, B:336:0x0902, B:338:0x0911, B:339:0x0918), top: B:574:0x088d }] */
    /* JADX WARN: Code duplicated, block: B:338:0x0911 A[Catch: all -> 0x0934, TryCatch #13 {all -> 0x0934, blocks: (B:329:0x088d, B:332:0x08c1, B:335:0x08db, B:336:0x0902, B:338:0x0911, B:339:0x0918), top: B:574:0x088d }] */
    /* JADX WARN: Code duplicated, block: B:480:0x0db1  */
    /* JADX WARN: Code duplicated, block: B:482:0x0db5  */
    /* JADX WARN: Code duplicated, block: B:484:0x0dce  */
    /* JADX WARN: Code duplicated, block: B:486:0x0dd1  */
    /* JADX WARN: Code duplicated, block: B:488:0x0dd4  */
    /* JADX WARN: Code duplicated, block: B:490:0x0dd7  */
    /* JADX WARN: Code duplicated, block: B:491:0x0de0  */
    /* JADX WARN: Code duplicated, block: B:492:0x0de6  */
    /* JADX WARN: Code duplicated, block: B:493:0x0dee  */
    /* JADX WARN: Code duplicated, block: B:494:0x0df6  */
    /* JADX WARN: Code duplicated, block: B:496:0x0e49  */
    /* JADX WARN: Code duplicated, block: B:497:0x0e77  */
    /* JADX WARN: Code duplicated, block: B:500:0x0e85  */
    /* JADX WARN: Code duplicated, block: B:503:0x0ee8  */
    /* JADX WARN: Code duplicated, block: B:504:0x0f24  */
    /* JADX WARN: Code duplicated, block: B:506:0x0f2f  */
    /* JADX WARN: Code duplicated, block: B:508:0x0f37  */
    /* JADX WARN: Code duplicated, block: B:510:0x0f3b  */
    /* JADX WARN: Code duplicated, block: B:511:0x0f79  */
    /* JADX WARN: Code duplicated, block: B:512:0x0fa1  */
    /* JADX WARN: Code duplicated, block: B:515:0x0fad  */
    /* JADX WARN: Code duplicated, block: B:523:0x0fc7  */
    /* JADX WARN: Code duplicated, block: B:526:0x104a  */
    /* JADX WARN: Code duplicated, block: B:529:0x1055  */
    /* JADX WARN: Code duplicated, block: B:531:0x105e  */
    /* JADX WARN: Code duplicated, block: B:533:0x10b7  */
    /* JADX WARN: Code duplicated, block: B:536:0x10c2  */
    /* JADX WARN: Code duplicated, block: B:538:0x10cb  */
    /* JADX WARN: Code duplicated, block: B:57:0x013a  */
    /* JADX WARN: Code duplicated, block: B:588:0x044d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x043e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:0x0445 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:0x013d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:0x08c1 A[EDGE_INSN: B:663:0x08c1->B:332:0x08c1 BREAK  A[LOOP:11: B:322:0x086b->B:664:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void dumpApplicationMemoryUsage(java.io.FileDescriptor r115, java.io.PrintWriter r116, java.lang.String r117, com.android.server.am.ActivityManagerService.MemoryUsageDumpOptions r118, java.lang.String[] r119, boolean r120, java.util.ArrayList<com.android.server.am.ProcessRecord> r121, java.io.PrintWriter r122) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 4388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpApplicationMemoryUsage(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String, com.android.server.am.ActivityManagerService$MemoryUsageDumpOptions, java.lang.String[], boolean, java.util.ArrayList, java.io.PrintWriter):void");
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0182 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x07dd */
    /* JADX WARN: Bottom block not found for handler: all -> 0x07ff */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0d94 */
    /* JADX WARN: Code duplicated, block: B:145:0x0397  */
    /* JADX WARN: Code duplicated, block: B:147:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:148:0x040e  */
    /* JADX WARN: Code duplicated, block: B:172:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:182:0x0562 A[Catch: all -> 0x05eb, TRY_LEAVE, TryCatch #5 {all -> 0x05eb, blocks: (B:180:0x053f, B:182:0x0562), top: B:425:0x053f }] */
    /* JADX WARN: Code duplicated, block: B:199:0x0605  */
    /* JADX WARN: Code duplicated, block: B:202:0x0627  */
    /* JADX WARN: Code duplicated, block: B:241:0x0779  */
    /* JADX WARN: Code duplicated, block: B:296:0x091e A[Catch: all -> 0x09be, TRY_LEAVE, TryCatch #13 {all -> 0x09be, blocks: (B:293:0x08bf, B:294:0x091b, B:296:0x091e), top: B:439:0x08bf }] */
    /* JADX WARN: Code duplicated, block: B:302:0x0965 A[Catch: all -> 0x09af, LOOP:13: B:300:0x0961->B:302:0x0965, LOOP_END, TryCatch #7 {all -> 0x09af, blocks: (B:298:0x092c, B:299:0x094d, B:302:0x0965, B:303:0x098c, B:305:0x099b, B:306:0x09a2), top: B:429:0x092c }] */
    /* JADX WARN: Code duplicated, block: B:305:0x099b A[Catch: all -> 0x09af, TryCatch #7 {all -> 0x09af, blocks: (B:298:0x092c, B:299:0x094d, B:302:0x0965, B:303:0x098c, B:305:0x099b, B:306:0x09a2), top: B:429:0x092c }] */
    /* JADX WARN: Code duplicated, block: B:395:0x0c3b  */
    /* JADX WARN: Code duplicated, block: B:396:0x0c7a  */
    /* JADX WARN: Code duplicated, block: B:399:0x0cc1  */
    /* JADX WARN: Code duplicated, block: B:401:0x0cc9  */
    /* JADX WARN: Code duplicated, block: B:425:0x053f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:443:0x0530 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:453:0x0537 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void dumpApplicationMemoryUsage(java.io.FileDescriptor r121, com.android.server.am.ActivityManagerService.MemoryUsageDumpOptions r122, java.lang.String[] r123, boolean r124, java.util.ArrayList<com.android.server.am.ProcessRecord> r125) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpApplicationMemoryUsage(java.io.FileDescriptor, com.android.server.am.ActivityManagerService$MemoryUsageDumpOptions, java.lang.String[], boolean, java.util.ArrayList):void");
    }

    private void appendBasicMemEntry(StringBuilder sb, int oomAdj, int procState, long pss, long memtrack, String name) {
        sb.append("  ");
        sb.append(ProcessList.makeOomAdjString(oomAdj, false));
        sb.append(' ');
        sb.append(ProcessList.makeProcStateString(procState));
        sb.append(' ');
        ProcessList.appendRamKb(sb, pss);
        sb.append(": ");
        sb.append(name);
        if (memtrack > 0) {
            sb.append(" (");
            sb.append(stringifyKBSize(memtrack));
            sb.append(" memtrack)");
        }
    }

    private void appendMemInfo(StringBuilder sb, ProcessMemInfo mi) {
        appendBasicMemEntry(sb, mi.oomAdj, mi.procState, mi.pss, mi.memtrack, mi.name);
        sb.append(" (pid ");
        sb.append(mi.pid);
        sb.append(") ");
        sb.append(mi.adjType);
        sb.append('\n');
        if (mi.adjReason != null) {
            sb.append("                      ");
            sb.append(mi.adjReason);
            sb.append('\n');
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x05cd */
    /* JADX WARN: Bottom block not found for handler: all -> 0x05d4 */
    /* JADX WARN: Code duplicated, block: B:104:0x0429  */
    /* JADX WARN: Code duplicated, block: B:105:0x044b  */
    /* JADX WARN: Code duplicated, block: B:118:0x058a A[Catch: all -> 0x0591, TryCatch #0 {all -> 0x0591, blocks: (B:116:0x057d, B:118:0x058a, B:119:0x058c), top: B:143:0x057d }] */
    /* JADX WARN: Code duplicated, block: B:143:0x057d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x04dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void reportMemUsage(java.util.ArrayList<com.android.server.am.ProcessMemInfo> r58) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.reportMemUsage(java.util.ArrayList):void");
    }

    static /* synthetic */ boolean lambda$reportMemUsage$6(ProcessCpuTracker.Stats st) {
        return st.vsize > 0;
    }

    private static boolean scanArgs(String[] args, String value) {
        if (args != null) {
            for (String arg : args) {
                if (value.equals(arg)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    private final boolean removeDyingProviderLocked(ProcessRecord proc, ContentProviderRecord cpr, boolean always) {
        boolean always2;
        boolean inLaunching = this.mLaunchingProviders.contains(cpr);
        if (inLaunching && !always) {
            int i = cpr.mRestartCount + 1;
            cpr.mRestartCount = i;
            if (i > 3) {
                always2 = true;
            } else {
                always2 = always;
            }
        } else {
            always2 = always;
        }
        if (!inLaunching || always2) {
            synchronized (cpr) {
                cpr.launchingApp = null;
                cpr.notifyAll();
            }
            int userId = UserHandle.getUserId(cpr.uid);
            if (this.mProviderMap.getProviderByClass(cpr.name, userId) == cpr) {
                this.mProviderMap.removeProviderByClass(cpr.name, userId);
            }
            String[] names = cpr.info.authority.split(";");
            for (int j = 0; j < names.length; j++) {
                if (this.mProviderMap.getProviderByName(names[j], userId) == cpr) {
                    this.mProviderMap.removeProviderByName(names[j], userId);
                }
            }
        }
        for (int i2 = cpr.connections.size() - 1; i2 >= 0; i2--) {
            ContentProviderConnection conn = cpr.connections.get(i2);
            if (!conn.waiting || !inLaunching || always2) {
                ProcessRecord capp = conn.client;
                conn.dead = true;
                if (conn.stableCount > 0) {
                    if (!capp.isPersistent() && capp.thread != null && capp.pid != 0 && capp.pid != MY_PID) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("depends on provider ");
                        sb.append(cpr.name.flattenToShortString());
                        sb.append(" in dying proc ");
                        sb.append(proc != null ? proc.processName : "??");
                        sb.append(" (adj ");
                        sb.append(proc != null ? Integer.valueOf(proc.setAdj) : "??");
                        sb.append(")");
                        capp.kill(sb.toString(), 12, 0, true);
                    }
                } else if (capp.thread != null && conn.provider.provider != null) {
                    try {
                        capp.thread.unstableProviderDied(conn.provider.provider.asBinder());
                    } catch (RemoteException e) {
                    }
                    cpr.connections.remove(i2);
                    if (conn.client.conProviders.remove(conn)) {
                        stopAssociationLocked(capp.uid, capp.processName, cpr.uid, cpr.appInfo.longVersionCode, cpr.name, cpr.info.processName);
                    }
                }
            }
        }
        if (inLaunching && always2) {
            this.mLaunchingProviders.remove(cpr);
            cpr.mRestartCount = 0;
            return false;
        }
        return inLaunching;
    }

    final boolean cleanUpApplicationRecordLocked(final ProcessRecord app, boolean restarting, boolean allowRestart, int index, boolean replacingPid) {
        boolean restart;
        if (index >= 0) {
            removeLruProcessLocked(app);
            ProcessList.remove(app.pid);
        }
        this.mProcessesToGc.remove(app);
        this.mPendingPssProcesses.remove(app);
        ProcessList.abortNextPssTime(app.procStateMemTracker);
        app.getDialogController().clearAllErrorDialogs();
        app.setCrashing(false);
        app.setNotResponding(false);
        app.resetPackageList(this.mProcessStats);
        app.unlinkDeathRecipient();
        app.makeInactive(this.mProcessStats);
        app.waitingToKill = null;
        app.forcingToImportant = null;
        updateProcessForegroundLocked(app, false, 0, false);
        app.setHasForegroundActivities(false);
        app.hasShownUi = false;
        app.treatLikeActivity = false;
        app.hasAboveClient = false;
        app.setHasClientActivities(false);
        this.mServices.killServicesLocked(app, allowRestart);
        boolean restart2 = false;
        for (int i = app.pubProviders.size() - 1; i >= 0; i--) {
            ContentProviderRecord cpr = app.pubProviders.valueAt(i);
            if (cpr.proc == app) {
                boolean alwaysRemove = app.bad || !allowRestart;
                boolean inLaunching = removeDyingProviderLocked(app, cpr, alwaysRemove);
                if (!alwaysRemove && inLaunching && cpr.hasConnectionOrHandle()) {
                    restart2 = true;
                }
                cpr.provider = null;
                cpr.setProcess(null);
            }
        }
        app.pubProviders.clear();
        if (!cleanupAppInLaunchingProvidersLocked(app, false)) {
            restart = restart2;
        } else {
            this.mProcessList.noteProcessDiedLocked(app);
            restart = true;
        }
        if (!app.conProviders.isEmpty()) {
            for (int i2 = app.conProviders.size() - 1; i2 >= 0; i2--) {
                ContentProviderConnection conn = app.conProviders.get(i2);
                conn.provider.connections.remove(conn);
                stopAssociationLocked(app.uid, app.processName, conn.provider.uid, conn.provider.appInfo.longVersionCode, conn.provider.name, conn.provider.info.processName);
            }
            app.conProviders.clear();
        }
        skipCurrentReceiverLocked(app);
        for (int i3 = app.receivers.size() - 1; i3 >= 0; i3--) {
            removeReceiverLocked(app.receivers.valueAt(i3));
        }
        app.receivers.clear();
        BackupRecord backupTarget = this.mBackupTargets.get(app.userId);
        if (backupTarget != null && app.pid == backupTarget.app.pid) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.24
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IBackupManager bm = IBackupManager.Stub.asInterface(ServiceManager.getService(BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD));
                        bm.agentDisconnectedForUser(app.userId, app.info.packageName);
                    } catch (RemoteException e) {
                    }
                }
            });
        }
        for (int i4 = this.mPendingProcessChanges.size() - 1; i4 >= 0; i4--) {
            ProcessChangeItem item = this.mPendingProcessChanges.get(i4);
            if (app.pid > 0 && item.pid == app.pid) {
                this.mPendingProcessChanges.remove(i4);
                this.mAvailProcessChanges.add(item);
            }
        }
        this.mUiHandler.obtainMessage(32, app.pid, app.info.uid, null).sendToTarget();
        boolean allowRestart2 = true;
        synchronized (app) {
            if (app.mSuccessor != null) {
                allowRestart2 = false;
                if (app.isPersistent() && !app.removed && this.mPersistentStartingProcesses.indexOf(app.mSuccessor) < 0) {
                    this.mPersistentStartingProcesses.add(app.mSuccessor);
                }
                app.mSuccessor.mPrecedence = null;
                app.mSuccessor = null;
                app.notifyAll();
            }
        }
        if (restarting) {
            return false;
        }
        if (!app.isPersistent() || app.isolated) {
            if (!replacingPid) {
                this.mProcessList.removeProcessNameLocked(app.processName, app.uid, app);
            }
            this.mAtmInternal.clearHeavyWeightProcessIfEquals(app.getWindowProcessController());
        } else if (!app.removed && this.mPersistentStartingProcesses.indexOf(app) < 0) {
            this.mPersistentStartingProcesses.add(app);
            restart = true;
        }
        this.mProcessesOnHold.remove(app);
        this.mAtmInternal.onCleanUpApplicationRecord(app.getWindowProcessController());
        this.mProcessList.noteProcessDiedLocked(app);
        if (restart && allowRestart2 && !app.isolated) {
            if (index < 0) {
                ProcessList.remove(app.pid);
            }
            this.mHandler.removeMessages(CONTENT_PROVIDER_PUBLISH_TIMEOUT_MSG, app);
            this.mProcessList.addProcessNameLocked(app);
            app.pendingStart = false;
            this.mProcessList.startProcessLocked(app, new HostingRecord("restart", app.processName), 0);
            return true;
        }
        if (app.pid > 0 && app.pid != MY_PID) {
            removePidLocked(app);
            this.mHandler.removeMessages(20, app);
            this.mBatteryStatsService.noteProcessFinish(app.processName, app.info.uid);
            if (app.isolated) {
                this.mBatteryStatsService.removeIsolatedUid(app.uid, app.info.uid);
            }
            app.setPid(0);
        }
        return false;
    }

    boolean checkAppInLaunchingProvidersLocked(ProcessRecord app) {
        for (int i = this.mLaunchingProviders.size() - 1; i >= 0; i--) {
            ContentProviderRecord cpr = this.mLaunchingProviders.get(i);
            if (cpr.launchingApp == app) {
                return true;
            }
        }
        return false;
    }

    boolean cleanupAppInLaunchingProvidersLocked(ProcessRecord app, boolean alwaysBad) {
        boolean restart = false;
        for (int i = this.mLaunchingProviders.size() - 1; i >= 0; i--) {
            ContentProviderRecord cpr = this.mLaunchingProviders.get(i);
            if (cpr.launchingApp == app) {
                int i2 = cpr.mRestartCount + 1;
                cpr.mRestartCount = i2;
                if (i2 > 3) {
                    alwaysBad = true;
                }
                if (!alwaysBad && !app.bad && cpr.hasConnectionOrHandle()) {
                    restart = true;
                } else {
                    removeDyingProviderLocked(app, cpr, true);
                }
            }
        }
        return restart;
    }

    public List<ActivityManager.RunningServiceInfo> getServices(int maxNum, int flags) {
        List<ActivityManager.RunningServiceInfo> runningServiceInfoLocked;
        enforceNotIsolatedCaller("getServices");
        int callingUid = Binder.getCallingUid();
        boolean canInteractAcrossUsers = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        boolean allowed = this.mAtmInternal.isGetTasksAllowed("getServices", Binder.getCallingPid(), callingUid);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                runningServiceInfoLocked = this.mServices.getRunningServiceInfoLocked(maxNum, flags, callingUid, allowed, canInteractAcrossUsers);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return runningServiceInfoLocked;
    }

    public PendingIntent getRunningServiceControlPanel(ComponentName name) {
        PendingIntent runningServiceControlPanelLocked;
        enforceNotIsolatedCaller("getRunningServiceControlPanel");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                runningServiceControlPanelLocked = this.mServices.getRunningServiceControlPanelLocked(name);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return runningServiceControlPanelLocked;
    }

    public ComponentName startService(IApplicationThread caller, Intent service, String resolvedType, boolean requireForeground, String callingPackage, String callingFeatureId, int userId) throws TransactionTooLargeException {
        ComponentName res;
        enforceNotIsolatedCaller("startService");
        if (service != null && service.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        if (callingPackage == null) {
            throw new IllegalArgumentException("callingPackage cannot be null");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                long origId = Binder.clearCallingIdentity();
                try {
                    res = this.mServices.startServiceLocked(caller, service, resolvedType, callingPid, callingUid, requireForeground, callingPackage, callingFeatureId, userId);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
        return res;
    }

    public int stopService(IApplicationThread caller, Intent service, String resolvedType, int userId) {
        int iStopServiceLocked;
        enforceNotIsolatedCaller("stopService");
        if (service != null && service.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                iStopServiceLocked = this.mServices.stopServiceLocked(caller, service, resolvedType, userId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return iStopServiceLocked;
    }

    public IBinder peekService(Intent service, String resolvedType, String callingPackage) {
        IBinder iBinderPeekServiceLocked;
        enforceNotIsolatedCaller("peekService");
        if (service != null && service.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        if (callingPackage == null) {
            throw new IllegalArgumentException("callingPackage cannot be null");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                iBinderPeekServiceLocked = this.mServices.peekServiceLocked(service, resolvedType, callingPackage);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return iBinderPeekServiceLocked;
    }

    public boolean stopServiceToken(ComponentName className, IBinder token, int startId) {
        boolean zStopServiceTokenLocked;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                zStopServiceTokenLocked = this.mServices.stopServiceTokenLocked(className, token, startId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return zStopServiceTokenLocked;
    }

    public void setServiceForeground(ComponentName className, IBinder token, int id, Notification notification, int flags, int foregroundServiceType) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mServices.setServiceForegroundLocked(className, token, id, notification, flags, foregroundServiceType);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public int getForegroundServiceType(ComponentName className, IBinder token) {
        int foregroundServiceTypeLocked;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                foregroundServiceTypeLocked = this.mServices.getForegroundServiceTypeLocked(className, token);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return foregroundServiceTypeLocked;
    }

    public int handleIncomingUser(int callingPid, int callingUid, int userId, boolean allowAll, boolean requireFull, String name, String callerPackage) {
        return this.mUserController.handleIncomingUser(callingPid, callingUid, userId, allowAll, requireFull ? 2 : 0, name, callerPackage);
    }

    boolean isSingleton(String componentProcessName, ApplicationInfo aInfo, String className, int flags) {
        if (UserHandle.getAppId(aInfo.uid) >= 10000) {
            if ((flags & 1073741824) == 0) {
                return false;
            }
            if (ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS", aInfo.uid) != 0) {
                ComponentName comp = new ComponentName(aInfo.packageName, className);
                String msg = "Permission Denial: Component " + comp.flattenToShortString() + " requests FLAG_SINGLE_USER, but app does not hold android.permission.INTERACT_ACROSS_USERS";
                Slog.w("ActivityManager", msg);
                throw new SecurityException(msg);
            }
            return true;
        }
        if ("system".equals(componentProcessName)) {
            return true;
        }
        if ((flags & 1073741824) == 0) {
            return false;
        }
        boolean result = UserHandle.isSameApp(aInfo.uid, NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE) || (aInfo.flags & 8) != 0;
        return result;
    }

    boolean isValidSingletonCall(int callingUid, int componentUid) {
        int componentAppId = UserHandle.getAppId(componentUid);
        return UserHandle.isSameApp(callingUid, componentUid) || componentAppId == 1000 || componentAppId == 1001 || ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", componentUid) == 0;
    }

    public int bindService(IApplicationThread caller, IBinder token, Intent service, String resolvedType, IServiceConnection connection, int flags, String callingPackage, int userId) throws TransactionTooLargeException {
        return bindIsolatedService(caller, token, service, resolvedType, connection, flags, null, callingPackage, userId);
    }

    public int bindIsolatedService(IApplicationThread caller, IBinder token, Intent service, String resolvedType, IServiceConnection connection, int flags, String instanceName, String callingPackage, int userId) throws TransactionTooLargeException {
        int iBindServiceLocked;
        enforceNotIsolatedCaller("bindService");
        if (service != null && service.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        if (callingPackage == null) {
            throw new IllegalArgumentException("callingPackage cannot be null");
        }
        if (instanceName != null) {
            for (int i = 0; i < instanceName.length(); i++) {
                char c = instanceName.charAt(i);
                if ((c < 'a' || c > 'z') && ((c < 'A' || c > 'Z') && ((c < '0' || c > CONTENT_PROVIDER_PUBLISH_TIMEOUT_MSG) && c != '_' && c != '.'))) {
                    throw new IllegalArgumentException("Illegal instanceName");
                }
            }
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                iBindServiceLocked = this.mServices.bindServiceLocked(caller, token, service, resolvedType, connection, flags, instanceName, callingPackage, userId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return iBindServiceLocked;
    }

    public void updateServiceGroup(IServiceConnection connection, int group, int importance) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mServices.updateServiceGroupLocked(connection, group, importance);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean unbindService(IServiceConnection connection) {
        boolean zUnbindServiceLocked;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                zUnbindServiceLocked = this.mServices.unbindServiceLocked(connection);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return zUnbindServiceLocked;
    }

    public void publishService(IBinder token, Intent intent, IBinder service) {
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (!(token instanceof ServiceRecord)) {
                    throw new IllegalArgumentException("Invalid service token");
                }
                this.mServices.publishServiceLocked((ServiceRecord) token, intent, service);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void unbindFinished(IBinder token, Intent intent, boolean doRebind) {
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mServices.unbindFinishedLocked((ServiceRecord) token, intent, doRebind);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void serviceDoneExecuting(IBinder token, int type, int startId, int res) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (!(token instanceof ServiceRecord)) {
                    Slog.e("ActivityManager", "serviceDoneExecuting: Invalid service token=" + token);
                    throw new IllegalArgumentException("Invalid service token");
                }
                this.mServices.serviceDoneExecutingLocked((ServiceRecord) token, type, startId, res);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public boolean bindBackupAgent(String packageName, int backupMode, int targetUserId) throws Throwable {
        ApplicationInfo app;
        enforceCallingPermission("android.permission.CONFIRM_FULL_BACKUP", "bindBackupAgent");
        int instantiatedUserId = PackageManagerService.PLATFORM_PACKAGE_NAME.equals(packageName) ? 0 : targetUserId;
        IPackageManager pm = AppGlobals.getPackageManager();
        try {
            ApplicationInfo app2 = pm.getApplicationInfo(packageName, 1024, instantiatedUserId);
            app = app2;
        } catch (RemoteException e) {
            app = null;
        }
        if (app == null) {
            Slog.w("ActivityManager", "Unable to bind backup agent for " + packageName);
            return false;
        }
        synchronized (this) {
            try {
                try {
                    try {
                        boostPriorityForLockedSection();
                        AppGlobals.getPackageManager().setPackageStoppedState(app.packageName, false, UserHandle.getUserId(app.uid));
                    } catch (Throwable th) {
                        th = th;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (RemoteException e2) {
                } catch (IllegalArgumentException e3) {
                    Slog.w("ActivityManager", "Failed trying to unstop package " + app.packageName + ": " + e3);
                }
                try {
                    BackupRecord r = new BackupRecord(app, backupMode, targetUserId);
                    ComponentName hostingName = backupMode == 0 ? new ComponentName(app.packageName, app.backupAgentName) : new ComponentName(PackageManagerService.PLATFORM_PACKAGE_NAME, "FullBackupAgent");
                    ApplicationInfo app3 = app;
                    try {
                        ProcessRecord proc = startProcessLocked(app.processName, app, false, 0, new HostingRecord(BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD, hostingName), 4, false, false, false);
                        if (proc == null) {
                            try {
                                Slog.e("ActivityManager", "Unable to start backup agent process " + r);
                                resetPriorityAfterLockedSection();
                                return false;
                            } catch (Throwable th2) {
                                th = th2;
                                resetPriorityAfterLockedSection();
                                throw th;
                            }
                        }
                        if (UserHandle.isApp(app3.uid) && backupMode == 1) {
                            proc.inFullBackup = true;
                        }
                        r.app = proc;
                        BackupRecord backupTarget = this.mBackupTargets.get(targetUserId);
                        int oldBackupUid = backupTarget != null ? backupTarget.appInfo.uid : -1;
                        int newBackupUid = proc.inFullBackup ? r.appInfo.uid : -1;
                        this.mBackupTargets.put(targetUserId, r);
                        updateOomAdjLocked(proc, true, "updateOomAdj_meh");
                        if (proc.thread != null) {
                            try {
                                proc.thread.scheduleCreateBackupAgent(app3, compatibilityInfoForPackage(app3), backupMode, targetUserId);
                            } catch (RemoteException e4) {
                            }
                        }
                        resetPriorityAfterLockedSection();
                        JobSchedulerInternal js = (JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class);
                        if (oldBackupUid != -1) {
                            js.removeBackingUpUid(oldBackupUid);
                        }
                        if (newBackupUid != -1) {
                            js.addBackingUpUid(newBackupUid);
                        }
                        return true;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPendingBackup(int userId) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mBackupTargets.delete(userId);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        JobSchedulerInternal js = (JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class);
        js.clearAllBackingUpUids();
    }

    public void backupAgentCreated(String agentPackageName, IBinder agent, int userId) {
        int callingUid = Binder.getCallingUid();
        enforceCallingPackage(agentPackageName, callingUid);
        int userId2 = this.mUserController.handleIncomingUser(Binder.getCallingPid(), callingUid, userId, false, 2, "backupAgentCreated", null);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                BackupRecord backupTarget = this.mBackupTargets.get(userId2);
                String backupAppName = backupTarget == null ? null : backupTarget.appInfo.packageName;
                if (!agentPackageName.equals(backupAppName)) {
                    Slog.e("ActivityManager", "Backup agent created for " + agentPackageName + " but not requested!");
                    resetPriorityAfterLockedSection();
                    return;
                }
                resetPriorityAfterLockedSection();
                long oldIdent = Binder.clearCallingIdentity();
                try {
                    try {
                        IBackupManager bm = IBackupManager.Stub.asInterface(ServiceManager.getService(BatteryService.HealthServiceWrapper.INSTANCE_HEALTHD));
                        bm.agentConnectedForUser(userId2, agentPackageName, agent);
                    } catch (RemoteException e) {
                    } catch (Exception e2) {
                        Slog.w("ActivityManager", "Exception trying to deliver BackupAgent binding: ");
                        e2.printStackTrace();
                    }
                } finally {
                    Binder.restoreCallingIdentity(oldIdent);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void unbindBackupAgent(ApplicationInfo appInfo) {
        enforceCallingPermission("android.permission.CONFIRM_FULL_BACKUP", "unbindBackupAgent");
        if (appInfo == null) {
            Slog.w("ActivityManager", "unbind backup agent for null app");
            return;
        }
        int userId = UserHandle.getUserId(appInfo.uid);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                BackupRecord backupTarget = this.mBackupTargets.get(userId);
                String backupAppName = backupTarget == null ? null : backupTarget.appInfo.packageName;
                try {
                    if (backupAppName == null) {
                        Slog.w("ActivityManager", "Unbinding backup agent with no active backup");
                        this.mBackupTargets.delete(userId);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    if (!backupAppName.equals(appInfo.packageName)) {
                        Slog.e("ActivityManager", "Unbind of " + appInfo + " but is not the current backup target");
                        this.mBackupTargets.delete(userId);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    ProcessRecord proc = backupTarget.app;
                    updateOomAdjLocked(proc, true, "updateOomAdj_meh");
                    proc.inFullBackup = false;
                    int oldBackupUid = backupTarget != null ? backupTarget.appInfo.uid : -1;
                    if (proc.thread != null) {
                        try {
                            proc.thread.scheduleDestroyBackupAgent(appInfo, compatibilityInfoForPackage(appInfo), userId);
                        } catch (Exception e) {
                            Slog.e("ActivityManager", "Exception when unbinding backup agent:");
                            e.printStackTrace();
                        }
                    }
                    this.mBackupTargets.delete(userId);
                    resetPriorityAfterLockedSection();
                    if (oldBackupUid != -1) {
                        JobSchedulerInternal js = (JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class);
                        js.removeBackingUpUid(oldBackupUid);
                    }
                } catch (Throwable th) {
                    this.mBackupTargets.delete(userId);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    private boolean isInstantApp(ProcessRecord record, String callerPackage, int uid) {
        if (UserHandle.getAppId(uid) < 10000) {
            return false;
        }
        if (record != null) {
            return record.info.isInstantApp();
        }
        IPackageManager pm = AppGlobals.getPackageManager();
        if (callerPackage == null) {
            try {
                String[] packageNames = pm.getPackagesForUid(uid);
                if (packageNames == null || packageNames.length == 0) {
                    throw new IllegalArgumentException("Unable to determine caller package name");
                }
                callerPackage = packageNames[0];
            } catch (RemoteException e) {
                Slog.e("ActivityManager", "Error looking up if " + callerPackage + " is an instant app.", e);
                return true;
            }
        }
        this.mAppOpsService.checkPackage(uid, callerPackage);
        return pm.isInstantApp(callerPackage, UserHandle.getUserId(uid));
    }

    boolean isPendingBroadcastProcessLocked(int pid) {
        return this.mFgBroadcastQueue.isPendingBroadcastProcessLocked(pid) || this.mBgBroadcastQueue.isPendingBroadcastProcessLocked(pid) || this.mOffloadBroadcastQueue.isPendingBroadcastProcessLocked(pid);
    }

    void skipPendingBroadcastLocked(int pid) {
        Slog.w("ActivityManager", "Unattached app died before broadcast acknowledged, skipping");
        for (BroadcastQueue queue : this.mBroadcastQueues) {
            queue.skipPendingBroadcastLocked(pid);
        }
    }

    boolean sendPendingBroadcastsLocked(ProcessRecord app) {
        boolean didSomething = false;
        for (BroadcastQueue queue : this.mBroadcastQueues) {
            didSomething |= queue.sendPendingBroadcastsLocked(app);
        }
        return didSomething;
    }

    @Deprecated
    public Intent registerReceiver(IApplicationThread caller, String callerPackage, IIntentReceiver receiver, IntentFilter filter, String permission, int userId, int flags) {
        return registerReceiverWithFeature(caller, callerPackage, null, receiver, filter, permission, userId, flags);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0408 */
    /* JADX WARN: Code duplicated, block: B:100:0x0208 A[Catch: all -> 0x0250, TryCatch #5 {all -> 0x0250, blocks: (B:95:0x01eb, B:97:0x01f3, B:99:0x01ff, B:105:0x023d, B:100:0x0208, B:101:0x0230, B:102:0x0231, B:104:0x023b, B:107:0x024b), top: B:181:0x01eb, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0265  */
    /* JADX WARN: Code duplicated, block: B:117:0x026f A[Catch: all -> 0x03c4, TryCatch #0 {all -> 0x03c4, blocks: (B:115:0x026b, B:117:0x026f, B:119:0x0273), top: B:171:0x026b }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0273 A[Catch: all -> 0x03c4, TRY_LEAVE, TryCatch #0 {all -> 0x03c4, blocks: (B:115:0x026b, B:117:0x026f, B:119:0x0273), top: B:171:0x026b }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0296 A[Catch: all -> 0x03db, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x02bf A[Catch: all -> 0x03db, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02c8 A[Catch: all -> 0x03db, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x02d6 A[Catch: all -> 0x03db, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x02e5 A[Catch: all -> 0x03db, LOOP:4: B:133:0x02e3->B:134:0x02e5, LOOP_END, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0339  */
    /* JADX WARN: Code duplicated, block: B:143:0x0366 A[Catch: all -> 0x03db, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0395 A[Catch: all -> 0x03db, TryCatch #11 {all -> 0x03db, blocks: (B:124:0x028d, B:126:0x0296, B:132:0x02d6, B:134:0x02e5, B:135:0x032d, B:127:0x02bf, B:129:0x02c8, B:130:0x02cf, B:151:0x03d6, B:141:0x033d, B:142:0x0365, B:143:0x0366, B:144:0x0394, B:145:0x0395, B:146:0x03c3), top: B:191:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x0231 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x01d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x0187 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00f8 A[Catch: all -> 0x00df, TRY_ENTER, TryCatch #14 {all -> 0x00df, blocks: (B:34:0x00d0, B:42:0x00f8, B:44:0x0104, B:46:0x0114, B:49:0x0128, B:50:0x012f), top: B:196:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0104 A[Catch: all -> 0x00df, TryCatch #14 {all -> 0x00df, blocks: (B:34:0x00d0, B:42:0x00f8, B:44:0x0104, B:46:0x0114, B:49:0x0128, B:50:0x012f), top: B:196:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0114 A[Catch: all -> 0x00df, TryCatch #14 {all -> 0x00df, blocks: (B:34:0x00d0, B:42:0x00f8, B:44:0x0104, B:46:0x0114, B:49:0x0128, B:50:0x012f), top: B:196:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0126 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0128 A[Catch: all -> 0x00df, TryCatch #14 {all -> 0x00df, blocks: (B:34:0x00d0, B:42:0x00f8, B:44:0x0104, B:46:0x0114, B:49:0x0128, B:50:0x012f), top: B:196:0x00d0 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0133  */
    /* JADX WARN: Code duplicated, block: B:58:0x014f  */
    /* JADX WARN: Code duplicated, block: B:60:0x015c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0171  */
    /* JADX WARN: Code duplicated, block: B:67:0x017c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x017e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0190  */
    /* JADX WARN: Code duplicated, block: B:74:0x0195  */
    /* JADX WARN: Code duplicated, block: B:75:0x019d  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:91:0x01cb A[Catch: all -> 0x03cc, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x03cc, blocks: (B:80:0x01a4, B:91:0x01cb), top: B:179:0x01a4 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01f3 A[Catch: all -> 0x0250, TryCatch #5 {all -> 0x0250, blocks: (B:95:0x01eb, B:97:0x01f3, B:99:0x01ff, B:105:0x023d, B:100:0x0208, B:101:0x0230, B:102:0x0231, B:104:0x023b, B:107:0x024b), top: B:181:0x01eb, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01ff A[Catch: all -> 0x0250, TryCatch #5 {all -> 0x0250, blocks: (B:95:0x01eb, B:97:0x01f3, B:99:0x01ff, B:105:0x023d, B:100:0x0208, B:101:0x0230, B:102:0x0231, B:104:0x023b, B:107:0x024b), top: B:181:0x01eb, inners: #3 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:100:0x0208, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:126:0x0296, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:143:0x0366, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:145:0x0395, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.Intent registerReceiverWithFeature(android.app.IApplicationThread r55, java.lang.String r56, java.lang.String r57, android.content.IIntentReceiver r58, android.content.IntentFilter r59, java.lang.String r60, int r61, int r62) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.registerReceiverWithFeature(android.app.IApplicationThread, java.lang.String, java.lang.String, android.content.IIntentReceiver, android.content.IntentFilter, java.lang.String, int, int):android.content.Intent");
    }

    public void unregisterReceiver(IIntentReceiver receiver) {
        long origId = Binder.clearCallingIdentity();
        boolean doTrim = false;
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    ReceiverList rl = this.mRegisteredReceivers.get(receiver.asBinder());
                    if (rl != null) {
                        BroadcastRecord r = rl.curBroadcast;
                        if (r != null && r == r.queue.getMatchingOrderedReceiver(r)) {
                            boolean doNext = r.queue.finishReceiverLocked(r, r.resultCode, r.resultData, r.resultExtras, r.resultAbort, false);
                            if (doNext) {
                                doTrim = true;
                                r.queue.processNextBroadcast(false);
                            }
                        }
                        if (rl.app != null) {
                            rl.app.receivers.remove(rl);
                        }
                        removeReceiverLocked(rl);
                        if (rl.linkedToDeath) {
                            rl.linkedToDeath = false;
                            rl.receiver.asBinder().unlinkToDeath(rl, 0);
                        }
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            if (doTrim) {
                trimApplications("updateOomAdj_finishReceiver");
                Binder.restoreCallingIdentity(origId);
            } else {
                Binder.restoreCallingIdentity(origId);
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    void removeReceiverLocked(ReceiverList rl) {
        this.mRegisteredReceivers.remove(rl.receiver.asBinder());
        for (int i = rl.size() - 1; i >= 0; i--) {
            this.mReceiverResolver.removeFilter(rl.get(i));
        }
    }

    private final void sendPackageBroadcastLocked(int cmd, String[] packages, int userId) {
        this.mProcessList.sendPackageBroadcastLocked(cmd, packages, userId);
    }

    /* JADX WARN: Code duplicated, block: B:88:0x015c  */
    private List<ResolveInfo> collectReceiverComponents(Intent intent, String resolvedType, int callingUid, int[] users, int[] broadcastWhitelist) {
        int i;
        int receiverAppId;
        HashSet<ComponentName> singleUserReceivers;
        int[] iArr = users;
        int pmFlags = 268436480;
        List<ResolveInfo> receivers = null;
        HashSet<ComponentName> singleUserReceivers2 = null;
        boolean scannedFirstReceivers = false;
        try {
            int length = iArr.length;
            int i2 = 0;
            while (i2 < length) {
                int user = iArr[i2];
                try {
                    try {
                        if (callingUid == NATIVE_DUMP_TIMEOUT_MS) {
                            try {
                                if (this.mUserController.hasUserRestriction("no_debugging_features", user)) {
                                    singleUserReceivers = singleUserReceivers2;
                                }
                                singleUserReceivers2 = singleUserReceivers;
                                i2++;
                                iArr = users;
                                pmFlags = pmFlags;
                            } catch (RemoteException e) {
                                if (receivers != null) {
                                    while (i >= 0) {
                                        receiverAppId = UserHandle.getAppId(receivers.get(i).activityInfo.applicationInfo.uid);
                                        if (receiverAppId < 10000) {
                                        }
                                    }
                                }
                                return receivers;
                            }
                        }
                        List<ResolveInfo> newReceivers = AppGlobals.getPackageManager().queryIntentReceivers(intent, resolvedType, pmFlags, user).getList();
                        if (user == 0 || newReceivers == null) {
                            singleUserReceivers = singleUserReceivers2;
                        } else {
                            int i3 = 0;
                            while (i3 < newReceivers.size()) {
                                try {
                                    HashSet<ComponentName> singleUserReceivers3 = singleUserReceivers2;
                                    if ((newReceivers.get(i3).activityInfo.flags & AudioFormat.APTX) != 0) {
                                        newReceivers.remove(i3);
                                        i3--;
                                    }
                                    i3++;
                                    singleUserReceivers2 = singleUserReceivers3;
                                } catch (RemoteException e2) {
                                }
                            }
                            singleUserReceivers = singleUserReceivers2;
                        }
                        if (newReceivers != null && newReceivers.size() == 0) {
                            newReceivers = null;
                        }
                        if (receivers == null) {
                            receivers = newReceivers;
                            pmFlags = pmFlags;
                            singleUserReceivers2 = singleUserReceivers;
                        } else if (newReceivers != null) {
                            if (scannedFirstReceivers) {
                                pmFlags = pmFlags;
                                singleUserReceivers2 = singleUserReceivers;
                            } else {
                                scannedFirstReceivers = true;
                                int i4 = 0;
                                while (i4 < receivers.size()) {
                                    ResolveInfo ri = receivers.get(i4);
                                    if ((ri.activityInfo.flags & 1073741824) != 0) {
                                        try {
                                            ComponentName cn = new ComponentName(ri.activityInfo.packageName, ri.activityInfo.name);
                                            HashSet<ComponentName> singleUserReceivers4 = singleUserReceivers == null ? new HashSet<>() : singleUserReceivers;
                                            singleUserReceivers4.add(cn);
                                            singleUserReceivers = singleUserReceivers4;
                                        } catch (RemoteException e3) {
                                        }
                                    }
                                    i4++;
                                    pmFlags = pmFlags;
                                }
                                pmFlags = pmFlags;
                                singleUserReceivers2 = singleUserReceivers;
                            }
                            int i5 = 0;
                            while (i5 < newReceivers.size()) {
                                ResolveInfo ri2 = newReceivers.get(i5);
                                if ((ri2.activityInfo.flags & 1073741824) != 0) {
                                    ComponentName cn2 = new ComponentName(ri2.activityInfo.packageName, ri2.activityInfo.name);
                                    if (singleUserReceivers2 == null) {
                                        singleUserReceivers2 = new HashSet<>();
                                    }
                                    if (!singleUserReceivers2.contains(cn2)) {
                                        singleUserReceivers2.add(cn2);
                                        receivers.add(ri2);
                                    }
                                } else {
                                    receivers.add(ri2);
                                }
                                i5++;
                                scannedFirstReceivers = scannedFirstReceivers;
                            }
                        } else {
                            singleUserReceivers2 = singleUserReceivers;
                        }
                        i2++;
                        iArr = users;
                        pmFlags = pmFlags;
                    } catch (RemoteException e4) {
                    }
                } catch (RemoteException e5) {
                }
            }
        } catch (RemoteException e6) {
        }
        if (receivers != null && broadcastWhitelist != null) {
            for (i = receivers.size() - 1; i >= 0; i--) {
                receiverAppId = UserHandle.getAppId(receivers.get(i).activityInfo.applicationInfo.uid);
                if (receiverAppId < 10000 && Arrays.binarySearch(broadcastWhitelist, receiverAppId) < 0) {
                    receivers.remove(i);
                }
            }
        }
        return receivers;
    }

    private void checkBroadcastFromSystem(Intent intent, ProcessRecord callerApp, String callerPackage, int callingUid, boolean isProtectedBroadcast, List receivers) {
        if ((intent.getFlags() & 4194304) != 0) {
            return;
        }
        String action = intent.getAction();
        if (isProtectedBroadcast || "android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action) || "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS".equals(action) || "android.intent.action.MEDIA_BUTTON".equals(action) || "android.intent.action.MEDIA_SCANNER_SCAN_FILE".equals(action) || "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS".equals(action) || "android.intent.action.MASTER_CLEAR".equals(action) || "android.intent.action.FACTORY_RESET".equals(action) || "android.appwidget.action.APPWIDGET_CONFIGURE".equals(action) || "android.appwidget.action.APPWIDGET_UPDATE".equals(action) || "android.location.HIGH_POWER_REQUEST_CHANGE".equals(action) || "com.android.omadm.service.CONFIGURATION_UPDATE".equals(action) || "android.text.style.SUGGESTION_PICKED".equals(action) || "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION".equals(action) || "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION".equals(action)) {
            return;
        }
        if (intent.getPackage() != null || intent.getComponent() != null) {
            if (receivers == null || receivers.size() == 0) {
                return;
            }
            boolean allProtected = true;
            for (int i = receivers.size() - 1; i >= 0; i--) {
                Object target = receivers.get(i);
                if (target instanceof ResolveInfo) {
                    ResolveInfo ri = (ResolveInfo) target;
                    if (ri.activityInfo.exported && ri.activityInfo.permission == null) {
                        allProtected = false;
                        break;
                    }
                } else {
                    BroadcastFilter bf = (BroadcastFilter) target;
                    if (bf.requiredPermission == null) {
                        allProtected = false;
                        break;
                    }
                }
            }
            if (allProtected) {
                return;
            }
        }
        if (callerApp != null) {
            Slog.w("ActivityManager", "Sending non-protected broadcast " + action + " from system " + callerApp.toShortString() + " pkg " + callerPackage);
            return;
        }
        Slog.w("ActivityManager", "Sending non-protected broadcast " + action + " from system uid " + UserHandle.formatUid(callingUid) + " pkg " + callerPackage);
    }

    final int broadcastIntentLocked(ProcessRecord callerApp, String callerPackage, String callerFeatureId, Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle resultExtras, String[] requiredPermissions, int appOp, Bundle bOptions, boolean ordered, boolean sticky, int callingPid, int callingUid, int realCallingUid, int realCallingPid, int userId) {
        return broadcastIntentLocked(callerApp, callerPackage, callerFeatureId, intent, resolvedType, resultTo, resultCode, resultData, resultExtras, requiredPermissions, appOp, bOptions, ordered, sticky, callingPid, callingUid, realCallingUid, realCallingPid, userId, false, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:265:0x067c  */
    /* JADX WARN: Code duplicated, block: B:371:0x09df  */
    /* JADX WARN: Code duplicated, block: B:81:0x022c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v65 */
    /* JADX WARN: Type inference failed for: r3v110 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r44v0 */
    /* JADX WARN: Type inference failed for: r45v0 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16, types: [int] */
    /* JADX WARN: Type inference failed for: r4v50 */
    final int broadcastIntentLocked(ProcessRecord processRecord, String str, String str2, Intent intent, String str3, IIntentReceiver iIntentReceiver, int i, String str4, Bundle bundle, String[] strArr, int i2, Bundle bundle2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, boolean z3, int[] iArr) {
        int[] iArr2;
        boolean z4;
        BroadcastOptions broadcastOptions;
        boolean z5;
        Intent intent2;
        int i8;
        ?? r10;
        int i9;
        int i10;
        boolean z6;
        int[] startedUserArray;
        int[] iArr3;
        int[] iArr4;
        List<BroadcastFilter> listQueryIntent;
        int[] iArr5;
        int i11;
        List<BroadcastFilter> list;
        int i12;
        String schemeSpecificPart;
        List<BroadcastFilter> list2;
        ArrayMap<String, ArrayList<Intent>> arrayMap;
        ArrayList<Intent> arrayList;
        byte b;
        Intent intent3;
        String schemeSpecificPart2;
        Intent intent4;
        Intent intent5;
        int i13;
        int i14;
        String str5;
        int i15;
        Intent intent6;
        String schemeSpecificPart3;
        ApplicationInfo applicationInfo;
        String schemeSpecificPart4;
        String schemeSpecificPart5;
        int uidFromIntent;
        UidRecord uidRecordLocked;
        int i16;
        int i17;
        Intent intent7 = new Intent(intent);
        boolean zIsInstantApp = isInstantApp(processRecord, str, i4);
        if (zIsInstantApp) {
            intent7.setFlags(intent7.getFlags() & (-2097153));
        }
        if (i7 == -1 && iArr != null) {
            Slog.e("ActivityManager", "broadcastWhitelist only applies when sending to individual users. Assuming restrictive whitelist.");
            iArr2 = new int[0];
        } else {
            iArr2 = iArr;
        }
        intent7.addFlags(16);
        if (!this.mProcessesReady && (intent7.getFlags() & 33554432) == 0) {
            intent7.addFlags(1073741824);
        }
        if (iIntentReceiver != null && !z) {
            Slog.w("ActivityManager", "Broadcast " + intent7 + " not ordered but result callback requested!");
        }
        int[] iArr6 = iArr2;
        int iHandleIncomingUser = this.mUserController.handleIncomingUser(i3, i4, i7, true, 0, INetd.IF_FLAG_BROADCAST, str);
        int i18 = -1;
        if (iHandleIncomingUser != -1 && !this.mUserController.isUserOrItsParentRunning(iHandleIncomingUser)) {
            if ((i4 != 1000 || (intent7.getFlags() & 33554432) == 0) && !"android.intent.action.ACTION_SHUTDOWN".equals(intent7.getAction())) {
                Slog.w("ActivityManager", "Skipping broadcast of " + intent7 + ": user " + iHandleIncomingUser + " and its parent (if any) are stopped");
                return -2;
            }
        }
        String action = r71.getAction();
        if (bundle2 == null) {
            z4 = z3;
            broadcastOptions = null;
        } else {
            BroadcastOptions broadcastOptions2 = new BroadcastOptions(bundle2);
            if (broadcastOptions2.getTemporaryAppWhitelistDuration() > 0) {
                i16 = i5;
                i17 = i6;
                if (checkComponentPermission("android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST", i17, i16, -1, true) != 0) {
                    String str6 = "Permission Denial: " + intent7.getAction() + " broadcast from " + str + " (pid=" + i3 + ", uid=" + i4 + ") requires android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST";
                    Slog.w("ActivityManager", str6);
                    throw new SecurityException(str6);
                }
            } else {
                i16 = i5;
                i17 = i6;
            }
            if (broadcastOptions2.isDontSendToRestrictedApps() && !isUidActiveLocked(i4) && isBackgroundRestrictedNoCheck(i4, str)) {
                Slog.i("ActivityManager", "Not sending broadcast " + action + " - app " + str + " has background restrictions");
                return -96;
            }
            if (broadcastOptions2.allowsBackgroundActivityStarts()) {
                if (checkComponentPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", i17, i16, -1, true) != 0) {
                    String str7 = "Permission Denial: " + r71.getAction() + " broadcast from " + str + " (pid=" + i3 + ", uid=" + i4 + ") requires android.permission.START_ACTIVITIES_FROM_BACKGROUND";
                    Slog.w("ActivityManager", str7);
                    throw new SecurityException(str7);
                }
                broadcastOptions = broadcastOptions2;
                z4 = true;
            } else {
                z4 = z3;
                broadcastOptions = broadcastOptions2;
            }
        }
        try {
            boolean zIsProtectedBroadcast = AppGlobals.getPackageManager().isProtectedBroadcast(action);
            int appId = UserHandle.getAppId(i4);
            if (appId == 0 || appId == 1027 || appId == 1068 || appId == 1073 || appId == 2901 || appId == 2902) {
                z5 = true;
            } else {
                switch (appId) {
                    case 1000:
                    case NetworkAgentInfo.EVENT_NETWORK_LINGER_COMPLETE /* 1001 */:
                    case 1002:
                        z5 = true;
                        break;
                    default:
                        z5 = processRecord != null && processRecord.isPersistent();
                        break;
                }
            }
            if (!z5) {
                if (zIsProtectedBroadcast) {
                    String str8 = "Permission Denial: not allowed to send broadcast " + action + " from pid=" + i3 + ", uid=" + i4;
                    Slog.w("ActivityManager", str8);
                    throw new SecurityException(str8);
                }
                if ("android.appwidget.action.APPWIDGET_CONFIGURE".equals(action) || "android.appwidget.action.APPWIDGET_UPDATE".equals(action)) {
                    if (str == null) {
                        String str9 = "Permission Denial: not allowed to send broadcast " + action + " from unknown caller.";
                        Slog.w("ActivityManager", str9);
                        throw new SecurityException(str9);
                    }
                    if (r71.getComponent() != null) {
                        if (!r71.getComponent().getPackageName().equals(str)) {
                            String str10 = "Permission Denial: not allowed to send broadcast " + action + " to " + r71.getComponent().getPackageName() + " from " + str;
                            Slog.w("ActivityManager", str10);
                            throw new SecurityException(str10);
                        }
                    } else {
                        r71.setPackage(str);
                    }
                }
            }
            boolean z7 = false;
            if (action == null) {
                intent2 = r71;
                i8 = i3;
                r10 = 0;
                i9 = 1073741824;
                i10 = 1;
                z6 = false;
            } else {
                if (getBackgroundLaunchBroadcasts().contains(action)) {
                    r71.addFlags(16777216);
                }
                switch (action.hashCode()) {
                    case -2098526293:
                        b = action.equals("android.hardware.action.NEW_VIDEO") ? UsbDescriptor.DESCRIPTORTYPE_BOS : (byte) -1;
                        break;
                    case -2074848843:
                        b = action.equals("android.intent.action.CLEAR_DNS_CACHE") ? (byte) 12 : (byte) -1;
                        break;
                    case -1749672628:
                        b = action.equals("android.intent.action.UID_REMOVED") ? (byte) 0 : (byte) -1;
                        break;
                    case -1403934493:
                        b = action.equals("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE") ? (byte) 3 : (byte) -1;
                        break;
                    case -1338021860:
                        b = action.equals("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE") ? (byte) 4 : (byte) -1;
                        break;
                    case -1001645458:
                        b = action.equals("android.intent.action.PACKAGES_SUSPENDED") ? (byte) 5 : (byte) -1;
                        break;
                    case -810471698:
                        b = action.equals("android.intent.action.PACKAGE_REPLACED") ? (byte) 7 : (byte) -1;
                        break;
                    case 172491798:
                        b = action.equals("android.intent.action.PACKAGE_CHANGED") ? (byte) 2 : (byte) -1;
                        break;
                    case 183904262:
                        b = action.equals("android.intent.action.PROXY_CHANGE") ? (byte) 13 : (byte) -1;
                        break;
                    case 267468725:
                        b = action.equals("android.intent.action.PACKAGE_DATA_CLEARED") ? (byte) 9 : (byte) -1;
                        break;
                    case 502473491:
                        b = action.equals("android.intent.action.TIMEZONE_CHANGED") ? (byte) 10 : (byte) -1;
                        break;
                    case 505380757:
                        b = action.equals("android.intent.action.TIME_SET") ? (byte) 11 : (byte) -1;
                        break;
                    case 525384130:
                        b = action.equals("android.intent.action.PACKAGE_REMOVED") ? (byte) 1 : (byte) -1;
                        break;
                    case 555021408:
                        b = action.equals("com.android.launcher.action.INSTALL_SHORTCUT") ? (byte) 17 : (byte) -1;
                        break;
                    case 789737439:
                        b = action.equals("android.intent.action.PRE_BOOT_COMPLETED") ? (byte) 18 : (byte) -1;
                        break;
                    case 833559602:
                        b = action.equals("android.intent.action.USER_UNLOCKED") ? (byte) 19 : (byte) -1;
                        break;
                    case 920338478:
                        b = action.equals("android.hardware.action.NEW_PICTURE") ? (byte) 14 : (byte) -1;
                        break;
                    case 1290767157:
                        b = action.equals("android.intent.action.PACKAGES_UNSUSPENDED") ? (byte) 6 : (byte) -1;
                        break;
                    case 1544582882:
                        b = action.equals("android.intent.action.PACKAGE_ADDED") ? (byte) 8 : (byte) -1;
                        break;
                    case 1862858502:
                        b = action.equals("android.security.action.TRUST_STORE_CHANGED") ? (byte) 16 : (byte) -1;
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        i9 = 1073741824;
                        if (checkComponentPermission("android.permission.BROADCAST_PACKAGE_REMOVED", i3, i4, -1, true) != 0) {
                            String str11 = "Permission Denial: " + r71.getAction() + " broadcast from " + str + " (pid=" + i3 + ", uid=" + i4 + ") requires android.permission.BROADCAST_PACKAGE_REMOVED";
                            Slog.w("ActivityManager", str11);
                            throw new SecurityException(str11);
                        }
                        switch (action) {
                            case "android.intent.action.UID_REMOVED":
                                action = action;
                                intent2 = r71;
                                i18 = -1;
                                i10 = 1;
                                int uidFromIntent2 = getUidFromIntent(intent2);
                                if (uidFromIntent2 < 0) {
                                    intent3 = null;
                                    break;
                                } else {
                                    this.mBatteryStatsService.removeUid(uidFromIntent2);
                                    intent3 = null;
                                    intent3 = null;
                                    if (intent2.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                                        this.mAppOpsService.resetAllModes(UserHandle.getUserId(uidFromIntent2), intent2.getStringExtra("android.intent.extra.PACKAGE_NAME"));
                                    } else {
                                        this.mAppOpsService.uidRemoved(uidFromIntent2);
                                    }
                                    break;
                                }
                                break;
                            case "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE":
                                action = action;
                                Intent intent8 = r71;
                                String[] stringArrayExtra = intent8.getStringArrayExtra("android.intent.extra.changed_package_list");
                                if (stringArrayExtra == null || stringArrayExtra.length <= 0) {
                                    intent2 = intent8;
                                    i10 = 1;
                                    i18 = -1;
                                    intent3 = null;
                                    break;
                                } else {
                                    int i19 = 0;
                                    while (i19 < stringArrayExtra.length) {
                                        int i20 = iHandleIncomingUser;
                                        forceStopPackageLocked(stringArrayExtra[i19], -1, false, true, true, false, false, i20, "storage unmount");
                                        i19++;
                                        iHandleIncomingUser = i20;
                                        intent8 = intent8;
                                    }
                                    intent2 = intent8;
                                    i18 = -1;
                                    this.mAtmInternal.cleanupRecentTasksForUser(-1);
                                    i10 = 1;
                                    sendPackageBroadcastLocked(1, stringArrayExtra, iHandleIncomingUser);
                                    intent3 = null;
                                    break;
                                }
                                break;
                            case "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE":
                                action = action;
                                this.mAtmInternal.cleanupRecentTasksForUser(-1);
                                intent2 = r71;
                                intent3 = null;
                                i10 = 1;
                                i18 = -1;
                                break;
                            case "android.intent.action.PACKAGE_REMOVED":
                            case "android.intent.action.PACKAGE_CHANGED":
                                Uri data = r71.getData();
                                if (data != null && (schemeSpecificPart2 = data.getSchemeSpecificPart()) != null) {
                                    boolean zEquals = "android.intent.action.PACKAGE_REMOVED".equals(action);
                                    boolean booleanExtra = r71.getBooleanExtra("android.intent.extra.REPLACING", false);
                                    boolean z8 = !r71.getBooleanExtra("android.intent.extra.DONT_KILL_APP", false);
                                    boolean z9 = zEquals && !booleanExtra;
                                    if (zEquals) {
                                        if (z8) {
                                            forceStopPackageLocked(schemeSpecificPart2, UserHandle.getAppId(r71.getIntExtra("android.intent.extra.UID", -1)), false, true, true, false, z9, iHandleIncomingUser, zEquals ? "pkg removed" : "pkg changed");
                                            iHandleIncomingUser = iHandleIncomingUser;
                                            str5 = schemeSpecificPart2;
                                            intent4 = r71;
                                            i14 = -1;
                                        } else {
                                            intent4 = r71;
                                            i14 = -1;
                                            str5 = schemeSpecificPart2;
                                            forceStopAppZygoteLocked(str5, UserHandle.getAppId(intent4.getIntExtra("android.intent.extra.UID", -1)), iHandleIncomingUser);
                                        }
                                        if (z8) {
                                            i15 = 0;
                                        } else {
                                            i15 = 2;
                                        }
                                        i13 = 1;
                                        intent5 = null;
                                        sendPackageBroadcastLocked(i15, new String[]{str5}, iHandleIncomingUser);
                                        if (z9) {
                                            this.mAppOpsService.packageRemoved(intent4.getIntExtra("android.intent.extra.UID", i14), str5);
                                            this.mUgmInternal.removeUriPermissionsForPackage(str5, iHandleIncomingUser, true, false);
                                            this.mAtmInternal.removeRecentTasksByPackageName(str5, iHandleIncomingUser);
                                            this.mServices.forceStopPackageLocked(str5, iHandleIncomingUser);
                                            this.mAtmInternal.onPackageUninstalled(str5);
                                            this.mBatteryStatsService.notePackageUninstalled(str5);
                                        }
                                    } else {
                                        action = action;
                                        intent4 = r71;
                                        intent5 = null;
                                        i13 = 1;
                                        i14 = -1;
                                        if (z8) {
                                            this.mProcessList.killPackageProcessesLocked(schemeSpecificPart2, UserHandle.getAppId(intent4.getIntExtra("android.intent.extra.UID", -1)), iHandleIncomingUser, -10000, 10, 0, "change " + schemeSpecificPart2);
                                        }
                                        cleanupDisabledPackageComponentsLocked(schemeSpecificPart2, iHandleIncomingUser, intent4.getStringArrayExtra("android.intent.extra.changed_component_name_list"));
                                    }
                                    intent2 = intent4;
                                    intent3 = intent5;
                                    int i21 = i14;
                                    i10 = i13;
                                    i18 = i21;
                                    break;
                                } else {
                                    action = action;
                                    intent2 = r71;
                                    intent3 = null;
                                    i10 = 1;
                                    i18 = -1;
                                    break;
                                }
                                break;
                            case "android.intent.action.PACKAGES_SUSPENDED":
                            case "android.intent.action.PACKAGES_UNSUSPENDED":
                                this.mAtmInternal.onPackagesSuspendedChanged(r71.getStringArrayExtra("android.intent.extra.changed_package_list"), "android.intent.action.PACKAGES_SUSPENDED".equals(r71.getAction()), r71.getIntExtra("android.intent.extra.user_handle", -10000));
                                action = action;
                                intent2 = r71;
                                intent3 = null;
                                i18 = -1;
                                i10 = 1;
                                break;
                            default:
                                action = action;
                                intent2 = r71;
                                intent3 = null;
                                i18 = -1;
                                i10 = 1;
                                break;
                        }
                        i8 = i3;
                        intent6 = intent3;
                        break;
                        break;
                    case 7:
                        i9 = 1073741824;
                        Uri data2 = r71.getData();
                        if (data2 == null || (schemeSpecificPart3 = data2.getSchemeSpecificPart()) == null) {
                            action = action;
                            intent2 = r71;
                            intent6 = null;
                            i8 = i3;
                            i18 = -1;
                            i10 = 1;
                        } else {
                            try {
                                applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(schemeSpecificPart3, 1024, iHandleIncomingUser);
                            } catch (RemoteException e) {
                                applicationInfo = null;
                            }
                            if (applicationInfo == null) {
                                Slog.w("ActivityManager", "Dropping ACTION_PACKAGE_REPLACED for non-existent pkg: ssp=" + schemeSpecificPart3 + " data=" + data2);
                                return 0;
                            }
                            updateAssociationForApp(applicationInfo);
                            this.mAtmInternal.onPackageReplaced(applicationInfo);
                            this.mServices.updateServiceApplicationInfoLocked(applicationInfo);
                            sendPackageBroadcastLocked(3, new String[]{schemeSpecificPart3}, iHandleIncomingUser);
                            action = action;
                            intent2 = r71;
                            intent6 = null;
                            i8 = i3;
                            i18 = -1;
                            i10 = 1;
                        }
                        break;
                    case 8:
                        i9 = 1073741824;
                        Uri data3 = r71.getData();
                        if (data3 == null || (schemeSpecificPart4 = data3.getSchemeSpecificPart()) == null) {
                            action = action;
                            intent2 = r71;
                            i8 = i3;
                            i18 = -1;
                            i10 = 1;
                            intent6 = null;
                        } else {
                            this.mAtmInternal.onPackageAdded(schemeSpecificPart4, r71.getBooleanExtra("android.intent.extra.REPLACING", false));
                            try {
                                ApplicationInfo applicationInfo2 = AppGlobals.getPackageManager().getApplicationInfo(schemeSpecificPart4, 1024, 0);
                                this.mBatteryStatsService.notePackageInstalled(schemeSpecificPart4, applicationInfo2 != null ? applicationInfo2.longVersionCode : 0L);
                                break;
                            } catch (RemoteException e2) {
                            }
                            action = action;
                            intent2 = r71;
                            i8 = i3;
                            i18 = -1;
                            i10 = 1;
                            intent6 = null;
                        }
                        break;
                    case 9:
                        Uri data4 = r71.getData();
                        if (data4 == null || (schemeSpecificPart5 = data4.getSchemeSpecificPart()) == null) {
                            intent6 = null;
                            action = action;
                            intent2 = r71;
                            i8 = i3;
                            i9 = 1073741824;
                            i10 = 1;
                        } else {
                            this.mAtmInternal.onPackageDataCleared(schemeSpecificPart5);
                            intent6 = null;
                            action = action;
                            intent2 = r71;
                            i8 = i3;
                            i9 = 1073741824;
                            i10 = 1;
                        }
                        break;
                    case 10:
                        this.mHandler.sendEmptyMessage(13);
                        intent6 = null;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        i9 = 1073741824;
                        i10 = 1;
                        break;
                    case 11:
                        int intExtra = r71.getIntExtra("android.intent.extra.TIME_PREF_24_HOUR_FORMAT", -1);
                        if (intExtra != -1) {
                            this.mHandler.sendMessage(this.mHandler.obtainMessage(41, intExtra, 0));
                        }
                        BatteryStatsImpl activeStatistics = this.mBatteryStatsService.getActiveStatistics();
                        synchronized (activeStatistics) {
                            activeStatistics.noteCurrentTimeChangedLocked();
                            break;
                        }
                        intent6 = null;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        i9 = 1073741824;
                        i10 = 1;
                        break;
                    case 12:
                        this.mHandler.sendEmptyMessage(CLEAR_DNS_CACHE_MSG);
                        intent6 = null;
                        i9 = 1073741824;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        i10 = 1;
                        break;
                    case 13:
                        MainHandler mainHandler = this.mHandler;
                        mainHandler.sendMessage(mainHandler.obtainMessage(29));
                        intent6 = null;
                        i9 = 1073741824;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        i10 = 1;
                        break;
                    case 14:
                    case 15:
                        r71.addFlags(1073741824);
                        intent6 = null;
                        i9 = 1073741824;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        i10 = 1;
                        break;
                    case 16:
                        this.mHandler.sendEmptyMessage(63);
                        intent6 = null;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        i9 = 1073741824;
                        i10 = 1;
                        break;
                    case 17:
                        Log.w("ActivityManager", "Broadcast " + action + " no longer supported. It will not be delivered.");
                        return 0;
                    case 18:
                        z7 = true;
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        intent6 = null;
                        i9 = 1073741824;
                        i10 = 1;
                        break;
                    case 19:
                        Slog.i("ActivityManager", "ACTION_USER_UNLOCKED");
                        Debug.traceBootKpi("M-AMS user unlock");
                        int intExtra2 = r71.getIntExtra("android.intent.extra.user_handle", -1);
                        if (!this.mConstants.mMegaQuickBootEnable || intExtra2 != 0 || UserManager.isHeadlessSystemUserMode()) {
                            action = action;
                            intent2 = r71;
                            i8 = i3;
                            intent6 = null;
                            i9 = 1073741824;
                            i10 = 1;
                        } else {
                            try {
                                Slog.i("ActivityManager", "startHome user:" + intExtra2);
                                Debug.traceBootKpi("M - AMS StartHome");
                                this.mAtmInternal.startHomeOnAllDisplays(intExtra2, "systemReady");
                                action = action;
                                intent2 = r71;
                                i8 = i3;
                                intent6 = null;
                                i9 = 1073741824;
                                i10 = 1;
                            } catch (Exception e3) {
                                Slog.i("ActivityManager", "startHomeOnAllDisplays failed");
                                e3.printStackTrace();
                                action = action;
                                intent2 = r71;
                                i8 = i3;
                                intent6 = null;
                                i9 = 1073741824;
                                i10 = 1;
                            }
                        }
                        break;
                    default:
                        action = action;
                        intent2 = r71;
                        i8 = i3;
                        intent6 = null;
                        i9 = 1073741824;
                        i10 = 1;
                        break;
                }
                action = action;
                if (("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_REPLACED".equals(action)) && (uidFromIntent = getUidFromIntent(intent2)) != i18 && (uidRecordLocked = this.mProcessList.getUidRecordLocked(uidFromIntent)) != null) {
                    uidRecordLocked.updateHasInternetPermission();
                }
                z6 = z7;
                r10 = intent6;
            }
            if (z2) {
                if (checkPermission("android.permission.BROADCAST_STICKY", i8, i4) != 0) {
                    String str12 = "Permission Denial: broadcastIntent() requesting a sticky broadcast from pid=" + i8 + ", uid=" + i4 + " requires android.permission.BROADCAST_STICKY";
                    Slog.w("ActivityManager", str12);
                    throw new SecurityException(str12);
                }
                if (strArr != null && strArr.length > 0) {
                    Slog.w("ActivityManager", "Can't broadcast sticky intent " + intent2 + " and enforce permissions " + Arrays.toString(strArr));
                    return i18;
                }
                if (intent2.getComponent() != null) {
                    throw new SecurityException("Sticky broadcasts can't target a specific component");
                }
                if (iHandleIncomingUser != i18 && (arrayMap = this.mStickyBroadcasts.get(i18)) != null && (arrayList = arrayMap.get(intent2.getAction())) != null) {
                    int size = arrayList.size();
                    for (int i22 = 0; i22 < size; i22++) {
                        if (intent2.filterEquals(arrayList.get(i22))) {
                            throw new IllegalArgumentException("Sticky broadcast " + intent2 + " for user " + iHandleIncomingUser + " conflicts with existing global broadcast");
                        }
                    }
                }
                ArrayMap<String, ArrayList<Intent>> arrayMap2 = this.mStickyBroadcasts.get(iHandleIncomingUser);
                if (arrayMap2 == null) {
                    arrayMap2 = new ArrayMap<>();
                    this.mStickyBroadcasts.put(iHandleIncomingUser, arrayMap2);
                }
                ArrayList<Intent> arrayList2 = arrayMap2.get(intent2.getAction());
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    arrayMap2.put(intent2.getAction(), arrayList2);
                }
                int size2 = arrayList2.size();
                for (int i23 = 0; i23 < size2; i23++) {
                    if (intent2.filterEquals(arrayList2.get(i23))) {
                        arrayList2.set(i23, new Intent(intent2));
                        if (i23 >= size2) {
                            arrayList2.add(new Intent(intent2));
                        }
                    }
                }
                if (i23 >= size2) {
                    arrayList2.add(new Intent(intent2));
                }
            }
            if (iHandleIncomingUser == i18) {
                startedUserArray = this.mUserController.getStartedUserArray();
            } else {
                int[] iArr7 = new int[i10];
                iArr7[r10] = iHandleIncomingUser;
                startedUserArray = iArr7;
            }
            List<ResolveInfo> arrayList3 = null;
            if ((intent2.getFlags() & i9) != 0) {
                iArr3 = startedUserArray;
            } else {
                iArr3 = startedUserArray;
                arrayList3 = collectReceiverComponents(intent2, str3, i4, iArr3, iArr6);
            }
            if (intent2.getComponent() != null) {
                iArr4 = iArr3;
                listQueryIntent = null;
            } else if (iHandleIncomingUser != i18 || i4 != NATIVE_DUMP_TIMEOUT_MS) {
                iArr4 = iArr3;
                listQueryIntent = this.mReceiverResolver.queryIntent(intent2, str3, r10, iHandleIncomingUser);
            } else {
                int i24 = 0;
                List<BroadcastFilter> list3 = null;
                while (true) {
                    iArr4 = iArr3;
                    if (i24 < iArr4.length) {
                        if (!this.mUserController.hasUserRestriction("no_debugging_features", iArr4[i24])) {
                            List<BroadcastFilter> listQueryIntent2 = this.mReceiverResolver.queryIntent(intent2, str3, r10, iArr4[i24]);
                            if (list3 == null) {
                                list3 = listQueryIntent2;
                            } else if (listQueryIntent2 != null) {
                                list3.addAll(listQueryIntent2);
                            }
                        }
                        i24++;
                        iArr3 = iArr4;
                    } else {
                        listQueryIntent = list3;
                    }
                }
            }
            ?? r44 = (intent2.getFlags() & AudioFormat.APTX) != 0 ? i10 : r10;
            if (listQueryIntent != null) {
                iArr5 = iArr6;
                if (iArr5 != null) {
                    for (int size3 = listQueryIntent.size() - i10; size3 >= 0; size3--) {
                        int appId2 = UserHandle.getAppId(listQueryIntent.get(size3).owningUid);
                        if (appId2 >= 10000 && Arrays.binarySearch(iArr5, appId2) < 0) {
                            listQueryIntent.remove(size3);
                        }
                    }
                }
            } else {
                iArr5 = iArr6;
            }
            ?? size4 = listQueryIntent != null ? listQueryIntent.size() : r10;
            if (!z && size4 > 0) {
                if (z5) {
                    list2 = listQueryIntent;
                    checkBroadcastFromSystem(intent2, processRecord, str, i4, zIsProtectedBroadcast, list2);
                } else {
                    list2 = listQueryIntent;
                }
                BroadcastQueue broadcastQueueBroadcastQueueForIntent = broadcastQueueForIntent(intent2);
                BroadcastRecord broadcastRecord = new BroadcastRecord(broadcastQueueBroadcastQueueForIntent, intent2, processRecord, str, str2, i3, i4, zIsInstantApp, str3, strArr, i2, broadcastOptions, list2, iIntentReceiver, i, str4, bundle, z, z2, false, iHandleIncomingUser, z4, z6);
                if (((r44 == 0 || broadcastQueueBroadcastQueueForIntent.replaceParallelBroadcastLocked(broadcastRecord) == null) ? r10 : i10) == 0) {
                    broadcastQueueBroadcastQueueForIntent.enqueueParallelBroadcastLocked(broadcastRecord);
                    broadcastQueueBroadcastQueueForIntent.scheduleBroadcastsLocked();
                }
                list = null;
                i11 = 0;
            } else {
                i11 = size4 == true ? 1 : 0;
                list = listQueryIntent;
            }
            int i25 = 0;
            if (arrayList3 != null) {
                String[] stringArrayExtra2 = null;
                if ("android.intent.action.PACKAGE_ADDED".equals(intent2.getAction()) || "android.intent.action.PACKAGE_RESTARTED".equals(intent2.getAction()) || "android.intent.action.PACKAGE_DATA_CLEARED".equals(intent2.getAction())) {
                    Uri data5 = intent2.getData();
                    if (data5 != null && (schemeSpecificPart = data5.getSchemeSpecificPart()) != null) {
                        String[] strArr2 = new String[i10];
                        strArr2[r10] = schemeSpecificPart;
                        stringArrayExtra2 = strArr2;
                    }
                } else if ("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE".equals(intent2.getAction())) {
                    stringArrayExtra2 = intent2.getStringArrayExtra("android.intent.extra.changed_package_list");
                }
                if (stringArrayExtra2 != null && stringArrayExtra2.length > 0) {
                    int length = stringArrayExtra2.length;
                    for (?? r4 = r10; r4 < length; r4++) {
                        String str13 = stringArrayExtra2[r4];
                        if (str13 != null) {
                            int size5 = arrayList3.size();
                            int i26 = 0;
                            while (i26 < size5) {
                                if (arrayList3.get(i26).activityInfo.packageName.equals(str13)) {
                                    arrayList3.remove(i26);
                                    i26--;
                                    size5--;
                                }
                                i26 += i10;
                            }
                        }
                    }
                }
                int size6 = arrayList3 != null ? arrayList3.size() : 0;
                int i27 = 0;
                ResolveInfo resolveInfo = null;
                BroadcastFilter broadcastFilter = null;
                while (i27 < size6 && i25 < i11) {
                    if (resolveInfo == null) {
                        resolveInfo = arrayList3.get(i27);
                    }
                    if (broadcastFilter == null) {
                        broadcastFilter = list.get(i25);
                    }
                    if (broadcastFilter.getPriority() >= resolveInfo.priority) {
                        arrayList3.add(i27, broadcastFilter);
                        i25++;
                        broadcastFilter = null;
                        i27++;
                        size6++;
                    } else {
                        i27++;
                        resolveInfo = null;
                    }
                }
                i12 = i25;
            } else {
                i12 = 0;
            }
            while (i12 < i11) {
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                }
                arrayList3.add(list.get(i12));
                i12++;
            }
            if (z5) {
                checkBroadcastFromSystem(intent2, processRecord, str, i4, zIsProtectedBroadcast, arrayList3);
            }
            if ((arrayList3 != null && arrayList3.size() > 0) || iIntentReceiver != null) {
                BroadcastQueue broadcastQueueBroadcastQueueForIntent2 = broadcastQueueForIntent(intent2);
                Intent intent9 = intent2;
                BroadcastRecord broadcastRecord2 = new BroadcastRecord(broadcastQueueBroadcastQueueForIntent2, intent9, processRecord, str, str2, i3, i4, zIsInstantApp, str3, strArr, i2, broadcastOptions, arrayList3, iIntentReceiver, i, str4, bundle, z, z2, false, iHandleIncomingUser, z4, z6);
                BroadcastRecord broadcastRecordReplaceOrderedBroadcastLocked = r44 != 0 ? broadcastQueueBroadcastQueueForIntent2.replaceOrderedBroadcastLocked(broadcastRecord2) : null;
                if (broadcastRecordReplaceOrderedBroadcastLocked != null) {
                    if (broadcastRecordReplaceOrderedBroadcastLocked.resultTo != null) {
                        try {
                            broadcastQueueForIntent(broadcastRecordReplaceOrderedBroadcastLocked.intent).performReceiveLocked(broadcastRecordReplaceOrderedBroadcastLocked.callerApp, broadcastRecordReplaceOrderedBroadcastLocked.resultTo, broadcastRecordReplaceOrderedBroadcastLocked.intent, 0, null, null, false, false, broadcastRecordReplaceOrderedBroadcastLocked.userId);
                        } catch (RemoteException e4) {
                            Slog.w("ActivityManager", "Failure [" + broadcastQueueBroadcastQueueForIntent2.mQueueName + "] sending broadcast result of " + intent9, e4);
                        }
                    }
                } else {
                    broadcastQueueBroadcastQueueForIntent2.enqueueOrderedBroadcastLocked(broadcastRecord2);
                    broadcastQueueBroadcastQueueForIntent2.scheduleBroadcastsLocked();
                }
                return 0;
            }
            Intent intent10 = intent2;
            if (intent10.getComponent() == null && intent10.getPackage() == null) {
                if ((intent10.getFlags() & i9) == 0) {
                    addBroadcastStatLocked(intent10.getAction(), str, 0, 0, 0L);
                    return 0;
                }
                return 0;
            }
            return 0;
        } catch (RemoteException e5) {
            Slog.w("ActivityManager", "Remote exception", e5);
            return 0;
        }
    }

    private int getUidFromIntent(Intent intent) {
        if (intent == null) {
            return -1;
        }
        Bundle intentExtras = intent.getExtras();
        if (!intent.hasExtra("android.intent.extra.UID")) {
            return -1;
        }
        return intentExtras.getInt("android.intent.extra.UID");
    }

    final void rotateBroadcastStatsIfNeededLocked() {
        long now = SystemClock.elapsedRealtime();
        BroadcastStats broadcastStats = this.mCurBroadcastStats;
        if (broadcastStats == null || broadcastStats.mStartRealtime + 86400000 < now) {
            BroadcastStats broadcastStats2 = this.mCurBroadcastStats;
            this.mLastBroadcastStats = broadcastStats2;
            if (broadcastStats2 != null) {
                broadcastStats2.mEndRealtime = SystemClock.elapsedRealtime();
                this.mLastBroadcastStats.mEndUptime = SystemClock.uptimeMillis();
            }
            this.mCurBroadcastStats = new BroadcastStats();
        }
    }

    final void addBroadcastStatLocked(String action, String srcPackage, int receiveCount, int skipCount, long dispatchTime) {
        rotateBroadcastStatsIfNeededLocked();
        this.mCurBroadcastStats.addBroadcast(action, srcPackage, receiveCount, skipCount, dispatchTime);
    }

    final void addBackgroundCheckViolationLocked(String action, String targetPackage) {
        rotateBroadcastStatsIfNeededLocked();
        this.mCurBroadcastStats.addBackgroundCheckViolation(action, targetPackage);
    }

    final Intent verifyBroadcastLocked(Intent intent) {
        int callingUid;
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        int flags = intent.getFlags();
        if (!this.mProcessesReady && (67108864 & flags) == 0 && (1073741824 & flags) == 0) {
            Slog.e("ActivityManager", "Attempt to launch receivers of broadcast intent " + intent + " before boot completion");
            throw new IllegalStateException("Cannot broadcast before boot completed");
        }
        if ((33554432 & flags) != 0) {
            throw new IllegalArgumentException("Can't use FLAG_RECEIVER_BOOT_UPGRADE here");
        }
        if ((flags & 4194304) != 0 && (callingUid = Binder.getCallingUid()) != 0 && callingUid != NATIVE_DUMP_TIMEOUT_MS) {
            Slog.w("ActivityManager", "Removing FLAG_RECEIVER_FROM_SHELL because caller is UID " + Binder.getCallingUid());
            intent.removeFlags(4194304);
        }
        return intent;
    }

    @Deprecated
    public final int broadcastIntent(IApplicationThread caller, Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle resultExtras, String[] requiredPermissions, int appOp, Bundle bOptions, boolean serialized, boolean sticky, int userId) {
        return broadcastIntentWithFeature(caller, null, intent, resolvedType, resultTo, resultCode, resultData, resultExtras, requiredPermissions, appOp, bOptions, serialized, sticky, userId);
    }

    public final int broadcastIntentWithFeature(IApplicationThread caller, String callingFeatureId, Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle resultExtras, String[] requiredPermissions, int appOp, Bundle bOptions, boolean serialized, boolean sticky, int userId) throws Throwable {
        Intent intent2;
        String str;
        enforceNotIsolatedCaller("broadcastIntent");
        synchronized (this) {
            try {
                try {
                    boostPriorityForLockedSection();
                    intent2 = intent;
                    try {
                        Intent intent3 = verifyBroadcastLocked(intent2);
                        ProcessRecord callerApp = getRecordForAppLocked(caller);
                        int callingPid = Binder.getCallingPid();
                        int callingUid = Binder.getCallingUid();
                        long origId = Binder.clearCallingIdentity();
                        if (callerApp == null) {
                            str = null;
                        } else {
                            try {
                                str = callerApp.info.packageName;
                            } catch (Throwable th) {
                                th = th;
                                Binder.restoreCallingIdentity(origId);
                                throw th;
                            }
                        }
                        try {
                            int iBroadcastIntentLocked = broadcastIntentLocked(callerApp, str, callingFeatureId, intent3, resolvedType, resultTo, resultCode, resultData, resultExtras, requiredPermissions, appOp, bOptions, serialized, sticky, callingPid, callingUid, callingUid, callingPid, userId);
                            Binder.restoreCallingIdentity(origId);
                            resetPriorityAfterLockedSection();
                            return iBroadcastIntentLocked;
                        } catch (Throwable th2) {
                            th = th2;
                            Binder.restoreCallingIdentity(origId);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                intent2 = intent;
            }
        }
    }

    int broadcastIntentInPackage(String packageName, String featureId, int uid, int realCallingUid, int realCallingPid, Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle resultExtras, String requiredPermission, Bundle bOptions, boolean serialized, boolean sticky, int userId, boolean allowBackgroundActivityStarts) throws Throwable {
        Intent intent2;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                intent2 = intent;
                try {
                    Intent intent3 = verifyBroadcastLocked(intent2);
                    try {
                        long origId = Binder.clearCallingIdentity();
                        String[] requiredPermissions = requiredPermission == null ? null : new String[]{requiredPermission};
                        try {
                            int iBroadcastIntentLocked = broadcastIntentLocked(null, packageName, featureId, intent3, resolvedType, resultTo, resultCode, resultData, resultExtras, requiredPermissions, -1, bOptions, serialized, sticky, -1, uid, realCallingUid, realCallingPid, userId, allowBackgroundActivityStarts, null);
                            Binder.restoreCallingIdentity(origId);
                            resetPriorityAfterLockedSection();
                            return iBroadcastIntentLocked;
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(origId);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                intent2 = intent;
            }
        }
    }

    public final void unbroadcastIntent(IApplicationThread caller, Intent intent, int userId) {
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        int userId2 = this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, true, 0, "removeStickyBroadcast", null);
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (checkCallingPermission("android.permission.BROADCAST_STICKY") != 0) {
                    String msg = "Permission Denial: unbroadcastIntent() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.BROADCAST_STICKY";
                    Slog.w("ActivityManager", msg);
                    throw new SecurityException(msg);
                }
                ArrayMap<String, ArrayList<Intent>> stickies = this.mStickyBroadcasts.get(userId2);
                if (stickies != null) {
                    ArrayList<Intent> list = stickies.get(intent.getAction());
                    if (list != null) {
                        int N = list.size();
                        for (int i = 0; i < N; i++) {
                            if (intent.filterEquals(list.get(i))) {
                                list.remove(i);
                                break;
                            }
                        }
                        if (list.size() <= 0) {
                            stickies.remove(intent.getAction());
                        }
                    }
                    int N2 = stickies.size();
                    if (N2 <= 0) {
                        this.mStickyBroadcasts.remove(userId2);
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    void backgroundServicesFinishedLocked(int userId) {
        for (BroadcastQueue queue : this.mBroadcastQueues) {
            queue.backgroundServicesFinishedLocked(userId);
        }
    }

    public void finishReceiver(IBinder who, int resultCode, String resultData, Bundle resultExtras, boolean resultAbort, int flags) throws Throwable {
        BroadcastQueue queue;
        if (resultExtras != null && resultExtras.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Bundle");
        }
        long origId = Binder.clearCallingIdentity();
        boolean doNext = false;
        try {
            try {
                try {
                    synchronized (this) {
                        try {
                            boostPriorityForLockedSection();
                            if (isOnOffloadQueue(flags)) {
                                queue = this.mOffloadBroadcastQueue;
                            } else if ((268435456 & flags) == 0) {
                                queue = this.mBgBroadcastQueue;
                            } else {
                                queue = this.mFgBroadcastQueue;
                            }
                            BroadcastRecord r = queue.getMatchingOrderedReceiver(who);
                            if (r != null) {
                                doNext = r.queue.finishReceiverLocked(r, resultCode, resultData, resultExtras, resultAbort, true);
                            }
                            if (doNext) {
                                r.queue.processNextBroadcastLocked(false, true);
                            }
                            trimApplicationsLocked("updateOomAdj_finishReceiver");
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                        } catch (Throwable th) {
                            th = th;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            Binder.restoreCallingIdentity(origId);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x024e  */
    /* JADX WARN: Code duplicated, block: B:111:0x027d A[Catch: all -> 0x02af, TryCatch #7 {all -> 0x02af, blocks: (B:109:0x0262, B:111:0x027d, B:112:0x0282, B:114:0x0286, B:116:0x0296, B:117:0x0299, B:124:0x02aa), top: B:138:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x0286 A[Catch: all -> 0x02af, TryCatch #7 {all -> 0x02af, blocks: (B:109:0x0262, B:111:0x027d, B:112:0x0282, B:114:0x0286, B:116:0x0296, B:117:0x0299, B:124:0x02aa), top: B:138:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0294  */
    /* JADX WARN: Code duplicated, block: B:134:0x0237 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:84:0x01df  */
    /* JADX WARN: Code duplicated, block: B:88:0x01e6 A[Catch: all -> 0x02a4, TryCatch #1 {all -> 0x02a4, blocks: (B:10:0x0038, B:31:0x009e, B:37:0x00bf, B:45:0x011a, B:57:0x016f, B:67:0x01a9, B:71:0x01c4, B:73:0x01cc, B:80:0x01d8, B:89:0x01ed, B:91:0x01f3, B:95:0x01fc, B:88:0x01e6, B:62:0x0187, B:66:0x0198), top: B:131:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01fa  */
    public boolean startInstrumentation(ComponentName className, String profileFile, int flags, Bundle arguments, IInstrumentationWatcher watcher, IUiAutomationConnection uiAutomationConnection, int userId, String abiOverride) throws Throwable {
        InstrumentationInfo ii;
        ApplicationInfo ai;
        String defProcess;
        boolean z;
        boolean z2;
        boolean disableHiddenApiChecks;
        boolean z3;
        boolean mountExtStorageFull;
        ApplicationInfo ai2;
        enforceNotIsolatedCaller("startInstrumentation");
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int userId2 = this.mUserController.handleIncomingUser(callingPid, callingUid, userId, false, 2, "startInstrumentation", null);
        if (arguments != null && arguments.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Bundle");
        }
        synchronized (this) {
            try {
                try {
                    boostPriorityForLockedSection();
                    InstrumentationInfo ii2 = null;
                    ApplicationInfo ai3 = null;
                    try {
                        try {
                            ii2 = this.mContext.getPackageManager().getInstrumentationInfo(className, 1024);
                            ai3 = AppGlobals.getPackageManager().getApplicationInfo(ii2.targetPackage, 1024, userId2);
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                    } catch (RemoteException e2) {
                        ii = ii2;
                        ai = null;
                    }
                    ii = ii2;
                    ai = ai3;
                    if (ii == null) {
                        reportStartInstrumentationFailureLocked(watcher, className, "Unable to find instrumentation info for: " + className);
                        resetPriorityAfterLockedSection();
                        return false;
                    }
                    if (ai == null) {
                        reportStartInstrumentationFailureLocked(watcher, className, "Unable to find instrumentation target package: " + ii.targetPackage);
                        resetPriorityAfterLockedSection();
                        return false;
                    }
                    if (!ai.hasCode()) {
                        reportStartInstrumentationFailureLocked(watcher, className, "Instrumentation target has no code: " + ii.targetPackage);
                        resetPriorityAfterLockedSection();
                        return false;
                    }
                    int match = this.mContext.getPackageManager().checkSignatures(ii.targetPackage, ii.packageName);
                    if (match < 0 && match != -1) {
                        String msg = "Permission Denial: starting instrumentation " + className + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingPid() + " not allowed because package " + ii.packageName + " does not have a signature matching the target " + ii.targetPackage;
                        reportStartInstrumentationFailureLocked(watcher, className, msg);
                        throw new SecurityException(msg);
                    }
                    if (!Build.IS_DEBUGGABLE && callingUid != 0 && callingUid != NATIVE_DUMP_TIMEOUT_MS && callingUid != 1000 && !hasActiveInstrumentationLocked(callingPid)) {
                        String msg2 = "Permission Denial: instrumentation test " + className + " from pid=" + callingPid + ", uid=" + callingUid + ", pkgName=" + getPackageNameByPid(callingPid) + " not allowed because it's not started from SHELL";
                        Slog.wtfQuiet("ActivityManager", msg2);
                        reportStartInstrumentationFailureLocked(watcher, className, msg2);
                        throw new SecurityException(msg2);
                    }
                    ActiveInstrumentation activeInstr = new ActiveInstrumentation(this);
                    activeInstr.mClass = className;
                    String defProcess2 = ai.processName;
                    try {
                        if (ii.targetProcesses != null) {
                            if (ii.targetProcesses.equals("*")) {
                                activeInstr.mTargetProcesses = new String[0];
                            } else {
                                activeInstr.mTargetProcesses = ii.targetProcesses.split(",");
                                String defProcess3 = activeInstr.mTargetProcesses[0];
                                defProcess = defProcess3;
                            }
                            activeInstr.mTargetInfo = ai;
                            activeInstr.mProfileFile = profileFile;
                            activeInstr.mArguments = arguments;
                            activeInstr.mWatcher = watcher;
                            activeInstr.mUiAutomationConnection = uiAutomationConnection;
                            activeInstr.mResultClass = className;
                            if (checkPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", callingPid, callingUid) == 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            activeInstr.mHasBackgroundActivityStartsPermission = z;
                            if (ai.usesNonSdkApi() && (flags & 1) == 0) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            disableHiddenApiChecks = z2;
                            if (disableHiddenApiChecks && (flags & 4) == 0) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            boolean disableTestApiChecks = z3;
                            if (disableHiddenApiChecks || disableTestApiChecks) {
                                enforceCallingPermission("android.permission.DISABLE_HIDDEN_API_CHECKS", "disable hidden API checks");
                            }
                            if (isCallerShell() || (flags & 2) == 0) {
                                mountExtStorageFull = false;
                            } else {
                                mountExtStorageFull = true;
                            }
                            long origId = Binder.clearCallingIdentity();
                            ai2 = ai;
                            forceStopPackageLocked(ii.targetPackage, -1, true, false, true, true, false, userId2, "start instr");
                            if (this.mUsageStatsService != null) {
                                try {
                                    try {
                                        this.mUsageStatsService.reportEvent(ii.targetPackage, userId2, 6);
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            ProcessRecord app = addAppLocked(ai2, defProcess, false, disableHiddenApiChecks, disableTestApiChecks, mountExtStorageFull, abiOverride, 0);
                            app.setActiveInstrumentation(activeInstr);
                            activeInstr.mFinished = false;
                            activeInstr.mSourceUid = callingUid;
                            activeInstr.mRunningProcesses.add(app);
                            if (!this.mActiveInstrumentation.contains(activeInstr)) {
                                this.mActiveInstrumentation.add(activeInstr);
                            }
                            if ((flags & 2) != 0) {
                                this.mAppOpsService.setMode(99, ai2.uid, ii.packageName, 0);
                            }
                            Binder.restoreCallingIdentity(origId);
                            resetPriorityAfterLockedSection();
                            return true;
                        }
                        activeInstr.mTargetProcesses = new String[]{ai.processName};
                        forceStopPackageLocked(ii.targetPackage, -1, true, false, true, true, false, userId2, "start instr");
                        if (this.mUsageStatsService != null) {
                            this.mUsageStatsService.reportEvent(ii.targetPackage, userId2, 6);
                        }
                        ProcessRecord app2 = addAppLocked(ai2, defProcess, false, disableHiddenApiChecks, disableTestApiChecks, mountExtStorageFull, abiOverride, 0);
                        app2.setActiveInstrumentation(activeInstr);
                        activeInstr.mFinished = false;
                        activeInstr.mSourceUid = callingUid;
                        activeInstr.mRunningProcesses.add(app2);
                        if (!this.mActiveInstrumentation.contains(activeInstr)) {
                            this.mActiveInstrumentation.add(activeInstr);
                        }
                        if ((flags & 2) != 0) {
                            this.mAppOpsService.setMode(99, ai2.uid, ii.packageName, 0);
                        }
                        Binder.restoreCallingIdentity(origId);
                        resetPriorityAfterLockedSection();
                        return true;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    defProcess = defProcess2;
                    activeInstr.mTargetInfo = ai;
                    activeInstr.mProfileFile = profileFile;
                    activeInstr.mArguments = arguments;
                    activeInstr.mWatcher = watcher;
                    activeInstr.mUiAutomationConnection = uiAutomationConnection;
                    activeInstr.mResultClass = className;
                    if (checkPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", callingPid, callingUid) == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    activeInstr.mHasBackgroundActivityStartsPermission = z;
                    if (ai.usesNonSdkApi()) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    disableHiddenApiChecks = z2;
                    if (disableHiddenApiChecks) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    boolean disableTestApiChecks2 = z3;
                    if (disableHiddenApiChecks) {
                        enforceCallingPermission("android.permission.DISABLE_HIDDEN_API_CHECKS", "disable hidden API checks");
                    } else {
                        enforceCallingPermission("android.permission.DISABLE_HIDDEN_API_CHECKS", "disable hidden API checks");
                    }
                    if (isCallerShell()) {
                        mountExtStorageFull = false;
                    } else {
                        mountExtStorageFull = false;
                    }
                    long origId2 = Binder.clearCallingIdentity();
                    ai2 = ai;
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
            resetPriorityAfterLockedSection();
            throw th;
        }
    }

    private boolean hasActiveInstrumentationLocked(int pid) {
        boolean z = false;
        if (pid == 0) {
            return false;
        }
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord process = this.mPidsSelfLocked.get(pid);
            if (process != null && process.getActiveInstrumentation() != null) {
                z = true;
            }
        }
        return z;
    }

    private String getPackageNameByPid(int pid) {
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord app = this.mPidsSelfLocked.get(pid);
            if (app != null && app.info != null) {
                return app.info.packageName;
            }
            return null;
        }
    }

    private boolean isCallerShell() {
        int callingUid = Binder.getCallingUid();
        return callingUid == NATIVE_DUMP_TIMEOUT_MS || callingUid == 0;
    }

    private void reportStartInstrumentationFailureLocked(IInstrumentationWatcher watcher, ComponentName cn, String report) {
        Slog.w("ActivityManager", report);
        if (watcher != null) {
            Bundle results = new Bundle();
            results.putString("id", "ActivityManagerService");
            results.putString("Error", report);
            this.mInstrumentationReporter.reportStatus(watcher, cn, -1, results);
        }
    }

    void addInstrumentationResultsLocked(ProcessRecord app, Bundle results) {
        ActiveInstrumentation instr = app.getActiveInstrumentation();
        if (instr == null) {
            Slog.w("ActivityManager", "finishInstrumentation called on non-instrumented: " + app);
            return;
        }
        if (!instr.mFinished && results != null) {
            if (instr.mCurResults == null) {
                instr.mCurResults = new Bundle(results);
            } else {
                instr.mCurResults.putAll(results);
            }
        }
    }

    public void addInstrumentationResults(IApplicationThread target, Bundle results) {
        UserHandle.getCallingUserId();
        if (results != null && results.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord app = getRecordForAppLocked(target);
                if (app == null) {
                    Slog.w("ActivityManager", "addInstrumentationResults: no app for " + target);
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                addInstrumentationResultsLocked(app, results);
                Binder.restoreCallingIdentity(origId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void finishInstrumentationLocked(ProcessRecord app, int resultCode, Bundle results) {
        ActiveInstrumentation instr = app.getActiveInstrumentation();
        if (instr == null) {
            Slog.w("ActivityManager", "finishInstrumentation called on non-instrumented: " + app);
            return;
        }
        if (!instr.mFinished) {
            if (instr.mWatcher != null) {
                Bundle finalResults = instr.mCurResults;
                if (finalResults != null) {
                    if (instr.mCurResults != null && results != null) {
                        finalResults.putAll(results);
                    }
                } else {
                    finalResults = results;
                }
                this.mInstrumentationReporter.reportFinished(instr.mWatcher, instr.mClass, resultCode, finalResults);
            }
            if (instr.mUiAutomationConnection != null) {
                this.mAppOpsService.setMode(99, app.uid, app.info.packageName, 2);
                this.mAppOpsService.setAppOpsServiceDelegate(null);
                getPermissionManagerInternalLocked().setCheckPermissionDelegate(null);
                this.mHandler.obtainMessage(56, instr.mUiAutomationConnection).sendToTarget();
            }
            instr.mFinished = true;
        }
        instr.removeProcess(app);
        app.setActiveInstrumentation(null);
        forceStopPackageLocked(app.info.packageName, -1, false, false, true, true, false, app.userId, "finished inst");
    }

    public void finishInstrumentation(IApplicationThread target, int resultCode, Bundle results) {
        UserHandle.getCallingUserId();
        if (results != null && results.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                ProcessRecord app = getRecordForAppLocked(target);
                if (app == null) {
                    Slog.w("ActivityManager", "finishInstrumentation: no app for " + target);
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                finishInstrumentationLocked(app, resultCode, results);
                Binder.restoreCallingIdentity(origId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public ActivityManager.StackInfo getFocusedStackInfo() throws RemoteException {
        return this.mActivityTaskManager.getFocusedStackInfo();
    }

    public Configuration getConfiguration() {
        return this.mActivityTaskManager.getConfiguration();
    }

    public void suppressResizeConfigChanges(boolean suppress) throws RemoteException {
        this.mActivityTaskManager.suppressResizeConfigChanges(suppress);
    }

    public void updatePersistentConfiguration(Configuration values) {
        enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "updatePersistentConfiguration()");
        enforceWriteSettingsPermission("updatePersistentConfiguration()");
        if (values == null) {
            throw new NullPointerException("Configuration must not be null");
        }
        int userId = UserHandle.getCallingUserId();
        this.mActivityTaskManager.updatePersistentConfiguration(values, userId);
    }

    private void enforceWriteSettingsPermission(String func) {
        int uid = Binder.getCallingUid();
        if (uid == 0) {
            return;
        }
        Context context = this.mContext;
        if (Settings.checkAndNoteWriteSettingsOperation(context, uid, Settings.getPackageNameForUid(context, uid), false)) {
            return;
        }
        String msg = "Permission Denial: " + func + " from pid=" + Binder.getCallingPid() + ", uid=" + uid + " requires android.permission.WRITE_SETTINGS";
        Slog.w("ActivityManager", msg);
        throw new SecurityException(msg);
    }

    public boolean updateConfiguration(Configuration values) {
        return this.mActivityTaskManager.updateConfiguration(values);
    }

    public boolean updateMccMncConfiguration(String mcc, String mnc) {
        try {
            int mccInt = Integer.parseInt(mcc);
            int mncInt = Integer.parseInt(mnc);
            Configuration config = new Configuration();
            config.mcc = mccInt;
            config.mnc = mncInt == 0 ? 65535 : mncInt;
            return this.mActivityTaskManager.updateConfiguration(config);
        } catch (NumberFormatException | StringIndexOutOfBoundsException ex) {
            Slog.e("ActivityManager", "Error parsing mcc: " + mcc + " mnc: " + mnc + ". ex=" + ex);
            return false;
        }
    }

    public int getLaunchedFromUid(IBinder activityToken) {
        return this.mActivityTaskManager.getLaunchedFromUid(activityToken);
    }

    public String getLaunchedFromPackage(IBinder activityToken) {
        return this.mActivityTaskManager.getLaunchedFromPackage(activityToken);
    }

    boolean isReceivingBroadcastLocked(ProcessRecord app, ArraySet<BroadcastQueue> receivingQueues) {
        int N = app.curReceivers.size();
        if (N > 0) {
            for (int i = 0; i < N; i++) {
                receivingQueues.add(app.curReceivers.valueAt(i).queue);
            }
            return true;
        }
        for (BroadcastQueue queue : this.mBroadcastQueues) {
            BroadcastRecord r = queue.mPendingBroadcast;
            if (r != null && r.curApp == app) {
                receivingQueues.add(queue);
            }
        }
        return true ^ receivingQueues.isEmpty();
    }

    Association startAssociationLocked(int sourceUid, String sourceProcess, int sourceState, int targetUid, long targetVersionCode, ComponentName targetComponent, String targetProcess) {
        ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>> components;
        SparseArray<ArrayMap<String, Association>> sourceUids;
        ArrayMap<String, Association> sourceProcesses;
        if (!this.mTrackingAssociations) {
            return null;
        }
        ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>> components2 = this.mAssociations.get(targetUid);
        if (components2 != null) {
            components = components2;
        } else {
            ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>> components3 = new ArrayMap<>();
            this.mAssociations.put(targetUid, components3);
            components = components3;
        }
        SparseArray<ArrayMap<String, Association>> sourceUids2 = components.get(targetComponent);
        if (sourceUids2 != null) {
            sourceUids = sourceUids2;
        } else {
            SparseArray<ArrayMap<String, Association>> sourceUids3 = new SparseArray<>();
            components.put(targetComponent, sourceUids3);
            sourceUids = sourceUids3;
        }
        ArrayMap<String, Association> sourceProcesses2 = sourceUids.get(sourceUid);
        if (sourceProcesses2 != null) {
            sourceProcesses = sourceProcesses2;
        } else {
            ArrayMap<String, Association> sourceProcesses3 = new ArrayMap<>();
            sourceUids.put(sourceUid, sourceProcesses3);
            sourceProcesses = sourceProcesses3;
        }
        Association ass = sourceProcesses.get(sourceProcess);
        if (ass == null) {
            ass = new Association(sourceUid, sourceProcess, targetUid, targetComponent, targetProcess);
            sourceProcesses.put(sourceProcess, ass);
        }
        ass.mCount++;
        ass.mNesting++;
        if (ass.mNesting == 1) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            ass.mLastStateUptime = jUptimeMillis;
            ass.mStartTime = jUptimeMillis;
            ass.mLastState = sourceState;
        }
        return ass;
    }

    void stopAssociationLocked(int sourceUid, String sourceProcess, int targetUid, long targetVersionCode, ComponentName targetComponent, String targetProcess) {
        ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>> components;
        SparseArray<ArrayMap<String, Association>> sourceUids;
        ArrayMap<String, Association> sourceProcesses;
        Association ass;
        if (this.mTrackingAssociations && (components = this.mAssociations.get(targetUid)) != null && (sourceUids = components.get(targetComponent)) != null && (sourceProcesses = sourceUids.get(sourceUid)) != null && (ass = sourceProcesses.get(sourceProcess)) != null && ass.mNesting > 0) {
            ass.mNesting--;
            if (ass.mNesting == 0) {
                long uptime = SystemClock.uptimeMillis();
                ass.mTime += uptime - ass.mStartTime;
                long[] jArr = ass.mStateTimes;
                int i = ass.mLastState + 0;
                jArr[i] = jArr[i] + (uptime - ass.mLastStateUptime);
                ass.mLastState = 22;
            }
        }
    }

    void noteUidProcessState(int uid, int state, int capability) {
        ActivityManagerService activityManagerService = this;
        int i = uid;
        activityManagerService.mBatteryStatsService.noteUidProcessState(i, state);
        activityManagerService.mAppOpsService.updateUidProcState(i, state, capability);
        if (activityManagerService.mTrackingAssociations) {
            int i1 = 0;
            int N1 = activityManagerService.mAssociations.size();
            while (i1 < N1) {
                ArrayMap<ComponentName, SparseArray<ArrayMap<String, Association>>> targetComponents = activityManagerService.mAssociations.valueAt(i1);
                int i2 = 0;
                int N2 = targetComponents.size();
                while (i2 < N2) {
                    SparseArray<ArrayMap<String, Association>> sourceUids = targetComponents.valueAt(i2);
                    ArrayMap<String, Association> sourceProcesses = sourceUids.get(i);
                    if (sourceProcesses != null) {
                        int i4 = 0;
                        int N4 = sourceProcesses.size();
                        while (i4 < N4) {
                            Association ass = sourceProcesses.valueAt(i4);
                            if (ass.mNesting >= 1) {
                                long uptime = SystemClock.uptimeMillis();
                                long[] jArr = ass.mStateTimes;
                                int i3 = ass.mLastState + 0;
                                jArr[i3] = jArr[i3] + (uptime - ass.mLastStateUptime);
                                ass.mLastState = state;
                                ass.mLastStateUptime = uptime;
                            }
                            i4++;
                            N1 = N1;
                        }
                    }
                    i2++;
                    i = uid;
                    N1 = N1;
                }
                i1++;
                activityManagerService = this;
                i = uid;
            }
        }
    }

    public static Uri makeHeapDumpUri(String procName) {
        return Uri.parse("content://com.android.shell.heapdump/" + procName + "_javaheap.bin");
    }

    private final class RecordPssRunnable implements Runnable {
        private final ContentResolver mContentResolver;
        private final Uri mDumpUri;
        private final ProcessRecord mProc;

        RecordPssRunnable(ProcessRecord proc, Uri dumpUri, ContentResolver contentResolver) {
            this.mProc = proc;
            this.mDumpUri = dumpUri;
            this.mContentResolver = contentResolver;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ParcelFileDescriptor fd = this.mContentResolver.openFileDescriptor(this.mDumpUri, "rw");
                try {
                    IApplicationThread thread = this.mProc.thread;
                    if (thread != null) {
                        try {
                            thread.dumpHeap(true, false, false, this.mDumpUri.getPath(), fd, (RemoteCallback) null);
                        } catch (RemoteException e) {
                        }
                    }
                    if (fd != null) {
                        fd.close();
                    }
                } catch (Throwable th) {
                    if (fd != null) {
                        try {
                            fd.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                Slog.e("ActivityManager", "Failed to dump heap", e2);
                ActivityManagerService.this.abortHeapDump(this.mProc.processName);
            }
        }
    }

    void recordPssSampleLocked(ProcessRecord proc, int procState, long pss, long uss, long swapPss, long rss, int statType, long pssDuration, long now) {
        long j;
        EventLogTags.writeAmPss(proc.pid, proc.uid, proc.processName, pss * 1024, uss * 1024, swapPss * 1024, rss * 1024, statType, procState, pssDuration);
        proc.lastPssTime = now;
        proc.baseProcessTracker.addPss(pss, uss, rss, true, statType, pssDuration, proc.pkgList.mPkgList);
        for (int ipkg = proc.pkgList.mPkgList.size() - 1; ipkg >= 0; ipkg--) {
            ProcessStats.ProcessStateHolder holder = proc.pkgList.valueAt(ipkg);
            FrameworkStatsLog.write(18, proc.info.uid, holder.state.getName(), holder.state.getPackage(), pss, uss, rss, statType, pssDuration, holder.appVersion);
        }
        if (proc.initialIdlePss != 0) {
            j = pss;
        } else {
            j = pss;
            proc.initialIdlePss = j;
        }
        proc.lastPss = j;
        proc.lastSwapPss = swapPss;
        if (procState >= 14) {
            proc.lastCachedPss = j;
            proc.lastCachedSwapPss = swapPss;
        }
        proc.mLastRss = rss;
        SparseArray<Pair<Long, String>> watchUids = (SparseArray) this.mMemWatchProcesses.getMap().get(proc.processName);
        Long check = null;
        if (watchUids != null) {
            Pair<Long, String> val = watchUids.get(proc.uid);
            if (val == null) {
                val = watchUids.get(0);
            }
            if (val != null) {
                check = (Long) val.first;
            }
        }
        if (check != null && j * 1024 >= check.longValue() && proc.thread != null && this.mMemWatchDumpProcName == null) {
            boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
            if (!isDebuggable && (proc.info.flags & 2) != 0) {
                isDebuggable = true;
            }
            if (isDebuggable) {
                Slog.w("ActivityManager", "Process " + proc + " exceeded pss limit " + check + "; reporting");
                startHeapDumpLocked(proc, false);
                return;
            }
            Slog.w("ActivityManager", "Process " + proc + " exceeded pss limit " + check + ", but debugging not enabled");
        }
    }

    private void startHeapDumpLocked(ProcessRecord proc, boolean isUserInitiated) {
        this.mMemWatchDumpProcName = proc.processName;
        this.mMemWatchDumpUri = makeHeapDumpUri(proc.processName);
        this.mMemWatchDumpPid = proc.pid;
        int i = proc.uid;
        this.mMemWatchDumpUid = i;
        this.mMemWatchIsUserInitiated = isUserInitiated;
        try {
            Context ctx = this.mContext.createPackageContextAsUser(PackageManagerService.PLATFORM_PACKAGE_NAME, 0, UserHandle.getUserHandleForUid(i));
            BackgroundThread.getHandler().post(new RecordPssRunnable(proc, this.mMemWatchDumpUri, ctx.getContentResolver()));
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("android package not found.");
        }
    }

    boolean requestPssLocked(ProcessRecord proc, int procState) {
        if (this.mPendingPssProcesses.contains(proc)) {
            return false;
        }
        if (this.mPendingPssProcesses.size() == 0) {
            long j = 0;
            if (this.mPssDeferralTime > 0 && this.mActivityStartingNesting.get() > 0) {
                j = this.mPssDeferralTime;
            }
            long deferral = j;
            this.mBgHandler.sendEmptyMessageDelayed(1, deferral);
        }
        proc.pssProcState = procState;
        proc.pssStatType = 0;
        this.mPendingPssProcesses.add(proc);
        return true;
    }

    private void deferPssIfNeededLocked() {
        if (this.mPendingPssProcesses.size() > 0) {
            this.mBgHandler.removeMessages(1);
            this.mBgHandler.sendEmptyMessageDelayed(1, this.mPssDeferralTime);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deferPssForActivityStart() {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mPssDeferralTime > 0) {
                    deferPssIfNeededLocked();
                    this.mActivityStartingNesting.getAndIncrement();
                    this.mBgHandler.sendEmptyMessageDelayed(3, this.mPssDeferralTime);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void requestPssAllProcsLocked(long now, boolean always, boolean memLowered) {
        if (!always) {
            if (now < this.mLastFullPssTime + (memLowered ? this.mConstants.FULL_PSS_LOWERED_INTERVAL : this.mConstants.FULL_PSS_MIN_INTERVAL)) {
                return;
            }
        }
        this.mLastFullPssTime = now;
        this.mFullPssPending = true;
        for (int i = this.mPendingPssProcesses.size() - 1; i >= 0; i--) {
            ProcessList.abortNextPssTime(this.mPendingPssProcesses.get(i).procStateMemTracker);
        }
        this.mPendingPssProcesses.ensureCapacity(this.mProcessList.getLruSizeLocked());
        this.mPendingPssProcesses.clear();
        for (int i2 = this.mProcessList.getLruSizeLocked() - 1; i2 >= 0; i2--) {
            ProcessRecord app = this.mProcessList.mLruProcesses.get(i2);
            if (app.thread != null && app.getCurProcState() != 20 && (memLowered || ((always && now > app.lastStateTime + 1000) || now > app.lastStateTime + 1200000))) {
                app.pssProcState = app.setProcState;
                app.pssStatType = always ? 2 : 1;
                app.nextPssTime = ProcessList.computeNextPssTime(app.getCurProcState(), app.procStateMemTracker, this.mTestPssMode, this.mAtmInternal.isSleeping(), now);
                this.mPendingPssProcesses.add(app);
            }
        }
        if (!this.mBgHandler.hasMessages(1)) {
            this.mBgHandler.sendEmptyMessage(1);
        }
    }

    public void setTestPssMode(boolean enabled) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mTestPssMode = enabled;
                if (enabled) {
                    requestPssAllProcsLocked(SystemClock.uptimeMillis(), true, true);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final void performAppGcLocked(ProcessRecord app) {
        try {
            app.lastRequestedGc = SystemClock.uptimeMillis();
            if (app.thread != null) {
                if (app.reportLowMemory) {
                    app.reportLowMemory = false;
                    app.thread.scheduleLowMemory();
                } else {
                    app.thread.processInBackground();
                }
            }
        } catch (Exception e) {
        }
    }

    private final boolean canGcNowLocked() {
        for (BroadcastQueue q : this.mBroadcastQueues) {
            if (!q.mParallelBroadcasts.isEmpty() || !q.mDispatcher.isEmpty()) {
                return false;
            }
        }
        return this.mAtmInternal.canGcNow();
    }

    final void performAppGcsLocked() {
        int N = this.mProcessesToGc.size();
        if (N > 0 && canGcNowLocked()) {
            while (this.mProcessesToGc.size() > 0) {
                ProcessRecord proc = this.mProcessesToGc.remove(0);
                if (proc.getCurRawAdj() > 200 || proc.reportLowMemory) {
                    if (proc.lastRequestedGc + this.mConstants.GC_MIN_INTERVAL <= SystemClock.uptimeMillis()) {
                        performAppGcLocked(proc);
                        scheduleAppGcsLocked();
                        return;
                    } else {
                        addProcessToGcListLocked(proc);
                        break;
                    }
                }
            }
            scheduleAppGcsLocked();
        }
    }

    final void performAppGcsIfAppropriateLocked() {
        if (canGcNowLocked()) {
            performAppGcsLocked();
        } else {
            scheduleAppGcsLocked();
        }
    }

    final void scheduleAppGcsLocked() {
        this.mHandler.removeMessages(5);
        if (this.mProcessesToGc.size() > 0) {
            ProcessRecord proc = this.mProcessesToGc.get(0);
            Message msg = this.mHandler.obtainMessage(5);
            long when = proc.lastRequestedGc + this.mConstants.GC_MIN_INTERVAL;
            long now = SystemClock.uptimeMillis();
            if (when < this.mConstants.GC_TIMEOUT + now) {
                when = now + this.mConstants.GC_TIMEOUT;
            }
            this.mHandler.sendMessageAtTime(msg, when);
        }
    }

    final void addProcessToGcListLocked(ProcessRecord proc) {
        boolean added = false;
        for (int i = this.mProcessesToGc.size() - 1; i >= 0; i--) {
            if (this.mProcessesToGc.get(i).lastRequestedGc < proc.lastRequestedGc) {
                added = true;
                this.mProcessesToGc.add(i + 1, proc);
                break;
            }
        }
        if (!added) {
            this.mProcessesToGc.add(0, proc);
        }
    }

    final void scheduleAppGcLocked(ProcessRecord app) {
        long now = SystemClock.uptimeMillis();
        if (app.lastRequestedGc + this.mConstants.GC_MIN_INTERVAL <= now && !this.mProcessesToGc.contains(app)) {
            addProcessToGcListLocked(app);
            scheduleAppGcsLocked();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0139 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void checkExcessivePowerUsageLocked() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.checkExcessivePowerUsageLocked():void");
    }

    private boolean isEphemeralLocked(int uid) {
        String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
        if (packages == null || packages.length != 1) {
            return false;
        }
        return getPackageManagerInternalLocked().isPackageEphemeral(UserHandle.getUserId(uid), packages[0]);
    }

    final void enqueueUidChangeLocked(UidRecord uidRec, int uid, int change) {
        UidRecord.ChangeItem pendingChange;
        UidRecord.ChangeItem pendingChange2;
        if (uidRec == null || uidRec.pendingChange == null) {
            if (this.mPendingUidChanges.size() == 0) {
                this.mUiHandler.obtainMessage(53).sendToTarget();
            }
            int NA = this.mAvailUidChanges.size();
            if (NA > 0) {
                pendingChange = this.mAvailUidChanges.remove(NA - 1);
            } else {
                pendingChange = new UidRecord.ChangeItem();
            }
            if (uidRec != null) {
                uidRec.pendingChange = pendingChange;
                if ((change & 1) != 0 && !uidRec.idle) {
                    change |= 2;
                }
            } else if (uid < 0) {
                throw new IllegalArgumentException("No UidRecord or uid");
            }
            pendingChange.uidRecord = uidRec;
            pendingChange.uid = uidRec != null ? uidRec.uid : uid;
            this.mPendingUidChanges.add(pendingChange);
            pendingChange2 = pendingChange;
        } else {
            pendingChange2 = uidRec.pendingChange;
            if ((change & 6) == 0) {
                change |= pendingChange2.change & 6;
            }
            if ((change & 24) == 0) {
                change |= pendingChange2.change & 24;
            }
            if ((change & 1) != 0) {
                change &= -13;
                if (!uidRec.idle) {
                    change |= 2;
                }
            }
        }
        pendingChange2.change = change;
        pendingChange2.processState = uidRec != null ? uidRec.setProcState : 20;
        pendingChange2.capability = uidRec != null ? uidRec.setCapability : 0;
        pendingChange2.ephemeral = uidRec != null ? uidRec.ephemeral : isEphemeralLocked(uid);
        pendingChange2.procStateSeq = uidRec != null ? uidRec.curProcStateSeq : 0L;
        if (uidRec != null) {
            uidRec.lastReportedChange = change;
            uidRec.updateLastDispatchedProcStateSeq(change);
        }
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal != null) {
            if ((change & 4) != 0) {
                powerManagerInternal.uidActive(pendingChange2.uid);
            }
            if ((change & 2) != 0) {
                this.mLocalPowerManager.uidIdle(pendingChange2.uid);
            }
            if ((change & 1) != 0) {
                this.mLocalPowerManager.uidGone(pendingChange2.uid);
            } else {
                this.mLocalPowerManager.updateUidProcState(pendingChange2.uid, pendingChange2.processState);
            }
        }
    }

    private void maybeUpdateProviderUsageStatsLocked(ProcessRecord app, String providerPkgName, String authority) {
        UserState userState;
        if (app == null || app.getCurProcState() > 6 || (userState = this.mUserController.getStartedUserState(app.userId)) == null) {
            return;
        }
        long now = SystemClock.elapsedRealtime();
        Long lastReported = userState.mProviderLastReportedFg.get(authority);
        if (lastReported == null || lastReported.longValue() < now - 60000) {
            if (this.mSystemReady) {
                this.mUsageStatsService.reportContentProviderUsage(authority, providerPkgName, app.userId);
            }
            userState.mProviderLastReportedFg.put(authority, Long.valueOf(now));
        }
    }

    final void setProcessTrackerStateLocked(ProcessRecord proc, int memFactor, long now) {
        int procState;
        if (proc.thread != null && proc.baseProcessTracker != null && (procState = proc.getReportedProcState()) != 20) {
            proc.baseProcessTracker.setState(procState, memFactor, now, proc.pkgList.mPkgList);
        }
    }

    final void updateProcessForegroundLocked(ProcessRecord proc, boolean isForeground, int fgServiceTypes, boolean oomAdj) {
        if (isForeground != proc.hasForegroundServices() || proc.getForegroundServiceTypes() != fgServiceTypes) {
            proc.setHasForegroundServices(isForeground, fgServiceTypes);
            ArrayList<ProcessRecord> curProcs = (ArrayList) this.mForegroundPackages.get(proc.info.packageName, proc.info.uid);
            if (isForeground) {
                if (curProcs == null) {
                    curProcs = new ArrayList<>();
                    this.mForegroundPackages.put(proc.info.packageName, proc.info.uid, curProcs);
                }
                if (!curProcs.contains(proc)) {
                    curProcs.add(proc);
                    this.mBatteryStatsService.noteEvent(32770, proc.info.packageName, proc.info.uid);
                }
            } else if (curProcs != null && curProcs.remove(proc)) {
                this.mBatteryStatsService.noteEvent(16386, proc.info.packageName, proc.info.uid);
                if (curProcs.size() <= 0) {
                    this.mForegroundPackages.remove(proc.info.packageName, proc.info.uid);
                }
            }
            proc.setReportedForegroundServiceTypes(fgServiceTypes);
            ProcessChangeItem item = enqueueProcessChangeItemLocked(proc.pid, proc.info.uid);
            item.changes |= 2;
            item.foregroundServiceTypes = fgServiceTypes;
        }
        if (oomAdj) {
            updateOomAdjLocked(proc, "updateOomAdj_uiVisibility");
        }
    }

    ProcessRecord getTopAppLocked() {
        String pkg;
        int uid;
        String str;
        ActivityTaskManagerInternal activityTaskManagerInternal = this.mAtmInternal;
        WindowProcessController wpc = activityTaskManagerInternal != null ? activityTaskManagerInternal.getTopApp() : null;
        ProcessRecord r = wpc != null ? (ProcessRecord) wpc.mOwner : null;
        if (r != null) {
            pkg = r.processName;
            uid = r.info.uid;
        } else {
            pkg = null;
            uid = -1;
        }
        if (uid != this.mCurResumedUid || (pkg != (str = this.mCurResumedPackage) && (pkg == null || !pkg.equals(str)))) {
            long identity = Binder.clearCallingIdentity();
            try {
                if (this.mCurResumedPackage != null) {
                    this.mBatteryStatsService.noteEvent(16387, this.mCurResumedPackage, this.mCurResumedUid);
                }
                this.mCurResumedPackage = pkg;
                this.mCurResumedUid = uid;
                if (pkg != null) {
                    this.mBatteryStatsService.noteEvent(32771, pkg, uid);
                }
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
        return r;
    }

    final boolean updateOomAdjLocked(ProcessRecord app, boolean oomAdjAll, String oomAdjReason) {
        return this.mOomAdjuster.updateOomAdjLocked(app, oomAdjAll, oomAdjReason);
    }

    static final class ProcStatsRunnable implements Runnable {
        private final ProcessStatsService mProcessStats;
        private final ActivityManagerService mService;

        ProcStatsRunnable(ActivityManagerService service, ProcessStatsService mProcessStats) {
            this.mService = service;
            this.mProcessStats = mProcessStats;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mService) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    this.mProcessStats.writeStateAsyncLocked();
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    final boolean updateLowMemStateLocked(int numCached, int numEmpty, int numTrimming) {
        int memFactor;
        int memFactor2;
        int i;
        int fgTrimLevel;
        int memFactor3;
        int N = this.mProcessList.getLruSizeLocked();
        long now = SystemClock.uptimeMillis();
        LowMemDetector lowMemDetector = this.mLowMemDetector;
        if (lowMemDetector != null && lowMemDetector.isAvailable()) {
            memFactor = this.mLowMemDetector.getMemFactor();
        } else if (numCached <= this.mConstants.CUR_TRIM_CACHED_PROCESSES && numEmpty <= this.mConstants.CUR_TRIM_EMPTY_PROCESSES) {
            int numCachedAndEmpty = numCached + numEmpty;
            if (numCachedAndEmpty <= 3) {
                memFactor = 3;
            } else if (numCachedAndEmpty <= 5) {
                memFactor = 2;
            } else {
                memFactor = 1;
            }
        } else {
            memFactor = 0;
        }
        if (memFactor > this.mLastMemoryLevel && (!this.mAllowLowerMemLevel || this.mProcessList.getLruSizeLocked() >= this.mLastNumProcesses)) {
            int memFactor4 = this.mLastMemoryLevel;
            memFactor2 = memFactor4;
        } else {
            memFactor2 = memFactor;
        }
        int memFactor5 = this.mLastMemoryLevel;
        if (memFactor2 != memFactor5) {
            EventLogTags.writeAmMemFactor(memFactor2, memFactor5);
            FrameworkStatsLog.write(15, memFactor2);
        }
        this.mLastMemoryLevel = memFactor2;
        this.mLastNumProcesses = this.mProcessList.getLruSizeLocked();
        ProcessStatsService processStatsService = this.mProcessStats;
        ActivityTaskManagerInternal activityTaskManagerInternal = this.mAtmInternal;
        boolean z = true;
        if (activityTaskManagerInternal != null && activityTaskManagerInternal.isSleeping()) {
            z = false;
        }
        boolean allChanged = processStatsService.setMemFactorLocked(memFactor2, z, now);
        int trackerMemFactor = this.mProcessStats.getMemFactorLocked();
        if (memFactor2 == 0) {
            long j = this.mLowRamStartTime;
            if (j != 0) {
                this.mLowRamTimeSinceLastIdle += now - j;
                this.mLowRamStartTime = 0L;
            }
            for (int i2 = N - 1; i2 >= 0; i2--) {
                ProcessRecord app = this.mProcessList.mLruProcesses.get(i2);
                if (allChanged || app.procStateChanged) {
                    setProcessTrackerStateLocked(app, trackerMemFactor, now);
                    app.procStateChanged = false;
                }
                if (app.getCurProcState() < 7 && !app.systemNoUi) {
                    i = 0;
                } else if (app.hasPendingUiClean()) {
                    if (app.trimMemoryLevel < 20 && app.thread != null) {
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Trimming memory of ui hidden ");
                            sb.append(app.processName);
                            sb.append(" to ");
                            try {
                                sb.append(20);
                                Slog.v("ActivityManager", sb.toString());
                                app.thread.scheduleTrimMemory(20);
                            } catch (RemoteException e) {
                            }
                        } catch (RemoteException e2) {
                        }
                    }
                    i = 0;
                    app.setPendingUiClean(false);
                } else {
                    i = 0;
                }
                app.trimMemoryLevel = i;
            }
        } else {
            int minFactor = trackerMemFactor;
            if (this.mLowRamStartTime == 0) {
                this.mLowRamStartTime = now;
            }
            if (memFactor2 == 2) {
                fgTrimLevel = 10;
            } else if (memFactor2 == 3) {
                fgTrimLevel = 15;
            } else {
                fgTrimLevel = 5;
            }
            int factor = numTrimming / 3;
            int minFactor2 = this.mAtmInternal.getHomeProcess() != null ? 2 + 1 : 2;
            if (this.mAtmInternal.getPreviousProcess() != null) {
                minFactor2++;
            }
            if (factor < minFactor2) {
                factor = minFactor2;
            }
            int i3 = N - 1;
            int curLevel = 80;
            int step = 0;
            while (i3 >= 0) {
                ProcessRecord app2 = this.mProcessList.mLruProcesses.get(i3);
                if (allChanged || app2.procStateChanged) {
                    memFactor3 = minFactor;
                    setProcessTrackerStateLocked(app2, memFactor3, now);
                    app2.procStateChanged = false;
                } else {
                    memFactor3 = minFactor;
                }
                if (app2.getCurProcState() >= 14 && !app2.killedByAm) {
                    if (app2.trimMemoryLevel < curLevel && app2.thread != null) {
                        try {
                            Slog.v("ActivityManager", "Trimming memory of " + app2.processName + " to " + curLevel);
                            app2.thread.scheduleTrimMemory(curLevel);
                        } catch (RemoteException e3) {
                        }
                    }
                    app2.trimMemoryLevel = curLevel;
                    step++;
                    if (step < factor) {
                        factor = factor;
                    } else {
                        if (curLevel == 60) {
                            curLevel = 40;
                        } else if (curLevel == 80) {
                            curLevel = 60;
                        }
                        step = 0;
                        factor = factor;
                    }
                } else if (app2.getCurProcState() == 13 && !app2.killedByAm) {
                    if (app2.trimMemoryLevel < 40 && app2.thread != null) {
                        try {
                            Slog.v("ActivityManager", "Trimming memory of heavy-weight " + app2.processName + " to 40");
                            app2.thread.scheduleTrimMemory(40);
                        } catch (RemoteException e4) {
                        }
                    }
                    app2.trimMemoryLevel = 40;
                    factor = factor;
                } else {
                    if ((app2.getCurProcState() >= 7 || app2.systemNoUi) && app2.hasPendingUiClean()) {
                        if (app2.trimMemoryLevel < 20 && app2.thread != null) {
                            try {
                                Slog.v("ActivityManager", "Trimming memory of bg-ui " + app2.processName + " to 20");
                                app2.thread.scheduleTrimMemory(20);
                            } catch (RemoteException e5) {
                            }
                        }
                        app2.setPendingUiClean(false);
                    }
                    if (app2.trimMemoryLevel < fgTrimLevel && app2.thread != null) {
                        try {
                            Slog.v("ActivityManager", "Trimming memory of fg " + app2.processName + " to " + fgTrimLevel);
                            app2.thread.scheduleTrimMemory(fgTrimLevel);
                        } catch (RemoteException e6) {
                        }
                    }
                    app2.trimMemoryLevel = fgTrimLevel;
                }
                i3--;
                minFactor2 = minFactor2;
                factor = factor;
                minFactor = memFactor3;
                memFactor2 = memFactor2;
            }
        }
        return allChanged;
    }

    final void updateOomAdjLocked(String oomAdjReason) {
        this.mOomAdjuster.updateOomAdjLocked(oomAdjReason);
    }

    final void updateOomAdjLocked(ProcessRecord app, String oomAdjReason) {
        this.mOomAdjuster.updateOomAdjLocked(app, oomAdjReason);
    }

    public void makePackageIdle(String packageName, int userId) {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String msg = "Permission Denial: makePackageIdle() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        int callingPid = Binder.getCallingPid();
        int userId2 = this.mUserController.handleIncomingUser(callingPid, Binder.getCallingUid(), userId, true, 2, "makePackageIdle", null);
        long callingId = Binder.clearCallingIdentity();
        synchronized (this) {
            try {
                try {
                    boostPriorityForLockedSection();
                    IPackageManager pm = AppGlobals.getPackageManager();
                    int pkgUid = -1;
                    try {
                        pkgUid = pm.getPackageUid(packageName, 268443648, 0);
                    } catch (RemoteException e) {
                    }
                    int i = -1;
                    if (pkgUid == -1) {
                        throw new IllegalArgumentException("Unknown package name " + packageName);
                    }
                    if (this.mLocalPowerManager != null) {
                        this.mLocalPowerManager.startUidChanges();
                    }
                    int appId = UserHandle.getAppId(pkgUid);
                    int N = this.mProcessList.mActiveUids.size();
                    int i2 = N - 1;
                    while (i2 >= 0) {
                        UidRecord uidRec = this.mProcessList.mActiveUids.valueAt(i2);
                        long bgTime = uidRec.lastBackgroundTime;
                        if (bgTime > 0 && !uidRec.idle) {
                            if (UserHandle.getAppId(uidRec.uid) == appId && (userId2 == i || userId2 == UserHandle.getUserId(uidRec.uid))) {
                                EventLogTags.writeAmUidIdle(uidRec.uid);
                                uidRec.idle = true;
                                uidRec.setIdle = true;
                                Slog.w("ActivityManager", "Idling uid " + UserHandle.formatUid(uidRec.uid) + " from package " + packageName + " user " + userId2);
                                doStopUidLocked(uidRec.uid, uidRec);
                            }
                        }
                        i2--;
                        pm = pm;
                        i = -1;
                    }
                    if (this.mLocalPowerManager != null) {
                        this.mLocalPowerManager.finishUidChanges();
                    }
                    Binder.restoreCallingIdentity(callingId);
                } catch (Throwable th) {
                    if (this.mLocalPowerManager != null) {
                        this.mLocalPowerManager.finishUidChanges();
                    }
                    Binder.restoreCallingIdentity(callingId);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    final void idleUids() {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mOomAdjuster.idleUidsLocked();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final void runInBackgroundDisabled(int uid) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                UidRecord uidRec = this.mProcessList.getUidRecordLocked(uid);
                if (uidRec != null) {
                    if (uidRec.idle) {
                        doStopUidLocked(uidRec.uid, uidRec);
                    }
                } else {
                    doStopUidLocked(uid, null);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final void cameraActiveChanged(int uid, boolean active) {
        synchronized (this.mActiveCameraUids) {
            int curIndex = this.mActiveCameraUids.indexOf(uid);
            if (active) {
                if (curIndex < 0) {
                    this.mActiveCameraUids.add(uid);
                }
            } else if (curIndex >= 0) {
                this.mActiveCameraUids.remove(curIndex);
            }
        }
    }

    final boolean isCameraActiveForUid(int uid) {
        boolean z;
        synchronized (this.mActiveCameraUids) {
            z = this.mActiveCameraUids.indexOf(uid) >= 0;
        }
        return z;
    }

    final void doStopUidLocked(int uid, UidRecord uidRec) {
        this.mServices.stopInBackgroundLocked(uid);
        enqueueUidChangeLocked(uidRec, uid, 2);
    }

    void tempWhitelistForPendingIntentLocked(int callerPid, int callerUid, int targetUid, long duration, String tag) {
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord pr = this.mPidsSelfLocked.get(callerPid);
            if (pr == null) {
                Slog.w("ActivityManager", "tempWhitelistForPendingIntentLocked() no ProcessRecord for pid " + callerPid);
                return;
            }
            if (pr.whitelistManager || checkPermission("android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST", callerPid, callerUid) == 0) {
                tempWhitelistUidLocked(targetUid, duration, tag);
            }
        }
    }

    void tempWhitelistUidLocked(int targetUid, long duration, String tag) {
        this.mPendingTempWhitelist.put(targetUid, new PendingTempWhitelist(targetUid, duration, tag));
        setUidTempWhitelistStateLocked(targetUid, true);
        this.mUiHandler.obtainMessage(68).sendToTarget();
    }

    void pushTempWhitelist() {
        int N;
        PendingTempWhitelist[] list;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                N = this.mPendingTempWhitelist.size();
                list = new PendingTempWhitelist[N];
                for (int i = 0; i < N; i++) {
                    list[i] = this.mPendingTempWhitelist.valueAt(i);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (this.mLocalDeviceIdleController != null) {
            for (int i2 = 0; i2 < N; i2++) {
                PendingTempWhitelist ptw = list[i2];
                this.mLocalDeviceIdleController.addPowerSaveTempWhitelistAppDirect(ptw.targetUid, ptw.duration, true, ptw.tag);
            }
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                for (int i3 = 0; i3 < N; i3++) {
                    PendingTempWhitelist ptw2 = list[i3];
                    int index = this.mPendingTempWhitelist.indexOfKey(ptw2.targetUid);
                    if (index >= 0 && this.mPendingTempWhitelist.valueAt(index) == ptw2) {
                        this.mPendingTempWhitelist.removeAt(index);
                    }
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final void setAppIdTempWhitelistStateLocked(int appId, boolean onWhitelist) {
        this.mOomAdjuster.setAppIdTempWhitelistStateLocked(appId, onWhitelist);
    }

    final void setUidTempWhitelistStateLocked(int uid, boolean onWhitelist) {
        this.mOomAdjuster.setUidTempWhitelistStateLocked(uid, onWhitelist);
    }

    final void trimApplications(String oomAdjReason) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                trimApplicationsLocked(oomAdjReason);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    final void trimApplicationsLocked(String oomAdjReason) {
        for (int i = this.mProcessList.mRemovedProcesses.size() - 1; i >= 0; i--) {
            ProcessRecord app = this.mProcessList.mRemovedProcesses.get(i);
            if (!app.hasActivitiesOrRecentTasks() && app.curReceivers.isEmpty() && app.numberOfRunningServices() == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("Exiting empty application process ");
                sb.append(app.toShortString());
                sb.append(" (");
                sb.append(app.thread != null ? app.thread.asBinder() : null);
                sb.append(")\n");
                Slog.i("ActivityManager", sb.toString());
                if (app.pid > 0 && app.pid != MY_PID) {
                    app.kill("empty", 13, 4, false);
                } else if (app.thread != null) {
                    try {
                        app.thread.scheduleExit();
                    } catch (Exception e) {
                    }
                }
                cleanUpApplicationRecordLocked(app, false, true, -1, false);
                this.mProcessList.mRemovedProcesses.remove(i);
                if (app.isPersistent()) {
                    addAppLocked(app.info, null, false, null, 2);
                }
            }
        }
        updateOomAdjLocked(oomAdjReason);
    }

    public void signalPersistentProcesses(int sig) throws RemoteException {
        if (sig != 10) {
            throw new SecurityException("Only SIGNAL_USR1 is allowed");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (checkCallingPermission("android.permission.SIGNAL_PERSISTENT_PROCESSES") != 0) {
                    throw new SecurityException("Requires permission android.permission.SIGNAL_PERSISTENT_PROCESSES");
                }
                for (int i = this.mProcessList.mLruProcesses.size() - 1; i >= 0; i--) {
                    ProcessRecord r = this.mProcessList.mLruProcesses.get(i);
                    if (r.thread != null && r.isPersistent()) {
                        Process.sendSignal(r.pid, sig);
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    private void stopProfilerLocked(ProcessRecord proc, int profileType) {
        if (proc == null || proc == this.mProfileData.getProfileProc()) {
            proc = this.mProfileData.getProfileProc();
            profileType = this.mProfileType;
            clearProfilerLocked();
        }
        if (proc == null) {
            return;
        }
        try {
            proc.thread.profilerControl(false, (ProfilerInfo) null, profileType);
        } catch (RemoteException e) {
            throw new IllegalStateException("Process disappeared");
        }
    }

    void clearProfilerLocked() {
        if (this.mProfileData.getProfilerInfo() != null && this.mProfileData.getProfilerInfo().profileFd != null) {
            try {
                this.mProfileData.getProfilerInfo().profileFd.close();
            } catch (IOException e) {
            }
        }
        this.mProfileData.setProfileApp(null);
        this.mProfileData.setProfileProc(null);
        this.mProfileData.setProfilerInfo(null);
    }

    public boolean profileControl(String process, int userId, boolean start, ProfilerInfo profilerInfo, int profileType) throws IOException, RemoteException {
        ParcelFileDescriptor fd;
        try {
            try {
                synchronized (this) {
                    try {
                        boostPriorityForLockedSection();
                        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
                            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
                        }
                        if (start && (profilerInfo == null || profilerInfo.profileFd == null)) {
                            throw new IllegalArgumentException("null profile info or fd");
                        }
                        ProcessRecord proc = null;
                        if (process != null) {
                            proc = findProcessLocked(process, userId, "profileControl");
                        }
                        if (start && (proc == null || proc.thread == null)) {
                            throw new IllegalArgumentException("Unknown process: " + process);
                        }
                        if (start) {
                            stopProfilerLocked(null, 0);
                            setProfileApp(proc.info, proc.processName, profilerInfo);
                            this.mProfileData.setProfileProc(proc);
                            this.mProfileType = profileType;
                            ParcelFileDescriptor fd2 = profilerInfo.profileFd;
                            try {
                                fd = fd2.dup();
                            } catch (IOException e) {
                                fd = null;
                            }
                            profilerInfo.profileFd = fd;
                            proc.thread.profilerControl(start, profilerInfo, profileType);
                            try {
                                this.mProfileData.getProfilerInfo().profileFd.close();
                            } catch (IOException e2) {
                            }
                            this.mProfileData.getProfilerInfo().profileFd = null;
                            if (proc.pid == MY_PID) {
                                profilerInfo = null;
                            }
                        } else {
                            stopProfilerLocked(proc, profileType);
                            if (profilerInfo != null && profilerInfo.profileFd != null) {
                                try {
                                    profilerInfo.profileFd.close();
                                } catch (IOException e3) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterLockedSection();
                if (profilerInfo != null && profilerInfo.profileFd != null) {
                    try {
                        profilerInfo.profileFd.close();
                    } catch (IOException e4) {
                    }
                }
                return true;
            } catch (RemoteException e5) {
                throw new IllegalStateException("Process disappeared");
            }
        } catch (Throwable th2) {
            if (profilerInfo != null && profilerInfo.profileFd != null) {
                try {
                    profilerInfo.profileFd.close();
                } catch (IOException e6) {
                }
            }
            throw th2;
        }
    }

    private ProcessRecord findProcessLocked(String process, int userId, String callName) {
        int userId2 = this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, true, 2, callName, null);
        ProcessRecord proc = null;
        try {
            int pid = Integer.parseInt(process);
            synchronized (this.mPidsSelfLocked) {
                proc = this.mPidsSelfLocked.get(pid);
            }
        } catch (NumberFormatException e) {
        }
        if (proc == null) {
            ArrayMap<String, SparseArray<ProcessRecord>> all = this.mProcessList.mProcessNames.getMap();
            SparseArray<ProcessRecord> procs = all.get(process);
            if (procs != null && procs.size() > 0) {
                ProcessRecord proc2 = procs.valueAt(0);
                if (userId2 != -1 && proc2.userId != userId2) {
                    for (int i = 1; i < procs.size(); i++) {
                        ProcessRecord thisProc = procs.valueAt(i);
                        if (thisProc.userId == userId2) {
                            return thisProc;
                        }
                    }
                    return proc2;
                }
                return proc2;
            }
            return proc;
        }
        return proc;
    }

    /* JADX WARN: Code duplicated, block: B:80:0x00ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:? A[SYNTHETIC] */
    public boolean dumpHeap(String process, int userId, boolean managed, boolean mallocInfo, boolean runGc, String path, ParcelFileDescriptor fd, final RemoteCallback finishCallback) throws RemoteException {
        RemoteException remoteException;
        ParcelFileDescriptor fd2;
        try {
            try {
                synchronized (this) {
                    try {
                        boostPriorityForLockedSection();
                        try {
                            if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
                                throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
                            }
                            if (fd == null) {
                                throw new IllegalArgumentException("null fd");
                            }
                            try {
                                ProcessRecord proc = findProcessLocked(process, userId, "dumpHeap");
                                if (proc == null || proc.thread == null) {
                                    throw new IllegalArgumentException("Unknown process: " + process);
                                }
                                boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
                                if (!isDebuggable) {
                                    try {
                                        if ((proc.info.flags & 2) == 0) {
                                            throw new SecurityException("Process not debuggable: " + proc);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            try {
                                                resetPriorityAfterLockedSection();
                                                throw th;
                                            } catch (RemoteException e) {
                                                throw new IllegalStateException("Process disappeared");
                                            }
                                        } catch (Throwable e2) {
                                            remoteException = e2;
                                            if (fd != null) {
                                                throw remoteException;
                                            }
                                            try {
                                                fd.close();
                                                throw remoteException;
                                            } catch (IOException e3) {
                                                throw remoteException;
                                            }
                                        }
                                    }
                                }
                                this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                                RemoteCallback intermediateCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ActivityManagerService.25
                                    public void onResult(Bundle result) {
                                        finishCallback.sendResult(result);
                                        ActivityManagerService.this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
                                    }
                                }, (Handler) null);
                                proc.thread.dumpHeap(managed, mallocInfo, runGc, path, fd, intermediateCallback);
                                fd2 = null;
                            } catch (Throwable th2) {
                                th = th2;
                                resetPriorityAfterLockedSection();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
                resetPriorityAfterLockedSection();
                if (0 != 0) {
                    try {
                        fd2.close();
                    } catch (IOException e4) {
                    }
                }
                return true;
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (RemoteException e5) {
            fd = fd;
            throw new IllegalStateException("Process disappeared");
        } catch (Throwable th6) {
            fd = fd;
            remoteException = th6;
            if (fd != null) {
                throw remoteException;
            }
            fd.close();
            throw remoteException;
        }
    }

    public void setDumpHeapDebugLimit(String processName, int uid, long maxMemSize, String reportPackage) {
        String processName2;
        int uid2;
        String processName3;
        int uid3;
        if (processName != null) {
            enforceCallingPermission("android.permission.SET_DEBUG_APP", "setDumpHeapDebugLimit()");
            processName3 = processName;
            uid3 = uid;
        } else {
            synchronized (this.mPidsSelfLocked) {
                ProcessRecord proc = this.mPidsSelfLocked.get(Binder.getCallingPid());
                if (proc == null) {
                    throw new SecurityException("No process found for calling pid " + Binder.getCallingPid());
                }
                if (!Build.IS_DEBUGGABLE && (proc.info.flags & 2) == 0) {
                    throw new SecurityException("Not running a debuggable build");
                }
                processName2 = proc.processName;
                uid2 = proc.uid;
                if (reportPackage != null && !proc.pkgList.containsKey(reportPackage)) {
                    throw new SecurityException("Package " + reportPackage + " is not running in " + proc);
                }
            }
            processName3 = processName2;
            uid3 = uid2;
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (maxMemSize > 0) {
                    this.mMemWatchProcesses.put(processName3, uid3, new Pair(Long.valueOf(maxMemSize), reportPackage));
                } else if (uid3 != 0) {
                    this.mMemWatchProcesses.remove(processName3, uid3);
                } else {
                    this.mMemWatchProcesses.getMap().remove(processName3);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void dumpHeapFinished(String path) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (Binder.getCallingPid() != this.mMemWatchDumpPid) {
                    Slog.w("ActivityManager", "dumpHeapFinished: Calling pid " + Binder.getCallingPid() + " does not match last pid " + this.mMemWatchDumpPid);
                    return;
                }
                if (this.mMemWatchDumpUri != null && this.mMemWatchDumpUri.getPath().equals(path)) {
                    this.mHandler.sendEmptyMessage(50);
                    Runtime.getRuntime().gc();
                    return;
                }
                Slog.w("ActivityManager", "dumpHeapFinished: Calling path " + path + " does not match last path " + this.mMemWatchDumpUri);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abortHeapDump(String procName) {
        Message msg = this.mHandler.obtainMessage(51);
        msg.obj = procName;
        this.mHandler.sendMessage(msg);
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void onCoreSettingsChange(Bundle settings) {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mProcessList.updateCoreSettingsLocked(settings);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean startUserInBackground(int userId) {
        return startUserInBackgroundWithListener(userId, null);
    }

    public boolean startUserInBackgroundWithListener(int userId, IProgressListener unlockListener) {
        return this.mUserController.lambda$startUserInternal$7$UserController(userId, false, unlockListener);
    }

    public boolean startUserInForegroundWithListener(int userId, IProgressListener unlockListener) {
        return this.mUserController.lambda$startUserInternal$7$UserController(userId, true, unlockListener);
    }

    public boolean unlockUser(int userId, byte[] token, byte[] secret, IProgressListener listener) {
        return this.mUserController.unlockUser(userId, token, secret, listener);
    }

    public boolean switchUser(int targetUserId) {
        return this.mUserController.switchUser(targetUserId);
    }

    public int stopUser(int userId, boolean force, IStopUserCallback callback) {
        return this.mUserController.stopUser(userId, force, false, callback, null);
    }

    public int stopUserWithDelayedLocking(int userId, boolean force, IStopUserCallback callback) {
        return this.mUserController.stopUser(userId, force, true, callback, null);
    }

    public UserInfo getCurrentUser() {
        return this.mUserController.getCurrentUser();
    }

    String getStartedUserState(int userId) {
        UserState userState = this.mUserController.getStartedUserState(userId);
        return UserState.stateToString(userState.state);
    }

    public boolean isUserRunning(int userId, int flags) {
        if (!this.mUserController.isSameProfileGroup(userId, UserHandle.getCallingUserId()) && checkCallingPermission("android.permission.INTERACT_ACROSS_USERS") != 0) {
            String msg = "Permission Denial: isUserRunning() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERACT_ACROSS_USERS";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        return this.mUserController.isUserRunning(userId, flags);
    }

    public int[] getRunningUserIds() {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS") != 0) {
            String msg = "Permission Denial: isUserRunning() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERACT_ACROSS_USERS";
            Slog.w("ActivityManager", msg);
            throw new SecurityException(msg);
        }
        return this.mUserController.getStartedUserArray();
    }

    public void registerUserSwitchObserver(IUserSwitchObserver observer, String name) {
        this.mUserController.registerUserSwitchObserver(observer, name);
    }

    public void unregisterUserSwitchObserver(IUserSwitchObserver observer) {
        this.mUserController.unregisterUserSwitchObserver(observer);
    }

    ApplicationInfo getAppInfoForUser(ApplicationInfo info, int userId) {
        if (info == null) {
            return null;
        }
        ApplicationInfo newInfo = new ApplicationInfo(info);
        newInfo.initForUser(userId);
        return newInfo;
    }

    public boolean isUserStopped(int userId) {
        return this.mUserController.getStartedUserState(userId) == null;
    }

    ActivityInfo getActivityInfoForUser(ActivityInfo aInfo, int userId) {
        if (aInfo == null || (userId < 1 && aInfo.applicationInfo.uid < 100000)) {
            return aInfo;
        }
        ActivityInfo info = new ActivityInfo(aInfo);
        info.applicationInfo = getAppInfoForUser(info.applicationInfo, userId);
        return info;
    }

    private boolean processSanityChecksLocked(ProcessRecord process) {
        if (process == null || process.thread == null) {
            return false;
        }
        boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
        if (!isDebuggable && (process.info.flags & 2) == 0) {
            return false;
        }
        return true;
    }

    public boolean startBinderTracking() throws RemoteException {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mBinderTransactionTrackingEnabled = true;
                if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
                    throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
                }
                for (int i = 0; i < this.mProcessList.mLruProcesses.size(); i++) {
                    ProcessRecord process = this.mProcessList.mLruProcesses.get(i);
                    if (processSanityChecksLocked(process)) {
                        try {
                            process.thread.startBinderTracking();
                        } catch (RemoteException e) {
                            Log.v("ActivityManager", "Process disappared");
                        }
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return true;
    }

    public boolean stopBinderTrackingAndDump(ParcelFileDescriptor fd) throws RemoteException {
        ParcelFileDescriptor fd2;
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    this.mBinderTransactionTrackingEnabled = false;
                    if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
                        throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
                    }
                    if (fd == null) {
                        throw new IllegalArgumentException("null fd");
                    }
                    FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(fd.getFileDescriptor()));
                    fastPrintWriter.println("Binder transaction traces for all processes.\n");
                    for (ProcessRecord process : this.mProcessList.mLruProcesses) {
                        if (processSanityChecksLocked(process)) {
                            fastPrintWriter.println("Traces for process: " + process.processName);
                            fastPrintWriter.flush();
                            try {
                                TransferPipe tp = new TransferPipe();
                                try {
                                    process.thread.stopBinderTrackingAndDump(tp.getWriteFd());
                                    tp.go(fd.getFileDescriptor());
                                    tp.kill();
                                } catch (Throwable th) {
                                    tp.kill();
                                    throw th;
                                }
                            } catch (RemoteException e) {
                                fastPrintWriter.println("Got a RemoteException while dumping IPC traces from " + process + ".  Exception: " + e);
                                fastPrintWriter.flush();
                            } catch (IOException e2) {
                                fastPrintWriter.println("Failure while dumping IPC traces from " + process + ".  Exception: " + e2);
                                fastPrintWriter.flush();
                            }
                        }
                    }
                    fd2 = null;
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
            if (0 != 0) {
                try {
                    fd2.close();
                } catch (IOException e3) {
                }
            }
            return true;
        } catch (Throwable th3) {
            if (fd != null) {
                try {
                    fd.close();
                } catch (IOException e4) {
                }
            }
            throw th3;
        }
    }

    public final class LocalService extends ActivityManagerInternal {
        public LocalService() {
        }

        public String checkContentProviderAccess(String authority, int userId) {
            return ActivityManagerService.this.checkContentProviderAccess(authority, userId);
        }

        public int checkContentProviderUriPermission(Uri uri, int userId, int callingUid, int modeFlags) {
            return ActivityManagerService.this.checkContentProviderUriPermission(uri, userId, callingUid, modeFlags);
        }

        public void onWakefulnessChanged(int wakefulness) {
            ActivityManagerService.this.onWakefulnessChanged(wakefulness);
        }

        public boolean startIsolatedProcess(String entryPoint, String[] entryPointArgs, String processName, String abiOverride, int uid, Runnable crashHandler) {
            return ActivityManagerService.this.startIsolatedProcess(entryPoint, entryPointArgs, processName, abiOverride, uid, crashHandler);
        }

        public void onUserRemoved(int userId) {
            ActivityManagerService.this.mAtmInternal.onUserStopped(userId);
            ActivityManagerService.this.mBatteryStatsService.onUserRemoved(userId);
            ActivityManagerService.this.mUserController.onUserRemoved(userId);
        }

        public void killForegroundAppsForUser(int userId) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ArrayList<ProcessRecord> procs = new ArrayList<>();
                    int NP = ActivityManagerService.this.mProcessList.mProcessNames.getMap().size();
                    for (int ip = 0; ip < NP; ip++) {
                        SparseArray<ProcessRecord> apps = (SparseArray) ActivityManagerService.this.mProcessList.mProcessNames.getMap().valueAt(ip);
                        int NA = apps.size();
                        for (int ia = 0; ia < NA; ia++) {
                            ProcessRecord app = apps.valueAt(ia);
                            if (!app.isPersistent() && (app.removed || (app.userId == userId && app.hasForegroundActivities()))) {
                                procs.add(app);
                            }
                        }
                    }
                    int N = procs.size();
                    for (int i = 0; i < N; i++) {
                        ActivityManagerService.this.mProcessList.removeProcessLocked(procs.get(i), false, true, 13, 9, "kill all fg");
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void setPendingIntentWhitelistDuration(IIntentSender target, IBinder whitelistToken, long duration) {
            ActivityManagerService.this.mPendingIntentController.setPendingIntentWhitelistDuration(target, whitelistToken, duration);
        }

        public void setPendingIntentAllowBgActivityStarts(IIntentSender target, IBinder whitelistToken, int flags) {
            if (!(target instanceof PendingIntentRecord)) {
                Slog.w("ActivityManager", "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: " + target);
                return;
            }
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ((PendingIntentRecord) target).setAllowBgActivityStarts(whitelistToken, flags);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void clearPendingIntentAllowBgActivityStarts(IIntentSender target, IBinder whitelistToken) {
            if (!(target instanceof PendingIntentRecord)) {
                Slog.w("ActivityManager", "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: " + target);
                return;
            }
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ((PendingIntentRecord) target).clearAllowBgActivityStarts(whitelistToken);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void setDeviceIdleWhitelist(int[] allAppids, int[] exceptIdleAppids) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.mDeviceIdleWhitelist = allAppids;
                    ActivityManagerService.this.mDeviceIdleExceptIdleWhitelist = exceptIdleAppids;
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void updateDeviceIdleTempWhitelist(int[] appids, int changingAppId, boolean adding) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.mDeviceIdleTempWhitelist = appids;
                    ActivityManagerService.this.setAppIdTempWhitelistStateLocked(changingAppId, adding);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public int getUidProcessState(int uid) {
            return ActivityManagerService.this.getUidState(uid);
        }

        public Map<Integer, String> getProcessesWithPendingBindMounts(int userId) {
            return ActivityManagerService.this.mProcessList.getProcessesWithPendingBindMounts(userId);
        }

        public boolean isSystemReady() {
            return ActivityManagerService.this.mSystemReady;
        }

        public void setHasOverlayUi(int pid, boolean hasOverlayUi) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                        ProcessRecord pr = ActivityManagerService.this.mPidsSelfLocked.get(pid);
                        if (pr == null) {
                            Slog.w("ActivityManager", "setHasOverlayUi called on unknown pid: " + pid);
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return;
                        }
                        if (pr.hasOverlayUi() == hasOverlayUi) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return;
                        }
                        pr.setHasOverlayUi(hasOverlayUi);
                        ActivityManagerService.this.updateOomAdjLocked(pr, true, "updateOomAdj_uiVisibility");
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public void notifyNetworkPolicyRulesUpdated(int uid, long procStateSeq) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    UidRecord record = ActivityManagerService.this.mProcessList.getUidRecordLocked(uid);
                    if (record == null) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    synchronized (record.networkStateLock) {
                        if (record.lastNetworkUpdatedProcStateSeq >= procStateSeq) {
                            return;
                        }
                        record.lastNetworkUpdatedProcStateSeq = procStateSeq;
                        if (record.curProcStateSeq > procStateSeq) {
                            return;
                        }
                        if (record.waitingForNetwork) {
                            record.networkStateLock.notifyAll();
                        }
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public boolean isRuntimeRestarted() {
            return ActivityManagerService.this.mSystemServiceManager.isRuntimeRestarted();
        }

        public boolean canStartMoreUsers() {
            return ActivityManagerService.this.mUserController.canStartMoreUsers();
        }

        public void setSwitchingFromSystemUserMessage(String switchingFromSystemUserMessage) {
            ActivityManagerService.this.mUserController.setSwitchingFromSystemUserMessage(switchingFromSystemUserMessage);
        }

        public void setSwitchingToSystemUserMessage(String switchingToSystemUserMessage) {
            ActivityManagerService.this.mUserController.setSwitchingToSystemUserMessage(switchingToSystemUserMessage);
        }

        public int getMaxRunningUsers() {
            return ActivityManagerService.this.mUserController.getMaxRunningUsers();
        }

        public boolean isUidActive(int uid) {
            boolean zIsUidActiveLocked;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    zIsUidActiveLocked = ActivityManagerService.this.isUidActiveLocked(uid);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zIsUidActiveLocked;
        }

        public List<ProcessMemoryState> getMemoryStateForProcesses() {
            List<ProcessMemoryState> processMemoryStates = new ArrayList<>();
            synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                int size = ActivityManagerService.this.mPidsSelfLocked.size();
                for (int i = 0; i < size; i++) {
                    ProcessRecord r = ActivityManagerService.this.mPidsSelfLocked.valueAt(i);
                    processMemoryStates.add(new ProcessMemoryState(r.uid, r.pid, r.processName, r.curAdj));
                }
            }
            return processMemoryStates;
        }

        public int handleIncomingUser(int callingPid, int callingUid, int userId, boolean allowAll, int allowMode, String name, String callerPackage) {
            return ActivityManagerService.this.mUserController.handleIncomingUser(callingPid, callingUid, userId, allowAll, allowMode, name, callerPackage);
        }

        public void enforceCallingPermission(String permission, String func) {
            ActivityManagerService.this.enforceCallingPermission(permission, func);
        }

        public int getCurrentUserId() {
            return ActivityManagerService.this.mUserController.getCurrentUserId();
        }

        public boolean isUserRunning(int userId, int flags) {
            return ActivityManagerService.this.mUserController.isUserRunning(userId, flags);
        }

        public void trimApplications() {
            ActivityManagerService.this.trimApplications("updateOomAdj_activityChange");
        }

        public void killProcessesForRemovedTask(ArrayList<Object> procsToKill) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    for (int i = 0; i < procsToKill.size(); i++) {
                        WindowProcessController wpc = (WindowProcessController) procsToKill.get(i);
                        ProcessRecord pr = (ProcessRecord) wpc.mOwner;
                        if (pr.setSchedGroup == 0 && pr.curReceivers.isEmpty()) {
                            pr.kill("remove task", 10, 0, true);
                        } else {
                            pr.waitingToKill = "remove task";
                        }
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void killProcess(String processName, int uid, String reason) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ProcessRecord proc = ActivityManagerService.this.getProcessRecordLocked(processName, uid, true);
                    if (proc != null) {
                        ActivityManagerService.this.mProcessList.removeProcessLocked(proc, false, true, 13, reason);
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public boolean hasRunningActivity(int uid, String packageName) {
            if (packageName == null) {
                return false;
            }
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    for (int i = 0; i < ActivityManagerService.this.mProcessList.mLruProcesses.size(); i++) {
                        ProcessRecord pr = ActivityManagerService.this.mProcessList.mLruProcesses.get(i);
                        if (pr.uid == uid && pr.getWindowProcessController().hasRunningActivity(packageName)) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public void updateOomAdj() {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.updateOomAdjLocked("updateOomAdj_meh");
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void updateCpuStats() {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.updateCpuStats();
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void updateBatteryStats(ComponentName activity, int uid, int userId, boolean resumed) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.updateBatteryStats(activity, uid, userId, resumed);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void updateActivityUsageStats(ComponentName activity, int userId, int event, IBinder appToken, ComponentName taskRoot) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.updateActivityUsageStats(activity, userId, event, appToken, taskRoot);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void updateForegroundTimeIfOnBattery(String packageName, int uid, long cpuTimeDiff) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    if (!ActivityManagerService.this.mBatteryStatsService.isOnBattery()) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    BatteryStatsImpl bsi = ActivityManagerService.this.mBatteryStatsService.getActiveStatistics();
                    synchronized (bsi) {
                        BatteryStatsImpl.Uid.Proc ps = bsi.getProcessStatsLocked(uid, packageName);
                        if (ps != null) {
                            ps.addForegroundTimeLocked(cpuTimeDiff);
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public void sendForegroundProfileChanged(int userId) {
            ActivityManagerService.this.mUserController.sendForegroundProfileChanged(userId);
        }

        public boolean shouldConfirmCredentials(int userId) {
            return ActivityManagerService.this.mUserController.shouldConfirmCredentials(userId);
        }

        public int[] getCurrentProfileIds() {
            return ActivityManagerService.this.mUserController.getCurrentProfileIds();
        }

        public UserInfo getCurrentUser() {
            return ActivityManagerService.this.mUserController.getCurrentUser();
        }

        public void ensureNotSpecialUser(int userId) {
            ActivityManagerService.this.mUserController.ensureNotSpecialUser(userId);
        }

        public boolean isCurrentProfile(int userId) {
            return ActivityManagerService.this.mUserController.isCurrentProfile(userId);
        }

        public boolean hasStartedUserState(int userId) {
            return ActivityManagerService.this.mUserController.hasStartedUserState(userId);
        }

        public void finishUserSwitch(Object uss) {
            ActivityManagerService.this.mUserController.finishUserSwitch((UserState) uss);
        }

        public void scheduleAppGcs() {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.scheduleAppGcsLocked();
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public int getTaskIdForActivity(IBinder token, boolean onlyRoot) {
            int taskForActivity;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    taskForActivity = ActivityManagerService.this.getTaskForActivity(token, onlyRoot);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
            return taskForActivity;
        }

        public ActivityPresentationInfo getActivityPresentationInfo(IBinder token) throws RemoteException {
            int displayId = -1;
            try {
                displayId = ActivityManagerService.this.mActivityTaskManager.getDisplayId(token);
            } catch (RemoteException e) {
            }
            return new ActivityPresentationInfo(ActivityManagerService.this.mActivityTaskManager.getTaskForActivity(token, false), displayId, ActivityManagerService.this.mActivityTaskManager.getActivityClassForToken(token));
        }

        public void setBooting(boolean booting) {
            ActivityManagerService.this.mBooting = booting;
        }

        public boolean isBooting() {
            return ActivityManagerService.this.mBooting;
        }

        public void setBooted(boolean booted) {
            ActivityManagerService.this.mBooted = booted;
        }

        public boolean isBooted() {
            return ActivityManagerService.this.mBooted;
        }

        public void finishBooting() {
            ActivityManagerService.this.finishBooting();
        }

        public void tempWhitelistForPendingIntent(int callerPid, int callerUid, int targetUid, long duration, String tag) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.tempWhitelistForPendingIntentLocked(callerPid, callerUid, targetUid, duration, tag);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public int broadcastIntentInPackage(String packageName, String featureId, int uid, int realCallingUid, int realCallingPid, Intent intent, String resolvedType, IIntentReceiver resultTo, int resultCode, String resultData, Bundle resultExtras, String requiredPermission, Bundle bOptions, boolean serialized, boolean sticky, int userId, boolean allowBackgroundActivityStarts) {
            int iBroadcastIntentInPackage;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    iBroadcastIntentInPackage = ActivityManagerService.this.broadcastIntentInPackage(packageName, featureId, uid, realCallingUid, realCallingPid, intent, resolvedType, resultTo, resultCode, resultData, resultExtras, requiredPermission, bOptions, serialized, sticky, userId, allowBackgroundActivityStarts);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
            return iBroadcastIntentInPackage;
        }

        public int broadcastIntent(Intent intent, IIntentReceiver resultTo, String[] requiredPermissions, boolean serialized, int userId, int[] appIdWhitelist) throws Throwable {
            Intent intent2;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    intent2 = intent;
                    try {
                        Intent intent3 = ActivityManagerService.this.verifyBroadcastLocked(intent2);
                        try {
                            int callingPid = Binder.getCallingPid();
                            int callingUid = Binder.getCallingUid();
                            long origId = Binder.clearCallingIdentity();
                            try {
                                int iBroadcastIntentLocked = ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent3, null, resultTo, 0, null, null, requiredPermissions, -1, null, serialized, false, callingPid, callingUid, callingUid, callingPid, userId, false, appIdWhitelist);
                                Binder.restoreCallingIdentity(origId);
                                ActivityManagerService.resetPriorityAfterLockedSection();
                                return iBroadcastIntentLocked;
                            } catch (Throwable th) {
                                Binder.restoreCallingIdentity(origId);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    intent2 = intent;
                }
            }
        }

        public ComponentName startServiceInPackage(int uid, Intent service, String resolvedType, boolean fgRequired, String callingPackage, String callingFeatureId, int userId, boolean allowBackgroundActivityStarts) throws TransactionTooLargeException {
            ComponentName res;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    long origId = Binder.clearCallingIdentity();
                    try {
                        res = ActivityManagerService.this.mServices.startServiceLocked(null, service, resolvedType, -1, uid, fgRequired, callingPackage, callingFeatureId, userId, allowBackgroundActivityStarts);
                        Binder.restoreCallingIdentity(origId);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(origId);
                        throw th;
                    }
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return res;
        }

        public void disconnectActivityFromServices(Object connectionHolder) {
            final ActivityServiceConnectionsHolder holder = (ActivityServiceConnectionsHolder) connectionHolder;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    holder.forEachConnection(new Consumer() { // from class: com.android.server.am.-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$disconnectActivityFromServices$0$ActivityManagerService$LocalService(holder, obj);
                        }
                    });
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public /* synthetic */ void lambda$disconnectActivityFromServices$0$ActivityManagerService$LocalService(ActivityServiceConnectionsHolder holder, Object cr) {
            ActivityManagerService.this.mServices.removeConnectionLocked((ConnectionRecord) cr, null, holder);
        }

        public void cleanUpServices(int userId, ComponentName component, Intent baseIntent) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.mServices.cleanUpServices(userId, component, baseIntent);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public ActivityInfo getActivityInfoForUser(ActivityInfo aInfo, int userId) {
            return ActivityManagerService.this.getActivityInfoForUser(aInfo, userId);
        }

        public void ensureBootCompleted() {
            ActivityManagerService.this.ensureBootCompleted();
        }

        public void updateOomLevelsForDisplay(int displayId) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    if (ActivityManagerService.this.mWindowManager != null) {
                        ActivityManagerService.this.mProcessList.applyDisplaySize(ActivityManagerService.this.mWindowManager);
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public boolean isActivityStartsLoggingEnabled() {
            return ActivityManagerService.this.mConstants.mFlagActivityStartsLoggingEnabled;
        }

        public boolean isBackgroundActivityStartsEnabled() {
            return ActivityManagerService.this.mConstants.mFlagBackgroundActivityStartsEnabled;
        }

        public void reportCurKeyguardUsageEvent(boolean keyguardShowing) {
            int i;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService activityManagerService = ActivityManagerService.this;
                    if (keyguardShowing) {
                        i = 17;
                    } else {
                        i = 18;
                    }
                    activityManagerService.reportGlobalUsageEventLocked(i);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void monitor() {
            ActivityManagerService.this.monitor();
        }

        public long inputDispatchingTimedOut(int pid, boolean aboveSystem, String reason) {
            return ActivityManagerService.this.inputDispatchingTimedOut(pid, aboveSystem, reason);
        }

        public boolean inputDispatchingTimedOut(Object proc, String activityShortComponentName, ApplicationInfo aInfo, String parentShortComponentName, Object parentProc, boolean aboveSystem, String reason) {
            return ActivityManagerService.this.inputDispatchingTimedOut((ProcessRecord) proc, activityShortComponentName, aInfo, parentShortComponentName, (WindowProcessController) parentProc, aboveSystem, reason);
        }

        public void broadcastGlobalConfigurationChanged(int changes, boolean initLocale) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    Intent intent = new Intent("android.intent.action.CONFIGURATION_CHANGED");
                    intent.addFlags(1881145344);
                    ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, -1, null, false, false, ActivityManagerService.MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                    if ((changes & 4) != 0) {
                        Intent intent2 = new Intent("android.intent.action.LOCALE_CHANGED");
                        intent2.addFlags(287309824);
                        if (initLocale || !ActivityManagerService.this.mProcessesReady) {
                            intent2.addFlags(1073741824);
                        }
                        ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent2, null, null, 0, null, null, null, -1, null, false, false, ActivityManagerService.MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                    }
                    if (!initLocale && isSplitConfigurationChange(changes)) {
                        Intent intent3 = new Intent("android.intent.action.SPLIT_CONFIGURATION_CHANGED");
                        intent3.addFlags(AudioFormat.APTX_HD);
                        String[] permissions = {"android.permission.INSTALL_PACKAGES"};
                        ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent3, null, null, 0, null, null, permissions, -1, null, false, false, ActivityManagerService.MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                    }
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        private boolean isSplitConfigurationChange(int configDiff) {
            return (configDiff & 4100) != 0;
        }

        public void broadcastCloseSystemDialogs(String reason) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    Intent intent = new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS");
                    intent.addFlags(1342177280);
                    if (reason != null) {
                        intent.putExtra(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY, reason);
                    }
                    ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, -1, null, false, false, -1, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void killAllBackgroundProcessesExcept(int minTargetSdk, int maxProcState) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.killAllBackgroundProcessesExcept(minTargetSdk, maxProcState);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void startProcess(String processName, ApplicationInfo info, boolean knownToBeDead, boolean isTop, String hostingType, ComponentName hostingName) throws Throwable {
            try {
                if (Trace.isTagEnabled(64L)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("startProcess:");
                    try {
                        sb.append(processName);
                        Trace.traceBegin(64L, sb.toString());
                    } catch (Throwable th) {
                        th = th;
                        Trace.traceEnd(64L);
                        throw th;
                    }
                }
                synchronized (ActivityManagerService.this) {
                    try {
                        ActivityManagerService.boostPriorityForLockedSection();
                        ActivityManagerService.this.startProcessLocked(processName, info, knownToBeDead, 0, new HostingRecord(hostingType, hostingName, isTop), 1, false, false, true);
                    } catch (Throwable th2) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th2;
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                Trace.traceEnd(64L);
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public void setDebugFlagsForStartingActivity(ActivityInfo aInfo, int startFlags, ProfilerInfo profilerInfo, Object wmLock) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (wmLock) {
                        if ((startFlags & 2) != 0) {
                            try {
                                ActivityManagerService.this.setDebugApp(aInfo.processName, true, false);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if ((startFlags & 8) != 0) {
                            ActivityManagerService.this.setNativeDebuggingAppLocked(aInfo.applicationInfo, aInfo.processName);
                        }
                        if ((startFlags & 4) != 0) {
                            ActivityManagerService.this.setTrackAllocationApp(aInfo.applicationInfo, aInfo.processName);
                        }
                        if (profilerInfo != null) {
                            ActivityManagerService.this.setProfileApp(aInfo.applicationInfo, aInfo.processName, profilerInfo);
                        }
                        wmLock.notify();
                    }
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public int getStorageMountMode(int pid, int uid) {
            int i;
            if (uid == ActivityManagerService.NATIVE_DUMP_TIMEOUT_MS || uid == 0) {
                return 6;
            }
            synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                ProcessRecord pr = ActivityManagerService.this.mPidsSelfLocked.get(pid);
                i = pr == null ? 0 : pr.mountMode;
            }
            return i;
        }

        public boolean isAppForeground(int uid) {
            return ActivityManagerService.this.isAppForeground(uid);
        }

        public boolean isAppBad(ApplicationInfo info) {
            return ActivityManagerService.this.isAppBad(info);
        }

        public void clearPendingBackup(int userId) {
            ActivityManagerService.this.clearPendingBackup(userId);
        }

        public void prepareForPossibleShutdown() {
            ActivityManagerService.this.prepareForPossibleShutdown();
        }

        public boolean hasRunningForegroundService(int uid, int foregroundServicetype) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    for (int i = 0; i < ActivityManagerService.this.mProcessList.mLruProcesses.size(); i++) {
                        ProcessRecord pr = ActivityManagerService.this.mProcessList.mLruProcesses.get(i);
                        if (pr.uid == uid && (pr.getForegroundServiceTypes() & foregroundServicetype) != 0) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public boolean hasForegroundServiceNotification(String pkg, int userId, String channelId) {
            boolean zHasForegroundServiceNotificationLocked;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    zHasForegroundServiceNotificationLocked = ActivityManagerService.this.mServices.hasForegroundServiceNotificationLocked(pkg, userId, channelId);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zHasForegroundServiceNotificationLocked;
        }

        public void stopForegroundServicesForChannel(String pkg, int userId, String channelId) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.mServices.stopForegroundServicesForChannelLocked(pkg, userId, channelId);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void registerProcessObserver(IProcessObserver processObserver) {
            ActivityManagerService.this.registerProcessObserver(processObserver);
        }

        public void unregisterProcessObserver(IProcessObserver processObserver) {
            ActivityManagerService.this.unregisterProcessObserver(processObserver);
        }

        public boolean isUidCurrentlyInstrumented(int uid) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    for (int i = ActivityManagerService.this.mActiveInstrumentation.size() - 1; i >= 0; i--) {
                        ActiveInstrumentation activeInst = ActivityManagerService.this.mActiveInstrumentation.get(i);
                        if (!activeInst.mFinished && activeInst.mTargetInfo != null && activeInst.mTargetInfo.uid == uid) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public void setDeviceOwnerUid(int uid) {
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    ActivityManagerService.this.mDeviceOwnerUid = uid;
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public boolean isDeviceOwner(int uid) {
            boolean z;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    z = uid >= 0 && ActivityManagerService.this.mDeviceOwnerUid == uid;
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        public void addPendingTopUid(int uid, int pid) {
            ActivityManagerService.this.mPendingStartActivityUids.add(uid, pid);
        }

        public void deletePendingTopUid(int uid) {
            ActivityManagerService.this.mPendingStartActivityUids.delete(uid);
        }

        public boolean isPendingTopUid(int uid) {
            return ActivityManagerService.this.mPendingStartActivityUids.isPendingTopUid(uid);
        }

        public void tempAllowWhileInUsePermissionInFgs(int uid, long duration) {
            ActivityManagerService.this.mFgsWhileInUseTempAllowList.add(uid, duration);
        }

        public boolean isTempAllowlistedForFgsWhileInUse(int uid) {
            return ActivityManagerService.this.mFgsWhileInUseTempAllowList.isAllowed(uid);
        }

        public boolean canAllowWhileInUsePermissionInFgs(int pid, int uid, String packageName) {
            boolean zCanAllowWhileInUsePermissionInFgsLocked;
            synchronized (ActivityManagerService.this) {
                try {
                    ActivityManagerService.boostPriorityForLockedSection();
                    zCanAllowWhileInUsePermissionInFgsLocked = ActivityManagerService.this.mServices.canAllowWhileInUsePermissionInFgsLocked(pid, uid, packageName);
                } finally {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zCanAllowWhileInUsePermissionInFgsLocked;
        }
    }

    long inputDispatchingTimedOut(int pid, boolean aboveSystem, String reason) {
        ProcessRecord proc;
        long timeout;
        if (checkCallingPermission("android.permission.FILTER_EVENTS") != 0) {
            throw new SecurityException("Requires permission android.permission.FILTER_EVENTS");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                synchronized (this.mPidsSelfLocked) {
                    proc = this.mPidsSelfLocked.get(pid);
                }
                timeout = proc != null ? proc.getInputDispatchingTimeout() : MONITOR_CPU_MIN_TIME;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (inputDispatchingTimedOut(proc, null, null, null, null, aboveSystem, reason)) {
            return -1L;
        }
        return timeout;
    }

    boolean inputDispatchingTimedOut(ProcessRecord proc, String activityShortComponentName, ApplicationInfo aInfo, String parentShortComponentName, WindowProcessController parentProcess, boolean aboveSystem, String reason) {
        String annotation;
        if (checkCallingPermission("android.permission.FILTER_EVENTS") != 0) {
            throw new SecurityException("Requires permission android.permission.FILTER_EVENTS");
        }
        if (reason == null) {
            annotation = "Input dispatching timed out";
        } else {
            annotation = "Input dispatching timed out (" + reason + ")";
        }
        if (proc != null) {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    if (proc.isDebugging()) {
                        resetPriorityAfterLockedSection();
                        return false;
                    }
                    if (proc.getActiveInstrumentation() != null) {
                        Bundle info = new Bundle();
                        info.putString("shortMsg", "keyDispatchingTimedOut");
                        info.putString("longMsg", annotation);
                        finishInstrumentationLocked(proc, 0, info);
                        resetPriorityAfterLockedSection();
                        return true;
                    }
                    resetPriorityAfterLockedSection();
                    this.mAnrHelper.appNotResponding(proc, activityShortComponentName, aInfo, parentShortComponentName, parentProcess, aboveSystem, annotation);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }
        return true;
    }

    public void waitForNetworkStateUpdate(long procStateSeq) {
        int callingUid = Binder.getCallingUid();
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                UidRecord record = this.mProcessList.getUidRecordLocked(callingUid);
                if (record == null) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                resetPriorityAfterLockedSection();
                synchronized (record.networkStateLock) {
                    if (record.lastDispatchedProcStateSeq < procStateSeq) {
                        return;
                    }
                    if (record.curProcStateSeq > procStateSeq) {
                        return;
                    }
                    if (record.lastNetworkUpdatedProcStateSeq >= procStateSeq) {
                        return;
                    }
                    try {
                        long startTime = SystemClock.uptimeMillis();
                        record.waitingForNetwork = true;
                        record.networkStateLock.wait(this.mWaitForNetworkTimeoutMs);
                        record.waitingForNetwork = false;
                        long totalTime = SystemClock.uptimeMillis() - startTime;
                        if (totalTime >= this.mWaitForNetworkTimeoutMs) {
                            Slog.w(TAG_NETWORK, "Total time waited for network rules to get updated: " + totalTime + ". Uid: " + callingUid + " procStateSeq: " + procStateSeq + " UidRec: " + record + " validateUidRec: " + this.mValidateUids.get(callingUid));
                        }
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void waitForBroadcastIdle(PrintWriter pw) {
        enforceCallingPermission("android.permission.DUMP", "waitForBroadcastIdle()");
        while (true) {
            boolean idle = true;
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    for (BroadcastQueue queue : this.mBroadcastQueues) {
                        if (!queue.isIdle()) {
                            String msg = "Waiting for queue " + queue + " to become idle...";
                            pw.println(msg);
                            pw.println(queue.describeState());
                            pw.flush();
                            Slog.v("ActivityManager", msg);
                            queue.cancelDeferrals();
                            idle = false;
                        }
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            if (idle) {
                pw.println("All broadcast queues are idle!");
                pw.flush();
                Slog.v("ActivityManager", "All broadcast queues are idle!");
                return;
            }
            SystemClock.sleep(1000L);
        }
    }

    void refreshSettingsCache() {
        this.mCoreSettingsObserver.onChange(true);
    }

    public void killPackageDependents(String packageName, int userId) {
        int pkgUid;
        enforceCallingPermission("android.permission.KILL_UID", "killPackageDependents()");
        if (packageName == null) {
            throw new NullPointerException("Cannot kill the dependents of a package without its name.");
        }
        long callingId = Binder.clearCallingIdentity();
        IPackageManager pm = AppGlobals.getPackageManager();
        try {
            int pkgUid2 = pm.getPackageUid(packageName, AudioFormat.EVRC, userId);
            pkgUid = pkgUid2;
        } catch (RemoteException e) {
            pkgUid = -1;
        }
        if (userId != -1 && pkgUid == -1) {
            throw new IllegalArgumentException("Cannot kill dependents of non-existing package " + packageName);
        }
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    this.mProcessList.killPackageProcessesLocked(packageName, UserHandle.getAppId(pkgUid), userId, 0, 12, 0, "dep: " + packageName);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(callingId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public int restartUserInBackground(int userId) {
        return this.mUserController.restartUser(userId, false);
    }

    public void scheduleApplicationInfoChanged(List<String> packageNames, int userId) {
        enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "scheduleApplicationInfoChanged()");
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    updateApplicationInfoLocked(packageNames, userId);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void updateSystemUiContext() {
        PackageManagerInternal packageManagerInternal;
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                packageManagerInternal = getPackageManagerInternalLocked();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        ApplicationInfo ai = packageManagerInternal.getApplicationInfo(PackageManagerService.PLATFORM_PACKAGE_NAME, 1024, Binder.getCallingUid(), 0);
        ActivityThread.currentActivityThread().handleSystemApplicationInfoChanged(ai);
    }

    void updateApplicationInfoLocked(List<String> packagesToUpdate, int userId) {
        boolean updateFrameworkRes = packagesToUpdate.contains(PackageManagerService.PLATFORM_PACKAGE_NAME);
        if (updateFrameworkRes) {
            PackageParser.readConfigUseRoundIcon((Resources) null);
        }
        this.mProcessList.updateApplicationInfoLocked(packagesToUpdate, userId, updateFrameworkRes);
        if (updateFrameworkRes) {
            Executor executor = ActivityThread.currentActivityThread().getExecutor();
            final DisplayManagerInternal display = (DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class);
            if (display != null) {
                Objects.requireNonNull(display);
                executor.execute(new Runnable() { // from class: com.android.server.am.-$$Lambda$gATL8uvTPRd405IfefK1RL9bNqA
                    @Override // java.lang.Runnable
                    public final void run() {
                        display.onOverlayChanged();
                    }
                });
            }
            final WindowManagerService windowManagerService = this.mWindowManager;
            if (windowManagerService != null) {
                Objects.requireNonNull(windowManagerService);
                executor.execute(new Runnable() { // from class: com.android.server.am.-$$Lambda$5hokEl5hcign5FXeGZdl53qh2zg
                    @Override // java.lang.Runnable
                    public final void run() {
                        windowManagerService.onOverlayChanged();
                    }
                });
            }
        }
    }

    public void attachAgent(String process, String path) {
        try {
            synchronized (this) {
                try {
                    boostPriorityForLockedSection();
                    ProcessRecord proc = findProcessLocked(process, 0, "attachAgent");
                    if (proc == null || proc.thread == null) {
                        throw new IllegalArgumentException("Unknown process: " + process);
                    }
                    boolean isDebuggable = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
                    if (!isDebuggable && (proc.info.flags & 2) == 0) {
                        throw new SecurityException("Process not debuggable: " + proc);
                    }
                    proc.thread.attachAgent(path);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
        } catch (RemoteException e) {
            throw new IllegalStateException("Process disappeared");
        }
    }

    public void prepareForPossibleShutdown() {
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mUsageStatsService != null) {
                    this.mUsageStatsService.prepareForPossibleShutdown();
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public static class Injector {
        private Context mContext;
        private NetworkManagementInternal mNmi;

        public Injector(Context context) {
            this.mContext = context;
        }

        public Context getContext() {
            return this.mContext;
        }

        public AppOpsService getAppOpsService(File file, Handler handler) {
            return new AppOpsService(file, handler, getContext());
        }

        public Handler getUiHandler(ActivityManagerService service) {
            Objects.requireNonNull(service);
            return service.new UiHandler();
        }

        public boolean isNetworkRestrictedForUid(int uid) {
            if (ensureHasNetworkManagementInternal()) {
                return this.mNmi.isNetworkRestrictedForUid(uid);
            }
            return false;
        }

        public ProcessList getProcessList(ActivityManagerService service) {
            return new ProcessList();
        }

        private boolean ensureHasNetworkManagementInternal() {
            if (this.mNmi == null) {
                this.mNmi = (NetworkManagementInternal) LocalServices.getService(NetworkManagementInternal.class);
            }
            return this.mNmi != null;
        }
    }

    public void startDelegateShellPermissionIdentity(int delegateUid, String[] permissions) {
        if (UserHandle.getCallingAppId() != NATIVE_DUMP_TIMEOUT_MS && UserHandle.getCallingAppId() != 0) {
            throw new SecurityException("Only the shell can delegate its permissions");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mAppOpsService.getAppOpsServiceDelegate() != getPermissionManagerInternalLocked().getCheckPermissionDelegate()) {
                    throw new IllegalStateException("Bad shell delegate state");
                }
                if (this.mAppOpsService.getAppOpsServiceDelegate() != null) {
                    if (!(this.mAppOpsService.getAppOpsServiceDelegate() instanceof ShellDelegate)) {
                        throw new IllegalStateException("Bad shell delegate state");
                    }
                    ShellDelegate delegate = (ShellDelegate) this.mAppOpsService.getAppOpsServiceDelegate();
                    if (delegate.getDelegateUid() != delegateUid) {
                        throw new SecurityException("Shell can delegate permissions only to one instrumentation at a time");
                    }
                    delegate.setPermissions(permissions);
                    resetPriorityAfterLockedSection();
                    return;
                }
                int instrCount = this.mActiveInstrumentation.size();
                for (int i = 0; i < instrCount; i++) {
                    ActiveInstrumentation instr = this.mActiveInstrumentation.get(i);
                    if (instr.mTargetInfo.uid == delegateUid) {
                        if (instr.mUiAutomationConnection == null) {
                            throw new SecurityException("Shell can delegate its permissions only to an instrumentation started from the shell");
                        }
                        ShellDelegate shellDelegate = new ShellDelegate(instr.mTargetInfo.packageName, delegateUid, permissions);
                        this.mAppOpsService.setAppOpsServiceDelegate(shellDelegate);
                        getPermissionManagerInternalLocked().setCheckPermissionDelegate(shellDelegate);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void stopDelegateShellPermissionIdentity() {
        if (UserHandle.getCallingAppId() != NATIVE_DUMP_TIMEOUT_MS && UserHandle.getCallingAppId() != 0) {
            throw new SecurityException("Only the shell can delegate its permissions");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                this.mAppOpsService.setAppOpsServiceDelegate(null);
                getPermissionManagerInternalLocked().setCheckPermissionDelegate(null);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    private class ShellDelegate implements AppOpsManagerInternal.CheckOpsDelegate, PermissionManagerInternal.CheckPermissionDelegate {
        private String[] mPermissions;
        private final String mTargetPackageName;
        private final int mTargetUid;

        ShellDelegate(String targetPackageName, int targetUid, String[] permissions) {
            this.mTargetPackageName = targetPackageName;
            this.mTargetUid = targetUid;
            this.mPermissions = permissions;
        }

        int getDelegateUid() {
            return this.mTargetUid;
        }

        void setPermissions(String[] permissions) {
            this.mPermissions = permissions;
            PackageManager.invalidatePackageInfoCache();
        }

        public int checkOperation(int code, int uid, String packageName, boolean raw, QuadFunction<Integer, Integer, String, Boolean, Integer> superImpl) {
            if (uid == this.mTargetUid && isTargetOp(code)) {
                int shellUid = UserHandle.getUid(UserHandle.getUserId(uid), ActivityManagerService.NATIVE_DUMP_TIMEOUT_MS);
                long identity = Binder.clearCallingIdentity();
                try {
                    return ((Integer) superImpl.apply(Integer.valueOf(code), Integer.valueOf(shellUid), ActivityManagerService.SHELL_APP_PACKAGE, Boolean.valueOf(raw))).intValue();
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
            return ((Integer) superImpl.apply(Integer.valueOf(code), Integer.valueOf(uid), packageName, Boolean.valueOf(raw))).intValue();
        }

        public int checkAudioOperation(int code, int usage, int uid, String packageName, QuadFunction<Integer, Integer, Integer, String, Integer> superImpl) {
            if (uid == this.mTargetUid && isTargetOp(code)) {
                int shellUid = UserHandle.getUid(UserHandle.getUserId(uid), ActivityManagerService.NATIVE_DUMP_TIMEOUT_MS);
                long identity = Binder.clearCallingIdentity();
                try {
                    return ((Integer) superImpl.apply(Integer.valueOf(code), Integer.valueOf(usage), Integer.valueOf(shellUid), ActivityManagerService.SHELL_APP_PACKAGE)).intValue();
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
            return ((Integer) superImpl.apply(Integer.valueOf(code), Integer.valueOf(usage), Integer.valueOf(uid), packageName)).intValue();
        }

        public int noteOperation(int code, int uid, String packageName, String featureId, boolean shouldCollectAsyncNotedOp, String message, boolean shouldCollectMessage, HeptFunction<Integer, Integer, String, String, Boolean, String, Boolean, Integer> superImpl) {
            if (uid == this.mTargetUid && isTargetOp(code)) {
                int shellUid = UserHandle.getUid(UserHandle.getUserId(uid), ActivityManagerService.NATIVE_DUMP_TIMEOUT_MS);
                long identity = Binder.clearCallingIdentity();
                try {
                    return ((Integer) superImpl.apply(Integer.valueOf(code), Integer.valueOf(shellUid), ActivityManagerService.SHELL_APP_PACKAGE, featureId, Boolean.valueOf(shouldCollectAsyncNotedOp), message, Boolean.valueOf(shouldCollectMessage))).intValue();
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
            return ((Integer) superImpl.apply(Integer.valueOf(code), Integer.valueOf(uid), packageName, featureId, Boolean.valueOf(shouldCollectAsyncNotedOp), message, Boolean.valueOf(shouldCollectMessage))).intValue();
        }

        public int checkPermission(String permName, String pkgName, int userId, TriFunction<String, String, Integer, Integer> superImpl) {
            if (this.mTargetPackageName.equals(pkgName) && isTargetPermission(permName)) {
                long identity = Binder.clearCallingIdentity();
                try {
                    return ((Integer) superImpl.apply(permName, ActivityManagerService.SHELL_APP_PACKAGE, Integer.valueOf(userId))).intValue();
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
            return ((Integer) superImpl.apply(permName, pkgName, Integer.valueOf(userId))).intValue();
        }

        public int checkUidPermission(String permName, int uid, BiFunction<String, Integer, Integer> superImpl) {
            if (uid == this.mTargetUid && isTargetPermission(permName)) {
                long identity = Binder.clearCallingIdentity();
                try {
                    return superImpl.apply(permName, Integer.valueOf(ActivityManagerService.NATIVE_DUMP_TIMEOUT_MS)).intValue();
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
            return superImpl.apply(permName, Integer.valueOf(uid)).intValue();
        }

        private boolean isTargetOp(int code) {
            String permission;
            if (this.mPermissions == null || (permission = AppOpsManager.opToPermission(code)) == null) {
                return true;
            }
            return isTargetPermission(permission);
        }

        private boolean isTargetPermission(String permission) {
            String[] strArr = this.mPermissions;
            return strArr == null || ArrayUtils.contains(strArr, permission);
        }
    }

    void maybeTriggerWatchdog() {
    }

    private boolean isOnOffloadQueue(int flags) {
        return this.mEnableOffloadQueue && (Integer.MIN_VALUE & flags) != 0;
    }

    public ParcelFileDescriptor getLifeMonitor() {
        ParcelFileDescriptor parcelFileDescriptorDup;
        if (!isCallerShell()) {
            throw new SecurityException("Only shell can call it");
        }
        synchronized (this) {
            try {
                boostPriorityForLockedSection();
                if (this.mLifeMonitorFds == null) {
                    this.mLifeMonitorFds = ParcelFileDescriptor.createPipe();
                }
                parcelFileDescriptorDup = this.mLifeMonitorFds[0].dup();
            } catch (IOException e) {
                Slog.w("ActivityManager", "Unable to create pipe", e);
                return null;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return parcelFileDescriptorDup;
    }

    public void setActivityLocusContext(ComponentName activity, LocusId locusId, IBinder appToken) {
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getCallingUserId();
        if (getPackageManagerInternalLocked().getPackageUid(activity.getPackageName(), 0, userId) != callingUid) {
            throw new SecurityException("Calling uid " + callingUid + " cannot set locusIdfor package " + activity.getPackageName());
        }
        UsageStatsManagerInternal usageStatsManagerInternal = this.mUsageStatsService;
        if (usageStatsManagerInternal != null) {
            usageStatsManagerInternal.reportLocusUpdate(activity, userId, locusId, appToken);
        }
    }

    public boolean isAppFreezerSupported() {
        long token = Binder.clearCallingIdentity();
        try {
            CachedAppOptimizer cachedAppOptimizer = this.mOomAdjuster.mCachedAppOptimizer;
            return CachedAppOptimizer.isFreezerSupported();
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public boolean enableAppFreezer(boolean enable) {
        int callerUid = Binder.getCallingUid();
        if (callerUid == 1000 || Build.IS_DEBUGGABLE) {
            return this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(enable);
        }
        throw new SecurityException("Caller uid " + callerUid + " cannot set freezer state ");
    }

    public int getProcessRecordFrozenState(int pid, String callingPackage) {
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord pr = this.mPidsSelfLocked.get(pid);
            if (pr == null) {
                Slog.w("ActivityManager", "can not get ProcessRecord frozen state for pid " + pid + ", by callingPackage " + callingPackage);
                return -1;
            }
            Slog.w("ActivityManager", "get ProcessRecord frozen state " + pr.frozen + ", for pid " + pid + ", by callingPackage " + callingPackage);
            return pr.frozen ? 0 : 1;
        }
    }
}
