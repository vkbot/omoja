package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.ActivityThread;
import android.app.AlertDialog;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.IActivityController;
import android.app.IActivityTaskManager;
import android.app.IApplicationThread;
import android.app.IAssistDataReceiver;
import android.app.INotificationManager;
import android.app.IRequestFinishCallback;
import android.app.ITaskStackListener;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.ProfilerInfo;
import android.app.RemoteAction;
import android.app.WaitResult;
import android.app.WindowConfiguration;
import android.app.admin.DevicePolicyCache;
import android.app.assist.AssistContent;
import android.app.assist.AssistStructure;
import android.app.servertransaction.ClientTransaction;
import android.app.servertransaction.EnterPipRequestedItem;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ResolveInfo;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.FactoryTest;
import android.os.Handler;
import android.os.IBinder;
import android.os.IUserManager;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UpdateLock;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.os.storage.IStorageManager;
import android.provider.Settings;
import android.service.dreams.DreamActivity;
import android.service.voice.IVoiceInteractionSession;
import android.service.voice.VoiceInteractionManagerInternal;
import android.sysprop.DisplayProperties;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.view.IRecentsAnimationRunner;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationDefinition;
import android.window.IWindowOrganizerController;
import android.window.WindowContainerTransaction;
import com.android.internal.app.AssistUtils;
import com.android.internal.app.IVoiceInteractionSessionShowCallback;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.app.ProcessMap;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.TransferPipe;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.policy.KeyguardDismissCallback;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.function.HeptConsumer;
import com.android.internal.util.function.HexConsumer;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.AttributeCache;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.UiThread;
import com.android.server.Watchdog;
import com.android.server.am.ActivityManagerService;
import com.android.server.am.AppTimeTracker;
import com.android.server.am.BaseErrorDialog;
import com.android.server.am.PendingIntentController;
import com.android.server.am.PendingIntentRecord;
import com.android.server.am.UserState;
import com.android.server.firewall.IntentFirewall;
import com.android.server.inputmethod.InputMethodSystemProperty;
import com.android.server.mega.MegaServicePolicyManager;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.UserManagerService;
import com.android.server.policy.PermissionPolicyInternal;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.uri.NeededUriGrants;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.vr.VrManagerInternal;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityTaskManagerService extends IActivityTaskManager.Stub {
    static final long ACTIVITY_BG_START_GRACE_PERIOD_MS = 10000;
    static final boolean ANIMATE = true;
    private static final long APP_SWITCH_DELAY_TIME = 5000;
    public static final String DUMP_ACTIVITIES_CMD = "activities";
    public static final String DUMP_ACTIVITIES_SHORT_CMD = "a";
    public static final String DUMP_CONTAINERS_CMD = "containers";
    public static final String DUMP_LASTANR_CMD = "lastanr";
    public static final String DUMP_LASTANR_TRACES_CMD = "lastanr-traces";
    public static final String DUMP_RECENTS_CMD = "recents";
    public static final String DUMP_RECENTS_SHORT_CMD = "r";
    public static final String DUMP_STARTER_CMD = "starter";
    static final int INSTRUMENTATION_KEY_DISPATCHING_TIMEOUT_MS = 60000;
    public static final int KEY_DISPATCHING_TIMEOUT_MS = 5000;
    static final int LAYOUT_REASON_CONFIG_CHANGED = 1;
    static final int LAYOUT_REASON_VISIBILITY_CHANGED = 2;
    private static final int PENDING_ASSIST_EXTRAS_LONG_TIMEOUT = 2000;
    private static final int PENDING_ASSIST_EXTRAS_TIMEOUT = 500;
    private static final int PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT = 2000;
    public static final int RELAUNCH_REASON_FREE_RESIZE = 2;
    public static final int RELAUNCH_REASON_NONE = 0;
    public static final int RELAUNCH_REASON_WINDOWING_MODE_RESIZE = 1;
    private static final long START_AS_CALLER_TOKEN_EXPIRED_TIMEOUT = 1802000;
    private static final long START_AS_CALLER_TOKEN_TIMEOUT = 600000;
    private static final long START_AS_CALLER_TOKEN_TIMEOUT_IMPL = 602000;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_CONFIGURATION = "ActivityTaskManager";
    private static final String TAG_FOCUS = "ActivityTaskManager";
    private static final String TAG_IMMERSIVE = "ActivityTaskManager";
    private static final String TAG_LOCKTASK = "ActivityTaskManager";
    static final String TAG_STACK = "ActivityTaskManager";
    static final String TAG_SWITCH = "ActivityTaskManager";
    private static final String TAG_VISIBILITY = "ActivityTaskManager";
    final int FLAG_PASS_CHECK_INTERCEPT_MOVE_TASK_TO_FRONT;
    final int GL_ES_VERSION;
    private final MirrorActiveUids mActiveUids;
    ComponentName mActiveVoiceInteractionServiceComponent;
    private ActivityStartController mActivityStartController;
    private final ArrayList<String> mActivityWhiteList;
    final SparseArray<ArrayMap<String, Integer>> mAllowAppSwitchUids;
    ActivityManagerInternal mAmInternal;
    private AppOpsManager mAppOpsManager;
    private long mAppSwitchesAllowedTime;
    AppWarnings mAppWarnings;
    private AssistUtils mAssistUtils;
    List<String> mCallingPassedPackages;
    private final Map<Integer, Set<Integer>> mCompanionAppUidsMap;
    CompatModePackages mCompatModePackages;
    private int mConfigurationSeq;
    Context mContext;
    IActivityController mController;
    boolean mControllerIsAMonkey;
    AppTimeTracker mCurAppTimeTracker;
    private int mDeviceOwnerUid;
    private boolean mDidAppSwitch;
    private boolean mDreaming;
    final ArrayList<IBinder> mExpiredStartAsCallerTokens;
    final int mFactoryTest;
    private FontScaleSettingObserver mFontScaleSettingObserver;
    boolean mForceResizableActivities;
    final WindowManagerGlobalLock mGlobalLock;
    final Object mGlobalLockWithoutBoost;
    H mH;
    boolean mHasHeavyWeightFeature;
    boolean mHasLeanbackFeature;
    WindowProcessController mHeavyWeightProcess;
    WindowProcessController mHomeProcess;
    IntentFirewall mIntentFirewall;
    final ActivityTaskManagerInternal mInternal;
    KeyguardController mKeyguardController;
    private boolean mKeyguardShown;
    String mLastANRState;
    ActivityRecord mLastResumedActivity;
    private long mLastStopAppSwitchesTime;
    private int mLayoutReasons;
    private final ClientLifecycleManager mLifecycleManager;
    private boolean mLoadRecentTasksForUser;
    private LockTaskController mLockTaskController;
    List<String> mMayInterceptedPackages;
    private final ArrayList<PendingAssistExtras> mPendingAssistExtras;
    PendingIntentController mPendingIntentController;
    private final SparseArray<String> mPendingTempAllowlist;
    private PermissionPolicyInternal mPermissionPolicyInternal;
    private PackageManagerInternal mPmInternal;
    PowerManagerInternal mPowerManagerInternal;
    WindowProcessController mPreviousProcess;
    long mPreviousProcessVisibleTime;
    final WindowProcessControllerMap mProcessMap;
    final ProcessMap<WindowProcessController> mProcessNames;
    String mProfileApp;
    WindowProcessController mProfileProc;
    ProfilerInfo mProfilerInfo;
    private RecentTasks mRecentTasks;
    RootWindowContainer mRootWindowContainer;
    IVoiceInteractionSession mRunningVoice;
    final List<ActivityTaskManagerInternal.ScreenObserver> mScreenObservers;
    private boolean mShowDialogs;
    boolean mShuttingDown;
    boolean mSizeCompatFreeform;
    private boolean mSleeping;
    ActivityStackSupervisor mStackSupervisor;
    final HashMap<IBinder, IBinder> mStartActivitySources;
    private StatusBarManagerInternal mStatusBarManagerInternal;
    final StringBuilder mStringBuilder;
    private String[] mSupportedSystemLocales;
    boolean mSupportsFreeformWindowManagement;
    boolean mSupportsMultiDisplay;
    boolean mSupportsMultiWindow;
    boolean mSupportsPictureInPicture;
    boolean mSupportsSplitScreenMultiWindow;
    boolean mSuppressResizeConfigChanges;
    private ComponentName mSysUiServiceComponent;
    final ActivityThread mSystemThread;
    private TaskChangeNotificationController mTaskChangeNotificationController;
    TaskOrganizerController mTaskOrganizerController;
    private Configuration mTempConfig;
    private int mThumbnailHeight;
    private int mThumbnailWidth;
    final UpdateConfigurationResult mTmpUpdateConfigurationResult;
    String mTopAction;
    ComponentName mTopComponent;
    String mTopData;
    int mTopProcessState;
    private ActivityRecord mTracedResumedActivity;
    UriGrantsManagerInternal mUgmInternal;
    final Context mUiContext;
    UiHandler mUiHandler;
    private final UpdateLock mUpdateLock;
    private final Runnable mUpdateOomAdjRunnable;
    private UsageStatsManagerInternal mUsageStatsInternal;
    private UserManagerService mUserManager;
    private int mViSessionId;
    PowerManager.WakeLock mVoiceWakeLock;
    int mVr2dDisplayId;
    VrController mVrController;
    WindowManagerService mWindowManager;
    WindowOrganizerController mWindowOrganizerController;

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @interface HotPath {
        public static final int LRU_UPDATE = 2;
        public static final int NONE = 0;
        public static final int OOM_ADJUSTMENT = 1;
        public static final int PROCESS_CHANGE = 3;

        int caller() default 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    @interface LayoutReason {
    }

    static final class UpdateConfigurationResult {
        boolean activityRelaunched;
        int changes;

        UpdateConfigurationResult() {
        }

        void reset() {
            this.changes = 0;
            this.activityRelaunched = false;
        }
    }

    private final class FontScaleSettingObserver extends ContentObserver {
        private final Uri mFontScaleUri;
        private final Uri mHideErrorDialogsUri;

        public FontScaleSettingObserver() {
            super(ActivityTaskManagerService.this.mH);
            this.mFontScaleUri = Settings.System.getUriFor("font_scale");
            this.mHideErrorDialogsUri = Settings.Global.getUriFor("hide_error_dialogs");
            ContentResolver resolver = ActivityTaskManagerService.this.mContext.getContentResolver();
            resolver.registerContentObserver(this.mFontScaleUri, false, this, -1);
            resolver.registerContentObserver(this.mHideErrorDialogsUri, false, this, -1);
        }

        public void onChange(boolean selfChange, Collection<Uri> uris, int flags, int userId) {
            for (Uri uri : uris) {
                if (this.mFontScaleUri.equals(uri)) {
                    ActivityTaskManagerService.this.updateFontScaleIfNeeded(userId);
                } else if (this.mHideErrorDialogsUri.equals(uri)) {
                    synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            ActivityTaskManagerService.this.updateShouldShowDialogsLocked(ActivityTaskManagerService.this.getGlobalConfiguration());
                        } catch (Throwable th) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                } else {
                    continue;
                }
            }
        }
    }

    public ActivityTaskManagerService(Context context) {
        WindowManagerGlobalLock windowManagerGlobalLock = new WindowManagerGlobalLock();
        this.mGlobalLock = windowManagerGlobalLock;
        this.mGlobalLockWithoutBoost = windowManagerGlobalLock;
        this.mActiveUids = new MirrorActiveUids();
        this.mPendingTempAllowlist = new SparseArray<>();
        this.mProcessNames = new ProcessMap<>();
        this.mProcessMap = new WindowProcessControllerMap();
        this.mHeavyWeightProcess = null;
        this.mKeyguardShown = false;
        this.mViSessionId = 1000;
        this.mStartActivitySources = new HashMap<>();
        this.mExpiredStartAsCallerTokens = new ArrayList<>();
        this.mPendingAssistExtras = new ArrayList<>();
        this.mActivityWhiteList = new ArrayList<>();
        this.mCompanionAppUidsMap = new ArrayMap();
        this.mTmpUpdateConfigurationResult = new UpdateConfigurationResult();
        this.mSupportedSystemLocales = null;
        this.mTempConfig = new Configuration();
        this.mStringBuilder = new StringBuilder(256);
        this.mController = null;
        this.mControllerIsAMonkey = false;
        this.mTopAction = "android.intent.action.MAIN";
        this.mProfileApp = null;
        this.mProfileProc = null;
        this.mProfilerInfo = null;
        this.mUpdateLock = new UpdateLock("immersive");
        this.mAllowAppSwitchUids = new SparseArray<>();
        this.mScreenObservers = new ArrayList();
        this.mVr2dDisplayId = -1;
        this.mSleeping = false;
        this.mDreaming = false;
        this.mTopProcessState = 2;
        this.mShowDialogs = true;
        this.mShuttingDown = false;
        this.mDeviceOwnerUid = -1;
        this.mLoadRecentTasksForUser = false;
        this.mCallingPassedPackages = new LinkedList();
        this.mMayInterceptedPackages = new LinkedList();
        this.mUpdateOomAdjRunnable = new Runnable() { // from class: com.android.server.wm.ActivityTaskManagerService.1
            @Override // java.lang.Runnable
            public void run() {
                ActivityTaskManagerService.this.mAmInternal.updateOomAdj();
            }
        };
        this.FLAG_PASS_CHECK_INTERCEPT_MOVE_TASK_TO_FRONT = 32;
        this.mContext = context;
        this.mFactoryTest = FactoryTest.getMode();
        ActivityThread activityThreadCurrentActivityThread = ActivityThread.currentActivityThread();
        this.mSystemThread = activityThreadCurrentActivityThread;
        this.mUiContext = activityThreadCurrentActivityThread.getSystemUiContext();
        this.mLifecycleManager = new ClientLifecycleManager();
        this.mInternal = new LocalService();
        this.GL_ES_VERSION = SystemProperties.getInt("ro.opengles.version", 0);
        WindowOrganizerController windowOrganizerController = new WindowOrganizerController(this);
        this.mWindowOrganizerController = windowOrganizerController;
        this.mTaskOrganizerController = windowOrganizerController.mTaskOrganizerController;
        String[] activityWhiteList = this.mContext.getResources().getStringArray(R.array.carrier_properties);
        this.mActivityWhiteList.addAll(Arrays.asList(activityWhiteList));
        this.mLoadRecentTasksForUser = context.getResources().getBoolean(R.bool.config_cecQuerySadLpcmDisabled_allowed);
        Collections.addAll(this.mCallingPassedPackages, context.getResources().getStringArray(R.array.config_nonPreemptibleInputMethods));
        Collections.addAll(this.mMayInterceptedPackages, context.getResources().getStringArray(R.array.config_notificationDefaultUnsupportedAdjustments));
    }

    public void onSystemReady() {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                PackageManager pm = this.mContext.getPackageManager();
                this.mHasHeavyWeightFeature = pm.hasSystemFeature("android.software.cant_save_state");
                this.mHasLeanbackFeature = pm.hasSystemFeature("android.software.leanback");
                this.mAssistUtils = new AssistUtils(this.mContext);
                this.mVrController.onSystemReady();
                this.mRecentTasks.onSystemReadyLocked();
                this.mStackSupervisor.onSystemReady();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void onInitPowerManagement() {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mStackSupervisor.initPowerManagement();
                PowerManager pm = (PowerManager) this.mContext.getSystemService("power");
                this.mPowerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
                PowerManager.WakeLock wakeLockNewWakeLock = pm.newWakeLock(1, "*voice*");
                this.mVoiceWakeLock = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void installSystemProviders() {
        this.mFontScaleSettingObserver = new FontScaleSettingObserver();
    }

    public void retrieveSettings(ContentResolver resolver) {
        boolean freeformWindowManagement = this.mContext.getPackageManager().hasSystemFeature("android.software.freeform_window_management") || Settings.Global.getInt(resolver, "enable_freeform_support", 0) != 0;
        boolean supportsMultiWindow = ActivityTaskManager.supportsMultiWindow(this.mContext);
        boolean supportsPictureInPicture = supportsMultiWindow && this.mContext.getPackageManager().hasSystemFeature("android.software.picture_in_picture");
        boolean supportsSplitScreenMultiWindow = ActivityTaskManager.supportsSplitScreenMultiWindow(this.mContext);
        boolean supportsMultiDisplay = this.mContext.getPackageManager().hasSystemFeature("android.software.activities_on_secondary_displays");
        boolean forceRtl = Settings.Global.getInt(resolver, "debug.force_rtl", 0) != 0;
        boolean forceResizable = Settings.Global.getInt(resolver, "force_resizable_activities", 0) != 0;
        boolean sizeCompatFreeform = Settings.Global.getInt(resolver, "enable_sizecompat_freeform", 0) != 0;
        DisplayProperties.debug_force_rtl(Boolean.valueOf(forceRtl));
        Configuration configuration = new Configuration();
        Settings.System.getConfiguration(resolver, configuration);
        if (forceRtl) {
            configuration.setLayoutDirection(configuration.locale);
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mForceResizableActivities = forceResizable;
                this.mSizeCompatFreeform = sizeCompatFreeform;
                boolean multiWindowFormEnabled = freeformWindowManagement || supportsSplitScreenMultiWindow || supportsPictureInPicture || supportsMultiDisplay;
                if ((supportsMultiWindow || forceResizable) && multiWindowFormEnabled) {
                    this.mSupportsMultiWindow = true;
                    this.mSupportsFreeformWindowManagement = freeformWindowManagement;
                    this.mSupportsSplitScreenMultiWindow = supportsSplitScreenMultiWindow;
                    this.mSupportsPictureInPicture = supportsPictureInPicture;
                    this.mSupportsMultiDisplay = supportsMultiDisplay;
                } else {
                    this.mSupportsMultiWindow = false;
                    this.mSupportsFreeformWindowManagement = false;
                    this.mSupportsSplitScreenMultiWindow = false;
                    this.mSupportsPictureInPicture = false;
                    this.mSupportsMultiDisplay = false;
                }
                this.mWindowManager.mRoot.onSettingsRetrieved();
                updateConfigurationLocked(configuration, null, true);
                getGlobalConfiguration();
                Resources res = this.mContext.getResources();
                this.mThumbnailWidth = res.getDimensionPixelSize(R.dimen.thumbnail_width);
                this.mThumbnailHeight = res.getDimensionPixelSize(R.dimen.thumbnail_height);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public WindowManagerGlobalLock getGlobalLock() {
        return this.mGlobalLock;
    }

    public ActivityTaskManagerInternal getAtmInternal() {
        return this.mInternal;
    }

    public void initialize(IntentFirewall intentFirewall, PendingIntentController intentController, Looper looper) {
        this.mH = new H(looper);
        this.mUiHandler = new UiHandler();
        this.mIntentFirewall = intentFirewall;
        File systemDir = SystemServiceManager.ensureSystemDir();
        this.mAppWarnings = createAppWarnings(this.mUiContext, this.mH, this.mUiHandler, systemDir);
        this.mCompatModePackages = new CompatModePackages(this, systemDir, this.mH);
        this.mPendingIntentController = intentController;
        ActivityStackSupervisor activityStackSupervisorCreateStackSupervisor = createStackSupervisor();
        this.mStackSupervisor = activityStackSupervisorCreateStackSupervisor;
        this.mTaskChangeNotificationController = new TaskChangeNotificationController(this.mGlobalLock, activityStackSupervisorCreateStackSupervisor, this.mH);
        this.mLockTaskController = new LockTaskController(this.mContext, this.mStackSupervisor, this.mH);
        this.mActivityStartController = new ActivityStartController(this);
        setRecentTasks(new RecentTasks(this, this.mStackSupervisor));
        this.mVrController = new VrController(this.mGlobalLock);
        this.mKeyguardController = this.mStackSupervisor.getKeyguardController();
    }

    public void onActivityManagerInternalAdded() {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
                this.mUgmInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    int increaseConfigurationSeqLocked() {
        int i = this.mConfigurationSeq + 1;
        this.mConfigurationSeq = i;
        int iMax = Math.max(i, 1);
        this.mConfigurationSeq = iMax;
        return iMax;
    }

    protected ActivityStackSupervisor createStackSupervisor() {
        ActivityStackSupervisor supervisor = new ActivityStackSupervisor(this, this.mH.getLooper());
        supervisor.initialize();
        return supervisor;
    }

    protected AppWarnings createAppWarnings(Context uiContext, Handler handler, Handler uiHandler, File systemDir) {
        return new AppWarnings(this, uiContext, handler, uiHandler, systemDir);
    }

    public void setWindowManager(WindowManagerService wm) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mWindowManager = wm;
                this.mRootWindowContainer = wm.mRoot;
                this.mTempConfig.setToDefaults();
                this.mTempConfig.setLocales(LocaleList.getDefault());
                this.mTempConfig.seq = 1;
                this.mConfigurationSeq = 1;
                this.mRootWindowContainer.onConfigurationChanged(this.mTempConfig);
                this.mLockTaskController.setWindowManager(wm);
                this.mStackSupervisor.setWindowManager(wm);
                this.mRootWindowContainer.setWindowManager(wm);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setUsageStatsManager(UsageStatsManagerInternal usageStatsManager) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mUsageStatsInternal = usageStatsManager;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    UserManagerService getUserManager() {
        if (this.mUserManager == null) {
            IBinder b = ServiceManager.getService("user");
            this.mUserManager = IUserManager.Stub.asInterface(b);
        }
        return this.mUserManager;
    }

    AppOpsManager getAppOpsManager() {
        if (this.mAppOpsManager == null) {
            this.mAppOpsManager = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        }
        return this.mAppOpsManager;
    }

    boolean hasUserRestriction(String restriction, int userId) {
        return getUserManager().hasUserRestriction(restriction, userId);
    }

    boolean hasSystemAlertWindowPermission(int callingUid, int callingPid, String callingPackage) {
        int mode = getAppOpsManager().noteOpNoThrow(24, callingUid, callingPackage, (String) null, "");
        if (mode == 3) {
            return checkPermission("android.permission.SYSTEM_ALERT_WINDOW", callingPid, callingUid) == 0;
        }
        return mode == 0;
    }

    protected void setRecentTasks(RecentTasks recentTasks) {
        this.mRecentTasks = recentTasks;
        this.mStackSupervisor.setRecentTasks(recentTasks);
    }

    RecentTasks getRecentTasks() {
        return this.mRecentTasks;
    }

    ClientLifecycleManager getLifecycleManager() {
        return this.mLifecycleManager;
    }

    ActivityStartController getActivityStartController() {
        return this.mActivityStartController;
    }

    TaskChangeNotificationController getTaskChangeNotificationController() {
        return this.mTaskChangeNotificationController;
    }

    LockTaskController getLockTaskController() {
        return this.mLockTaskController;
    }

    Configuration getGlobalConfigurationForCallingPid() {
        int pid = Binder.getCallingPid();
        return getGlobalConfigurationForPid(pid);
    }

    Configuration getGlobalConfigurationForPid(int pid) {
        Configuration configuration;
        if (pid == ActivityManagerService.MY_PID || pid < 0) {
            return getGlobalConfiguration();
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                WindowProcessController app = this.mProcessMap.getProcess(pid);
                configuration = app != null ? app.getConfiguration() : getGlobalConfiguration();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return configuration;
    }

    public ConfigurationInfo getDeviceConfigurationInfo() {
        ConfigurationInfo config = new ConfigurationInfo();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                Configuration globalConfig = getGlobalConfigurationForCallingPid();
                config.reqTouchScreen = globalConfig.touchscreen;
                config.reqKeyboardType = globalConfig.keyboard;
                config.reqNavigation = globalConfig.navigation;
                if (globalConfig.navigation == 2 || globalConfig.navigation == 3) {
                    config.reqInputFeatures |= 2;
                }
                if (globalConfig.keyboard != 0 && globalConfig.keyboard != 1) {
                    config.reqInputFeatures |= 1;
                }
                config.reqGlEsVersion = this.GL_ES_VERSION;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return config;
    }

    protected void start() {
        LocalServices.addService(ActivityTaskManagerInternal.class, this.mInternal);
    }

    public static final class Lifecycle extends SystemService {
        private final ActivityTaskManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = MegaServicePolicyManager.makeNewActivityManagerService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("activity_task", this.mService);
            this.mService.start();
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userId) {
            synchronized (this.mService.getGlobalLock()) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mService.mStackSupervisor.onUserUnlocked(userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onCleanupUser(int userId) {
            synchronized (this.mService.getGlobalLock()) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mService.mStackSupervisor.mLaunchParamsPersister.onCleanupUser(userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public ActivityTaskManagerService getService() {
            return this.mService;
        }
    }

    public final int startActivity(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions) {
        return startActivityAsUser(caller, callingPackage, callingFeatureId, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions, UserHandle.getCallingUserId());
    }

    public final int startActivities(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent[] intents, String[] resolvedTypes, IBinder resultTo, Bundle bOptions, int userId) {
        assertPackageMatchesCallingUid(callingPackage);
        enforceNotIsolatedCaller("startActivities");
        return getActivityStartController().startActivities(caller, -1, 0, -1, callingPackage, callingFeatureId, intents, resolvedTypes, resultTo, SafeActivityOptions.fromBundle(bOptions), handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, "startActivities"), "startActivities", null, false);
    }

    public int startActivityAsUser(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId) {
        return startActivityAsUser(caller, callingPackage, callingFeatureId, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, profilerInfo, bOptions, userId, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int startActivityAsUser(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId, boolean validateIncomingUser) {
        assertPackageMatchesCallingUid(callingPackage);
        enforceNotIsolatedCaller("startActivityAsUser");
        return getActivityStartController().obtainStarter(intent, "startActivityAsUser").setCaller(caller).setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setResolvedType(resolvedType).setResultTo(resultTo).setResultWho(resultWho).setRequestCode(requestCode).setStartFlags(startFlags).setProfilerInfo(profilerInfo).setActivityOptions(bOptions).setUserId(getActivityStartController().checkTargetUser(userId, validateIncomingUser, Binder.getCallingPid(), Binder.getCallingUid(), "startActivityAsUser")).execute();
    }

    public int startActivityIntentSender(IApplicationThread caller, IIntentSender target, IBinder allowlistToken, Intent fillInIntent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int flagsMask, int flagsValues, Bundle bOptions) {
        enforceNotIsolatedCaller("startActivityIntentSender");
        if (fillInIntent != null && fillInIntent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        if (!(target instanceof PendingIntentRecord)) {
            throw new IllegalArgumentException("Bad PendingIntent object");
        }
        PendingIntentRecord pir = (PendingIntentRecord) target;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack stack = getTopDisplayFocusedStack();
                if (stack != null && stack.mResumedActivity != null && stack.mResumedActivity.info.applicationInfo.uid == Binder.getCallingUid()) {
                    this.mAppSwitchesAllowedTime = 0L;
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return pir.sendInner(0, fillInIntent, resolvedType, allowlistToken, null, null, resultTo, resultWho, requestCode, flagsMask, flagsValues, bOptions);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.android.server.wm.ActivityStarter] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r14v5 */
    public boolean startNextMatchingActivity(IBinder callingActivity, Intent intent, Bundle bOptions) throws Throwable {
        String str;
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        SafeActivityOptions options = SafeActivityOptions.fromBundle(bOptions);
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(callingActivity);
                if (r == null) {
                    SafeActivityOptions.abort(options);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                }
                if (r.attachedToProcess()) {
                    Intent intent2 = new Intent(intent);
                    try {
                        intent2.setDataAndType(r.intent.getData(), r.intent.getType());
                        intent2.setComponent(null);
                        int i = 1;
                        boolean debug = (intent2.getFlags() & 8) != 0;
                        ActivityInfo aInfo = null;
                        try {
                            List<ResolveInfo> resolves = AppGlobals.getPackageManager().queryIntentActivities(intent2, r.resolvedType, 66560, UserHandle.getCallingUserId()).getList();
                            int N = resolves != null ? resolves.size() : 0;
                            int i2 = 0;
                            while (i2 < N) {
                                ResolveInfo rInfo = resolves.get(i2);
                                if (!rInfo.activityInfo.packageName.equals(r.packageName) || !rInfo.activityInfo.name.equals(r.info.name)) {
                                    i2++;
                                    i = 1;
                                } else {
                                    int i3 = i2 + i;
                                    if (i3 < N) {
                                        aInfo = resolves.get(i3).activityInfo;
                                    }
                                    if (!debug) {
                                        break;
                                    }
                                    Slog.v("ActivityTaskManager", "Next matching activity: found current " + r.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + r.info.name);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Next matching activity: next is ");
                                    if (aInfo == null) {
                                        str = "null";
                                    } else {
                                        str = aInfo.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + aInfo.name;
                                    }
                                    sb.append(str);
                                    Slog.v("ActivityTaskManager", sb.toString());
                                    break;
                                }
                            }
                        } catch (RemoteException e) {
                        }
                        if (aInfo == null) {
                            SafeActivityOptions.abort(options);
                            if (debug) {
                                Slog.d("ActivityTaskManager", "Next matching activity: nothing found");
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return false;
                        }
                        intent2.setComponent(new ComponentName(aInfo.applicationInfo.packageName, aInfo.name));
                        intent2.setFlags(intent2.getFlags() & (-503316481));
                        boolean wasFinishing = r.finishing;
                        r.finishing = true;
                        ActivityRecord resultTo = r.resultTo;
                        String resultWho = r.resultWho;
                        int requestCode = r.requestCode;
                        r.resultTo = null;
                        if (resultTo != null) {
                            resultTo.removeResultsLocked(r, resultWho, requestCode);
                        }
                        long origId = Binder.clearCallingIdentity();
                        if (options == null) {
                            try {
                                options = new SafeActivityOptions(ActivityOptions.makeBasic());
                            } catch (Throwable th) {
                                Binder.restoreCallingIdentity(origId);
                                throw th;
                            }
                        }
                        options.getOptions(r).setAvoidMoveToFront();
                        int res = getActivityStartController().obtainStarter(intent2, "startNextMatchingActivity").setCaller(r.app.getThread()).setResolvedType(r.resolvedType).setActivityInfo(aInfo).setResultTo(resultTo != null ? resultTo.appToken : 0).setResultWho(resultWho).setRequestCode(requestCode).setCallingPid(-1).setCallingUid(r.launchedFromUid).setCallingPackage(r.launchedFromPackage).setCallingFeatureId(r.launchedFromFeatureId).setRealCallingPid(-1).setRealCallingUid(r.launchedFromUid).setActivityOptions(options).execute();
                        r.finishing = wasFinishing;
                        boolean z = res == 0;
                        Binder.restoreCallingIdentity(origId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return z;
                    } catch (Throwable th2) {
                        th = th2;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                SafeActivityOptions.abort(options);
                WindowManagerService.resetPriorityAfterLockedSection();
                return false;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private void enforceCallerIsDream(String callerPackageName) {
        long origId = Binder.clearCallingIdentity();
        try {
            if (!ActivityRecord.canLaunchDreamActivity(callerPackageName)) {
                throw new SecurityException("The dream activity can be started only when the device is dreaming and only by the active dream package.");
            }
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(origId);
            throw th;
        }
    }

    public boolean startDreamActivity(Intent intent) {
        assertPackageMatchesCallingUid(intent.getPackage());
        enforceCallerIsDream(intent.getPackage());
        ActivityInfo a = new ActivityInfo();
        a.theme = R.style.Theme.DeviceDefault.Light.Autofill.Save;
        a.exported = true;
        a.name = DreamActivity.class.getName();
        a.enabled = true;
        a.launchMode = 3;
        a.persistableMode = 1;
        a.screenOrientation = -1;
        a.colorMode = 0;
        a.flags |= 32;
        ActivityOptions options = ActivityOptions.makeBasic();
        options.setLaunchActivityType(5);
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                WindowProcessController process = this.mProcessMap.getProcess(Binder.getCallingPid());
                a.packageName = process.mInfo.packageName;
                a.applicationInfo = process.mInfo;
                a.processName = process.mInfo.processName;
                a.uiOptions = process.mInfo.uiOptions;
                a.taskAffinity = "android:" + a.packageName + "/dream";
                int callingUid = Binder.getCallingUid();
                int callingPid = Binder.getCallingPid();
                long origId = Binder.clearCallingIdentity();
                try {
                    getActivityStartController().obtainStarter(intent, "dream").setCallingUid(callingUid).setCallingPid(callingPid).setActivityInfo(a).setActivityOptions(options.toBundle()).setRealCallingUid(Binder.getCallingUid()).setAllowBackgroundActivityStart(true).execute();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return true;
    }

    public final WaitResult startActivityAndWait(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId) {
        assertPackageMatchesCallingUid(callingPackage);
        WaitResult res = new WaitResult();
        enforceNotIsolatedCaller("startActivityAndWait");
        getActivityStartController().obtainStarter(intent, "startActivityAndWait").setCaller(caller).setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setResolvedType(resolvedType).setResultTo(resultTo).setResultWho(resultWho).setRequestCode(requestCode).setStartFlags(startFlags).setActivityOptions(bOptions).setUserId(handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, "startActivityAndWait")).setProfilerInfo(profilerInfo).setWaitResult(res).execute();
        return res;
    }

    public final int startActivityWithConfig(IApplicationThread caller, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, Configuration config, Bundle bOptions, int userId) {
        assertPackageMatchesCallingUid(callingPackage);
        enforceNotIsolatedCaller("startActivityWithConfig");
        return getActivityStartController().obtainStarter(intent, "startActivityWithConfig").setCaller(caller).setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setResolvedType(resolvedType).setResultTo(resultTo).setResultWho(resultWho).setRequestCode(requestCode).setStartFlags(startFlags).setGlobalConfiguration(config).setActivityOptions(bOptions).setUserId(handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, "startActivityWithConfig")).execute();
    }

    public IBinder requestStartActivityPermissionToken(IBinder delegatorToken) {
        int callingUid = Binder.getCallingUid();
        if (UserHandle.getAppId(callingUid) != 1000) {
            throw new SecurityException("Only the system process can request a permission token, received request from uid: " + callingUid);
        }
        IBinder permissionToken = new Binder();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mStartActivitySources.put(permissionToken, delegatorToken);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        Message expireMsg = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityTaskManagerService) obj).expireStartAsCallerTokenMsg((IBinder) obj2);
            }
        }, this, permissionToken);
        this.mUiHandler.sendMessageDelayed(expireMsg, START_AS_CALLER_TOKEN_TIMEOUT_IMPL);
        Message forgetMsg = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityTaskManagerService) obj).forgetStartAsCallerTokenMsg((IBinder) obj2);
            }
        }, this, permissionToken);
        this.mUiHandler.sendMessageDelayed(forgetMsg, START_AS_CALLER_TOKEN_EXPIRED_TIMEOUT);
        return permissionToken;
    }

    public final int startActivityAsCaller(IApplicationThread caller, String callingPackage, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, IBinder permissionToken, boolean ignoreTargetSecurity, int userId) throws Throwable {
        IBinder sourceToken;
        synchronized (this.mGlobalLock) {
            try {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (resultTo == null) {
                        throw new SecurityException("Must be called from an activity");
                    }
                    if (permissionToken != null) {
                        this.mAmInternal.enforceCallingPermission("android.permission.START_ACTIVITY_AS_CALLER", "startActivityAsCaller");
                        sourceToken = this.mStartActivitySources.remove(permissionToken);
                        if (sourceToken == null) {
                            if (this.mExpiredStartAsCallerTokens.contains(permissionToken)) {
                                throw new SecurityException("Called with expired permission token: " + permissionToken);
                            }
                            throw new SecurityException("Called with invalid permission token: " + permissionToken);
                        }
                    } else {
                        sourceToken = resultTo;
                    }
                    ActivityRecord sourceRecord = this.mRootWindowContainer.isInAnyStack(sourceToken);
                    if (sourceRecord == null) {
                        throw new SecurityException("Called with bad activity token: " + sourceToken);
                    }
                    if (sourceRecord.app == null) {
                        throw new SecurityException("Called without a process attached to activity");
                    }
                    if (!sourceRecord.info.packageName.equals(PackageManagerService.PLATFORM_PACKAGE_NAME)) {
                        throw new SecurityException("Must be called from an activity that is declared in the android package");
                    }
                    if (UserHandle.getAppId(sourceRecord.app.mUid) != 1000 && sourceRecord.app.mUid != sourceRecord.launchedFromUid) {
                        throw new SecurityException("Calling activity in uid " + sourceRecord.app.mUid + " must be system uid or original calling uid " + sourceRecord.launchedFromUid);
                    }
                    if (ignoreTargetSecurity) {
                        if (intent.getComponent() == null) {
                            throw new SecurityException("Component must be specified with ignoreTargetSecurity");
                        }
                        if (intent.getSelector() != null) {
                            throw new SecurityException("Selector not allowed with ignoreTargetSecurity");
                        }
                    }
                    int targetUid = sourceRecord.launchedFromUid;
                    String targetPackage = sourceRecord.launchedFromPackage;
                    String targetFeatureId = sourceRecord.launchedFromFeatureId;
                    boolean isResolver = sourceRecord.isResolverOrChildActivity();
                    WindowManagerService.resetPriorityAfterLockedSection();
                    int userId2 = userId;
                    if (userId2 == -10000) {
                        userId2 = UserHandle.getUserId(sourceRecord.app.mUid);
                    }
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            return getActivityStartController().obtainStarter(intent, "startActivityAsCaller").setCallingUid(targetUid).setCallingPackage(targetPackage).setCallingFeatureId(targetFeatureId).setResolvedType(resolvedType).setResultTo(resultTo).setResultWho(resultWho).setRequestCode(requestCode).setStartFlags(startFlags).setActivityOptions(bOptions).setUserId(userId2).setIgnoreTargetSecurity(ignoreTargetSecurity).setFilterCallingUid(isResolver ? 0 : targetUid).setAllowBackgroundActivityStart(true).execute();
                                        } catch (SecurityException e) {
                                            throw e;
                                        }
                                    } catch (SecurityException e2) {
                                        e = e2;
                                        throw e;
                                    }
                                } catch (SecurityException e3) {
                                    e = e3;
                                    throw e;
                                }
                            } catch (SecurityException e4) {
                                e = e4;
                                throw e;
                            }
                        } catch (SecurityException e5) {
                            e = e5;
                            throw e;
                        }
                    } catch (SecurityException e6) {
                        e = e6;
                    }
                } catch (Throwable th) {
                    th = th;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    int handleIncomingUser(int callingPid, int callingUid, int userId, String name) {
        return this.mAmInternal.handleIncomingUser(callingPid, callingUid, userId, false, 0, name, (String) null);
    }

    public int startVoiceActivity(String callingPackage, String callingFeatureId, int callingPid, int callingUid, Intent intent, String resolvedType, IVoiceInteractionSession session, IVoiceInteractor interactor, int startFlags, ProfilerInfo profilerInfo, Bundle bOptions, int userId) {
        assertPackageMatchesCallingUid(callingPackage);
        this.mAmInternal.enforceCallingPermission("android.permission.BIND_VOICE_INTERACTION", "startVoiceActivity()");
        if (session == null || interactor == null) {
            throw new NullPointerException("null session or interactor");
        }
        return getActivityStartController().obtainStarter(intent, "startVoiceActivity").setCallingUid(callingUid).setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setResolvedType(resolvedType).setVoiceSession(session).setVoiceInteractor(interactor).setStartFlags(startFlags).setProfilerInfo(profilerInfo).setActivityOptions(bOptions).setUserId(handleIncomingUser(callingPid, callingUid, userId, "startVoiceActivity")).setAllowBackgroundActivityStart(true).execute();
    }

    public int startAssistantActivity(String callingPackage, String callingFeatureId, int callingPid, int callingUid, Intent intent, String resolvedType, Bundle bOptions, int userId) {
        assertPackageMatchesCallingUid(callingPackage);
        this.mAmInternal.enforceCallingPermission("android.permission.BIND_VOICE_INTERACTION", "startAssistantActivity()");
        return getActivityStartController().obtainStarter(intent, "startAssistantActivity").setCallingUid(callingUid).setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setResolvedType(resolvedType).setActivityOptions(bOptions).setUserId(handleIncomingUser(callingPid, callingUid, userId, "startAssistantActivity")).setAllowBackgroundActivityStart(true).execute();
    }

    public void startRecentsActivity(Intent intent, @Deprecated IAssistDataReceiver unused, IRecentsAnimationRunner recentsAnimationRunner) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "startRecentsActivity()");
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                synchronized (this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        ComponentName recentsComponent = this.mRecentTasks.getRecentsComponent();
                        String recentsFeatureId = this.mRecentTasks.getRecentsComponentFeatureId();
                        int recentsUid = this.mRecentTasks.getRecentsComponentUid();
                        WindowProcessController caller = getProcessController(callingPid, callingUid);
                        RecentsAnimation anim = new RecentsAnimation(this, this.mStackSupervisor, getActivityStartController(), this.mWindowManager, intent, recentsComponent, recentsFeatureId, recentsUid, caller);
                        if (recentsAnimationRunner == null) {
                            anim.preloadRecentsActivity();
                        } else {
                            anim.startRecentsActivity(recentsAnimationRunner);
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    } catch (Throwable th) {
                        th = th;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Binder.restoreCallingIdentity(origId);
            throw th3;
        }
    }

    public final int startActivityFromRecents(int taskId, Bundle bOptions) {
        int iStartActivityFromRecents;
        enforceCallerIsRecentsOrHasPermission("android.permission.START_TASKS_FROM_RECENTS", "startActivityFromRecents()");
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        SafeActivityOptions safeOptions = SafeActivityOptions.fromBundle(bOptions);
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    iStartActivityFromRecents = this.mStackSupervisor.startActivityFromRecents(callingPid, callingUid, taskId, safeOptions);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
            return iStartActivityFromRecents;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public final boolean isActivityStartAllowedOnDisplay(int displayId, Intent intent, String resolvedType, int userId) {
        boolean zCanPlaceEntityOnDisplay;
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long origId = Binder.clearCallingIdentity();
        try {
            ActivityInfo aInfo = this.mStackSupervisor.resolveActivity(intent, resolvedType, 0, null, userId, ActivityStarter.computeResolveFilterUid(callingUid, callingUid, -10000));
            ActivityInfo aInfo2 = this.mAmInternal.getActivityInfoForUser(aInfo, userId);
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zCanPlaceEntityOnDisplay = this.mStackSupervisor.canPlaceEntityOnDisplay(displayId, callingPid, callingUid, aInfo2);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
            return zCanPlaceEntityOnDisplay;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0121 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean finishActivity(android.os.IBinder r23, int r24, android.content.Intent r25, int r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityTaskManagerService.finishActivity(android.os.IBinder, int, android.content.Intent, int):boolean");
    }

    public boolean finishActivityAffinity(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    if (r == null) {
                        Binder.restoreCallingIdentity(origId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return false;
                    }
                    if (getLockTaskController().activityBlockedFromFinish(r)) {
                        Binder.restoreCallingIdentity(origId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return false;
                    }
                    Function<ActivityRecord, Boolean> functionObtainFunction = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$hwQLWout8wOWvnHXCxS5LJZGGvw
                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            return Boolean.valueOf(((ActivityRecord) obj).finishIfSameAffinity((ActivityRecord) obj2));
                        }
                    }, r, PooledLambda.__(ActivityRecord.class));
                    r.getTask().forAllActivities(functionObtainFunction, r, true, true);
                    functionObtainFunction.recycle();
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return true;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public final void activityIdle(IBinder token, Configuration config, boolean stopProfiling) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Trace.traceBegin(32L, "activityIdle");
                    ActivityRecord r = ActivityRecord.forTokenLocked(token);
                    if (r != null) {
                        this.mStackSupervisor.activityIdleInternal(r, false, false, config);
                        if (stopProfiling && r.hasProcess()) {
                            r.app.clearProfilerIfNeeded();
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Trace.traceEnd(32L);
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Trace.traceEnd(32L);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Trace.traceEnd(32L);
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public final void activityResumed(IBinder token) {
        long origId = Binder.clearCallingIdentity();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord.activityResumedLocked(token);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        Binder.restoreCallingIdentity(origId);
    }

    public final void activityTopResumedStateLost() {
        long origId = Binder.clearCallingIdentity();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mStackSupervisor.handleTopResumedStateReleased(false);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        Binder.restoreCallingIdentity(origId);
    }

    public final void activityPaused(IBinder token) {
        long origId = Binder.clearCallingIdentity();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                Trace.traceBegin(32L, "activityPaused");
                ActivityRecord r = ActivityRecord.forTokenLocked(token);
                if (r != null) {
                    r.activityPaused(false);
                }
                Trace.traceEnd(32L);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        Binder.restoreCallingIdentity(origId);
    }

    public final void activityStopped(IBinder token, Bundle icicle, PersistableBundle persistentState, CharSequence description) {
        ActivityRecord r;
        if (icicle != null && icicle.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Bundle");
        }
        long origId = Binder.clearCallingIdentity();
        String restartingName = null;
        int restartingUid = 0;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                Trace.traceBegin(32L, "activityStopped");
                r = ActivityRecord.isInStackLocked(token);
                if (r != null) {
                    if (r.attachedToProcess() && r.isState(ActivityStack.ActivityState.RESTARTING_PROCESS)) {
                        restartingName = r.app.mName;
                        restartingUid = r.app.mUid;
                    }
                    r.activityStopped(icicle, persistentState, description);
                }
                Trace.traceEnd(32L);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (restartingName != null) {
            this.mStackSupervisor.removeRestartTimeouts(r);
            this.mAmInternal.killProcess(restartingName, restartingUid, "restartActivityProcess");
        }
        this.mAmInternal.trimApplications();
        Binder.restoreCallingIdentity(origId);
    }

    public final void activityDestroyed(IBinder token) {
        Slog.v("ActivityTaskManager", "ACTIVITY DESTROYED: " + token);
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                Trace.traceBegin(32L, "activityDestroyed");
                try {
                    ActivityRecord activity = ActivityRecord.forTokenLocked(token);
                    if (activity != null) {
                        activity.destroyed("activityDestroyed");
                    }
                    Trace.traceEnd(32L);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Trace.traceEnd(32L);
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public final void activityRelaunched(IBinder token) {
        long origId = Binder.clearCallingIdentity();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mStackSupervisor.activityRelaunchedLocked(token);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        Binder.restoreCallingIdentity(origId);
    }

    public void setRequestedOrientation(IBinder token, int requestedOrientation) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.setRequestedOrientation(requestedOrientation);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public int getRequestedOrientation(IBinder token) {
        int requestedOrientation;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                requestedOrientation = r != null ? r.getRequestedOrientation() : -1;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return requestedOrientation;
    }

    public void setImmersive(IBinder token, boolean immersive) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    throw new IllegalArgumentException();
                }
                r.immersive = immersive;
                if (r.isResumedActivityOnDisplay()) {
                    applyUpdateLockStateLocked(r);
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    void applyUpdateLockStateLocked(final ActivityRecord r) {
        final boolean nextState = r != null && r.immersive;
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(nextState, r);
            }
        });
    }

    public /* synthetic */ void lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(boolean nextState, ActivityRecord r) {
        if (this.mUpdateLock.isHeld() != nextState) {
            if (nextState) {
                this.mUpdateLock.acquire();
            } else {
                this.mUpdateLock.release();
            }
        }
    }

    public boolean isImmersive(IBinder token) {
        boolean z;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    throw new IllegalArgumentException();
                }
                z = r.immersive;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return z;
    }

    public boolean isTopActivityImmersive() {
        enforceNotIsolatedCaller("isTopActivityImmersive");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack topFocusedStack = getTopDisplayFocusedStack();
                boolean z = false;
                if (topFocusedStack == null) {
                    return false;
                }
                ActivityRecord r = topFocusedStack.topRunningActivity();
                if (r != null && r.immersive) {
                    z = true;
                }
                return z;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void overridePendingTransition(IBinder token, String packageName, int enterAnim, int exitAnim) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord self = ActivityRecord.isInStackLocked(token);
                if (self == null) {
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                if (self.isState(ActivityStack.ActivityState.RESUMED, ActivityStack.ActivityState.PAUSING)) {
                    self.getDisplay().mDisplayContent.mAppTransition.overridePendingAppTransition(packageName, enterAnim, exitAnim, null, null);
                }
                Binder.restoreCallingIdentity(origId);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public int getFrontActivityScreenCompatMode() {
        enforceNotIsolatedCaller("getFrontActivityScreenCompatMode");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack stack = getTopDisplayFocusedStack();
                ActivityRecord r = stack != null ? stack.topRunningActivity() : null;
                if (r == null) {
                    return -3;
                }
                return this.mCompatModePackages.computeCompatModeLocked(r.info.applicationInfo);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setFrontActivityScreenCompatMode(int mode) {
        this.mAmInternal.enforceCallingPermission("android.permission.SET_SCREEN_COMPATIBILITY", "setFrontActivityScreenCompatMode");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack stack = getTopDisplayFocusedStack();
                ActivityRecord r = stack != null ? stack.topRunningActivity() : null;
                if (r == null) {
                    Slog.w("ActivityTaskManager", "setFrontActivityScreenCompatMode failed: no top activity");
                } else {
                    ApplicationInfo ai = r.info.applicationInfo;
                    this.mCompatModePackages.setPackageScreenCompatModeLocked(ai, mode);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public int getLaunchedFromUid(IBinder activityToken) {
        ActivityRecord srec;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                srec = ActivityRecord.forTokenLocked(activityToken);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (srec == null) {
            return -1;
        }
        return srec.launchedFromUid;
    }

    public String getLaunchedFromPackage(IBinder activityToken) {
        ActivityRecord srec;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                srec = ActivityRecord.forTokenLocked(activityToken);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (srec == null) {
            return null;
        }
        return srec.launchedFromPackage;
    }

    public boolean convertFromTranslucent(IBinder token) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    if (r != null) {
                        boolean occludesParent = r.setOccludesParent(true);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return occludesParent;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public boolean convertToTranslucent(IBinder token, Bundle options) {
        SafeActivityOptions safeOptions = SafeActivityOptions.fromBundle(options);
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    if (r != null) {
                        ActivityRecord under = r.getTask().getActivityBelow(r);
                        if (under != null) {
                            under.returningOptions = safeOptions != null ? safeOptions.getOptions(r) : null;
                        }
                        boolean occludesParent = r.setOccludesParent(false);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return occludesParent;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void notifyActivityDrawn(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = this.mRootWindowContainer.isInAnyStack(token);
                if (r != null) {
                    r.getRootTask().notifyActivityDrawnLocked(r);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void reportActivityFullyDrawn(IBinder token, boolean restoredFromBundle) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    return;
                }
                r.reportFullyDrawnLocked(restoredFromBundle);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public int getDisplayId(IBinder activityToken) throws RemoteException {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack stack = ActivityRecord.getStackLocked(activityToken);
                if (stack == null) {
                    return 0;
                }
                int displayId = stack.getDisplayId();
                return displayId != -1 ? displayId : 0;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public ActivityManager.StackInfo getFocusedStackInfo() throws RemoteException {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getStackInfo()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityStack focusedStack = getTopDisplayFocusedStack();
                    if (focusedStack != null) {
                        ActivityManager.StackInfo stackInfo = this.mRootWindowContainer.getStackInfo(focusedStack.mTaskId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return stackInfo;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                    return null;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void setFocusedStack(int stackId) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "setFocusedStack()");
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityStack stack = this.mRootWindowContainer.getStack(stackId);
                    if (stack == null) {
                        Slog.w("ActivityTaskManager", "setFocusedStack: No stack with id=" + stackId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(callingId);
                        return;
                    }
                    ActivityRecord r = stack.topRunningActivity();
                    if (r != null && r.moveFocusableActivityToTop("setFocusedStack")) {
                        this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(callingId);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public void setFocusedTask(int taskId) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "setFocusedTask()");
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId, 0);
                    if (task != null) {
                        ActivityRecord r = task.topRunningActivityLocked();
                        if (r != null && r.moveFocusableActivityToTop("setFocusedTask")) {
                            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(callingId);
                        return;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(callingId);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public void restartActivityProcessIfVisible(IBinder activityToken) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "restartActivityProcess()");
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.isInStackLocked(activityToken);
                    if (r != null) {
                        r.restartProcessIfVisible();
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(callingId);
                    } else {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(callingId);
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public boolean removeTask(int taskId) {
        boolean zRemoveTaskById;
        enforceCallerIsRecentsOrHasPermission("android.permission.REMOVE_TASKS", "removeTask()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    zRemoveTaskById = this.mStackSupervisor.removeTaskById(taskId, true, true, "remove-task");
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return zRemoveTaskById;
    }

    public void removeAllVisibleRecentTasks() {
        enforceCallerIsRecentsOrHasPermission("android.permission.REMOVE_TASKS", "removeAllVisibleRecentTasks()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    getRecentTasks().removeAllVisibleTasks(this.mAmInternal.getCurrentUserId());
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public boolean shouldUpRecreateTask(IBinder token, String destAffinity) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord srec = ActivityRecord.forTokenLocked(token);
                if (srec != null) {
                    return srec.getRootTask().shouldUpRecreateTaskLocked(srec, destAffinity);
                }
                return false;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0053 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean navigateUpTo(android.os.IBinder r17, android.content.Intent r18, int r19, android.content.Intent r20) throws java.lang.Throwable {
        /*
            r16 = this;
            r1 = r16
            com.android.server.wm.WindowManagerGlobalLock r2 = r1.mGlobalLock
            monitor-enter(r2)
            com.android.server.wm.WindowManagerService.boostPriorityForLockedSection()     // Catch: java.lang.Throwable -> L49
            com.android.server.wm.ActivityRecord r0 = com.android.server.wm.ActivityRecord.isInStackLocked(r17)     // Catch: java.lang.Throwable -> L49
            r10 = r0
            if (r10 != 0) goto L15
            r0 = 0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L49
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            return r0
        L15:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L49
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            r11 = r18
            com.android.server.uri.NeededUriGrants r12 = r1.collectGrants(r11, r10)
            com.android.server.wm.ActivityRecord r0 = r10.resultTo
            r13 = r20
            com.android.server.uri.NeededUriGrants r14 = r1.collectGrants(r13, r0)
            com.android.server.wm.WindowManagerGlobalLock r15 = r1.mGlobalLock
            monitor-enter(r15)
            com.android.server.wm.WindowManagerService.boostPriorityForLockedSection()     // Catch: java.lang.Throwable -> L43
            com.android.server.wm.ActivityStack r3 = r10.getRootTask()     // Catch: java.lang.Throwable -> L43
            r4 = r10
            r5 = r18
            r6 = r12
            r7 = r19
            r8 = r20
            r9 = r14
            boolean r0 = r3.navigateUpTo(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L43
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L43
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            return r0
        L43:
            r0 = move-exception
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L43
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            throw r0
        L49:
            r0 = move-exception
            r11 = r18
            r13 = r20
        L4e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L53
            com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
            throw r0
        L53:
            r0 = move-exception
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityTaskManagerService.navigateUpTo(android.os.IBinder, android.content.Intent, int, android.content.Intent):boolean");
    }

    public boolean moveActivityTaskToBack(IBinder token, boolean nonRoot) {
        enforceNotIsolatedCaller("moveActivityTaskToBack");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    int taskId = ActivityRecord.getTaskForActivityLocked(token, !nonRoot);
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId);
                    if (task != null) {
                        boolean zMoveTaskToBack = ActivityRecord.getStackLocked(token).moveTaskToBack(task);
                        Binder.restoreCallingIdentity(origId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return zMoveTaskToBack;
                    }
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public Rect getTaskBounds(int taskId) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getTaskBounds()");
        long ident = Binder.clearCallingIdentity();
        Rect rect = new Rect();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId, 1);
                    if (task == null) {
                        Slog.w("ActivityTaskManager", "getTaskBounds: taskId=" + taskId + " not found");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return rect;
                    }
                    if (task.getParent() != null) {
                        rect.set(task.getBounds());
                    } else if (task.mLastNonFullscreenBounds != null) {
                        rect.set(task.mLastNonFullscreenBounds);
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                    return rect;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public ActivityManager.TaskDescription getTaskDescription(int id) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getTaskDescription()");
                Task tr = this.mRootWindowContainer.anyTaskForId(id, 1);
                if (tr != null) {
                    return tr.getTaskDescription();
                }
                return null;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean setTaskWindowingMode(int taskId, int windowingMode, boolean toTop) {
        if (windowingMode == 3) {
            return setTaskWindowingModeSplitScreenPrimary(taskId, toTop);
        }
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "setTaskWindowingMode()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    if (WindowConfiguration.isSplitScreenWindowingMode(windowingMode)) {
                        boolean taskWindowingModeSplitScreen = setTaskWindowingModeSplitScreen(taskId, windowingMode, toTop);
                        Binder.restoreCallingIdentity(ident);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return taskWindowingModeSplitScreen;
                    }
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId, 0);
                    if (task == null) {
                        Slog.w("ActivityTaskManager", "setTaskWindowingMode: No task for id=" + taskId);
                        Binder.restoreCallingIdentity(ident);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return false;
                    }
                    if (!task.isActivityTypeStandardOrUndefined()) {
                        throw new IllegalArgumentException("setTaskWindowingMode: Attempt to move non-standard task " + taskId + " to windowing mode=" + windowingMode);
                    }
                    ActivityStack stack = task.getStack();
                    if (toTop) {
                        stack.moveToFront("setTaskWindowingMode", task);
                    }
                    if (stack.inSplitScreenWindowingMode()) {
                        stack.getDisplayArea().onSplitScreenModeDismissed();
                    } else {
                        stack.setWindowingMode(windowingMode);
                        stack.getDisplay().ensureActivitiesVisible(null, 0, true, true);
                    }
                    Binder.restoreCallingIdentity(ident);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return true;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public String getCallingPackage(IBinder token) {
        String str;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = getCallingRecordLocked(token);
                str = r != null ? r.info.packageName : null;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return str;
    }

    public ComponentName getCallingActivity(IBinder token) {
        ComponentName component;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = getCallingRecordLocked(token);
                component = r != null ? r.intent.getComponent() : null;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return component;
    }

    private ActivityRecord getCallingRecordLocked(IBinder token) {
        ActivityRecord r = ActivityRecord.isInStackLocked(token);
        if (r == null) {
            return null;
        }
        return r.resultTo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NeededUriGrants collectGrants(Intent intent, ActivityRecord target) {
        if (target != null) {
            return this.mUgmInternal.checkGrantUriPermissionFromIntent(intent, Binder.getCallingUid(), target.packageName, target.mUserId);
        }
        return null;
    }

    public void unhandledBack() {
        this.mAmInternal.enforceCallingPermission("android.permission.FORCE_BACK", "unhandledBack()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    ActivityStack topFocusedStack = getTopDisplayFocusedStack();
                    if (topFocusedStack != null) {
                        topFocusedStack.unhandledBackLocked();
                    }
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void onBackPressedOnTaskRoot(IBinder token, IRequestFinishCallback callback) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                ActivityStack stack = r.getRootTask();
                TaskOrganizerController taskOrgController = this.mWindowOrganizerController.mTaskOrganizerController;
                if (!taskOrgController.handleInterceptBackPressedOnTaskRoot(stack)) {
                    if (stack != null && stack.isSingleTaskInstance()) {
                        Task task = r.getTask();
                        this.mTaskChangeNotificationController.notifyBackPressedOnTaskRoot(task.getTaskInfo());
                    } else {
                        try {
                            callback.requestFinish();
                        } catch (RemoteException e) {
                            Slog.e("ActivityTaskManager", "Failed to invoke request finish callback", e);
                        }
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void moveTaskToFront(IApplicationThread appThread, String callingPackage, int taskId, int flags, Bundle bOptions) {
        this.mAmInternal.enforceCallingPermission("android.permission.REORDER_TASKS", "moveTaskToFront()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                moveTaskToFrontLocked(appThread, callingPackage, taskId, flags, SafeActivityOptions.fromBundle(bOptions));
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void moveTaskToFrontLocked(IApplicationThread appThread, String callingPackage, int taskId, int flags, SafeActivityOptions options) {
        WindowProcessController callerApp;
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        assertPackageMatchesCallingUid(callingPackage);
        if (!checkAppSwitchAllowedLocked(callingPid, callingUid, -1, -1, "Task to front")) {
            SafeActivityOptions.abort(options);
            return;
        }
        long origId = Binder.clearCallingIdentity();
        if (appThread != null) {
            WindowProcessController callerApp2 = getProcessController(appThread);
            callerApp = callerApp2;
        } else {
            callerApp = null;
        }
        ActivityStarter starter = getActivityStartController().obtainStarter(null, "moveTaskToFront");
        if (!starter.shouldAbortBackgroundActivityStart(callingUid, callingPid, callingPackage, -1, -1, callerApp, null, false, null, null) || isBackgroundActivityStartsEnabled()) {
            try {
                Task task = this.mRootWindowContainer.anyTaskForId(taskId);
                if (task == null) {
                    Slog.d("ActivityTaskManager", "Could not find task for id: " + taskId);
                    SafeActivityOptions.abort(options);
                    return;
                }
                if (getLockTaskController().isLockTaskModeViolation(task)) {
                    Slog.e("ActivityTaskManager", "moveTaskToFront: Attempt to violate Lock Task Mode");
                    SafeActivityOptions.abort(options);
                    return;
                }
                ActivityOptions realOptions = options != null ? options.getOptions(this.mStackSupervisor) : null;
                ActivityManager.RunningTaskInfo info = task.getTaskInfo();
                Slog.d("ActivityTaskManager", "moveTaskToFront: taskInfo=" + info);
                String curPkg = info.baseActivity != null ? info.baseActivity.getPackageName() : "";
                boolean flagPassedCheckIntercept = (flags & 32) != 0;
                if (!flagPassedCheckIntercept && !this.mCallingPassedPackages.contains(curPkg) && this.mMayInterceptedPackages.contains(curPkg)) {
                    Slog.d("ActivityTaskManager", "systemui intercepted move task " + taskId + " pkg " + curPkg);
                    StatusBarManagerInternal statusBar = getStatusBarManagerInternal();
                    if (statusBar != null && statusBar.interceptMoveTaskToTop(taskId, flags)) {
                        return;
                    }
                }
                this.mStackSupervisor.findTaskToMoveToFront(task, flags, realOptions, "moveTaskToFront", false);
                ActivityRecord topActivity = task.getTopNonFinishingActivity();
                if (topActivity != null) {
                    topActivity.showStartingWindow(null, false, true);
                }
            } finally {
                Binder.restoreCallingIdentity(origId);
            }
        }
    }

    private boolean isSameApp(int callingUid, String packageName) {
        if (callingUid != 0 && callingUid != 1000) {
            if (packageName == null) {
                return false;
            }
            try {
                int uid = AppGlobals.getPackageManager().getPackageUid(packageName, AudioFormat.EVRC, UserHandle.getUserId(callingUid));
                return UserHandle.isSameApp(callingUid, uid);
            } catch (RemoteException e) {
                return true;
            }
        }
        return true;
    }

    void assertPackageMatchesCallingUid(String packageName) {
        int callingUid = Binder.getCallingUid();
        if (isSameApp(callingUid, packageName)) {
            return;
        }
        String msg = "Permission Denial: package=" + packageName + " does not belong to uid=" + callingUid;
        Slog.w("ActivityTaskManager", msg);
        throw new SecurityException(msg);
    }

    boolean checkAppSwitchAllowedLocked(int sourcePid, int sourceUid, int callingPid, int callingUid, String name) {
        if (this.mAppSwitchesAllowedTime < SystemClock.uptimeMillis() || getRecentTasks().isCallerRecents(sourceUid)) {
            return true;
        }
        int perm = checkComponentPermission("android.permission.STOP_APP_SWITCHES", sourcePid, sourceUid, -1, true);
        if (perm == 0 || checkAllowAppSwitchUid(sourceUid)) {
            return true;
        }
        if (callingUid != -1 && callingUid != sourceUid) {
            int perm2 = checkComponentPermission("android.permission.STOP_APP_SWITCHES", callingPid, callingUid, -1, true);
            if (perm2 == 0 || checkAllowAppSwitchUid(callingUid)) {
                return true;
            }
        }
        Slog.w("ActivityTaskManager", name + " request from " + sourceUid + " stopped");
        return false;
    }

    private boolean checkAllowAppSwitchUid(int uid) {
        ArrayMap<String, Integer> types = this.mAllowAppSwitchUids.get(UserHandle.getUserId(uid));
        if (types != null) {
            for (int i = types.size() - 1; i >= 0; i--) {
                if (types.valueAt(i).intValue() == uid) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void setActivityController(IActivityController controller, boolean imAMonkey) {
        this.mAmInternal.enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "setActivityController()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mController = controller;
                this.mControllerIsAMonkey = imAMonkey;
                Watchdog.getInstance().setActivityController(controller);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean isControllerAMonkey() {
        boolean z;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                z = this.mController != null && this.mControllerIsAMonkey;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    public int getTaskForActivity(IBinder token, boolean onlyRoot) {
        int taskForActivityLocked;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                taskForActivityLocked = ActivityRecord.getTaskForActivityLocked(token, onlyRoot);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return taskForActivityLocked;
    }

    public List<ActivityManager.RunningTaskInfo> getTasks(int maxNum) {
        return getFilteredTasks(maxNum, false);
    }

    public ArrayList<String> getActivityWhiteList() {
        return this.mActivityWhiteList;
    }

    public List<ActivityManager.RunningTaskInfo> getFilteredTasks(int maxNum, boolean filterOnlyVisibleRecents) throws Throwable {
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        boolean crossUser = isCrossUserAllowed(callingPid, callingUid);
        int[] profileIds = getUserManager().getProfileIds(UserHandle.getUserId(callingUid), true);
        ArraySet<Integer> callingProfileIds = new ArraySet<>();
        for (int i : profileIds) {
            callingProfileIds.add(Integer.valueOf(i));
        }
        ArrayList<ActivityManager.RunningTaskInfo> list = new ArrayList<>();
        synchronized (this.mGlobalLock) {
            try {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    boolean allowed = isGetTasksAllowed("getTasks", callingPid, callingUid);
                    this.mRootWindowContainer.getRunningTasks(maxNum, list, filterOnlyVisibleRecents, callingUid, allowed, crossUser, callingProfileIds);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return list;
                } catch (Throwable th) {
                    th = th;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public final void finishSubActivity(IBinder token, String resultWho, int requestCode) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    if (r != null) {
                        PooledConsumer c = PooledLambda.obtainConsumer(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho
                            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                                ((ActivityRecord) obj).finishIfSubActivity((ActivityRecord) obj2, (String) obj3, ((Integer) obj4).intValue());
                            }
                        }, PooledLambda.__(ActivityRecord.class), r, resultWho, Integer.valueOf(requestCode));
                        r.getRootTask().forAllActivities((Consumer<ActivityRecord>) c);
                        c.recycle();
                        updateOomAdj();
                        Binder.restoreCallingIdentity(origId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public boolean willActivityBeVisible(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack stack = ActivityRecord.getStackLocked(token);
                if (stack != null) {
                    return stack.willActivityBeVisible(token);
                }
                return false;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void moveTaskToStack(int taskId, int stackId, boolean toTop) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "moveTaskToStack()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId);
                    if (task == null) {
                        Slog.w("ActivityTaskManager", "moveTaskToStack: No task for id=" + taskId);
                        Binder.restoreCallingIdentity(ident);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    ActivityStack stack = this.mRootWindowContainer.getStack(stackId);
                    if (stack == null) {
                        throw new IllegalStateException("moveTaskToStack: No stack for stackId=" + stackId);
                    }
                    if (!stack.isActivityTypeStandardOrUndefined()) {
                        throw new IllegalArgumentException("moveTaskToStack: Attempt to move task " + taskId + " to stack " + stackId);
                    }
                    task.reparent(stack, toTop, 1, true, false, "moveTaskToStack");
                    Binder.restoreCallingIdentity(ident);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public boolean setTaskWindowingModeSplitScreenPrimary(int taskId, boolean toTop) {
        boolean taskWindowingModeSplitScreen;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "setTaskWindowingModeSplitScreenPrimary()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    taskWindowingModeSplitScreen = setTaskWindowingModeSplitScreen(taskId, 3, toTop);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return taskWindowingModeSplitScreen;
    }

    private boolean setTaskWindowingModeSplitScreen(int taskId, int windowingMode, boolean toTop) {
        if (!WindowConfiguration.isSplitScreenWindowingMode(windowingMode)) {
            throw new IllegalArgumentException("Calling setTaskWindowingModeSplitScreen with nonsplit-screen mode: " + windowingMode);
        }
        if (isInLockTaskMode()) {
            Slog.w("ActivityTaskManager", "setTaskWindowingModeSplitScreen: Is in lock task mode=" + getLockTaskModeState());
            return false;
        }
        Task task = this.mRootWindowContainer.anyTaskForId(taskId, 0);
        if (task == null) {
            Slog.w("ActivityTaskManager", "setTaskWindowingModeSplitScreenPrimary: No task for id=" + taskId);
            return false;
        }
        if (!task.isActivityTypeStandardOrUndefined()) {
            throw new IllegalArgumentException("setTaskWindowingMode: Attempt to move non-standard task " + taskId + " to split-screen windowing mode");
        }
        if (!task.supportsSplitScreenWindowingMode()) {
            return false;
        }
        int prevMode = task.getWindowingMode();
        if (prevMode == windowingMode) {
            return true;
        }
        moveTaskToSplitScreenPrimaryTask(task, toTop);
        return prevMode != task.getWindowingMode();
    }

    void moveTaskToSplitScreenPrimaryTask(Task task, boolean toTop) {
        TaskDisplayArea taskDisplayArea = task.getDisplayArea();
        ActivityStack primarySplitTask = taskDisplayArea.getRootSplitScreenPrimaryTask();
        if (primarySplitTask == null) {
            throw new IllegalStateException("Can't enter split without associated organized task");
        }
        if (toTop) {
            taskDisplayArea.positionStackAt(Integer.MAX_VALUE, primarySplitTask, false);
        }
        WindowContainerTransaction wct = new WindowContainerTransaction();
        wct.setWindowingMode(task.getStack().mRemoteToken.toWindowContainerToken(), 0);
        wct.reparent(task.getStack().mRemoteToken.toWindowContainerToken(), primarySplitTask.mRemoteToken.toWindowContainerToken(), toTop);
        this.mWindowOrganizerController.applyTransaction(wct);
    }

    public void removeStacksInWindowingModes(int[] windowingModes) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "removeStacksInWindowingModes()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    this.mRootWindowContainer.removeStacksInWindowingModes(windowingModes);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void removeStacksWithActivityTypes(int[] activityTypes) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "removeStacksWithActivityTypes()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    this.mRootWindowContainer.removeStacksWithActivityTypes(activityTypes);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public ParceledListSlice<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags, int userId) {
        ParceledListSlice<ActivityManager.RecentTaskInfo> recentTasks;
        int callingUid = Binder.getCallingUid();
        int userId2 = handleIncomingUser(Binder.getCallingPid(), callingUid, userId, "getRecentTasks");
        boolean allowed = isGetTasksAllowed("getRecentTasks", Binder.getCallingPid(), callingUid);
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                recentTasks = this.mRecentTasks.getRecentTasks(maxNum, flags, allowed, userId2, callingUid);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return recentTasks;
    }

    public List<ActivityManager.StackInfo> getAllStackInfos() {
        ArrayList<ActivityManager.StackInfo> allStackInfos;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getAllStackInfos()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    allStackInfos = this.mRootWindowContainer.getAllStackInfos(-1);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return allStackInfos;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public ActivityManager.StackInfo getStackInfo(int windowingMode, int activityType) {
        ActivityManager.StackInfo stackInfo;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getStackInfo()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    stackInfo = this.mRootWindowContainer.getStackInfo(windowingMode, activityType);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return stackInfo;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public List<ActivityManager.StackInfo> getAllStackInfosOnDisplay(int displayId) {
        ArrayList<ActivityManager.StackInfo> allStackInfos;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getAllStackInfos()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    allStackInfos = this.mRootWindowContainer.getAllStackInfos(displayId);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return allStackInfos;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public ActivityManager.StackInfo getStackInfoOnDisplay(int windowingMode, int activityType, int displayId) {
        ActivityManager.StackInfo stackInfo;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getStackInfo()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    stackInfo = this.mRootWindowContainer.getStackInfo(windowingMode, activityType, displayId);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return stackInfo;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void cancelRecentsAnimation(boolean restoreHomeStackPosition) {
        int i;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "cancelRecentsAnimation()");
        long callingUid = Binder.getCallingUid();
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService windowManagerService = this.mWindowManager;
                    if (restoreHomeStackPosition) {
                        i = 2;
                    } else {
                        i = 0;
                    }
                    windowManagerService.cancelRecentsAnimation(i, "cancelRecentsAnimation/uid=" + callingUid);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void startLockTaskModeByToken(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.forTokenLocked(token);
                if (r == null) {
                    return;
                }
                startLockTaskModeLocked(r.getTask(), false);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void startSystemLockTaskMode(int taskId) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "startSystemLockTaskMode");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId, 0);
                    if (task != null) {
                        task.getStack().moveToFront("startSystemLockTaskMode");
                        startLockTaskModeLocked(task, true);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void stopLockTaskModeByToken(IBinder token) {
        stopLockTaskModeInternal(token, false);
    }

    public void stopSystemLockTaskMode() throws RemoteException {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "stopSystemLockTaskMode");
        stopLockTaskModeInternal(null, true);
    }

    private void startLockTaskModeLocked(Task task, boolean isSystemCaller) {
        if (task == null || task.mLockTaskAuth == 0) {
            return;
        }
        ActivityStack stack = this.mRootWindowContainer.getTopDisplayFocusedStack();
        if (stack == null || task != stack.getTopMostTask()) {
            throw new IllegalArgumentException("Invalid task, not in foreground");
        }
        int callingUid = Binder.getCallingUid();
        long ident = Binder.clearCallingIdentity();
        try {
            this.mRootWindowContainer.removeStacksInWindowingModes(2);
            getLockTaskController().startLockTaskMode(task, isSystemCaller, callingUid);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private void stopLockTaskModeInternal(IBinder token, boolean isSystemCaller) {
        int callingUid = Binder.getCallingUid();
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = null;
                    if (token != null) {
                        ActivityRecord r = ActivityRecord.forTokenLocked(token);
                        if (r != null) {
                            task = r.getTask();
                        } else {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(ident);
                            return;
                        }
                    }
                    getLockTaskController().stopLockTaskMode(task, isSystemCaller, callingUid);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    TelecomManager tm = (TelecomManager) this.mContext.getSystemService("telecom");
                    if (tm != null) {
                        tm.showInCallScreen(false);
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void updateLockTaskPackages(int userId, String[] packages) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != 1000) {
            this.mAmInternal.enforceCallingPermission("android.permission.UPDATE_LOCK_TASK_PACKAGES", "updateLockTaskPackages()");
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                getLockTaskController().updateLockTaskPackages(userId, packages);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean isInLockTaskMode() {
        return getLockTaskModeState() != 0;
    }

    public int getLockTaskModeState() {
        int lockTaskModeState;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                lockTaskModeState = getLockTaskController().getLockTaskModeState();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return lockTaskModeState;
    }

    public void setTaskDescription(IBinder token, ActivityManager.TaskDescription td) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r != null) {
                    r.setTaskDescription(td);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public Bundle getActivityOptions(IBinder token) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    Bundle bundle = null;
                    if (r != null) {
                        ActivityOptions activityOptions = r.takeOptionsLocked(true);
                        if (activityOptions != null) {
                            bundle = activityOptions.toBundle();
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return bundle;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                    return null;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public List<IBinder> getAppTasks(String callingPackage) {
        ArrayList<IBinder> appTasksList;
        int callingUid = Binder.getCallingUid();
        assertPackageMatchesCallingUid(callingPackage);
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    appTasksList = this.mRecentTasks.getAppTasksList(callingUid, callingPackage);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return appTasksList;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void finishVoiceTask(IVoiceInteractionSession session) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    this.mRootWindowContainer.finishVoiceTask(session);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public boolean isTopOfTask(IBinder token) {
        boolean z;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                z = r != null && r.getTask().getTopNonFinishingActivity() == r;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    public void notifyLaunchTaskBehindComplete(IBinder token) {
        this.mStackSupervisor.scheduleLaunchTaskBehindComplete(token);
    }

    public void notifyEnterAnimationComplete(final IBinder token) {
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyEnterAnimationComplete$1$ActivityTaskManagerService(token);
            }
        });
    }

    public /* synthetic */ void lambda$notifyEnterAnimationComplete$1$ActivityTaskManagerService(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.forTokenLocked(token);
                if (r != null && r.attachedToProcess()) {
                    try {
                        r.app.getThread().scheduleEnterAnimationComplete(r.appToken);
                    } catch (RemoteException e) {
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void reportAssistContextExtras(IBinder token, Bundle extras, AssistStructure structure, AssistContent content, Uri referrer) {
        PendingAssistExtras pae = (PendingAssistExtras) token;
        synchronized (pae) {
            pae.result = extras;
            pae.structure = structure;
            pae.content = content;
            if (referrer != null) {
                pae.extras.putParcelable("android.intent.extra.REFERRER", referrer);
            }
            if (structure != null) {
                structure.setTaskId(pae.activity.getTask().mTaskId);
                structure.setActivityComponent(pae.activity.mActivityComponent);
                structure.setHomeActivity(pae.isHome);
            }
            pae.haveResult = true;
            pae.notifyAll();
            if (pae.intent == null && pae.receiver == null) {
                return;
            }
            Bundle sendBundle = null;
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    buildAssistBundleLocked(pae, extras);
                    boolean exists = this.mPendingAssistExtras.remove(pae);
                    this.mUiHandler.removeCallbacks(pae);
                    if (!exists) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    IAssistDataReceiver sendReceiver = pae.receiver;
                    if (sendReceiver != null) {
                        sendBundle = new Bundle();
                        sendBundle.putInt(ActivityTaskManagerInternal.ASSIST_TASK_ID, pae.activity.getTask().mTaskId);
                        sendBundle.putBinder(ActivityTaskManagerInternal.ASSIST_ACTIVITY_ID, pae.activity.assistToken);
                        sendBundle.putBundle("data", pae.extras);
                        sendBundle.putParcelable(ActivityTaskManagerInternal.ASSIST_KEY_STRUCTURE, pae.structure);
                        sendBundle.putParcelable(ActivityTaskManagerInternal.ASSIST_KEY_CONTENT, pae.content);
                        sendBundle.putBundle(ActivityTaskManagerInternal.ASSIST_KEY_RECEIVER_EXTRAS, pae.receiverExtras);
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    if (sendReceiver != null) {
                        try {
                            sendReceiver.onHandleAssistData(sendBundle);
                            return;
                        } catch (RemoteException e) {
                            return;
                        }
                    }
                    long ident = Binder.clearCallingIdentity();
                    try {
                        if (TextUtils.equals(pae.intent.getAction(), "android.service.voice.VoiceInteractionService")) {
                            this.mAssistUtils.showSessionForActiveService(pae.extras, 8, (IVoiceInteractionSessionShowCallback) null, (IBinder) null);
                        } else {
                            pae.intent.replaceExtras(pae.extras);
                            pae.intent.setFlags(872415232);
                            this.mInternal.closeSystemDialogs(PhoneWindowManager.SYSTEM_DIALOG_REASON_ASSIST);
                            try {
                                this.mContext.startActivityAsUser(pae.intent, new UserHandle(pae.userHandle));
                            } catch (ActivityNotFoundException e2) {
                                Slog.w("ActivityTaskManager", "No activity to handle assist action.", e2);
                            }
                        }
                        Binder.restoreCallingIdentity(ident);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int addAppTask(IBinder activityToken, Intent intent, ActivityManager.TaskDescription description, Bitmap thumbnail) throws Throwable {
        int callingUid = Binder.getCallingUid();
        long callingIdent = Binder.clearCallingIdentity();
        try {
            try {
                synchronized (this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        ActivityRecord r = ActivityRecord.isInStackLocked(activityToken);
                        try {
                            if (r == null) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Activity does not exist; token=");
                                sb.append(activityToken);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            try {
                                ComponentName comp = intent.getComponent();
                                if (comp == null) {
                                    throw new IllegalArgumentException("Intent " + intent + " must specify explicit component");
                                }
                                if (thumbnail.getWidth() != this.mThumbnailWidth || thumbnail.getHeight() != this.mThumbnailHeight) {
                                    throw new IllegalArgumentException("Bad thumbnail size: got " + thumbnail.getWidth() + "x" + thumbnail.getHeight() + ", require " + this.mThumbnailWidth + "x" + this.mThumbnailHeight);
                                }
                                if (intent.getSelector() != null) {
                                    intent.setSelector(null);
                                }
                                if (intent.getSourceBounds() != null) {
                                    intent.setSourceBounds(null);
                                }
                                if ((intent.getFlags() & 524288) != 0 && (intent.getFlags() & 8192) == 0) {
                                    intent.addFlags(8192);
                                }
                                ActivityInfo ainfo = AppGlobals.getPackageManager().getActivityInfo(comp, 1024, UserHandle.getUserId(callingUid));
                                if (ainfo.applicationInfo.uid != callingUid) {
                                    throw new SecurityException("Can't add task for another application: target uid=" + ainfo.applicationInfo.uid + ", calling uid=" + callingUid);
                                }
                                ActivityStack rootTask = r.getRootTask();
                                Task task = rootTask.getDisplayArea().createStack(rootTask.getWindowingMode(), rootTask.getActivityType(), false, ainfo, intent, false);
                                if (!this.mRecentTasks.addToBottom(task)) {
                                    rootTask.removeChild(task, "addAppTask");
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(callingIdent);
                                    return -1;
                                }
                                task.getTaskDescription().copyFrom(description);
                                int i = task.mTaskId;
                                WindowManagerService.resetPriorityAfterLockedSection();
                                Binder.restoreCallingIdentity(callingIdent);
                                return i;
                            } catch (Throwable th) {
                                th = th;
                                WindowManagerService.resetPriorityAfterLockedSection();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    try {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    } catch (Throwable th4) {
                        th = th4;
                        Binder.restoreCallingIdentity(callingIdent);
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public Point getAppTaskThumbnailSize() {
        Point point;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                point = new Point(this.mThumbnailWidth, this.mThumbnailHeight);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return point;
    }

    public void setTaskResizeable(int taskId, int resizeableMode) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                Task task = this.mRootWindowContainer.anyTaskForId(taskId, 1);
                if (task == null) {
                    Slog.w("ActivityTaskManager", "setTaskResizeable: taskId=" + taskId + " not found");
                    return;
                }
                task.setResizeMode(resizeableMode);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean resizeTask(int taskId, Rect bounds, int resizeMode) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "resizeTask()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId, 0);
                    if (task == null) {
                        Slog.w("ActivityTaskManager", "resizeTask: taskId=" + taskId + " not found");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                    if (task.getWindowConfiguration().canResizeTask()) {
                        boolean preserveWindow = (resizeMode & 1) != 0;
                        boolean zResize = task.resize(bounds, resizeMode, preserveWindow);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return zResize;
                    }
                    Slog.w("ActivityTaskManager", "resizeTask not allowed on task=" + task);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public boolean releaseActivityInstance(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    if (r != null && r.isDestroyable()) {
                        r.destroyImmediately(true, "app-req");
                        boolean zIsState = r.isState(ActivityStack.ActivityState.DESTROYING, ActivityStack.ActivityState.DESTROYED);
                        Binder.restoreCallingIdentity(origId);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return zIsState;
                    }
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void releaseSomeActivities(IApplicationThread appInt) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    WindowProcessController app = getProcessController(appInt);
                    app.releaseSomeActivities("low-mem");
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void setLockScreenShown(final boolean keyguardShowing, boolean aodShowing) {
        if (checkCallingPermission("android.permission.DEVICE_POWER") != 0) {
            throw new SecurityException("Requires permission android.permission.DEVICE_POWER");
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                if (this.mKeyguardShown != keyguardShowing) {
                    this.mKeyguardShown = keyguardShowing;
                    Message msg = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ((ActivityManagerInternal) obj).reportCurKeyguardUsageEvent(((Boolean) obj2).booleanValue());
                        }
                    }, this.mAmInternal, Boolean.valueOf(keyguardShowing));
                    this.mH.sendMessage(msg);
                }
                try {
                    this.mKeyguardController.setKeyguardShown(keyguardShowing, aodShowing);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setLockScreenShown$2$ActivityTaskManagerService(keyguardShowing);
            }
        });
    }

    public /* synthetic */ void lambda$setLockScreenShown$2$ActivityTaskManagerService(boolean keyguardShowing) {
        for (int i = this.mScreenObservers.size() - 1; i >= 0; i--) {
            this.mScreenObservers.get(i).onKeyguardStateChanged(keyguardShowing);
        }
    }

    public void onScreenAwakeChanged(final boolean isAwake) {
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onScreenAwakeChanged$3$ActivityTaskManagerService(isAwake);
            }
        });
    }

    public /* synthetic */ void lambda$onScreenAwakeChanged$3$ActivityTaskManagerService(boolean isAwake) {
        for (int i = this.mScreenObservers.size() - 1; i >= 0; i--) {
            this.mScreenObservers.get(i).onAwakeStateChanged(isAwake);
        }
    }

    public Bitmap getTaskDescriptionIcon(String filePath, int userId) {
        int userId2 = handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, "getTaskDescriptionIcon");
        File passedIconFile = new File(filePath);
        File legitIconFile = new File(TaskPersister.getUserImagesDir(userId2), passedIconFile.getName());
        if (!legitIconFile.getPath().equals(filePath) || !filePath.contains("_activity_icon_")) {
            throw new IllegalArgumentException("Bad file path: " + filePath + " passed for userId " + userId2);
        }
        return this.mRecentTasks.getTaskDescriptionIcon(filePath);
    }

    public void removeStack(int stackId) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "removeStack()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    ActivityStack stack = this.mRootWindowContainer.getStack(stackId);
                    if (stack == null) {
                        Slog.w("ActivityTaskManager", "removeStack: No stack with id=" + stackId);
                        Binder.restoreCallingIdentity(ident);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    if (!stack.isActivityTypeStandardOrUndefined()) {
                        throw new IllegalArgumentException("Removing non-standard stack is not allowed.");
                    }
                    this.mStackSupervisor.removeStack(stack);
                    Binder.restoreCallingIdentity(ident);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void moveStackToDisplay(int stackId, int displayId) {
        this.mAmInternal.enforceCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "moveStackToDisplay()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    this.mRootWindowContainer.moveStackToDisplay(stackId, displayId, true);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void toggleFreeformWindowingMode(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    ActivityRecord r = ActivityRecord.forTokenLocked(token);
                    if (r == null) {
                        throw new IllegalArgumentException("toggleFreeformWindowingMode: No activity record matching token=" + token);
                    }
                    ActivityStack stack = r.getRootTask();
                    if (stack == null) {
                        throw new IllegalStateException("toggleFreeformWindowingMode: the activity doesn't have a stack");
                    }
                    if (!stack.inFreeformWindowingMode() && stack.getWindowingMode() != 1) {
                        throw new IllegalStateException("toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform.");
                    }
                    if (stack.inFreeformWindowingMode()) {
                        stack.setWindowingMode(1);
                    } else {
                        if (!this.mSizeCompatFreeform && r.inSizeCompatMode()) {
                            throw new IllegalStateException("Size-compat windows are currently notfreeform-enabled");
                        }
                        if (stack.getParent().inFreeformWindowingMode()) {
                            stack.setWindowingMode(0);
                        } else {
                            stack.setWindowingMode(5);
                        }
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void registerTaskStackListener(ITaskStackListener listener) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "registerTaskStackListener()");
        this.mTaskChangeNotificationController.registerTaskStackListener(listener);
    }

    public void unregisterTaskStackListener(ITaskStackListener listener) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "unregisterTaskStackListener()");
        this.mTaskChangeNotificationController.unregisterTaskStackListener(listener);
    }

    public boolean requestAssistContextExtras(int requestType, IAssistDataReceiver receiver, Bundle receiverExtras, IBinder activityToken, boolean focused, boolean newSessionId) {
        return enqueueAssistContext(requestType, null, null, receiver, receiverExtras, activityToken, focused, newSessionId, UserHandle.getCallingUserId(), null, 2000L, 0) != null;
    }

    public boolean requestAutofillData(IAssistDataReceiver receiver, Bundle receiverExtras, IBinder activityToken, int flags) {
        return enqueueAssistContext(2, null, null, receiver, receiverExtras, activityToken, true, true, UserHandle.getCallingUserId(), null, 2000L, flags) != null;
    }

    public boolean launchAssistIntent(Intent intent, int requestType, String hint, int userHandle, Bundle args) {
        return enqueueAssistContext(requestType, intent, hint, null, null, null, true, true, userHandle, args, 500L, 0) != null;
    }

    public Bundle getAssistContextExtras(int requestType) throws RemoteException {
        PendingAssistExtras pae = enqueueAssistContext(requestType, null, null, null, null, null, true, true, UserHandle.getCallingUserId(), null, 500L, 0);
        if (pae == null) {
            return null;
        }
        synchronized (pae) {
            while (!pae.haveResult) {
                try {
                    pae.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                buildAssistBundleLocked(pae, pae.result);
                this.mPendingAssistExtras.remove(pae);
                this.mUiHandler.removeCallbacks(pae);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return pae.extras;
    }

    private static int checkCallingPermission(String permission) {
        return checkPermission(permission, Binder.getCallingPid(), UserHandle.getAppId(Binder.getCallingUid()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceCallerIsRecentsOrHasPermission(String permission, String func) {
        if (!getRecentTasks().isCallerRecents(Binder.getCallingUid())) {
            this.mAmInternal.enforceCallingPermission(permission, func);
        }
    }

    int checkGetTasksPermission(String permission, int pid, int uid) {
        return checkPermission(permission, pid, uid);
    }

    static int checkPermission(String permission, int pid, int uid) {
        if (permission == null) {
            return -1;
        }
        return checkComponentPermission(permission, pid, uid, -1, true);
    }

    public static int checkComponentPermission(String permission, int pid, int uid, int owningUid, boolean exported) {
        return ActivityManagerService.checkComponentPermission(permission, pid, uid, owningUid, exported);
    }

    boolean isGetTasksAllowed(String caller, int callingPid, int callingUid) {
        if (getRecentTasks().isCallerRecents(callingUid)) {
            return true;
        }
        boolean allowed = checkGetTasksPermission("android.permission.REAL_GET_TASKS", callingPid, callingUid) == 0;
        if (!allowed && checkGetTasksPermission("android.permission.GET_TASKS", callingPid, callingUid) == 0) {
            try {
                if (AppGlobals.getPackageManager().isUidPrivileged(callingUid)) {
                    return true;
                }
                return allowed;
            } catch (RemoteException e) {
                return allowed;
            }
        }
        return allowed;
    }

    boolean isCrossUserAllowed(int pid, int uid) {
        return checkPermission("android.permission.INTERACT_ACROSS_USERS", pid, uid) == 0 || checkPermission("android.permission.INTERACT_ACROSS_USERS_FULL", pid, uid) == 0;
    }

    private PendingAssistExtras enqueueAssistContext(int requestType, Intent intent, String hint, IAssistDataReceiver receiver, Bundle receiverExtras, IBinder activityToken, boolean focused, boolean newSessionId, int userHandle, Bundle args, long timeout, int flags) throws RemoteException {
        ActivityRecord activity;
        ActivityRecord caller;
        this.mAmInternal.enforceCallingPermission("android.permission.GET_TOP_ACTIVITY_INFO", "enqueueAssistContext()");
        synchronized (this.mGlobalLock) {
            try {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityStack stack = getTopDisplayFocusedStack();
                    ActivityRecord activity2 = stack != null ? stack.getTopNonFinishingActivity() : null;
                    if (activity2 == null) {
                        Slog.w("ActivityTaskManager", "getAssistContextExtras failed: no top activity");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return null;
                    }
                    if (!activity2.attachedToProcess()) {
                        Slog.w("ActivityTaskManager", "getAssistContextExtras failed: no process for " + activity2);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return null;
                    }
                    if (focused) {
                        if (activityToken != null && activity2 != (caller = ActivityRecord.forTokenLocked(activityToken))) {
                            Slog.w("ActivityTaskManager", "enqueueAssistContext failed: caller " + caller + " is not current top " + activity2);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return null;
                        }
                        activity = activity2;
                    } else {
                        ActivityRecord activity3 = ActivityRecord.forTokenLocked(activityToken);
                        if (activity3 == null) {
                            Slog.w("ActivityTaskManager", "enqueueAssistContext failed: activity for token=" + activityToken + " couldn't be found");
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return null;
                        }
                        if (activity3.attachedToProcess()) {
                            activity = activity3;
                        } else {
                            Slog.w("ActivityTaskManager", "enqueueAssistContext failed: no process for " + activity3);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return null;
                        }
                    }
                    Bundle extras = new Bundle();
                    if (args != null) {
                        extras.putAll(args);
                    }
                    extras.putString("android.intent.extra.ASSIST_PACKAGE", activity.packageName);
                    extras.putInt("android.intent.extra.ASSIST_UID", activity.app.mUid);
                    ActivityRecord activity4 = activity;
                    PendingAssistExtras pae = new PendingAssistExtras(activity, extras, intent, hint, receiver, receiverExtras, userHandle);
                    pae.isHome = activity4.isActivityTypeHome();
                    if (newSessionId) {
                        this.mViSessionId++;
                    }
                    try {
                        activity4.app.getThread().requestAssistContextExtras(activity4.appToken, pae, requestType, this.mViSessionId, flags);
                        this.mPendingAssistExtras.add(pae);
                        try {
                            this.mUiHandler.postDelayed(pae, timeout);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return pae;
                        } catch (RemoteException e) {
                            Slog.w("ActivityTaskManager", "getAssistContextExtras failed: crash calling " + activity4);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return null;
                        }
                    } catch (RemoteException e2) {
                    }
                } catch (Throwable th) {
                    e = th;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
            }
        }
    }

    private void buildAssistBundleLocked(PendingAssistExtras pae, Bundle result) {
        if (result != null) {
            pae.extras.putBundle("android.intent.extra.ASSIST_CONTEXT", result);
        }
        if (pae.hint != null) {
            pae.extras.putBoolean(pae.hint, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pendingAssistExtrasTimedOut(PendingAssistExtras pae) {
        IAssistDataReceiver receiver;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mPendingAssistExtras.remove(pae);
                receiver = pae.receiver;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (receiver != null) {
            Bundle sendBundle = new Bundle();
            sendBundle.putBundle(ActivityTaskManagerInternal.ASSIST_KEY_RECEIVER_EXTRAS, pae.receiverExtras);
            try {
                pae.receiver.onHandleAssistData(sendBundle);
            } catch (RemoteException e) {
            }
        }
    }

    public class PendingAssistExtras extends Binder implements Runnable {
        public final ActivityRecord activity;
        public final Bundle extras;
        public final String hint;
        public final Intent intent;
        public boolean isHome;
        public final IAssistDataReceiver receiver;
        public Bundle receiverExtras;
        public final int userHandle;
        public boolean haveResult = false;
        public Bundle result = null;
        public AssistStructure structure = null;
        public AssistContent content = null;

        public PendingAssistExtras(ActivityRecord _activity, Bundle _extras, Intent _intent, String _hint, IAssistDataReceiver _receiver, Bundle _receiverExtras, int _userHandle) {
            this.activity = _activity;
            this.extras = _extras;
            this.intent = _intent;
            this.hint = _hint;
            this.receiver = _receiver;
            this.receiverExtras = _receiverExtras;
            this.userHandle = _userHandle;
        }

        @Override // java.lang.Runnable
        public void run() {
            Slog.w("ActivityTaskManager", "getAssistContextExtras failed: timeout retrieving from " + this.activity);
            synchronized (this) {
                this.haveResult = true;
                notifyAll();
            }
            ActivityTaskManagerService.this.pendingAssistExtrasTimedOut(this);
        }
    }

    public boolean isAssistDataAllowedOnCurrentActivity() {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack focusedStack = getTopDisplayFocusedStack();
                if (focusedStack != null && !focusedStack.isActivityTypeAssistant()) {
                    ActivityRecord activity = focusedStack.getTopNonFinishingActivity();
                    if (activity == null) {
                        return false;
                    }
                    int userId = activity.mUserId;
                    return DevicePolicyCache.getInstance().isScreenCaptureAllowed(userId, false);
                }
                return false;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean showAssistFromActivity(IBinder token, Bundle args) {
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord caller = ActivityRecord.forTokenLocked(token);
                    ActivityRecord top = getTopDisplayFocusedStack().getTopNonFinishingActivity();
                    if (top != caller) {
                        Slog.w("ActivityTaskManager", "showAssistFromActivity failed: caller " + caller + " is not current top " + top);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                    if (top.nowVisible) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        boolean zShowSessionForActiveService = this.mAssistUtils.showSessionForActiveService(args, 8, (IVoiceInteractionSessionShowCallback) null, token);
                        Binder.restoreCallingIdentity(ident);
                        return zShowSessionForActiveService;
                    }
                    Slog.w("ActivityTaskManager", "showAssistFromActivity failed: caller " + caller + " is not visible");
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public boolean isRootVoiceInteraction(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    return false;
                }
                return r.rootVoiceInteraction;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocalVoiceInteractionStartedLocked(IBinder activity, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor) {
        ActivityRecord activityToCallback = ActivityRecord.forTokenLocked(activity);
        if (activityToCallback == null) {
            return;
        }
        activityToCallback.setVoiceSessionLocked(voiceSession);
        try {
            activityToCallback.app.getThread().scheduleLocalVoiceInteractionStarted(activity, voiceInteractor);
            long token = Binder.clearCallingIdentity();
            try {
                startRunningVoiceLocked(voiceSession, activityToCallback.info.applicationInfo.uid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        } catch (RemoteException e) {
            activityToCallback.clearVoiceSessionLocked();
        }
    }

    private void startRunningVoiceLocked(IVoiceInteractionSession session, int targetUid) {
        Slog.d("ActivityTaskManager", "<<<  startRunningVoiceLocked()");
        this.mVoiceWakeLock.setWorkSource(new WorkSource(targetUid));
        IVoiceInteractionSession iVoiceInteractionSession = this.mRunningVoice;
        if (iVoiceInteractionSession == null || iVoiceInteractionSession.asBinder() != session.asBinder()) {
            boolean wasRunningVoice = this.mRunningVoice != null;
            this.mRunningVoice = session;
            if (!wasRunningVoice) {
                this.mVoiceWakeLock.acquire();
                updateSleepIfNeededLocked();
            }
        }
    }

    void finishRunningVoiceLocked() {
        if (this.mRunningVoice != null) {
            this.mRunningVoice = null;
            this.mVoiceWakeLock.release();
            updateSleepIfNeededLocked();
        }
    }

    public void setVoiceKeepAwake(IVoiceInteractionSession session, boolean keepAwake) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mRunningVoice != null && this.mRunningVoice.asBinder() == session.asBinder()) {
                    if (keepAwake) {
                        this.mVoiceWakeLock.acquire();
                    } else {
                        this.mVoiceWakeLock.release();
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public ComponentName getActivityClassForToken(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    return null;
                }
                return r.intent.getComponent();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public String getPackageForToken(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    return null;
                }
                return r.packageName;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void showLockTaskEscapeMessage(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.forTokenLocked(token);
                if (r == null) {
                    return;
                }
                getLockTaskController().showLockTaskToast();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void keyguardGoingAway(int flags) {
        this.mAmInternal.enforceCallingPermission("android.permission.CONTROL_KEYGUARD", "unlock keyguard");
        enforceNotIsolatedCaller("keyguardGoingAway");
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mKeyguardController.keyguardGoingAway(flags);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(token);
            throw th2;
        }
    }

    public void positionTaskInStack(int taskId, int stackId, int position) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "positionTaskInStack()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long ident = Binder.clearCallingIdentity();
                try {
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId);
                    if (task == null) {
                        throw new IllegalArgumentException("positionTaskInStack: no task for id=" + taskId);
                    }
                    ActivityStack stack = this.mRootWindowContainer.getStack(stackId);
                    if (stack == null) {
                        throw new IllegalArgumentException("positionTaskInStack: no stack for id=" + stackId);
                    }
                    if (!stack.isActivityTypeStandardOrUndefined()) {
                        throw new IllegalArgumentException("positionTaskInStack: Attempt to change the position of task " + taskId + " in/to non-standard stack");
                    }
                    if (task.getStack() == stack) {
                        stack.positionChildAt(task, position);
                    } else {
                        task.reparent(stack, position, 2, false, false, "positionTaskInStack");
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void reportSizeConfigurations(IBinder token, int[] horizontalSizeConfiguration, int[] verticalSizeConfigurations, int[] smallestSizeConfigurations) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord record = ActivityRecord.isInStackLocked(token);
                if (record == null) {
                    throw new IllegalArgumentException("reportSizeConfigurations: ActivityRecord not found for: " + token);
                }
                record.setSizeConfigurations(horizontalSizeConfiguration, verticalSizeConfigurations, smallestSizeConfigurations);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void suppressResizeConfigChanges(boolean suppress) throws RemoteException {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "suppressResizeConfigChanges()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mSuppressResizeConfigChanges = suppress;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean moveTopActivityToPinnedStack(int stackId, Rect bounds) {
        boolean zMoveTopStackActivityToPinnedStack;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "moveTopActivityToPinnedStack()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (!this.mSupportsPictureInPicture) {
                    throw new IllegalStateException("moveTopActivityToPinnedStack:Device doesn't support picture-in-picture mode");
                }
                long ident = Binder.clearCallingIdentity();
                try {
                    zMoveTopStackActivityToPinnedStack = this.mRootWindowContainer.moveTopStackActivityToPinnedStack(stackId);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return zMoveTopStackActivityToPinnedStack;
    }

    boolean isInPictureInPictureMode(ActivityRecord r) {
        return (r == null || r.getRootTask() == null || !r.inPinnedWindowingMode() || r.getRootTask().isInTask(r) == null) ? false : true;
    }

    public boolean enterPictureInPictureMode(IBinder token, final PictureInPictureParams params) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    final ActivityRecord r = ensureValidPictureInPictureActivityParamsLocked("enterPictureInPictureMode", token, params);
                    if (isInPictureInPictureMode(r)) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return true;
                    }
                    if (!r.checkEnterPictureInPictureState("enterPictureInPictureMode", false)) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return false;
                    }
                    final Runnable enterPipRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$enterPictureInPictureMode$4$ActivityTaskManagerService(r, params);
                        }
                    };
                    if (isKeyguardLocked()) {
                        dismissKeyguard(token, new KeyguardDismissCallback() { // from class: com.android.server.wm.ActivityTaskManagerService.2
                            public void onDismissSucceeded() {
                                ActivityTaskManagerService.this.mH.post(enterPipRunnable);
                            }
                        }, null);
                    } else {
                        enterPipRunnable.run();
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                    return true;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public /* synthetic */ void lambda$enterPictureInPictureMode$4$ActivityTaskManagerService(ActivityRecord r, PictureInPictureParams params) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (r.getParent() == null) {
                    Slog.e("ActivityTaskManager", "Skip enterPictureInPictureMode, destroyed " + r);
                    return;
                }
                r.setPictureInPictureParams(params);
                float aspectRatio = r.pictureInPictureArgs.getAspectRatio();
                List<RemoteAction> actions = r.pictureInPictureArgs.getActions();
                this.mRootWindowContainer.moveActivityToPinnedStack(r, "enterPictureInPictureMode");
                ActivityStack stack = r.getRootTask();
                stack.setPictureInPictureAspectRatio(aspectRatio);
                stack.setPictureInPictureActions(actions);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setPictureInPictureParams(IBinder token, PictureInPictureParams params) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ensureValidPictureInPictureActivityParamsLocked("setPictureInPictureParams", token, params);
                    r.setPictureInPictureParams(params);
                    if (r.inPinnedWindowingMode()) {
                        ActivityStack stack = r.getRootTask();
                        stack.setPictureInPictureAspectRatio(r.pictureInPictureArgs.getAspectRatio());
                        stack.setPictureInPictureActions(r.pictureInPictureArgs.getActions());
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public int getMaxNumPictureInPictureActions(IBinder token) {
        return 3;
    }

    private ActivityRecord ensureValidPictureInPictureActivityParamsLocked(String caller, IBinder token, PictureInPictureParams params) {
        if (!this.mSupportsPictureInPicture) {
            throw new IllegalStateException(caller + ": Device doesn't support picture-in-picture mode.");
        }
        ActivityRecord r = ActivityRecord.forTokenLocked(token);
        if (r == null) {
            throw new IllegalStateException(caller + ": Can't find activity for token=" + token);
        }
        if (!r.supportsPictureInPicture()) {
            throw new IllegalStateException(caller + ": Current activity does not support picture-in-picture.");
        }
        if (params.hasSetAspectRatio() && !this.mWindowManager.isValidPictureInPictureAspectRatio(r.getDisplay(), params.getAspectRatio())) {
            float minAspectRatio = this.mContext.getResources().getFloat(R.dimen.activity_embedding_divider_touch_target_height);
            float maxAspectRatio = this.mContext.getResources().getFloat(R.dimen.activity_embedding_divider_handle_height_pressed);
            throw new IllegalArgumentException(String.format(caller + ": Aspect ratio is too extreme (must be between %f and %f).", Float.valueOf(minAspectRatio), Float.valueOf(maxAspectRatio)));
        }
        params.truncateActions(getMaxNumPictureInPictureActions(token));
        return r;
    }

    public IBinder getUriPermissionOwnerForActivity(IBinder activityToken) {
        Binder externalToken;
        enforceNotIsolatedCaller("getUriPermissionOwnerForActivity");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(activityToken);
                if (r == null) {
                    throw new IllegalArgumentException("Activity does not exist; token=" + activityToken);
                }
                externalToken = r.getUriPermissionsLocked().getExternalToken();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        return externalToken;
    }

    public void resizeDockedStack(Rect dockedBounds, Rect tempDockedTaskBounds, Rect tempDockedTaskInsetBounds, Rect tempOtherTaskBounds, Rect tempOtherTaskInsetBounds) {
        Rect primaryRect;
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "resizeDockedStack()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    TaskDisplayArea tc = this.mRootWindowContainer.getDefaultTaskDisplayArea();
                    Task primary = tc.getRootSplitScreenPrimaryTask();
                    Task secondary = tc.getTask(new Predicate() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$l_aPxHBjKyHZWF7sw_vGD5ZvoR4
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return ActivityTaskManagerService.lambda$resizeDockedStack$5((Task) obj);
                        }
                    });
                    if (primary != null && secondary != null) {
                        WindowContainerTransaction wct = new WindowContainerTransaction();
                        if (tempDockedTaskInsetBounds != null) {
                            primaryRect = tempDockedTaskInsetBounds;
                        } else {
                            primaryRect = tempDockedTaskBounds != null ? tempDockedTaskBounds : dockedBounds;
                        }
                        wct.setBounds(primary.mRemoteToken.toWindowContainerToken(), primaryRect);
                        Rect otherRect = tempOtherTaskInsetBounds != null ? tempOtherTaskInsetBounds : tempOtherTaskBounds;
                        if (otherRect == null) {
                            otherRect = new Rect(secondary.getBounds());
                            if (tc.getBounds().width() > tc.getBounds().height()) {
                                otherRect.left = primaryRect.right + 6;
                            } else {
                                otherRect.top = primaryRect.bottom + 6;
                            }
                        }
                        wct.setBounds(secondary.mRemoteToken.toWindowContainerToken(), otherRect);
                        this.mWindowOrganizerController.applyTransaction(wct);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    static /* synthetic */ boolean lambda$resizeDockedStack$5(Task t) {
        return t.mCreatedByOrganizer && t.isRootTask() && t.inSplitScreenSecondaryWindowingMode();
    }

    public void setSplitScreenResizing(boolean resizing) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "setSplitScreenResizing()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mStackSupervisor.setSplitScreenResizing(resizing);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public IWindowOrganizerController getWindowOrganizerController() {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "getWindowOrganizerController()");
        return this.mWindowOrganizerController;
    }

    public void enforceSystemHasVrFeature() {
        if (!this.mContext.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            throw new UnsupportedOperationException("VR mode not supported on this device!");
        }
    }

    public int setVrMode(IBinder token, boolean enabled, ComponentName packageName) {
        ActivityRecord r;
        enforceSystemHasVrFeature();
        VrManagerInternal vrService = (VrManagerInternal) LocalServices.getService(VrManagerInternal.class);
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                r = ActivityRecord.isInStackLocked(token);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (r == null) {
            throw new IllegalArgumentException();
        }
        int err = vrService.hasVrPackage(packageName, r.mUserId);
        if (err != 0) {
            return err;
        }
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    r.requestedVrComponent = enabled ? packageName : null;
                    if (r.isResumedActivityOnDisplay()) {
                        applyUpdateVrModeLocked(r);
                    }
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(callingId);
            return 0;
        } catch (Throwable th3) {
            Binder.restoreCallingIdentity(callingId);
            throw th3;
        }
    }

    public void startLocalVoiceInteraction(IBinder callingActivity, Bundle options) {
        Slog.i("ActivityTaskManager", "Activity tried to startLocalVoiceInteraction");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord activity = getTopDisplayFocusedStack().getTopNonFinishingActivity();
                if (ActivityRecord.forTokenLocked(callingActivity) != activity) {
                    throw new SecurityException("Only focused activity can call startVoiceInteraction");
                }
                if (this.mRunningVoice == null && activity.getTask().voiceSession == null && activity.voiceSession == null) {
                    if (activity.pendingVoiceInteractionStart) {
                        Slog.w("ActivityTaskManager", "Pending start of voice interaction already.");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    } else {
                        activity.pendingVoiceInteractionStart = true;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        ((VoiceInteractionManagerInternal) LocalServices.getService(VoiceInteractionManagerInternal.class)).startLocalVoiceInteraction(callingActivity, options);
                        return;
                    }
                }
                Slog.w("ActivityTaskManager", "Already in a voice interaction, cannot start new voice interaction");
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void stopLocalVoiceInteraction(IBinder callingActivity) {
        ((VoiceInteractionManagerInternal) LocalServices.getService(VoiceInteractionManagerInternal.class)).stopLocalVoiceInteraction(callingActivity);
    }

    public boolean supportsLocalVoiceInteraction() {
        return ((VoiceInteractionManagerInternal) LocalServices.getService(VoiceInteractionManagerInternal.class)).supportsLocalVoiceInteraction();
    }

    public boolean updateConfiguration(Configuration values) {
        this.mAmInternal.enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "updateConfiguration()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mWindowManager == null) {
                    Slog.w("ActivityTaskManager", "Skip updateConfiguration because mWindowManager isn't set");
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                }
                if (values == null) {
                    values = this.mWindowManager.computeNewConfiguration(0);
                }
                this.mH.sendMessage(PooledLambda.obtainMessage($$Lambda$ADNhW0r9Skcs9ezrOGURijIlyQ.INSTANCE, this.mAmInternal, 0));
                long origId = Binder.clearCallingIdentity();
                if (values != null) {
                    try {
                        Settings.System.clearConfiguration(values);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(origId);
                        throw th;
                    }
                }
                updateConfigurationLocked(values, null, false, false, -10000, false, this.mTmpUpdateConfigurationResult);
                boolean z = this.mTmpUpdateConfigurationResult.changes != 0;
                Binder.restoreCallingIdentity(origId);
                WindowManagerService.resetPriorityAfterLockedSection();
                return z;
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void dismissKeyguard(IBinder token, IKeyguardDismissCallback callback, CharSequence message) {
        if (message != null) {
            this.mAmInternal.enforceCallingPermission("android.permission.SHOW_KEYGUARD_MESSAGE", "dismissKeyguard()");
        }
        long callingId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mKeyguardController.dismissKeyguard(token, callback, message);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(callingId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(callingId);
            throw th2;
        }
    }

    public void cancelTaskWindowTransition(int taskId) {
        enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACTIVITY_STACKS", "cancelTaskWindowTransition()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = this.mRootWindowContainer.anyTaskForId(taskId, 0);
                    if (task == null) {
                        Slog.w("ActivityTaskManager", "cancelTaskWindowTransition: taskId=" + taskId + " not found");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return;
                    }
                    task.cancelTaskWindowTransition();
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public ActivityManager.TaskSnapshot getTaskSnapshot(int taskId, boolean isLowResolution) {
        enforceCallerIsRecentsOrHasPermission("android.permission.READ_FRAME_BUFFER", "getTaskSnapshot()");
        long ident = Binder.clearCallingIdentity();
        try {
            return getTaskSnapshot(taskId, isLowResolution, true);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ActivityManager.TaskSnapshot getTaskSnapshot(int taskId, boolean isLowResolution, boolean restoreFromDisk) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                Task task = this.mRootWindowContainer.anyTaskForId(taskId, 1);
                if (task == null) {
                    Slog.w("ActivityTaskManager", "getTaskSnapshot: taskId=" + taskId + " not found");
                    return null;
                }
                return task.getSnapshot(isLowResolution, restoreFromDisk);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setDisablePreviewScreenshots(IBinder token, boolean disable) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    Slog.w("ActivityTaskManager", "setDisablePreviewScreenshots: Unable to find activity for token=" + token);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.setDisablePreviewScreenshots(disable);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void invalidateHomeTaskSnapshot(IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r != null && r.isActivityTypeHome()) {
                    this.mWindowManager.mTaskSnapshotController.removeSnapshotCache(r.getTask().mTaskId);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public int getLastResumedActivityUserId() {
        this.mAmInternal.enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "getLastResumedActivityUserId()");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mLastResumedActivity == null) {
                    return getCurrentUserId();
                }
                return this.mLastResumedActivity.mUserId;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void updateLockTaskFeatures(int userId, int flags) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != 1000) {
            this.mAmInternal.enforceCallingPermission("android.permission.UPDATE_LOCK_TASK_PACKAGES", "updateLockTaskFeatures()");
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                getLockTaskController().updateLockTaskFeatures(userId, flags);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setShowWhenLocked(IBinder token, boolean showWhenLocked) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.setShowWhenLocked(showWhenLocked);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void setInheritShowWhenLocked(IBinder token, boolean inheritShowWhenLocked) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.setInheritShowWhenLocked(inheritShowWhenLocked);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void setTurnScreenOn(IBinder token, boolean turnScreenOn) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.setTurnScreenOn(turnScreenOn);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void registerRemoteAnimations(IBinder token, RemoteAnimationDefinition definition) {
        this.mAmInternal.enforceCallingPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS", "registerRemoteAnimations");
        definition.setCallingPidUid(Binder.getCallingPid(), Binder.getCallingUid());
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.registerRemoteAnimations(definition);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void unregisterRemoteAnimations(IBinder token) {
        this.mAmInternal.enforceCallingPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS", "unregisterRemoteAnimations");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityRecord r = ActivityRecord.isInStackLocked(token);
                if (r == null) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    r.unregisterRemoteAnimations();
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void registerRemoteAnimationForNextActivityStart(String packageName, RemoteAnimationAdapter adapter) {
        this.mAmInternal.enforceCallingPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS", "registerRemoteAnimationForNextActivityStart");
        adapter.setCallingPidUid(Binder.getCallingPid(), Binder.getCallingUid());
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    getActivityStartController().registerRemoteAnimationForNextActivityStart(packageName, adapter);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void registerRemoteAnimationsForDisplay(int displayId, RemoteAnimationDefinition definition) {
        this.mAmInternal.enforceCallingPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS", "registerRemoteAnimations");
        definition.setCallingPidUid(Binder.getCallingPid(), Binder.getCallingUid());
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                DisplayContent display = this.mRootWindowContainer.getDisplayContent(displayId);
                if (display == null) {
                    Slog.e("ActivityTaskManager", "Couldn't find display with id: " + displayId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return;
                }
                long origId = Binder.clearCallingIdentity();
                try {
                    display.mDisplayContent.registerRemoteAnimations(definition);
                    Binder.restoreCallingIdentity(origId);
                    WindowManagerService.resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void alwaysShowUnsupportedCompileSdkWarning(ComponentName activity) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                long origId = Binder.clearCallingIdentity();
                try {
                    this.mAppWarnings.alwaysShowUnsupportedCompileSdkWarning(activity);
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(origId);
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
    }

    public void setVrThread(int tid) {
        enforceSystemHasVrFeature();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                int pid = Binder.getCallingPid();
                WindowProcessController wpc = this.mProcessMap.getProcess(pid);
                this.mVrController.setVrThreadLocked(tid, pid, wpc);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setPersistentVrThread(int tid) {
        if (checkCallingPermission("android.permission.RESTRICTED_VR_ACCESS") != 0) {
            String msg = "Permission Denial: setPersistentVrThread() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.RESTRICTED_VR_ACCESS";
            Slog.w("ActivityTaskManager", msg);
            throw new SecurityException(msg);
        }
        enforceSystemHasVrFeature();
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                int pid = Binder.getCallingPid();
                WindowProcessController proc = this.mProcessMap.getProcess(pid);
                this.mVrController.setPersistentVrThreadLocked(tid, pid, proc);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void stopAppSwitches() {
        enforceCallerIsRecentsOrHasPermission("android.permission.STOP_APP_SWITCHES", "stopAppSwitches");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mAppSwitchesAllowedTime = SystemClock.uptimeMillis() + APP_SWITCH_DELAY_TIME;
                this.mLastStopAppSwitchesTime = SystemClock.uptimeMillis();
                this.mDidAppSwitch = false;
                getActivityStartController().schedulePendingActivityLaunches(APP_SWITCH_DELAY_TIME);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void resumeAppSwitches() {
        enforceCallerIsRecentsOrHasPermission("android.permission.STOP_APP_SWITCHES", "resumeAppSwitches");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mAppSwitchesAllowedTime = 0L;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    long getLastStopAppSwitchesTime() {
        return this.mLastStopAppSwitchesTime;
    }

    void onStartActivitySetDidAppSwitch() {
        if (this.mDidAppSwitch) {
            this.mAppSwitchesAllowedTime = 0L;
        } else {
            this.mDidAppSwitch = true;
        }
    }

    boolean shouldDisableNonVrUiLocked() {
        return this.mVrController.shouldDisableNonVrUiLocked();
    }

    private void applyUpdateVrModeLocked(final ActivityRecord r) {
        if (r.requestedVrComponent != null && r.getDisplayId() != 0) {
            Slog.i("ActivityTaskManager", "Moving " + r.shortComponentName + " from display " + r.getDisplayId() + " to main display for VR");
            this.mRootWindowContainer.moveStackToDisplay(r.getRootTaskId(), 0, true);
        }
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$nuSrfdXdOXcutw3SV8Ualpreu30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyUpdateVrModeLocked$6$ActivityTaskManagerService(r);
            }
        });
    }

    public /* synthetic */ void lambda$applyUpdateVrModeLocked$6$ActivityTaskManagerService(ActivityRecord r) {
        if (!this.mVrController.onVrModeChanged(r)) {
            return;
        }
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                boolean disableNonVrUi = this.mVrController.shouldDisableNonVrUiLocked();
                this.mWindowManager.disableNonVrUi(disableNonVrUi);
                if (disableNonVrUi) {
                    this.mRootWindowContainer.removeStacksInWindowingModes(2);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public int getPackageScreenCompatMode(String packageName) {
        int packageScreenCompatModeLocked;
        enforceNotIsolatedCaller("getPackageScreenCompatMode");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                packageScreenCompatModeLocked = this.mCompatModePackages.getPackageScreenCompatModeLocked(packageName);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return packageScreenCompatModeLocked;
    }

    public void setPackageScreenCompatMode(String packageName, int mode) {
        this.mAmInternal.enforceCallingPermission("android.permission.SET_SCREEN_COMPATIBILITY", "setPackageScreenCompatMode");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mCompatModePackages.setPackageScreenCompatModeLocked(packageName, mode);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean getPackageAskScreenCompat(String packageName) {
        boolean packageAskCompatModeLocked;
        enforceNotIsolatedCaller("getPackageAskScreenCompat");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                packageAskCompatModeLocked = this.mCompatModePackages.getPackageAskCompatModeLocked(packageName);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return packageAskCompatModeLocked;
    }

    public void setPackageAskScreenCompat(String packageName, boolean ask) {
        this.mAmInternal.enforceCallingPermission("android.permission.SET_SCREEN_COMPATIBILITY", "setPackageAskScreenCompat");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mCompatModePackages.setPackageAskCompatModeLocked(packageName, ask);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public static String relaunchReasonToString(int relaunchReason) {
        if (relaunchReason == 1) {
            return "window_resize";
        }
        if (relaunchReason == 2) {
            return "free_resize";
        }
        return null;
    }

    ActivityStack getTopDisplayFocusedStack() {
        return this.mRootWindowContainer.getTopDisplayFocusedStack();
    }

    void notifyTaskPersisterLocked(Task task, boolean flush) {
        this.mRecentTasks.notifyTaskPersisterLocked(task, flush);
    }

    boolean isKeyguardLocked() {
        return this.mKeyguardController.isKeyguardLocked();
    }

    public void clearLaunchParamsForPackages(List<String> packageNames) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "clearLaunchParamsForPackages");
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                for (int i = 0; i < packageNames.size(); i++) {
                    this.mStackSupervisor.mLaunchParamsPersister.removeRecordForPackage(packageNames.get(i));
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void setDisplayToSingleTaskInstance(int displayId) {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "setDisplayToSingleTaskInstance");
        long origId = Binder.clearCallingIdentity();
        try {
            DisplayContent display = this.mRootWindowContainer.getDisplayContentOrCreate(displayId);
            if (display != null) {
                display.setDisplayToSingleTaskInstance();
            }
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    public void requestPictureInPictureMode(IBinder token) throws RemoteException {
        this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "requestPictureInPictureMode");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord activity = ActivityRecord.forTokenLocked(token);
                    if (activity != null) {
                        if (isInPictureInPictureMode(activity)) {
                            throw new IllegalStateException("Activity is already in PIP mode");
                        }
                        boolean canEnterPictureInPicture = activity.checkEnterPictureInPictureState("requestPictureInPictureMode", false);
                        if (!canEnterPictureInPicture) {
                            throw new IllegalStateException("Requested PIP on an activity that doesn't support it");
                        }
                        try {
                            ClientTransaction transaction = ClientTransaction.obtain(activity.app.getThread(), activity.token);
                            transaction.addCallback(EnterPipRequestedItem.obtain());
                            getLifecycleManager().scheduleTransaction(transaction);
                        } catch (Exception e) {
                            Slog.w("ActivityTaskManager", "Failed to send enter pip requested item: " + activity.intent.getComponent(), e);
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    void dumpLastANRLocked(PrintWriter pw) {
        pw.println("ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)");
        String str = this.mLastANRState;
        if (str == null) {
            pw.println("  <no ANR has occurred since boot>");
        } else {
            pw.println(str);
        }
    }

    void dumpLastANRTracesLocked(PrintWriter pw) {
        pw.println("ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)");
        File[] files = new File(ActivityManagerService.ANR_TRACE_DIR).listFiles();
        if (ArrayUtils.isEmpty(files)) {
            pw.println("  <no ANR has occurred since boot>");
            return;
        }
        File latest = null;
        for (File f : files) {
            if (latest == null || latest.lastModified() < f.lastModified()) {
                latest = f;
            }
        }
        pw.print("File: ");
        pw.print(latest.getName());
        pw.println();
        try {
            BufferedReader in = new BufferedReader(new FileReader(latest));
            while (true) {
                try {
                    String line = in.readLine();
                    if (line != null) {
                        pw.println(line);
                    } else {
                        in.close();
                        return;
                    }
                } catch (Throwable th) {
                    try {
                        in.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
                pw.print("Unable to read: ");
                pw.print(e);
                pw.println();
            }
        } catch (IOException e) {
            pw.print("Unable to read: ");
            pw.print(e);
            pw.println();
        }
    }

    void dumpActivitiesLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, boolean dumpClient, String dumpPackage) {
        dumpActivitiesLocked(fd, pw, args, opti, dumpAll, dumpClient, dumpPackage, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)");
    }

    void dumpActivitiesLocked(FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, boolean dumpClient, String dumpPackage, String header) {
        boolean needSep;
        pw.println(header);
        boolean printedAnything = this.mRootWindowContainer.dumpActivities(fd, pw, dumpAll, dumpClient, dumpPackage);
        boolean printed = ActivityStackSupervisor.printThisActivity(pw, this.mRootWindowContainer.getTopResumedActivity(), dumpPackage, printedAnything, "  ResumedActivity: ", null);
        if (!printed) {
            needSep = printedAnything;
        } else {
            printedAnything = true;
            needSep = false;
        }
        if (dumpPackage == null) {
            if (needSep) {
                pw.println();
            }
            printedAnything = true;
            this.mStackSupervisor.dump(pw, "  ");
            this.mTaskOrganizerController.dump(pw, "  ");
        }
        if (!printedAnything) {
            pw.println("  (nothing)");
        }
    }

    void dumpActivityContainersLocked(PrintWriter pw) {
        pw.println("ACTIVITY MANAGER CONTAINERS (dumpsys activity containers)");
        this.mRootWindowContainer.dumpChildrenNames(pw, " ");
        pw.println(" ");
    }

    void dumpActivityStarterLocked(PrintWriter pw, String dumpPackage) {
        pw.println("ACTIVITY MANAGER STARTER (dumpsys activity starter)");
        getActivityStartController().dump(pw, "", dumpPackage);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00c6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean dumpActivity(java.io.FileDescriptor r24, java.io.PrintWriter r25, java.lang.String r26, java.lang.String[] r27, int r28, boolean r29, boolean r30, boolean r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityTaskManagerService.dumpActivity(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String, java.lang.String[], int, boolean, boolean, boolean):boolean");
    }

    private void dumpActivity(String prefix, FileDescriptor fd, PrintWriter pw, ActivityRecord r, String[] args, boolean dumpAll) {
        String innerPrefix = prefix + "  ";
        IApplicationThread appThread = null;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                pw.print(prefix);
                pw.print("ACTIVITY ");
                pw.print(r.shortComponentName);
                pw.print(" ");
                pw.print(Integer.toHexString(System.identityHashCode(r)));
                pw.print(" pid=");
                if (r.hasProcess()) {
                    pw.println(r.app.getPid());
                    appThread = r.app.getThread();
                } else {
                    pw.println("(not running)");
                }
                if (dumpAll) {
                    r.dump(pw, innerPrefix, true);
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (appThread != null) {
            pw.flush();
            try {
                TransferPipe tp = new TransferPipe();
                try {
                    appThread.dumpActivity(tp.getWriteFd(), r.appToken, innerPrefix, args);
                    tp.go(fd);
                    tp.close();
                } catch (Throwable th2) {
                    try {
                        tp.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (RemoteException e) {
                pw.println(innerPrefix + "Got a RemoteException while dumping the activity");
            } catch (IOException e2) {
                pw.println(innerPrefix + "Failure while dumping the activity: " + e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSleepStateToProto(ProtoOutputStream proto, int wakeFullness, boolean testPssMode) {
        long sleepToken = proto.start(1146756268059L);
        proto.write(1159641169921L, PowerManagerInternal.wakefulnessToProtoEnum(wakeFullness));
        int tokenSize = this.mRootWindowContainer.mSleepTokens.size();
        for (int i = 0; i < tokenSize; i++) {
            RootWindowContainer.SleepToken st = this.mRootWindowContainer.mSleepTokens.valueAt(i);
            proto.write(2237677961218L, st.toString());
        }
        proto.write(1133871366147L, this.mSleeping);
        proto.write(1133871366148L, this.mShuttingDown);
        proto.write(1133871366149L, testPssMode);
        proto.end(sleepToken);
    }

    int getCurrentUserId() {
        return this.mAmInternal.getCurrentUserId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceNotIsolatedCaller(String caller) {
        if (UserHandle.isIsolated(Binder.getCallingUid())) {
            throw new SecurityException("Isolated process not allowed to call " + caller);
        }
    }

    public Configuration getConfiguration() {
        Configuration ci;
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ci = new Configuration(getGlobalConfigurationForCallingPid());
                ci.userSetLocale = false;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return ci;
    }

    Configuration getGlobalConfiguration() {
        RootWindowContainer rootWindowContainer = this.mRootWindowContainer;
        return rootWindowContainer != null ? rootWindowContainer.getConfiguration() : new Configuration();
    }

    boolean updateConfigurationLocked(Configuration values, ActivityRecord starting, boolean initLocale) {
        return updateConfigurationLocked(values, starting, initLocale, false);
    }

    boolean updateConfigurationLocked(Configuration values, ActivityRecord starting, boolean initLocale, boolean deferResume) {
        return updateConfigurationLocked(values, starting, initLocale, false, -10000, deferResume);
    }

    public void updatePersistentConfiguration(Configuration values, int userId) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    updateConfigurationLocked(values, null, false, true, userId, false);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateConfigurationLocked(Configuration values, ActivityRecord starting, boolean initLocale, boolean persistent, int userId, boolean deferResume) {
        return updateConfigurationLocked(values, starting, initLocale, persistent, userId, deferResume, null);
    }

    boolean updateConfigurationLocked(Configuration values, ActivityRecord starting, boolean initLocale, boolean persistent, int userId, boolean deferResume, UpdateConfigurationResult result) {
        int changes = 0;
        deferWindowLayout();
        if (values != null) {
            try {
                changes = updateGlobalConfigurationLocked(values, initLocale, persistent, userId, deferResume);
            } catch (Throwable th) {
                continueWindowLayout();
                throw th;
            }
        }
        boolean kept = ensureConfigAndVisibilityAfterUpdate(starting, changes);
        continueWindowLayout();
        if (result != null) {
            result.changes = changes;
            result.activityRelaunched = !kept;
        }
        return kept;
    }

    int updateGlobalConfigurationLocked(Configuration values, boolean initLocale, boolean persistent, int userId, boolean deferResume) {
        DisplayContent defaultDisplay = this.mRootWindowContainer.getDisplayContent(0);
        this.mTempConfig.setTo(getGlobalConfiguration());
        int changes = this.mTempConfig.updateFrom(values);
        if (changes == 0) {
            defaultDisplay.performDisplayOverrideConfigUpdate(values, deferResume);
            return 0;
        }
        Slog.i("ActivityTaskManager", "Updating global configuration to: " + values);
        com.android.server.am.EventLogTags.writeConfigurationChanged(changes);
        FrameworkStatsLog.write(66, values.colorMode, values.densityDpi, values.fontScale, values.hardKeyboardHidden, values.keyboard, values.keyboardHidden, values.mcc, values.mnc, values.navigation, values.navigationHidden, values.orientation, values.screenHeightDp, values.screenLayout, values.screenWidthDp, values.smallestScreenWidthDp, values.touchscreen, values.uiMode);
        if (!initLocale && !values.getLocales().isEmpty() && values.userSetLocale) {
            LocaleList locales = values.getLocales();
            int bestLocaleIndex = 0;
            if (locales.size() > 1) {
                if (this.mSupportedSystemLocales == null) {
                    this.mSupportedSystemLocales = Resources.getSystem().getAssets().getLocales();
                }
                bestLocaleIndex = Math.max(0, locales.getFirstMatchIndex(this.mSupportedSystemLocales));
            }
            SystemProperties.set("persist.sys.locale", locales.get(bestLocaleIndex).toLanguageTag());
            LocaleList.setDefault(locales, bestLocaleIndex);
            Message m = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((ActivityTaskManagerService) obj).sendLocaleToMountDaemonMsg((Locale) obj2);
                }
            }, this, locales.get(bestLocaleIndex));
            this.mH.sendMessage(m);
        }
        this.mTempConfig.seq = increaseConfigurationSeqLocked();
        this.mRootWindowContainer.onConfigurationChanged(this.mTempConfig);
        Slog.i("ActivityTaskManager", "Config changes=" + Integer.toHexString(changes) + " " + this.mTempConfig);
        this.mUsageStatsInternal.reportConfigurationChange(this.mTempConfig, this.mAmInternal.getCurrentUserId());
        updateShouldShowDialogsLocked(this.mTempConfig);
        AttributeCache ac = AttributeCache.instance();
        if (ac != null) {
            ac.updateConfiguration(this.mTempConfig);
        }
        this.mSystemThread.applyConfigurationToResources(this.mTempConfig);
        Configuration configCopy = new Configuration(this.mTempConfig);
        if (persistent && Settings.System.hasInterestingConfigurationChanges(changes)) {
            Message msg = PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((ActivityTaskManagerService) obj).sendPutConfigurationForUserMsg(((Integer) obj2).intValue(), (Configuration) obj3);
                }
            }, this, Integer.valueOf(userId), configCopy);
            this.mH.sendMessage(msg);
        }
        SparseArray<WindowProcessController> pidMap = this.mProcessMap.getPidMap();
        for (int i = pidMap.size() - 1; i >= 0; i--) {
            int pid = pidMap.keyAt(i);
            WindowProcessController app = pidMap.get(pid);
            app.onConfigurationChanged(configCopy);
        }
        Message msg2 = PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((ActivityManagerInternal) obj).broadcastGlobalConfigurationChanged(((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue());
            }
        }, this.mAmInternal, Integer.valueOf(changes), Boolean.valueOf(initLocale));
        this.mH.sendMessage(msg2);
        defaultDisplay.performDisplayOverrideConfigUpdate(this.mRootWindowContainer.getConfiguration(), deferResume);
        return changes;
    }

    void deferWindowLayout() {
        if (!this.mWindowManager.mWindowPlacerLocked.isLayoutDeferred()) {
            this.mLayoutReasons = 0;
        }
        this.mWindowManager.mWindowPlacerLocked.deferLayout();
    }

    void continueWindowLayout() {
        this.mWindowManager.mWindowPlacerLocked.continueLayout(this.mLayoutReasons != 0);
    }

    void addWindowLayoutReasons(int reasons) {
        this.mLayoutReasons |= reasons;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEventDispatchingLocked(boolean booted) {
        this.mWindowManager.setEventDispatching(booted && !this.mShuttingDown);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPutConfigurationForUserMsg(int userId, Configuration config) {
        ContentResolver resolver = this.mContext.getContentResolver();
        Settings.System.putConfigurationForUser(resolver, config, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLocaleToMountDaemonMsg(Locale l) {
        try {
            IBinder service = ServiceManager.getService("mount");
            IStorageManager storageManager = IStorageManager.Stub.asInterface(service);
            Log.d("ActivityTaskManager", "Storing locale " + l.toLanguageTag() + " for decryption UI");
            storageManager.setField("SystemLocale", l.toLanguageTag());
        } catch (RemoteException e) {
            Log.e("ActivityTaskManager", "Error storing locale for decryption UI", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expireStartAsCallerTokenMsg(IBinder permissionToken) {
        this.mStartActivitySources.remove(permissionToken);
        this.mExpiredStartAsCallerTokens.add(permissionToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forgetStartAsCallerTokenMsg(IBinder permissionToken) {
        this.mExpiredStartAsCallerTokens.remove(permissionToken);
    }

    boolean isActivityStartsLoggingEnabled() {
        return this.mAmInternal.isActivityStartsLoggingEnabled();
    }

    boolean isBackgroundActivityStartsEnabled() {
        return this.mAmInternal.isBackgroundActivityStartsEnabled();
    }

    static long getInputDispatchingTimeoutLocked(ActivityRecord r) {
        if (r == null || !r.hasProcess()) {
            return APP_SWITCH_DELAY_TIME;
        }
        return getInputDispatchingTimeoutLocked(r.app);
    }

    private static long getInputDispatchingTimeoutLocked(WindowProcessController r) {
        return r != null ? r.getInputDispatchingTimeout() : APP_SWITCH_DELAY_TIME;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShouldShowDialogsLocked(Configuration config) {
        boolean z = false;
        boolean inputMethodExists = (config.keyboard == 1 && config.touchscreen == 1 && config.navigation == 1) ? false : true;
        boolean hideDialogsSet = Settings.Global.getInt(this.mContext.getContentResolver(), "hide_error_dialogs", 0) != 0;
        if (inputMethodExists && ActivityTaskManager.currentUiModeSupportsErrorDialogs(config) && !hideDialogsSet) {
            z = true;
        }
        this.mShowDialogs = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFontScaleIfNeeded(int userId) {
        float scaleFactor = Settings.System.getFloatForUser(this.mContext.getContentResolver(), "font_scale", 1.0f, userId);
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (getGlobalConfiguration().fontScale == scaleFactor) {
                    return;
                }
                Configuration configuration = this.mWindowManager.computeNewConfiguration(0);
                configuration.fontScale = scaleFactor;
                updatePersistentConfiguration(configuration, userId);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    boolean isSleepingOrShuttingDownLocked() {
        return isSleepingLocked() || this.mShuttingDown;
    }

    boolean isSleepingLocked() {
        return this.mSleeping;
    }

    void setResumedActivityUncheckLocked(ActivityRecord r, String reason) {
        IVoiceInteractionSession session;
        Task task = r.getTask();
        if (task.isActivityTypeStandard()) {
            if (this.mCurAppTimeTracker != r.appTimeTracker) {
                AppTimeTracker appTimeTracker = this.mCurAppTimeTracker;
                if (appTimeTracker != null) {
                    appTimeTracker.stop();
                    this.mH.obtainMessage(1, this.mCurAppTimeTracker).sendToTarget();
                    this.mRootWindowContainer.clearOtherAppTimeTrackers(r.appTimeTracker);
                    this.mCurAppTimeTracker = null;
                }
                if (r.appTimeTracker != null) {
                    this.mCurAppTimeTracker = r.appTimeTracker;
                    startTimeTrackingFocusedActivityLocked();
                }
            } else {
                startTimeTrackingFocusedActivityLocked();
            }
        } else {
            r.appTimeTracker = null;
        }
        if (task.voiceInteractor != null) {
            startRunningVoiceLocked(task.voiceSession, r.info.applicationInfo.uid);
        } else {
            finishRunningVoiceLocked();
            ActivityRecord activityRecord = this.mLastResumedActivity;
            if (activityRecord != null) {
                Task lastResumedActivityTask = activityRecord.getTask();
                if (lastResumedActivityTask != null && lastResumedActivityTask.voiceSession != null) {
                    session = lastResumedActivityTask.voiceSession;
                } else {
                    session = this.mLastResumedActivity.voiceSession;
                }
                if (session != null) {
                    finishVoiceTask(session);
                }
            }
        }
        if (this.mLastResumedActivity != null && r.mUserId != this.mLastResumedActivity.mUserId) {
            this.mAmInternal.sendForegroundProfileChanged(r.mUserId);
        }
        ActivityRecord activityRecord2 = this.mLastResumedActivity;
        Task prevTask = activityRecord2 != null ? activityRecord2.getTask() : null;
        updateResumedAppTrace(r);
        this.mLastResumedActivity = r;
        r.getDisplay().setFocusedApp(r, true);
        if (prevTask == null || task != prevTask) {
            if (prevTask != null) {
                this.mTaskChangeNotificationController.notifyTaskFocusChanged(prevTask.mTaskId, false);
            }
            this.mTaskChangeNotificationController.notifyTaskFocusChanged(task.mTaskId, true);
        }
        applyUpdateLockStateLocked(r);
        applyUpdateVrModeLocked(r);
        EventLogTags.writeWmSetResumedActivity(r == null ? -1 : r.mUserId, r == null ? "NULL" : r.shortComponentName, reason);
    }

    final class SleepTokenAcquirerImpl implements ActivityTaskManagerInternal.SleepTokenAcquirer {
        private final SparseArray<RootWindowContainer.SleepToken> mSleepTokens = new SparseArray<>();
        private final String mTag;

        SleepTokenAcquirerImpl(String tag) {
            this.mTag = tag;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal.SleepTokenAcquirer
        public void acquire(int displayId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (!this.mSleepTokens.contains(displayId)) {
                        this.mSleepTokens.append(displayId, ActivityTaskManagerService.this.mRootWindowContainer.createSleepToken(this.mTag, displayId));
                        ActivityTaskManagerService.this.updateSleepIfNeededLocked();
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal.SleepTokenAcquirer
        public void release(int displayId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    RootWindowContainer.SleepToken token = this.mSleepTokens.get(displayId);
                    if (token != null) {
                        ActivityTaskManagerService.this.mRootWindowContainer.removeSleepToken(token);
                        this.mSleepTokens.remove(displayId);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    void updateSleepIfNeededLocked() {
        boolean shouldSleep = !this.mRootWindowContainer.hasAwakeDisplay();
        boolean wasSleeping = this.mSleeping;
        boolean updateOomAdj = false;
        if (!shouldSleep) {
            if (wasSleeping) {
                this.mSleeping = false;
                FrameworkStatsLog.write(14, 2);
                startTimeTrackingFocusedActivityLocked();
                this.mTopProcessState = 2;
                Slog.d("ActivityTaskManager", "Top Process State changed to PROCESS_STATE_TOP");
                this.mStackSupervisor.comeOutOfSleepIfNeededLocked();
            }
            this.mRootWindowContainer.applySleepTokens(true);
            if (wasSleeping) {
                updateOomAdj = true;
            }
        } else if (!this.mSleeping && shouldSleep) {
            this.mSleeping = true;
            FrameworkStatsLog.write(14, 1);
            AppTimeTracker appTimeTracker = this.mCurAppTimeTracker;
            if (appTimeTracker != null) {
                appTimeTracker.stop();
            }
            this.mTopProcessState = 12;
            Slog.d("ActivityTaskManager", "Top Process State changed to PROCESS_STATE_TOP_SLEEPING");
            this.mStackSupervisor.goingToSleepLocked();
            updateResumedAppTrace(null);
            updateOomAdj = true;
        }
        if (updateOomAdj) {
            updateOomAdj();
        }
    }

    void updateOomAdj() {
        this.mH.removeCallbacks(this.mUpdateOomAdjRunnable);
        this.mH.post(this.mUpdateOomAdjRunnable);
    }

    void updateCpuStats() {
        H h = this.mH;
        final ActivityManagerInternal activityManagerInternal = this.mAmInternal;
        Objects.requireNonNull(activityManagerInternal);
        h.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0
            @Override // java.lang.Runnable
            public final void run() {
                activityManagerInternal.updateCpuStats();
            }
        });
    }

    void updateBatteryStats(ActivityRecord component, boolean resumed) {
        Message m = PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.wm.-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((ActivityManagerInternal) obj).updateBatteryStats((ComponentName) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), ((Boolean) obj5).booleanValue());
            }
        }, this.mAmInternal, component.mActivityComponent, Integer.valueOf(component.app.mUid), Integer.valueOf(component.mUserId), Boolean.valueOf(resumed));
        this.mH.sendMessage(m);
    }

    void updateActivityUsageStats(ActivityRecord activity, int event) {
        ActivityRecord rootActivity;
        ComponentName taskRoot = null;
        Task task = activity.getTask();
        if (task != null && (rootActivity = task.getRootActivity()) != null) {
            taskRoot = rootActivity.mActivityComponent;
        }
        Message m = PooledLambda.obtainMessage(new HexConsumer() { // from class: com.android.server.wm.-$$Lambda$UZl9uqUNteVgplGGEK6TMzf-7zk
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                ((ActivityManagerInternal) obj).updateActivityUsageStats((ComponentName) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), (ActivityRecord.Token) obj5, (ComponentName) obj6);
            }
        }, this.mAmInternal, activity.mActivityComponent, Integer.valueOf(activity.mUserId), Integer.valueOf(event), activity.appToken, taskRoot);
        this.mH.sendMessage(m);
    }

    void startProcessAsync(ActivityRecord activity, boolean knownToBeDead, boolean isTop, String hostingType) {
        try {
            if (Trace.isTagEnabled(32L)) {
                Trace.traceBegin(32L, "dispatchingStartProcess:" + activity.processName);
            }
            Message m = PooledLambda.obtainMessage(new HeptConsumer() { // from class: com.android.server.wm.-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
                    ((ActivityManagerInternal) obj).startProcess((String) obj2, (ApplicationInfo) obj3, ((Boolean) obj4).booleanValue(), ((Boolean) obj5).booleanValue(), (String) obj6, (ComponentName) obj7);
                }
            }, this.mAmInternal, activity.processName, activity.info.applicationInfo, Boolean.valueOf(knownToBeDead), Boolean.valueOf(isTop), hostingType, activity.intent.getComponent());
            this.mH.sendMessage(m);
        } finally {
            Trace.traceEnd(32L);
        }
    }

    void setBooting(boolean booting) {
        this.mAmInternal.setBooting(booting);
    }

    boolean isBooting() {
        return this.mAmInternal.isBooting();
    }

    void setBooted(boolean booted) {
        this.mAmInternal.setBooted(booted);
    }

    boolean isBooted() {
        return this.mAmInternal.isBooted();
    }

    void postFinishBooting(final boolean finishBooting, final boolean enableScreen) {
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postFinishBooting$7$ActivityTaskManagerService(finishBooting, enableScreen);
            }
        });
    }

    public /* synthetic */ void lambda$postFinishBooting$7$ActivityTaskManagerService(boolean finishBooting, boolean enableScreen) {
        if (finishBooting) {
            this.mAmInternal.finishBooting();
        }
        if (enableScreen) {
            this.mInternal.enableScreenAfterBoot(isBooted());
        }
    }

    void setHeavyWeightProcess(ActivityRecord root) {
        this.mHeavyWeightProcess = root.app;
        Message m = PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((ActivityTaskManagerService) obj).postHeavyWeightProcessNotification((WindowProcessController) obj2, (Intent) obj3, ((Integer) obj4).intValue());
            }
        }, this, root.app, root.intent, Integer.valueOf(root.mUserId));
        this.mH.sendMessage(m);
    }

    void clearHeavyWeightProcessIfEquals(WindowProcessController proc) {
        WindowProcessController windowProcessController = this.mHeavyWeightProcess;
        if (windowProcessController == null || windowProcessController != proc) {
            return;
        }
        this.mHeavyWeightProcess = null;
        Message m = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityTaskManagerService) obj).cancelHeavyWeightProcessNotification(((Integer) obj2).intValue());
            }
        }, this, Integer.valueOf(proc.mUserId));
        this.mH.sendMessage(m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelHeavyWeightProcessNotification(int userId) {
        INotificationManager inm = NotificationManager.getService();
        if (inm == null) {
            return;
        }
        try {
            inm.cancelNotificationWithTag(PackageManagerService.PLATFORM_PACKAGE_NAME, PackageManagerService.PLATFORM_PACKAGE_NAME, (String) null, 11, userId);
        } catch (RemoteException e) {
        } catch (RuntimeException e2) {
            Slog.w("ActivityTaskManager", "Error canceling notification for service", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postHeavyWeightProcessNotification(WindowProcessController proc, Intent intent, int userId) {
        INotificationManager inm;
        if (proc == null || (inm = NotificationManager.getService()) == null) {
            return;
        }
        try {
            Context context = this.mContext.createPackageContext(proc.mInfo.packageName, 0);
            String text = this.mContext.getString(R.string.ext_media_ready_notification_message, context.getApplicationInfo().loadLabel(context.getPackageManager()));
            Notification notification = new Notification.Builder(context, SystemNotificationChannels.HEAVY_WEIGHT_APP).setSmallIcon(R.drawable.$$loader_horizontal_watch__5__0).setWhen(0L).setOngoing(true).setTicker(text).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setContentTitle(text).setContentText(this.mContext.getText(R.string.ext_media_seamless_action)).setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, intent, AudioFormat.EVRC, null, new UserHandle(userId))).build();
            try {
                inm.enqueueNotificationWithTag(PackageManagerService.PLATFORM_PACKAGE_NAME, PackageManagerService.PLATFORM_PACKAGE_NAME, (String) null, 11, notification, userId);
            } catch (RemoteException e) {
            } catch (RuntimeException e2) {
                Slog.w("ActivityTaskManager", "Error showing notification for heavy-weight app", e2);
            }
        } catch (PackageManager.NameNotFoundException e3) {
            Slog.w("ActivityTaskManager", "Unable to create context for heavy notification", e3);
        }
    }

    IIntentSender getIntentSenderLocked(int type, String packageName, String featureId, int callingUid, int userId, IBinder token, String resultWho, int requestCode, Intent[] intents, String[] resolvedTypes, int flags, Bundle bOptions) {
        ActivityRecord activity;
        if (type == 3) {
            ActivityRecord activity2 = ActivityRecord.isInStackLocked(token);
            if (activity2 == null) {
                Slog.w("ActivityTaskManager", "Failed createPendingResult: activity " + token + " not in any stack");
                return null;
            }
            if (!activity2.finishing) {
                activity = activity2;
            } else {
                Slog.w("ActivityTaskManager", "Failed createPendingResult: activity " + activity2 + " is finishing");
                return null;
            }
        } else {
            activity = null;
        }
        ActivityRecord activity3 = activity;
        PendingIntentRecord rec = this.mPendingIntentController.getIntentSender(type, packageName, featureId, callingUid, userId, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions);
        boolean noCreate = (flags & AudioFormat.APTX) != 0;
        if (noCreate) {
            return rec;
        }
        if (type == 3) {
            if (activity3.pendingResults == null) {
                activity3.pendingResults = new HashSet<>();
            }
            activity3.pendingResults.add(rec.ref);
        }
        return rec;
    }

    private void startTimeTrackingFocusedActivityLocked() {
        AppTimeTracker appTimeTracker;
        ActivityRecord resumedActivity = this.mRootWindowContainer.getTopResumedActivity();
        if (!this.mSleeping && (appTimeTracker = this.mCurAppTimeTracker) != null && resumedActivity != null) {
            appTimeTracker.start(resumedActivity.packageName);
        }
    }

    private void updateResumedAppTrace(ActivityRecord resumed) {
        ActivityRecord activityRecord = this.mTracedResumedActivity;
        if (activityRecord != null) {
            Trace.asyncTraceEnd(32L, constructResumedTraceName(activityRecord.packageName), 0);
        }
        if (resumed != null) {
            Trace.asyncTraceBegin(32L, constructResumedTraceName(resumed.packageName), 0);
        }
        this.mTracedResumedActivity = resumed;
    }

    private String constructResumedTraceName(String packageName) {
        return "focused app: " + packageName;
    }

    boolean ensureConfigAndVisibilityAfterUpdate(ActivityRecord starting, int changes) {
        ActivityStack mainStack = this.mRootWindowContainer.getTopDisplayFocusedStack();
        if (mainStack == null) {
            return true;
        }
        if (changes != 0 && starting == null) {
            starting = mainStack.topRunningActivity();
        }
        if (starting == null) {
            return true;
        }
        boolean kept = starting.ensureActivityConfiguration(changes, false);
        this.mRootWindowContainer.ensureActivitiesVisible(starting, changes, false);
        return kept;
    }

    public /* synthetic */ void lambda$scheduleAppGcsLocked$8$ActivityTaskManagerService() {
        this.mAmInternal.scheduleAppGcs();
    }

    void scheduleAppGcsLocked() {
        this.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleAppGcsLocked$8$ActivityTaskManagerService();
            }
        });
    }

    CompatibilityInfo compatibilityInfoForPackageLocked(ApplicationInfo ai) {
        return this.mCompatModePackages.compatibilityInfoForPackageLocked(ai);
    }

    IPackageManager getPackageManager() {
        return AppGlobals.getPackageManager();
    }

    PackageManagerInternal getPackageManagerInternalLocked() {
        if (this.mPmInternal == null) {
            this.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }
        return this.mPmInternal;
    }

    ComponentName getSysUiServiceComponentLocked() {
        if (this.mSysUiServiceComponent == null) {
            PackageManagerInternal pm = getPackageManagerInternalLocked();
            this.mSysUiServiceComponent = pm.getSystemUiServiceComponent();
        }
        return this.mSysUiServiceComponent;
    }

    PermissionPolicyInternal getPermissionPolicyInternal() {
        if (this.mPermissionPolicyInternal == null) {
            this.mPermissionPolicyInternal = (PermissionPolicyInternal) LocalServices.getService(PermissionPolicyInternal.class);
        }
        return this.mPermissionPolicyInternal;
    }

    StatusBarManagerInternal getStatusBarManagerInternal() {
        if (this.mStatusBarManagerInternal == null) {
            this.mStatusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
        }
        return this.mStatusBarManagerInternal;
    }

    AppWarnings getAppWarningsLocked() {
        return this.mAppWarnings;
    }

    Intent getHomeIntent() {
        String str = this.mTopAction;
        String str2 = this.mTopData;
        Intent intent = new Intent(str, str2 != null ? Uri.parse(str2) : null);
        intent.setComponent(this.mTopComponent);
        intent.addFlags(256);
        if (this.mFactoryTest != 1) {
            intent.addCategory("android.intent.category.HOME");
        }
        return intent;
    }

    Intent getSecondaryHomeIntent(String preferredPackage) {
        String str = this.mTopAction;
        String str2 = this.mTopData;
        Intent intent = new Intent(str, str2 != null ? Uri.parse(str2) : null);
        boolean useSystemProvidedLauncher = this.mContext.getResources().getBoolean(R.bool.config_cecSystemAudioModeMutingDisabled_default);
        if (preferredPackage == null || useSystemProvidedLauncher) {
            String secondaryHomePackage = this.mContext.getResources().getString(R.string.config_pointing_ui_package);
            intent.setPackage(secondaryHomePackage);
        } else {
            intent.setPackage(preferredPackage);
        }
        intent.addFlags(256);
        if (this.mFactoryTest != 1) {
            intent.addCategory("android.intent.category.SECONDARY_HOME");
        }
        return intent;
    }

    ApplicationInfo getAppInfoForUser(ApplicationInfo info, int userId) {
        if (info == null) {
            return null;
        }
        ApplicationInfo newInfo = new ApplicationInfo(info);
        newInfo.initForUser(userId);
        return newInfo;
    }

    WindowProcessController getProcessController(String processName, int uid) {
        if (uid == 1000) {
            SparseArray<WindowProcessController> procs = (SparseArray) this.mProcessNames.getMap().get(processName);
            if (procs == null) {
                return null;
            }
            int procCount = procs.size();
            for (int i = 0; i < procCount; i++) {
                int procUid = procs.keyAt(i);
                if (!UserHandle.isApp(procUid) && UserHandle.isSameUser(procUid, uid)) {
                    return procs.valueAt(i);
                }
            }
        }
        return (WindowProcessController) this.mProcessNames.get(processName, uid);
    }

    WindowProcessController getProcessController(IApplicationThread thread) {
        if (thread == null) {
            return null;
        }
        IBinder threadBinder = thread.asBinder();
        ArrayMap<String, SparseArray<WindowProcessController>> pmap = this.mProcessNames.getMap();
        for (int i = pmap.size() - 1; i >= 0; i--) {
            SparseArray<WindowProcessController> procs = pmap.valueAt(i);
            for (int j = procs.size() - 1; j >= 0; j--) {
                WindowProcessController proc = procs.valueAt(j);
                if (proc.hasThread() && proc.getThread().asBinder() == threadBinder) {
                    return proc;
                }
            }
        }
        return null;
    }

    WindowProcessController getProcessController(int pid, int uid) {
        WindowProcessController proc = this.mProcessMap.getProcess(pid);
        if (proc == null || !UserHandle.isApp(uid) || proc.mUid != uid) {
            return null;
        }
        return proc;
    }

    int getUidState(int uid) {
        return this.mActiveUids.getUidState(uid);
    }

    boolean isUidForeground(int uid) {
        return this.mWindowManager.mRoot.isAnyNonToastWindowVisibleForUid(uid);
    }

    boolean isDeviceOwner(int uid) {
        return uid >= 0 && this.mDeviceOwnerUid == uid;
    }

    void setDeviceOwnerUid(int uid) {
        this.mDeviceOwnerUid = uid;
    }

    String getPendingTempAllowlistTagForUidLocked(int uid) {
        return this.mPendingTempAllowlist.get(uid);
    }

    void logAppTooSlow(WindowProcessController app, long startTime, String msg) {
    }

    boolean isAssociatedCompanionApp(int userId, int uid) {
        Set<Integer> allUids = this.mCompanionAppUidsMap.get(Integer.valueOf(userId));
        if (allUids == null) {
            return false;
        }
        return allUids.contains(Integer.valueOf(uid));
    }

    void notifySingleTaskDisplayEmpty(int displayId) {
        this.mTaskChangeNotificationController.notifySingleTaskDisplayEmpty(displayId);
    }

    final class H extends Handler {
        static final int FIRST_ACTIVITY_STACK_MSG = 100;
        static final int FIRST_SUPERVISOR_STACK_MSG = 200;
        static final int REPORT_TIME_TRACKER_MSG = 1;

        H(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                AppTimeTracker tracker = (AppTimeTracker) msg.obj;
                tracker.deliverResult(ActivityTaskManagerService.this.mContext);
            }
        }
    }

    final class UiHandler extends Handler {
        static final int DISMISS_DIALOG_UI_MSG = 1;

        public UiHandler() {
            super(UiThread.get().getLooper(), null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                Dialog d = (Dialog) msg.obj;
                d.dismiss();
            }
        }
    }

    final class LocalService extends ActivityTaskManagerInternal {
        LocalService() {
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public ActivityTaskManagerInternal.SleepTokenAcquirer createSleepTokenAcquirer(String tag) {
            Objects.requireNonNull(tag);
            return ActivityTaskManagerService.this.new SleepTokenAcquirerImpl(tag);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public ComponentName getHomeActivityForUser(int userId) {
            ComponentName componentName;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord homeActivity = ActivityTaskManagerService.this.mRootWindowContainer.getDefaultDisplayHomeActivityForUser(userId);
                    componentName = homeActivity == null ? null : homeActivity.mActivityComponent;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return componentName;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onLocalVoiceInteractionStarted(IBinder activity, IVoiceInteractionSession voiceSession, IVoiceInteractor voiceInteractor) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.onLocalVoiceInteractionStartedLocked(activity, voiceSession, voiceInteractor);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void notifySingleTaskDisplayDrawn(int displayId) {
            ActivityTaskManagerService.this.mTaskChangeNotificationController.notifySingleTaskDisplayDrawn(displayId);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public List<IBinder> getTopVisibleActivities() {
            List<IBinder> topVisibleActivities;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    topVisibleActivities = ActivityTaskManagerService.this.mRootWindowContainer.getTopVisibleActivities();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return topVisibleActivities;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean hasResumedActivity(int uid) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ArraySet<WindowProcessController> processes = ActivityTaskManagerService.this.mProcessMap.getProcesses(uid);
                    int n = processes.size();
                    for (int i = 0; i < n; i++) {
                        WindowProcessController process = processes.valueAt(i);
                        if (process.hasResumedActivity()) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public int startActivitiesAsPackage(String packageName, String featureId, int userId, Intent[] intents, Bundle bOptions) throws Throwable {
            int packageUid;
            Objects.requireNonNull(intents, "intents");
            String[] resolvedTypes = new String[intents.length];
            long ident = Binder.clearCallingIdentity();
            for (int i = 0; i < intents.length; i++) {
                try {
                    resolvedTypes[i] = intents[i].resolveTypeIfNeeded(ActivityTaskManagerService.this.mContext.getContentResolver());
                } catch (RemoteException e) {
                } catch (Throwable th) {
                    th = th;
                }
            }
            try {
                packageUid = AppGlobals.getPackageManager().getPackageUid(packageName, AudioFormat.EVRC, userId);
                Binder.restoreCallingIdentity(ident);
            } catch (RemoteException e2) {
                Binder.restoreCallingIdentity(ident);
                packageUid = 0;
            } catch (Throwable th2) {
                th = th2;
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
            return ActivityTaskManagerService.this.getActivityStartController().startActivitiesInPackage(packageUid, packageName, featureId, intents, resolvedTypes, null, SafeActivityOptions.fromBundle(bOptions), userId, false, null, false);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public int startActivitiesInPackage(int uid, int realCallingPid, int realCallingUid, String callingPackage, String callingFeatureId, Intent[] intents, String[] resolvedTypes, IBinder resultTo, SafeActivityOptions options, int userId, boolean validateIncomingUser, PendingIntentRecord originatingPendingIntent, boolean allowBackgroundActivityStart) {
            ActivityTaskManagerService.this.assertPackageMatchesCallingUid(callingPackage);
            return ActivityTaskManagerService.this.getActivityStartController().startActivitiesInPackage(uid, realCallingPid, realCallingUid, callingPackage, callingFeatureId, intents, resolvedTypes, resultTo, options, userId, validateIncomingUser, originatingPendingIntent, allowBackgroundActivityStart);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public int startActivityInPackage(int uid, int realCallingPid, int realCallingUid, String callingPackage, String callingFeatureId, Intent intent, String resolvedType, IBinder resultTo, String resultWho, int requestCode, int startFlags, SafeActivityOptions options, int userId, Task inTask, String reason, boolean validateIncomingUser, PendingIntentRecord originatingPendingIntent, boolean allowBackgroundActivityStart) {
            ActivityTaskManagerService.this.assertPackageMatchesCallingUid(callingPackage);
            return ActivityTaskManagerService.this.getActivityStartController().startActivityInPackage(uid, realCallingPid, realCallingUid, callingPackage, callingFeatureId, intent, resolvedType, resultTo, resultWho, requestCode, startFlags, options, userId, inTask, reason, validateIncomingUser, originatingPendingIntent, allowBackgroundActivityStart);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public int startActivityAsUser(IApplicationThread caller, String callerPackage, String callerFeatureId, Intent intent, IBinder resultTo, int startFlags, Bundle options, int userId) {
            ActivityTaskManagerService activityTaskManagerService = ActivityTaskManagerService.this;
            return activityTaskManagerService.startActivityAsUser(caller, callerPackage, callerFeatureId, intent, intent.resolveTypeIfNeeded(activityTaskManagerService.mContext.getContentResolver()), resultTo, null, 0, startFlags, null, options, userId, false);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void notifyKeyguardFlagsChanged(Runnable callback, int displayId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent displayContent = ActivityTaskManagerService.this.mRootWindowContainer.getDisplayContent(displayId);
                    if (displayContent == null) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    DisplayContent dc = displayContent.mDisplayContent;
                    boolean wasTransitionSet = dc.mAppTransition.getAppTransition() != 0;
                    if (!wasTransitionSet) {
                        dc.prepareAppTransition(0, false);
                    }
                    ActivityTaskManagerService.this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
                    if (!wasTransitionSet) {
                        dc.executeAppTransition();
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    if (callback != null) {
                        callback.run();
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void notifyKeyguardTrustedChanged() {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mKeyguardController.isKeyguardShowing(0)) {
                        ActivityTaskManagerService.this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setVr2dDisplayId(int vr2dDisplayId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mVr2dDisplayId = vr2dDisplayId;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setFocusedActivity(IBinder token) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.forTokenLocked(token);
                    if (r == null) {
                        throw new IllegalArgumentException("setFocusedActivity: No activity record matching token=" + token);
                    }
                    if (r.moveFocusableActivityToTop("setFocusedActivity")) {
                        ActivityTaskManagerService.this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void registerScreenObserver(ActivityTaskManagerInternal.ScreenObserver observer) {
            ActivityTaskManagerService.this.mScreenObservers.add(observer);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isCallerRecents(int callingUid) {
            return ActivityTaskManagerService.this.getRecentTasks().isCallerRecents(callingUid);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isRecentsComponentHomeActivity(int userId) {
            return ActivityTaskManagerService.this.getRecentTasks().isRecentsComponentHomeActivity(userId);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void cancelRecentsAnimation(boolean restoreHomeStackPosition) {
            ActivityTaskManagerService.this.cancelRecentsAnimation(restoreHomeStackPosition);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void enforceCallerIsRecentsOrHasPermission(String permission, String func) {
            ActivityTaskManagerService.this.enforceCallerIsRecentsOrHasPermission(permission, func);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void notifyActiveVoiceInteractionServiceChanged(ComponentName component) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mActiveVoiceInteractionServiceComponent = component;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void notifyDreamStateChanged(boolean dreaming) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mDreaming = dreaming;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setAllowAppSwitches(String type, int uid, int userId) {
            if (!ActivityTaskManagerService.this.mAmInternal.isUserRunning(userId, 1)) {
                return;
            }
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ArrayMap<String, Integer> types = ActivityTaskManagerService.this.mAllowAppSwitchUids.get(userId);
                    if (types == null) {
                        if (uid < 0) {
                            return;
                        }
                        types = new ArrayMap<>();
                        ActivityTaskManagerService.this.mAllowAppSwitchUids.put(userId, types);
                    }
                    if (uid < 0) {
                        types.remove(type);
                    } else {
                        types.put(type, Integer.valueOf(uid));
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onUserStopped(int userId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.getRecentTasks().unloadUserDataFromMemoryLocked(userId);
                    ActivityTaskManagerService.this.mAllowAppSwitchUids.remove(userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isGetTasksAllowed(String caller, int callingPid, int callingUid) {
            boolean zIsGetTasksAllowed;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zIsGetTasksAllowed = ActivityTaskManagerService.this.isGetTasksAllowed(caller, callingPid, callingUid);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zIsGetTasksAllowed;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onProcessAdded(WindowProcessController proc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                ActivityTaskManagerService.this.mProcessNames.put(proc.mName, proc.mUid, proc);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onProcessRemoved(String name, int uid) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                ActivityTaskManagerService.this.mProcessNames.remove(name, uid);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onCleanUpApplicationRecord(WindowProcessController proc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                if (proc == ActivityTaskManagerService.this.mHomeProcess) {
                    ActivityTaskManagerService.this.mHomeProcess = null;
                }
                if (proc == ActivityTaskManagerService.this.mPreviousProcess) {
                    ActivityTaskManagerService.this.mPreviousProcess = null;
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public int getTopProcessState() {
            int i;
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                i = ActivityTaskManagerService.this.mTopProcessState;
            }
            return i;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isHeavyWeightProcess(WindowProcessController proc) {
            boolean z;
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                z = proc == ActivityTaskManagerService.this.mHeavyWeightProcess;
            }
            return z;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void clearHeavyWeightProcessIfEquals(WindowProcessController proc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                ActivityTaskManagerService.this.clearHeavyWeightProcessIfEquals(proc);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void finishHeavyWeightApp() {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mHeavyWeightProcess != null) {
                        ActivityTaskManagerService.this.mHeavyWeightProcess.finishActivities();
                    }
                    ActivityTaskManagerService.this.clearHeavyWeightProcessIfEquals(ActivityTaskManagerService.this.mHeavyWeightProcess);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isDreaming() {
            boolean z;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    z = ActivityTaskManagerService.this.mDreaming;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isSleeping() {
            boolean zIsSleepingLocked;
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                zIsSleepingLocked = ActivityTaskManagerService.this.isSleepingLocked();
            }
            return zIsSleepingLocked;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isShuttingDown() {
            boolean z;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    z = ActivityTaskManagerService.this.mShuttingDown;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean shuttingDown(boolean booted, int timeout) {
            boolean zShutdownLocked;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mShuttingDown = true;
                    ActivityTaskManagerService.this.mRootWindowContainer.prepareForShutdown();
                    ActivityTaskManagerService.this.updateEventDispatchingLocked(booted);
                    ActivityTaskManagerService.this.notifyTaskPersisterLocked(null, true);
                    zShutdownLocked = ActivityTaskManagerService.this.mStackSupervisor.shutdownLocked(timeout);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zShutdownLocked;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void enableScreenAfterBoot(boolean booted) {
            com.android.server.am.EventLogTags.writeBootProgressEnableScreen(SystemClock.uptimeMillis());
            ActivityTaskManagerService.this.mWindowManager.enableScreenAfterBoot();
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.updateEventDispatchingLocked(booted);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean showStrictModeViolationDialog() {
            boolean z;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    z = (!ActivityTaskManagerService.this.mShowDialogs || ActivityTaskManagerService.this.mSleeping || ActivityTaskManagerService.this.mShuttingDown) ? false : true;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void showSystemReadyErrorDialogsIfNeeded() {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (AppGlobals.getPackageManager().hasSystemUidErrors()) {
                            Slog.e("ActivityTaskManager", "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable.");
                            ActivityTaskManagerService.this.mUiHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$LocalService$hXNJNh8HjV10X1ZEOI6o0Yzmq8o
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$showSystemReadyErrorDialogsIfNeeded$0$ActivityTaskManagerService$LocalService();
                                }
                            });
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                } catch (RemoteException e) {
                }
                if (!Build.isBuildConsistent()) {
                    Slog.e("ActivityTaskManager", "Build fingerprint is not consistent, warning user");
                    ActivityTaskManagerService.this.mUiHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$LocalService$xIfx_hFO4SXy-Nq34zoEHe3S9eU
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$showSystemReadyErrorDialogsIfNeeded$1$ActivityTaskManagerService$LocalService();
                        }
                    });
                }
            }
        }

        public /* synthetic */ void lambda$showSystemReadyErrorDialogsIfNeeded$0$ActivityTaskManagerService$LocalService() {
            if (ActivityTaskManagerService.this.mShowDialogs) {
                AlertDialog d = new BaseErrorDialog(ActivityTaskManagerService.this.mUiContext);
                d.getWindow().setType(2010);
                d.setCancelable(false);
                d.setTitle(ActivityTaskManagerService.this.mUiContext.getText(R.string.autofill_save_accessibility_title));
                d.setMessage(ActivityTaskManagerService.this.mUiContext.getText(R.string.permgroupdesc_contacts));
                d.setButton(-1, ActivityTaskManagerService.this.mUiContext.getText(R.string.ok), ActivityTaskManagerService.this.mUiHandler.obtainMessage(1, d));
                d.show();
            }
        }

        public /* synthetic */ void lambda$showSystemReadyErrorDialogsIfNeeded$1$ActivityTaskManagerService$LocalService() {
            if (ActivityTaskManagerService.this.mShowDialogs) {
                AlertDialog d = new BaseErrorDialog(ActivityTaskManagerService.this.mUiContext);
                d.getWindow().setType(2010);
                d.setCancelable(false);
                d.setTitle(ActivityTaskManagerService.this.mUiContext.getText(R.string.autofill_save_accessibility_title));
                d.setMessage(ActivityTaskManagerService.this.mUiContext.getText(R.string.permgroupdesc_camera));
                d.setButton(-1, ActivityTaskManagerService.this.mUiContext.getText(R.string.ok), ActivityTaskManagerService.this.mUiHandler.obtainMessage(1, d));
                d.show();
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onProcessMapped(int pid, WindowProcessController proc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mProcessMap.put(pid, proc);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onProcessUnMapped(int pid) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mProcessMap.remove(pid);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onPackageDataCleared(String name) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mCompatModePackages.handlePackageDataClearedLocked(name);
                    ActivityTaskManagerService.this.mAppWarnings.onPackageDataCleared(name);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onPackageUninstalled(String name) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mAppWarnings.onPackageUninstalled(name);
                    ActivityTaskManagerService.this.mCompatModePackages.handlePackageUninstalledLocked(name);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onPackageAdded(String name, boolean replacing) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mCompatModePackages.handlePackageAddedLocked(name, replacing);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onPackageReplaced(ApplicationInfo aInfo) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRootWindowContainer.updateActivityApplicationInfo(aInfo);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public CompatibilityInfo compatibilityInfoForPackage(ApplicationInfo ai) {
            CompatibilityInfo compatibilityInfoCompatibilityInfoForPackageLocked;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    compatibilityInfoCompatibilityInfoForPackageLocked = ActivityTaskManagerService.this.compatibilityInfoForPackageLocked(ai);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return compatibilityInfoCompatibilityInfoForPackageLocked;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onImeWindowSetOnDisplay(int pid, int displayId) {
            if (InputMethodSystemProperty.MULTI_CLIENT_IME_ENABLED || pid == ActivityManagerService.MY_PID || pid < 0) {
                return;
            }
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent displayContent = ActivityTaskManagerService.this.mRootWindowContainer.getDisplayContent(displayId);
                    if (displayContent == null) {
                        return;
                    }
                    WindowProcessController process = ActivityTaskManagerService.this.mProcessMap.getProcess(pid);
                    if (process == null) {
                        return;
                    }
                    process.registerDisplayConfigurationListener(displayContent);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:29:0x0055
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
            */
        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void sendActivityResult(int r15, android.os.IBinder r16, java.lang.String r17, int r18, int r19, android.content.Intent r20) {
            /*
                r14 = this;
                r1 = r14
                com.android.server.wm.ActivityTaskManagerService r0 = com.android.server.wm.ActivityTaskManagerService.this
                com.android.server.wm.WindowManagerGlobalLock r2 = r0.mGlobalLock
                monitor-enter(r2)
                com.android.server.wm.WindowManagerService.boostPriorityForLockedSection()     // Catch: java.lang.Throwable -> L4d
                com.android.server.wm.ActivityRecord r0 = com.android.server.wm.ActivityRecord.isInStackLocked(r16)     // Catch: java.lang.Throwable -> L4d
                r10 = r0
                if (r10 == 0) goto L46
                com.android.server.wm.ActivityStack r0 = r10.getRootTask()     // Catch: java.lang.Throwable -> L4d
                if (r0 != 0) goto L19
                r11 = r20
                goto L48
            L19:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
                com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
                com.android.server.wm.ActivityTaskManagerService r0 = com.android.server.wm.ActivityTaskManagerService.this
                r11 = r20
                com.android.server.uri.NeededUriGrants r12 = com.android.server.wm.ActivityTaskManagerService.access$1100(r0, r11, r10)
                com.android.server.wm.ActivityTaskManagerService r0 = com.android.server.wm.ActivityTaskManagerService.this
                com.android.server.wm.WindowManagerGlobalLock r13 = r0.mGlobalLock
                monitor-enter(r13)
                com.android.server.wm.WindowManagerService.boostPriorityForLockedSection()     // Catch: java.lang.Throwable -> L40
                r3 = r10
                r4 = r15
                r5 = r17
                r6 = r18
                r7 = r19
                r8 = r20
                r9 = r12
                r3.sendResult(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L40
                monitor-exit(r13)     // Catch: java.lang.Throwable -> L40
                com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
                return
            L40:
                r0 = move-exception
                monitor-exit(r13)     // Catch: java.lang.Throwable -> L40
                com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
                throw r0
            L46:
                r11 = r20
            L48:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
                com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
                return
            L4d:
                r0 = move-exception
                r11 = r20
            L50:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
                com.android.server.wm.WindowManagerService.resetPriorityAfterLockedSection()
                throw r0
            L55:
                r0 = move-exception
                goto L50
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityTaskManagerService.LocalService.sendActivityResult(int, android.os.IBinder, java.lang.String, int, int, android.content.Intent):void");
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void clearPendingResultForActivity(IBinder activityToken, WeakReference<PendingIntentRecord> pir) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.isInStackLocked(activityToken);
                    if (r != null && r.pendingResults != null) {
                        r.pendingResults.remove(pir);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public ActivityTaskManagerInternal.ActivityTokens getTopActivityForTask(int taskId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = ActivityTaskManagerService.this.mRootWindowContainer.anyTaskForId(taskId);
                    if (task == null) {
                        Slog.w("ActivityTaskManager", "getApplicationThreadForTopActivity failed: Requested task not found");
                        return null;
                    }
                    ActivityRecord activity = task.getTopNonFinishingActivity();
                    if (activity == null) {
                        Slog.w("ActivityTaskManager", "getApplicationThreadForTopActivity failed: Requested activity not found");
                        return null;
                    }
                    if (!activity.attachedToProcess()) {
                        Slog.w("ActivityTaskManager", "getApplicationThreadForTopActivity failed: No process for " + activity);
                        return null;
                    }
                    return new ActivityTaskManagerInternal.ActivityTokens(activity.appToken, activity.assistToken, activity.app.getThread());
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public IIntentSender getIntentSender(int type, String packageName, String featureId, int callingUid, int userId, IBinder token, String resultWho, int requestCode, Intent[] intents, String[] resolvedTypes, int flags, Bundle bOptions) {
            IIntentSender intentSenderLocked;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    intentSenderLocked = ActivityTaskManagerService.this.getIntentSenderLocked(type, packageName, featureId, callingUid, userId, token, resultWho, requestCode, intents, resolvedTypes, flags, bOptions);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return intentSenderLocked;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public ActivityServiceConnectionsHolder getServiceConnectionsHolder(IBinder token) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord r = ActivityRecord.isInStackLocked(token);
                    if (r == null) {
                        return null;
                    }
                    if (r.mServiceConnectionsHolder == null) {
                        r.mServiceConnectionsHolder = new ActivityServiceConnectionsHolder(ActivityTaskManagerService.this, r);
                    }
                    return r.mServiceConnectionsHolder;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public Intent getHomeIntent() {
            Intent homeIntent;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    homeIntent = ActivityTaskManagerService.this.getHomeIntent();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return homeIntent;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean startHomeActivity(int userId, String reason) {
            boolean zStartHomeOnDisplay;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zStartHomeOnDisplay = ActivityTaskManagerService.this.mRootWindowContainer.startHomeOnDisplay(userId, reason, 0);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zStartHomeOnDisplay;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean startHomeOnDisplay(int userId, String reason, int displayId, boolean allowInstrumenting, boolean fromHomeKey) {
            boolean zStartHomeOnDisplay;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zStartHomeOnDisplay = ActivityTaskManagerService.this.mRootWindowContainer.startHomeOnDisplay(userId, reason, displayId, allowInstrumenting, fromHomeKey);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zStartHomeOnDisplay;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean startHomeOnAllDisplays(int userId, String reason) {
            boolean zStartHomeOnAllDisplays;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zStartHomeOnAllDisplays = ActivityTaskManagerService.this.mRootWindowContainer.startHomeOnAllDisplays(userId, reason);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zStartHomeOnAllDisplays;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isFactoryTestProcess(WindowProcessController wpc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                boolean z = false;
                if (ActivityTaskManagerService.this.mFactoryTest == 0) {
                    return false;
                }
                if (ActivityTaskManagerService.this.mFactoryTest == 1 && ActivityTaskManagerService.this.mTopComponent != null && wpc.mName.equals(ActivityTaskManagerService.this.mTopComponent.getPackageName())) {
                    return true;
                }
                if (ActivityTaskManagerService.this.mFactoryTest == 2 && (wpc.mInfo.flags & 16) != 0) {
                    z = true;
                }
                return z;
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void updateTopComponentForFactoryTest() {
            final CharSequence errorMsg;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mFactoryTest != 1) {
                        return;
                    }
                    ResolveInfo ri = ActivityTaskManagerService.this.mContext.getPackageManager().resolveActivity(new Intent("android.intent.action.FACTORY_TEST"), 1024);
                    if (ri != null) {
                        ActivityInfo ai = ri.activityInfo;
                        ApplicationInfo app = ai.applicationInfo;
                        if ((1 & app.flags) != 0) {
                            ActivityTaskManagerService.this.mTopAction = "android.intent.action.FACTORY_TEST";
                            ActivityTaskManagerService.this.mTopData = null;
                            ActivityTaskManagerService.this.mTopComponent = new ComponentName(app.packageName, ai.name);
                            errorMsg = null;
                        } else {
                            errorMsg = ActivityTaskManagerService.this.mContext.getResources().getText(R.string.duration_hours_relative);
                        }
                    } else {
                        errorMsg = ActivityTaskManagerService.this.mContext.getResources().getText(R.string.duration_hours_medium_past);
                    }
                    if (errorMsg == null) {
                        return;
                    }
                    ActivityTaskManagerService.this.mTopAction = null;
                    ActivityTaskManagerService.this.mTopData = null;
                    ActivityTaskManagerService.this.mTopComponent = null;
                    ActivityTaskManagerService.this.mUiHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityTaskManagerService$LocalService$smesvyl87CxHptMAvRA559Glc1k
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$updateTopComponentForFactoryTest$2$ActivityTaskManagerService$LocalService(errorMsg);
                        }
                    });
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public /* synthetic */ void lambda$updateTopComponentForFactoryTest$2$ActivityTaskManagerService$LocalService(CharSequence errorMsg) {
            Dialog d = new FactoryErrorDialog(ActivityTaskManagerService.this.mUiContext, errorMsg);
            d.show();
            ActivityTaskManagerService.this.mAmInternal.ensureBootCompleted();
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void handleAppDied(WindowProcessController wpc, boolean restarting, Runnable finishInstrumentationCallback) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                boolean hasVisibleActivities = ActivityTaskManagerService.this.mRootWindowContainer.handleAppDied(wpc);
                wpc.clearRecentTasks();
                wpc.clearActivities();
                if (wpc.isInstrumenting()) {
                    finishInstrumentationCallback.run();
                }
                if (!restarting && hasVisibleActivities) {
                    ActivityTaskManagerService.this.deferWindowLayout();
                    try {
                        if (!ActivityTaskManagerService.this.mRootWindowContainer.resumeFocusedStacksTopActivities()) {
                            ActivityTaskManagerService.this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
                        }
                        ActivityTaskManagerService.this.continueWindowLayout();
                    } catch (Throwable th) {
                        ActivityTaskManagerService.this.continueWindowLayout();
                        throw th;
                    }
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void closeSystemDialogs(String reason) {
            ActivityTaskManagerService.this.enforceNotIsolatedCaller("closeSystemDialogs");
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long origId = Binder.clearCallingIdentity();
            try {
                synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (uid >= 10000) {
                            WindowProcessController proc = ActivityTaskManagerService.this.mProcessMap.getProcess(pid);
                            if (!proc.isPerceptible()) {
                                Slog.w("ActivityTaskManager", "Ignoring closeSystemDialogs " + reason + " from background process " + proc);
                                WindowManagerService.resetPriorityAfterLockedSection();
                                Binder.restoreCallingIdentity(origId);
                                return;
                            }
                        }
                        ActivityTaskManagerService.this.mWindowManager.closeSystemDialogs(reason);
                        ActivityTaskManagerService.this.mRootWindowContainer.closeSystemDialogActivities(reason);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        ActivityTaskManagerService.this.mAmInternal.broadcastCloseSystemDialogs(reason);
                        Binder.restoreCallingIdentity(origId);
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                Binder.restoreCallingIdentity(origId);
                throw th2;
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void cleanupDisabledPackageComponents(String packageName, Set<String> disabledClasses, int userId, boolean booted) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mRootWindowContainer.finishDisabledPackageActivities(packageName, disabledClasses, true, false, userId) && booted) {
                        ActivityTaskManagerService.this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                        ActivityTaskManagerService.this.mStackSupervisor.scheduleIdle();
                    }
                    ActivityTaskManagerService.this.getRecentTasks().cleanupDisabledPackageTasksLocked(packageName, disabledClasses, userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean onForceStopPackage(String packageName, boolean doit, boolean evenPersistent, int userId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mRootWindowContainer == null) {
                        return false;
                    }
                    boolean didSomething = ActivityTaskManagerService.this.getActivityStartController().clearPendingActivityLaunches(packageName);
                    return didSomething | ActivityTaskManagerService.this.mRootWindowContainer.finishDisabledPackageActivities(packageName, null, doit, evenPersistent, userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void resumeTopActivities(boolean scheduleIdle) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                    if (scheduleIdle) {
                        ActivityTaskManagerService.this.mStackSupervisor.scheduleIdle();
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void preBindApplication(WindowProcessController wpc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                ActivityTaskManagerService.this.mStackSupervisor.getActivityMetricsLogger().notifyBindApplication(wpc.mInfo);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean attachApplication(WindowProcessController wpc) throws RemoteException {
            boolean zAttachApplication;
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                if (Trace.isTagEnabled(32L)) {
                    Trace.traceBegin(32L, "attachApplication:" + wpc.mName);
                }
                try {
                    zAttachApplication = ActivityTaskManagerService.this.mRootWindowContainer.attachApplication(wpc);
                    Trace.traceEnd(32L);
                } catch (Throwable th) {
                    Trace.traceEnd(32L);
                    throw th;
                }
            }
            return zAttachApplication;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void notifyLockedProfile(int userId, int currentUserId) {
            try {
                if (!AppGlobals.getPackageManager().isUidPrivileged(Binder.getCallingUid())) {
                    throw new SecurityException("Only privileged app can call notifyLockedProfile");
                }
                synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        long ident = Binder.clearCallingIdentity();
                        try {
                            if (ActivityTaskManagerService.this.mAmInternal.shouldConfirmCredentials(userId)) {
                                if (ActivityTaskManagerService.this.mKeyguardController.isKeyguardLocked()) {
                                    startHomeActivity(currentUserId, "notifyLockedProfile");
                                }
                                ActivityTaskManagerService.this.mRootWindowContainer.lockAllProfileTasks(userId);
                            }
                            Binder.restoreCallingIdentity(ident);
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(ident);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th2;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (RemoteException ex) {
                throw new SecurityException("Fail to check is caller a privileged app", ex);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void startConfirmDeviceCredentialIntent(Intent intent, Bundle options) {
            ActivityTaskManagerService.this.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", "startConfirmDeviceCredentialIntent");
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    long ident = Binder.clearCallingIdentity();
                    try {
                        intent.addFlags(276824064);
                        ActivityOptions activityOptions = options != null ? new ActivityOptions(options) : ActivityOptions.makeBasic();
                        ActivityTaskManagerService.this.mContext.startActivityAsUser(intent, activityOptions.toBundle(), UserHandle.CURRENT);
                        Binder.restoreCallingIdentity(ident);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void writeActivitiesToProto(ProtoOutputStream proto) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRootWindowContainer.dumpDebug(proto, 1146756268034L, 0);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void saveANRState(String reason) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    StringWriter sw = new StringWriter();
                    PrintWriter pw = new FastPrintWriter(sw, false, 1024);
                    pw.println("  ANR time: " + DateFormat.getDateTimeInstance().format(new Date()));
                    if (reason != null) {
                        pw.println("  Reason: " + reason);
                    }
                    pw.println();
                    ActivityTaskManagerService.this.getActivityStartController().dump(pw, "  ", null);
                    pw.println();
                    pw.println("-------------------------------------------------------------------------------");
                    ActivityTaskManagerService.this.dumpActivitiesLocked(null, pw, null, 0, true, false, null, "");
                    pw.println();
                    pw.close();
                    ActivityTaskManagerService.this.mLastANRState = sw.toString();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void clearSavedANRState() {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mLastANRState = null;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void dump(String cmd, FileDescriptor fd, PrintWriter pw, String[] args, int opti, boolean dumpAll, boolean dumpClient, String dumpPackage) throws Throwable {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (ActivityTaskManagerService.DUMP_ACTIVITIES_CMD.equals(cmd) || ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD.equals(cmd)) {
                            ActivityTaskManagerService.this.dumpActivitiesLocked(fd, pw, args, opti, dumpAll, dumpClient, dumpPackage);
                        } else if (ActivityTaskManagerService.DUMP_LASTANR_CMD.equals(cmd)) {
                            ActivityTaskManagerService.this.dumpLastANRLocked(pw);
                        } else if (ActivityTaskManagerService.DUMP_LASTANR_TRACES_CMD.equals(cmd)) {
                            ActivityTaskManagerService.this.dumpLastANRTracesLocked(pw);
                        } else if (ActivityTaskManagerService.DUMP_STARTER_CMD.equals(cmd)) {
                            ActivityTaskManagerService.this.dumpActivityStarterLocked(pw, dumpPackage);
                        } else if (ActivityTaskManagerService.DUMP_CONTAINERS_CMD.equals(cmd)) {
                            ActivityTaskManagerService.this.dumpActivityContainersLocked(pw);
                        } else if (ActivityTaskManagerService.DUMP_RECENTS_CMD.equals(cmd) || ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD.equals(cmd)) {
                            if (ActivityTaskManagerService.this.getRecentTasks() != null) {
                                ActivityTaskManagerService.this.getRecentTasks().dump(pw, dumpAll, dumpPackage);
                            }
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                    } catch (Throwable th) {
                        th = th;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:101:0x02fb A[Catch: all -> 0x036e, TryCatch #5 {all -> 0x036e, blocks: (B:94:0x02e6, B:90:0x02a7, B:92:0x02ad, B:93:0x02b3, B:112:0x0369, B:95:0x02e9, B:99:0x02f5, B:101:0x02fb, B:102:0x031f, B:103:0x0353), top: B:127:0x02e6 }] */
        /* JADX WARN: Code duplicated, block: B:117:0x0193 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:129:0x016c A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:17:0x004d  */
        /* JADX WARN: Code duplicated, block: B:20:0x0055 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:24:0x0065 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:27:0x0084 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:35:0x00b4 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:39:0x00c4 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:42:0x00e3 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:44:0x0108 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:46:0x0110 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:50:0x0136 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:53:0x014d A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:55:0x0165 A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:59:0x016e A[Catch: all -> 0x035c, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:65:0x01cb A[Catch: all -> 0x035c, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x035c, blocks: (B:16:0x0034, B:18:0x004f, B:21:0x0057, B:24:0x0065, B:25:0x006a, B:27:0x0084, B:30:0x008c, B:32:0x0098, B:33:0x00ae, B:36:0x00b6, B:39:0x00c4, B:40:0x00c9, B:42:0x00e3, B:44:0x0108, B:47:0x0112, B:48:0x0128, B:50:0x0136, B:51:0x0147, B:53:0x014d, B:55:0x0165, B:59:0x016e, B:60:0x0174, B:65:0x01cb), top: B:125:0x0034 }] */
        /* JADX WARN: Code duplicated, block: B:71:0x0255  */
        /* JADX WARN: Code duplicated, block: B:74:0x025d A[Catch: all -> 0x0358, TryCatch #3 {all -> 0x0358, blocks: (B:68:0x022d, B:72:0x0257, B:74:0x025d, B:75:0x0267, B:78:0x0273, B:80:0x027d, B:81:0x0288, B:84:0x0290), top: B:123:0x022d }] */
        /* JADX WARN: Code duplicated, block: B:77:0x0271  */
        /* JADX WARN: Code duplicated, block: B:80:0x027d A[Catch: all -> 0x0358, TryCatch #3 {all -> 0x0358, blocks: (B:68:0x022d, B:72:0x0257, B:74:0x025d, B:75:0x0267, B:78:0x0273, B:80:0x027d, B:81:0x0288, B:84:0x0290), top: B:123:0x022d }] */
        /* JADX WARN: Code duplicated, block: B:83:0x028e  */
        /* JADX WARN: Code duplicated, block: B:84:0x0290 A[Catch: all -> 0x0358, TRY_LEAVE, TryCatch #3 {all -> 0x0358, blocks: (B:68:0x022d, B:72:0x0257, B:74:0x025d, B:75:0x0267, B:78:0x0273, B:80:0x027d, B:81:0x0288, B:84:0x0290), top: B:123:0x022d }] */
        /* JADX WARN: Code duplicated, block: B:88:0x02a3 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:90:0x02a7 A[Catch: all -> 0x036e, TRY_ENTER, TryCatch #5 {all -> 0x036e, blocks: (B:94:0x02e6, B:90:0x02a7, B:92:0x02ad, B:93:0x02b3, B:112:0x0369, B:95:0x02e9, B:99:0x02f5, B:101:0x02fb, B:102:0x031f, B:103:0x0353), top: B:127:0x02e6 }] */
        /* JADX WARN: Code duplicated, block: B:92:0x02ad A[Catch: all -> 0x036e, TryCatch #5 {all -> 0x036e, blocks: (B:94:0x02e6, B:90:0x02a7, B:92:0x02ad, B:93:0x02b3, B:112:0x0369, B:95:0x02e9, B:99:0x02f5, B:101:0x02fb, B:102:0x031f, B:103:0x0353), top: B:127:0x02e6 }] */
        /* JADX WARN: Code duplicated, block: B:97:0x02f1  */
        /* JADX WARN: Code duplicated, block: B:99:0x02f5 A[Catch: all -> 0x036e, TryCatch #5 {all -> 0x036e, blocks: (B:94:0x02e6, B:90:0x02a7, B:92:0x02ad, B:93:0x02b3, B:112:0x0369, B:95:0x02e9, B:99:0x02f5, B:101:0x02fb, B:102:0x031f, B:103:0x0353), top: B:127:0x02e6 }] */
        /* JADX WARN: Instruction removed from duplicated block: B:101:0x02fb, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:42:0x00e3, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:65:0x01cb, please report this as an issue */
        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean dumpForProcesses(FileDescriptor fd, PrintWriter pw, boolean dumpAll, String dumpPackage, int dumpAppId, boolean needSep, boolean testPssMode, int wakefulness) throws Throwable {
            boolean needSep2;
            boolean printed;
            int i;
            ArrayMap<String, Integer> types;
            int j;
            ActivityStack topFocusedStack;
            boolean printed2;
            String pkg;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mHomeProcess != null) {
                        try {
                            if (dumpPackage != null) {
                                try {
                                    if (!ActivityTaskManagerService.this.mHomeProcess.mPkgList.contains(dumpPackage)) {
                                        needSep2 = needSep;
                                    }
                                    if (ActivityTaskManagerService.this.mPreviousProcess != null) {
                                        if (needSep2) {
                                            pw.println();
                                            needSep2 = false;
                                        }
                                        pw.println("  mPreviousProcess: " + ActivityTaskManagerService.this.mPreviousProcess);
                                    }
                                    if (dumpAll) {
                                        StringBuilder sb = new StringBuilder(128);
                                        sb.append("  mPreviousProcessVisibleTime: ");
                                        TimeUtils.formatDuration(ActivityTaskManagerService.this.mPreviousProcessVisibleTime, sb);
                                        pw.println(sb);
                                    }
                                    if (ActivityTaskManagerService.this.mHeavyWeightProcess != null) {
                                        if (needSep2) {
                                            pw.println();
                                            needSep2 = false;
                                        }
                                        pw.println("  mHeavyWeightProcess: " + ActivityTaskManagerService.this.mHeavyWeightProcess);
                                    }
                                    if (dumpPackage == null) {
                                        pw.println("  mGlobalConfiguration: " + ActivityTaskManagerService.this.getGlobalConfiguration());
                                        ActivityTaskManagerService.this.mRootWindowContainer.dumpDisplayConfigs(pw, "  ");
                                    }
                                    if (dumpAll) {
                                        topFocusedStack = ActivityTaskManagerService.this.getTopDisplayFocusedStack();
                                        if (dumpPackage == null) {
                                            pw.println("  mConfigWillChange: " + topFocusedStack.mConfigWillChange);
                                        }
                                        if (ActivityTaskManagerService.this.mCompatModePackages.getPackages().size() > 0) {
                                            printed2 = false;
                                            for (Map.Entry<String, Integer> entry : ActivityTaskManagerService.this.mCompatModePackages.getPackages().entrySet()) {
                                                pkg = entry.getKey();
                                                int mode = entry.getValue().intValue();
                                                if (dumpPackage != null) {
                                                }
                                                if (!printed2) {
                                                    pw.println("  mScreenCompatPackages:");
                                                    printed2 = true;
                                                }
                                                pw.println("    " + pkg + ": " + mode);
                                            }
                                        }
                                    }
                                    if (dumpPackage == null) {
                                        pw.println("  mWakefulness=" + PowerManagerInternal.wakefulnessToString(wakefulness));
                                        pw.println("  mSleepTokens=" + ActivityTaskManagerService.this.mRootWindowContainer.mSleepTokens);
                                        if (ActivityTaskManagerService.this.mRunningVoice != null) {
                                            pw.println("  mRunningVoice=" + ActivityTaskManagerService.this.mRunningVoice);
                                            pw.println("  mVoiceWakeLock" + ActivityTaskManagerService.this.mVoiceWakeLock);
                                        }
                                        pw.println("  mSleeping=" + ActivityTaskManagerService.this.mSleeping);
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("  mShuttingDown=");
                                        sb2.append(ActivityTaskManagerService.this.mShuttingDown);
                                        sb2.append(" mTestPssMode=");
                                        sb2.append(testPssMode);
                                        pw.println(sb2.toString());
                                        pw.println("  mVrController=" + ActivityTaskManagerService.this.mVrController);
                                    }
                                    if (ActivityTaskManagerService.this.mCurAppTimeTracker != null) {
                                        ActivityTaskManagerService.this.mCurAppTimeTracker.dumpWithHeader(pw, "  ", true);
                                    }
                                    if (ActivityTaskManagerService.this.mAllowAppSwitchUids.size() > 0) {
                                        printed = false;
                                        for (i = 0; i < ActivityTaskManagerService.this.mAllowAppSwitchUids.size(); i++) {
                                            types = ActivityTaskManagerService.this.mAllowAppSwitchUids.valueAt(i);
                                            while (j < types.size()) {
                                                if (dumpPackage != null) {
                                                }
                                                if (needSep2) {
                                                    pw.println();
                                                    needSep2 = false;
                                                }
                                                if (!printed) {
                                                    pw.println("  mAllowAppSwitchUids:");
                                                    printed = true;
                                                }
                                                pw.print("    User ");
                                                pw.print(ActivityTaskManagerService.this.mAllowAppSwitchUids.keyAt(i));
                                                pw.print(": Type ");
                                                pw.print(types.keyAt(j));
                                                pw.print(" = ");
                                                UserHandle.formatUid(pw, types.valueAt(j).intValue());
                                                pw.println();
                                            }
                                        }
                                    }
                                    if (dumpPackage == null) {
                                        if (ActivityTaskManagerService.this.mController != null) {
                                            pw.println("  mController=" + ActivityTaskManagerService.this.mController + " mControllerIsAMonkey=" + ActivityTaskManagerService.this.mControllerIsAMonkey);
                                        }
                                        pw.println("  mGoingToSleepWakeLock=" + ActivityTaskManagerService.this.mStackSupervisor.mGoingToSleepWakeLock);
                                        pw.println("  mLaunchingActivityWakeLock=" + ActivityTaskManagerService.this.mStackSupervisor.mLaunchingActivityWakeLock);
                                    }
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    return needSep2;
                                } catch (Throwable th) {
                                    th = th;
                                }
                            }
                            pw.println("  mHomeProcess: " + ActivityTaskManagerService.this.mHomeProcess);
                            if (ActivityTaskManagerService.this.mPreviousProcess != null) {
                                if (needSep2) {
                                    pw.println();
                                    needSep2 = false;
                                }
                                pw.println("  mPreviousProcess: " + ActivityTaskManagerService.this.mPreviousProcess);
                            }
                            if (dumpAll) {
                                StringBuilder sb3 = new StringBuilder(128);
                                sb3.append("  mPreviousProcessVisibleTime: ");
                                TimeUtils.formatDuration(ActivityTaskManagerService.this.mPreviousProcessVisibleTime, sb3);
                                pw.println(sb3);
                            }
                            if (ActivityTaskManagerService.this.mHeavyWeightProcess != null) {
                                if (needSep2) {
                                    pw.println();
                                    needSep2 = false;
                                }
                                pw.println("  mHeavyWeightProcess: " + ActivityTaskManagerService.this.mHeavyWeightProcess);
                            }
                            if (dumpPackage == null) {
                                pw.println("  mGlobalConfiguration: " + ActivityTaskManagerService.this.getGlobalConfiguration());
                                ActivityTaskManagerService.this.mRootWindowContainer.dumpDisplayConfigs(pw, "  ");
                            }
                            if (dumpAll) {
                                topFocusedStack = ActivityTaskManagerService.this.getTopDisplayFocusedStack();
                                if (dumpPackage == null) {
                                    pw.println("  mConfigWillChange: " + topFocusedStack.mConfigWillChange);
                                }
                                if (ActivityTaskManagerService.this.mCompatModePackages.getPackages().size() > 0) {
                                    printed2 = false;
                                    while (r7.hasNext()) {
                                        pkg = entry.getKey();
                                        int mode2 = entry.getValue().intValue();
                                        if (dumpPackage != null) {
                                        }
                                        if (!printed2) {
                                            pw.println("  mScreenCompatPackages:");
                                            printed2 = true;
                                        }
                                        pw.println("    " + pkg + ": " + mode2);
                                    }
                                }
                            }
                            if (dumpPackage == null) {
                                pw.println("  mWakefulness=" + PowerManagerInternal.wakefulnessToString(wakefulness));
                                pw.println("  mSleepTokens=" + ActivityTaskManagerService.this.mRootWindowContainer.mSleepTokens);
                                if (ActivityTaskManagerService.this.mRunningVoice != null) {
                                    pw.println("  mRunningVoice=" + ActivityTaskManagerService.this.mRunningVoice);
                                    pw.println("  mVoiceWakeLock" + ActivityTaskManagerService.this.mVoiceWakeLock);
                                }
                                pw.println("  mSleeping=" + ActivityTaskManagerService.this.mSleeping);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("  mShuttingDown=");
                                sb4.append(ActivityTaskManagerService.this.mShuttingDown);
                                sb4.append(" mTestPssMode=");
                                sb4.append(testPssMode);
                                pw.println(sb4.toString());
                                pw.println("  mVrController=" + ActivityTaskManagerService.this.mVrController);
                            }
                            if (ActivityTaskManagerService.this.mCurAppTimeTracker != null) {
                                ActivityTaskManagerService.this.mCurAppTimeTracker.dumpWithHeader(pw, "  ", true);
                            }
                            if (ActivityTaskManagerService.this.mAllowAppSwitchUids.size() > 0) {
                                printed = false;
                                while (i < ActivityTaskManagerService.this.mAllowAppSwitchUids.size()) {
                                    types = ActivityTaskManagerService.this.mAllowAppSwitchUids.valueAt(i);
                                    while (j < types.size()) {
                                        if (dumpPackage != null) {
                                        }
                                        if (needSep2) {
                                            pw.println();
                                            needSep2 = false;
                                        }
                                        if (!printed) {
                                            pw.println("  mAllowAppSwitchUids:");
                                            printed = true;
                                        }
                                        pw.print("    User ");
                                        pw.print(ActivityTaskManagerService.this.mAllowAppSwitchUids.keyAt(i));
                                        pw.print(": Type ");
                                        pw.print(types.keyAt(j));
                                        pw.print(" = ");
                                        UserHandle.formatUid(pw, types.valueAt(j).intValue());
                                        pw.println();
                                    }
                                }
                            }
                            if (dumpPackage == null) {
                                if (ActivityTaskManagerService.this.mController != null) {
                                    pw.println("  mController=" + ActivityTaskManagerService.this.mController + " mControllerIsAMonkey=" + ActivityTaskManagerService.this.mControllerIsAMonkey);
                                }
                                pw.println("  mGoingToSleepWakeLock=" + ActivityTaskManagerService.this.mStackSupervisor.mGoingToSleepWakeLock);
                                pw.println("  mLaunchingActivityWakeLock=" + ActivityTaskManagerService.this.mStackSupervisor.mLaunchingActivityWakeLock);
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return needSep2;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                        if (!needSep) {
                            needSep2 = needSep;
                        } else {
                            pw.println();
                            needSep2 = false;
                        }
                    } else {
                        needSep2 = needSep;
                        if (ActivityTaskManagerService.this.mPreviousProcess != null && (dumpPackage == null || ActivityTaskManagerService.this.mPreviousProcess.mPkgList.contains(dumpPackage))) {
                            if (needSep2) {
                                pw.println();
                                needSep2 = false;
                            }
                            pw.println("  mPreviousProcess: " + ActivityTaskManagerService.this.mPreviousProcess);
                        }
                        if (dumpAll && (ActivityTaskManagerService.this.mPreviousProcess == null || dumpPackage == null || ActivityTaskManagerService.this.mPreviousProcess.mPkgList.contains(dumpPackage))) {
                            StringBuilder sb5 = new StringBuilder(128);
                            sb5.append("  mPreviousProcessVisibleTime: ");
                            TimeUtils.formatDuration(ActivityTaskManagerService.this.mPreviousProcessVisibleTime, sb5);
                            pw.println(sb5);
                        }
                        if (ActivityTaskManagerService.this.mHeavyWeightProcess != null && (dumpPackage == null || ActivityTaskManagerService.this.mHeavyWeightProcess.mPkgList.contains(dumpPackage))) {
                            if (needSep2) {
                                pw.println();
                                needSep2 = false;
                            }
                            pw.println("  mHeavyWeightProcess: " + ActivityTaskManagerService.this.mHeavyWeightProcess);
                        }
                        if (dumpPackage == null) {
                            pw.println("  mGlobalConfiguration: " + ActivityTaskManagerService.this.getGlobalConfiguration());
                            ActivityTaskManagerService.this.mRootWindowContainer.dumpDisplayConfigs(pw, "  ");
                        }
                        if (dumpAll) {
                            topFocusedStack = ActivityTaskManagerService.this.getTopDisplayFocusedStack();
                            if (dumpPackage == null && topFocusedStack != null) {
                                pw.println("  mConfigWillChange: " + topFocusedStack.mConfigWillChange);
                            }
                            if (ActivityTaskManagerService.this.mCompatModePackages.getPackages().size() > 0) {
                                printed2 = false;
                                while (r7.hasNext()) {
                                    pkg = entry.getKey();
                                    int mode3 = entry.getValue().intValue();
                                    if (dumpPackage != null || dumpPackage.equals(pkg)) {
                                        if (!printed2) {
                                            pw.println("  mScreenCompatPackages:");
                                            printed2 = true;
                                        }
                                        pw.println("    " + pkg + ": " + mode3);
                                    }
                                }
                            }
                        }
                        if (dumpPackage == null) {
                            try {
                                pw.println("  mWakefulness=" + PowerManagerInternal.wakefulnessToString(wakefulness));
                                pw.println("  mSleepTokens=" + ActivityTaskManagerService.this.mRootWindowContainer.mSleepTokens);
                                if (ActivityTaskManagerService.this.mRunningVoice != null) {
                                    pw.println("  mRunningVoice=" + ActivityTaskManagerService.this.mRunningVoice);
                                    pw.println("  mVoiceWakeLock" + ActivityTaskManagerService.this.mVoiceWakeLock);
                                }
                                pw.println("  mSleeping=" + ActivityTaskManagerService.this.mSleeping);
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append("  mShuttingDown=");
                                sb6.append(ActivityTaskManagerService.this.mShuttingDown);
                                sb6.append(" mTestPssMode=");
                                try {
                                    sb6.append(testPssMode);
                                    pw.println(sb6.toString());
                                    pw.println("  mVrController=" + ActivityTaskManagerService.this.mVrController);
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                        if (ActivityTaskManagerService.this.mCurAppTimeTracker != null) {
                            ActivityTaskManagerService.this.mCurAppTimeTracker.dumpWithHeader(pw, "  ", true);
                        }
                        if (ActivityTaskManagerService.this.mAllowAppSwitchUids.size() > 0) {
                            printed = false;
                            while (i < ActivityTaskManagerService.this.mAllowAppSwitchUids.size()) {
                                types = ActivityTaskManagerService.this.mAllowAppSwitchUids.valueAt(i);
                                for (j = 0; j < types.size(); j++) {
                                    if (dumpPackage != null || UserHandle.getAppId(types.valueAt(j).intValue()) == dumpAppId) {
                                        if (needSep2) {
                                            pw.println();
                                            needSep2 = false;
                                        }
                                        if (!printed) {
                                            pw.println("  mAllowAppSwitchUids:");
                                            printed = true;
                                        }
                                        pw.print("    User ");
                                        pw.print(ActivityTaskManagerService.this.mAllowAppSwitchUids.keyAt(i));
                                        pw.print(": Type ");
                                        pw.print(types.keyAt(j));
                                        pw.print(" = ");
                                        UserHandle.formatUid(pw, types.valueAt(j).intValue());
                                        pw.println();
                                    }
                                    try {
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                }
                            }
                        }
                        if (dumpPackage == null) {
                            if (ActivityTaskManagerService.this.mController != null) {
                                pw.println("  mController=" + ActivityTaskManagerService.this.mController + " mControllerIsAMonkey=" + ActivityTaskManagerService.this.mControllerIsAMonkey);
                            }
                            pw.println("  mGoingToSleepWakeLock=" + ActivityTaskManagerService.this.mStackSupervisor.mGoingToSleepWakeLock);
                            pw.println("  mLaunchingActivityWakeLock=" + ActivityTaskManagerService.this.mStackSupervisor.mLaunchingActivityWakeLock);
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return needSep2;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void writeProcessesToProto(ProtoOutputStream proto, String dumpPackage, int wakeFullness, boolean testPssMode) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (dumpPackage == null) {
                        ActivityTaskManagerService.this.getGlobalConfiguration().dumpDebug(proto, 1146756268051L);
                        ActivityStack topFocusedStack = ActivityTaskManagerService.this.getTopDisplayFocusedStack();
                        if (topFocusedStack != null) {
                            proto.write(1133871366165L, topFocusedStack.mConfigWillChange);
                        }
                        ActivityTaskManagerService.this.writeSleepStateToProto(proto, wakeFullness, testPssMode);
                        if (ActivityTaskManagerService.this.mRunningVoice != null) {
                            long vrToken = proto.start(1146756268060L);
                            proto.write(1138166333441L, ActivityTaskManagerService.this.mRunningVoice.toString());
                            ActivityTaskManagerService.this.mVoiceWakeLock.dumpDebug(proto, 1146756268034L);
                            proto.end(vrToken);
                        }
                        ActivityTaskManagerService.this.mVrController.dumpDebug(proto, 1146756268061L);
                        if (ActivityTaskManagerService.this.mController != null) {
                            long token = proto.start(1146756268069L);
                            proto.write(1138166333441L, ActivityTaskManagerService.this.mController.toString());
                            proto.write(1133871366146L, ActivityTaskManagerService.this.mControllerIsAMonkey);
                            proto.end(token);
                        }
                        ActivityTaskManagerService.this.mStackSupervisor.mGoingToSleepWakeLock.dumpDebug(proto, 1146756268079L);
                        ActivityTaskManagerService.this.mStackSupervisor.mLaunchingActivityWakeLock.dumpDebug(proto, 1146756268080L);
                    }
                    if (ActivityTaskManagerService.this.mHomeProcess != null && (dumpPackage == null || ActivityTaskManagerService.this.mHomeProcess.mPkgList.contains(dumpPackage))) {
                        ActivityTaskManagerService.this.mHomeProcess.dumpDebug(proto, 1146756268047L);
                    }
                    if (ActivityTaskManagerService.this.mPreviousProcess != null && (dumpPackage == null || ActivityTaskManagerService.this.mPreviousProcess.mPkgList.contains(dumpPackage))) {
                        ActivityTaskManagerService.this.mPreviousProcess.dumpDebug(proto, 1146756268048L);
                        proto.write(1112396529681L, ActivityTaskManagerService.this.mPreviousProcessVisibleTime);
                    }
                    if (ActivityTaskManagerService.this.mHeavyWeightProcess != null && (dumpPackage == null || ActivityTaskManagerService.this.mHeavyWeightProcess.mPkgList.contains(dumpPackage))) {
                        ActivityTaskManagerService.this.mHeavyWeightProcess.dumpDebug(proto, 1146756268050L);
                    }
                    for (Map.Entry<String, Integer> entry : ActivityTaskManagerService.this.mCompatModePackages.getPackages().entrySet()) {
                        String pkg = entry.getKey();
                        int mode = entry.getValue().intValue();
                        if (dumpPackage == null || dumpPackage.equals(pkg)) {
                            long compatToken = proto.start(2246267895830L);
                            proto.write(1138166333441L, pkg);
                            proto.write(1120986464258L, mode);
                            proto.end(compatToken);
                        }
                    }
                    if (ActivityTaskManagerService.this.mCurAppTimeTracker != null) {
                        ActivityTaskManagerService.this.mCurAppTimeTracker.dumpDebug(proto, 1146756268063L, true);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean dumpActivity(FileDescriptor fd, PrintWriter pw, String name, String[] args, int opti, boolean dumpAll, boolean dumpVisibleStacksOnly, boolean dumpFocusedStackOnly) {
            return ActivityTaskManagerService.this.dumpActivity(fd, pw, name, args, opti, dumpAll, dumpVisibleStacksOnly, dumpFocusedStackOnly);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void dumpForOom(PrintWriter pw) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    pw.println("  mHomeProcess: " + ActivityTaskManagerService.this.mHomeProcess);
                    pw.println("  mPreviousProcess: " + ActivityTaskManagerService.this.mPreviousProcess);
                    if (ActivityTaskManagerService.this.mHeavyWeightProcess != null) {
                        pw.println("  mHeavyWeightProcess: " + ActivityTaskManagerService.this.mHeavyWeightProcess);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean canGcNow() {
            boolean z;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    z = isSleeping() || ActivityTaskManagerService.this.mRootWindowContainer.allResumedActivitiesIdle();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public WindowProcessController getTopApp() {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                if (ActivityTaskManagerService.this.mRootWindowContainer == null) {
                    return null;
                }
                ActivityRecord top = ActivityTaskManagerService.this.mRootWindowContainer.getTopResumedActivity();
                return top != null ? top.app : null;
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void rankTaskLayersIfNeeded() {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                if (ActivityTaskManagerService.this.mRootWindowContainer != null) {
                    ActivityTaskManagerService.this.mRootWindowContainer.rankTaskLayersIfNeeded();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void scheduleDestroyAllActivities(String reason) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRootWindowContainer.scheduleDestroyAllActivities(reason);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void removeUser(int userId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRootWindowContainer.removeUser(userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean switchUser(int userId, UserState userState) {
            boolean zSwitchUser;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zSwitchUser = ActivityTaskManagerService.this.mRootWindowContainer.switchUser(userId, userState);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zSwitchUser;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onHandleAppCrash(WindowProcessController wpc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRootWindowContainer.handleAppCrash(wpc);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public int finishTopCrashedActivities(WindowProcessController crashedApp, String reason) {
            int iFinishTopCrashedActivities;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    iFinishTopCrashedActivities = ActivityTaskManagerService.this.mRootWindowContainer.finishTopCrashedActivities(crashedApp, reason);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return iFinishTopCrashedActivities;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onUidActive(int uid, int procState) {
            ActivityTaskManagerService.this.mActiveUids.onUidActive(uid, procState);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onUidInactive(int uid) {
            ActivityTaskManagerService.this.mActiveUids.onUidInactive(uid);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onActiveUidsCleared() {
            ActivityTaskManagerService.this.mActiveUids.onActiveUidsCleared();
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onUidProcStateChanged(int uid, int procState) {
            ActivityTaskManagerService.this.mActiveUids.onUidProcStateChanged(uid, procState);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onUidAddedToPendingTempAllowlist(int uid, String tag) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                ActivityTaskManagerService.this.mPendingTempAllowlist.put(uid, tag);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onUidRemovedFromPendingTempAllowlist(int uid) {
            synchronized (ActivityTaskManagerService.this.mGlobalLockWithoutBoost) {
                ActivityTaskManagerService.this.mPendingTempAllowlist.remove(uid);
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean handleAppCrashInActivityController(String processName, int pid, String shortMsg, String longMsg, long timeMillis, String stackTrace, Runnable killCrashingAppCallback) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (ActivityTaskManagerService.this.mController == null) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return false;
                    }
                    try {
                        if (!ActivityTaskManagerService.this.mController.appCrashed(processName, pid, shortMsg, longMsg, timeMillis, stackTrace)) {
                            killCrashingAppCallback.run();
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    } catch (RemoteException e) {
                        ActivityTaskManagerService.this.mController = null;
                        Watchdog.getInstance().setActivityController(null);
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void removeRecentTasksByPackageName(String packageName, int userId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRecentTasks.removeTasksByPackageName(packageName, userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void cleanupRecentTasksForUser(int userId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRecentTasks.cleanupLocked(userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void loadRecentTasksForUser(int userId) {
            if (!ActivityTaskManagerService.this.mLoadRecentTasksForUser) {
                return;
            }
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRecentTasks.loadUserRecentsLocked(userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void onPackagesSuspendedChanged(String[] packages, boolean suspended, int userId) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mRecentTasks.onPackagesSuspendedChanged(packages, suspended, userId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void flushRecentTasks() {
            ActivityTaskManagerService.this.mRecentTasks.flush();
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public WindowProcessController getHomeProcess() {
            WindowProcessController windowProcessController;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    windowProcessController = ActivityTaskManagerService.this.mHomeProcess;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return windowProcessController;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public WindowProcessController getPreviousProcess() {
            WindowProcessController windowProcessController;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    windowProcessController = ActivityTaskManagerService.this.mPreviousProcess;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return windowProcessController;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void clearLockedTasks(String reason) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.getLockTaskController().clearLockedTasks(reason);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void updateUserConfiguration() {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Configuration configuration = new Configuration(ActivityTaskManagerService.this.getGlobalConfiguration());
                    int currentUserId = ActivityTaskManagerService.this.mAmInternal.getCurrentUserId();
                    Settings.System.adjustConfigurationForUser(ActivityTaskManagerService.this.mContext.getContentResolver(), configuration, currentUserId, Settings.System.canWrite(ActivityTaskManagerService.this.mContext));
                    ActivityTaskManagerService.this.updateConfigurationLocked(configuration, null, false, false, currentUserId, false);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean canShowErrorDialogs() {
            boolean z;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    z = false;
                    if (ActivityTaskManagerService.this.mShowDialogs && !ActivityTaskManagerService.this.mSleeping && !ActivityTaskManagerService.this.mShuttingDown && !ActivityTaskManagerService.this.mKeyguardController.isKeyguardOrAodShowing(0) && !ActivityTaskManagerService.this.hasUserRestriction("no_system_error_dialogs", ActivityTaskManagerService.this.mAmInternal.getCurrentUserId()) && (!UserManager.isDeviceInDemoMode(ActivityTaskManagerService.this.mContext) || !ActivityTaskManagerService.this.mAmInternal.getCurrentUser().isDemo())) {
                        z = true;
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setProfileApp(String profileApp) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mProfileApp = profileApp;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setProfileProc(WindowProcessController wpc) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mProfileProc = wpc;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setProfilerInfo(ProfilerInfo profilerInfo) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mProfilerInfo = profilerInfo;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public ActivityMetricsLaunchObserverRegistry getLaunchObserverRegistry() {
            ActivityMetricsLaunchObserverRegistry launchObserverRegistry;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    launchObserverRegistry = ActivityTaskManagerService.this.mStackSupervisor.getActivityMetricsLogger().getLaunchObserverRegistry();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return launchObserverRegistry;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public ActivityManager.TaskSnapshot getTaskSnapshotBlocking(int taskId, boolean isLowResolution) {
            return ActivityTaskManagerService.this.getTaskSnapshot(taskId, isLowResolution, true);
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isUidForeground(int uid) {
            boolean zIsUidForeground;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zIsUidForeground = ActivityTaskManagerService.this.isUidForeground(uid);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zIsUidForeground;
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setDeviceOwnerUid(int uid) {
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.setDeviceOwnerUid(uid);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public void setCompanionAppPackages(int userId, Set<String> companionAppPackages) {
            HashSet hashSet = new HashSet();
            for (String pkg : companionAppPackages) {
                int uid = ActivityTaskManagerService.this.getPackageManagerInternalLocked().getPackageUid(pkg, 0, userId);
                if (uid >= 0) {
                    hashSet.add(Integer.valueOf(uid));
                }
            }
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityTaskManagerService.this.mCompanionAppUidsMap.put(Integer.valueOf(userId), hashSet);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.ActivityTaskManagerInternal
        public boolean isBaseOfLockedTask(String packageName) {
            boolean zIsBaseOfLockedTask;
            synchronized (ActivityTaskManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zIsBaseOfLockedTask = ActivityTaskManagerService.this.getLockTaskController().isBaseOfLockedTask(packageName);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zIsBaseOfLockedTask;
        }
    }
}
