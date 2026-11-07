package com.android.server.wm;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.ActivityOptions;
import android.app.AppOpsManager;
import android.app.ProfilerInfo;
import android.app.ResultInfo;
import android.app.WaitResult;
import android.app.servertransaction.ClientTransaction;
import android.app.servertransaction.LaunchActivityItem;
import android.app.servertransaction.PauseActivityItem;
import android.app.servertransaction.ResumeActivityItem;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.util.ArrayMap;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.internal.content.ReferrerIntent;
import com.android.internal.os.TransferPipe;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.am.AppTimeTracker;
import com.android.server.am.UserState;
import com.android.server.job.controllers.JobStatus;
import com.android.server.uri.NeededUriGrants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityStackSupervisor implements RecentTasks.Callbacks {
    private static final ArrayMap<String, String> ACTION_TO_RUNTIME_PERMISSION;
    private static final int ACTIVITY_RESTRICTION_APPOP = 2;
    private static final int ACTIVITY_RESTRICTION_NONE = 0;
    private static final int ACTIVITY_RESTRICTION_PERMISSION = 1;
    static final boolean DEFER_RESUME = true;
    private static final int IDLE_NOW_MSG = 201;
    private static final int IDLE_TIMEOUT = 10000;
    private static final int IDLE_TIMEOUT_MSG = 200;
    private static final int LAUNCH_TASK_BEHIND_COMPLETE = 212;
    private static final int LAUNCH_TIMEOUT = 10000;
    private static final int LAUNCH_TIMEOUT_MSG = 204;
    private static final int MAX_TASK_IDS_PER_USER = 100000;
    static final boolean ON_TOP = true;
    static final boolean PRESERVE_WINDOWS = true;
    private static final int PROCESS_STOPPING_AND_FINISHING_MSG = 205;
    static final boolean REMOVE_FROM_RECENTS = true;
    private static final int REPORT_HOME_CHANGED_MSG = 216;
    private static final int REPORT_MULTI_WINDOW_MODE_CHANGED_MSG = 214;
    private static final int REPORT_PIP_MODE_CHANGED_MSG = 215;
    private static final int RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG = 213;
    private static final int RESUME_TOP_ACTIVITY_MSG = 202;
    private static final int SLEEP_TIMEOUT = 5000;
    private static final int SLEEP_TIMEOUT_MSG = 203;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_IDLE = "ActivityTaskManager";
    private static final String TAG_PAUSE = "ActivityTaskManager";
    private static final String TAG_RECENTS = "ActivityTaskManager";
    private static final String TAG_STACK = "ActivityTaskManager";
    private static final String TAG_SWITCH = "ActivityTaskManager";
    static final String TAG_TASKS = "ActivityTaskManager";
    private static final int TOP_RESUMED_STATE_LOSS_TIMEOUT = 500;
    private static final int TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG = 217;
    private static final boolean VALIDATE_WAKE_LOCK_CALLER = false;
    private ActivityMetricsLogger mActivityMetricsLogger;
    private AppOpsManager mAppOpsManager;
    boolean mAppVisibilitiesChangedSinceLastPause;
    private int mDeferResumeCount;
    private boolean mDockedStackResizing;
    PowerManager.WakeLock mGoingToSleepWakeLock;
    private final ActivityStackSupervisorHandler mHandler;
    private boolean mInitialized;
    private KeyguardController mKeyguardController;
    private LaunchParamsController mLaunchParamsController;
    LaunchParamsPersister mLaunchParamsPersister;
    PowerManager.WakeLock mLaunchingActivityWakeLock;
    final Looper mLooper;
    PersisterQueue mPersisterQueue;
    private Rect mPipModeChangedTargetStackBounds;
    private PowerManager mPowerManager;
    RecentTasks mRecentTasks;
    RootWindowContainer mRootWindowContainer;
    private RunningTasks mRunningTasks;
    final ActivityTaskManagerService mService;
    private ComponentName mSystemChooserActivity;
    private ActivityRecord mTopResumedActivity;
    private boolean mTopResumedActivityWaitingForPrev;
    private int mVisibilityTransactionDepth;
    private WindowManagerService mWindowManager;
    private final SparseIntArray mCurTaskIdForUser = new SparseIntArray(20);
    private final ArrayList<WaitInfo> mWaitingForActivityVisible = new ArrayList<>();
    final ArrayList<WaitResult> mWaitingActivityLaunched = new ArrayList<>();
    final ArrayList<ActivityRecord> mStoppingActivities = new ArrayList<>();
    final ArrayList<ActivityRecord> mFinishingActivities = new ArrayList<>();
    private final ArrayList<ActivityRecord> mMultiWindowModeChangedActivities = new ArrayList<>();
    private final ArrayList<ActivityRecord> mPipModeChangedActivities = new ArrayList<>();
    final ArrayList<ActivityRecord> mNoAnimActivities = new ArrayList<>();
    final ArrayList<UserState> mStartingUsers = new ArrayList<>();
    boolean mUserLeaving = false;

    static {
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        ACTION_TO_RUNTIME_PERMISSION = arrayMap;
        arrayMap.put("android.media.action.IMAGE_CAPTURE", "android.permission.CAMERA");
        ACTION_TO_RUNTIME_PERMISSION.put("android.media.action.VIDEO_CAPTURE", "android.permission.CAMERA");
        ACTION_TO_RUNTIME_PERMISSION.put("android.intent.action.CALL", "android.permission.CALL_PHONE");
    }

    boolean canPlaceEntityOnDisplay(int displayId, int callingPid, int callingUid, ActivityInfo activityInfo) {
        if (displayId == 0) {
            return true;
        }
        return this.mService.mSupportsMultiDisplay && isCallerAllowedToLaunchOnDisplay(callingPid, callingUid, displayId, activityInfo);
    }

    static class PendingActivityLaunch {
        final WindowProcessController callerApp;
        final NeededUriGrants intentGrants;
        final ActivityRecord r;
        final ActivityRecord sourceRecord;
        final ActivityStack stack;
        final int startFlags;

        PendingActivityLaunch(ActivityRecord r, ActivityRecord sourceRecord, int startFlags, ActivityStack stack, WindowProcessController callerApp, NeededUriGrants intentGrants) {
            this.r = r;
            this.sourceRecord = sourceRecord;
            this.startFlags = startFlags;
            this.stack = stack;
            this.callerApp = callerApp;
            this.intentGrants = intentGrants;
        }

        void sendErrorResult(String message) {
            try {
                if (this.callerApp != null && this.callerApp.hasThread()) {
                    this.callerApp.getThread().scheduleCrash(message);
                }
            } catch (RemoteException e) {
                Slog.e("ActivityTaskManager", "Exception scheduling crash of failed activity launcher sourceRecord=" + this.sourceRecord, e);
            }
        }
    }

    public ActivityStackSupervisor(ActivityTaskManagerService service, Looper looper) {
        this.mService = service;
        this.mLooper = looper;
        this.mHandler = new ActivityStackSupervisorHandler(looper);
    }

    public void initialize() {
        if (this.mInitialized) {
            return;
        }
        this.mInitialized = true;
        setRunningTasks(new RunningTasks());
        this.mActivityMetricsLogger = new ActivityMetricsLogger(this, this.mHandler.getLooper());
        this.mKeyguardController = new KeyguardController(this.mService, this);
        PersisterQueue persisterQueue = new PersisterQueue();
        this.mPersisterQueue = persisterQueue;
        LaunchParamsPersister launchParamsPersister = new LaunchParamsPersister(persisterQueue, this);
        this.mLaunchParamsPersister = launchParamsPersister;
        LaunchParamsController launchParamsController = new LaunchParamsController(this.mService, launchParamsPersister);
        this.mLaunchParamsController = launchParamsController;
        launchParamsController.registerDefaultModifiers(this);
    }

    void onSystemReady() {
        this.mLaunchParamsPersister.onSystemReady();
    }

    void onUserUnlocked(int userId) {
        this.mPersisterQueue.startPersisting();
        this.mLaunchParamsPersister.onUnlockUser(userId);
    }

    public ActivityMetricsLogger getActivityMetricsLogger() {
        return this.mActivityMetricsLogger;
    }

    public KeyguardController getKeyguardController() {
        return this.mKeyguardController;
    }

    ComponentName getSystemChooserActivity() {
        if (this.mSystemChooserActivity == null) {
            this.mSystemChooserActivity = ComponentName.unflattenFromString(this.mService.mContext.getResources().getString(R.string.config_defaultProfcollectReportUploaderApp));
        }
        return this.mSystemChooserActivity;
    }

    void setRecentTasks(RecentTasks recentTasks) {
        RecentTasks recentTasks2 = this.mRecentTasks;
        if (recentTasks2 != null) {
            recentTasks2.unregisterCallback(this);
        }
        this.mRecentTasks = recentTasks;
        recentTasks.registerCallback(this);
    }

    void setRunningTasks(RunningTasks runningTasks) {
        this.mRunningTasks = runningTasks;
    }

    RunningTasks getRunningTasks() {
        return this.mRunningTasks;
    }

    void initPowerManagement() {
        PowerManager powerManager = (PowerManager) this.mService.mContext.getSystemService(PowerManager.class);
        this.mPowerManager = powerManager;
        this.mGoingToSleepWakeLock = powerManager.newWakeLock(1, "ActivityManager-Sleep");
        PowerManager.WakeLock wakeLockNewWakeLock = this.mPowerManager.newWakeLock(1, "*launch*");
        this.mLaunchingActivityWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    void setWindowManager(WindowManagerService wm) {
        this.mWindowManager = wm;
        getKeyguardController().setWindowManager(wm);
    }

    void moveRecentsStackToFront(String reason) {
        ActivityStack recentsStack = this.mRootWindowContainer.getDefaultTaskDisplayArea().getStack(0, 3);
        if (recentsStack != null) {
            recentsStack.moveToFront(reason);
        }
    }

    void setNextTaskIdForUser(int taskId, int userId) {
        int currentTaskId = this.mCurTaskIdForUser.get(userId, -1);
        if (taskId > currentTaskId) {
            this.mCurTaskIdForUser.put(userId, taskId);
        }
    }

    private static int nextTaskIdForUser(int taskId, int userId) {
        int nextTaskId = taskId + 1;
        if (nextTaskId == (userId + 1) * MAX_TASK_IDS_PER_USER) {
            return nextTaskId - MAX_TASK_IDS_PER_USER;
        }
        return nextTaskId;
    }

    int getNextTaskIdForUser() {
        return getNextTaskIdForUser(this.mRootWindowContainer.mCurrentUser);
    }

    int getNextTaskIdForUser(int userId) {
        int currentTaskId = this.mCurTaskIdForUser.get(userId, MAX_TASK_IDS_PER_USER * userId);
        int candidateTaskId = nextTaskIdForUser(currentTaskId, userId);
        do {
            if (this.mRecentTasks.containsTaskId(candidateTaskId, userId) || this.mRootWindowContainer.anyTaskForId(candidateTaskId, 1) != null) {
                candidateTaskId = nextTaskIdForUser(candidateTaskId, userId);
            } else {
                this.mCurTaskIdForUser.put(userId, candidateTaskId);
                return candidateTaskId;
            }
        } while (candidateTaskId != currentTaskId);
        throw new IllegalStateException("Cannot get an available task id. Reached limit of 100000 running tasks per user.");
    }

    void waitActivityVisible(ComponentName name, WaitResult result) {
        WaitInfo waitInfo = new WaitInfo(name, result);
        this.mWaitingForActivityVisible.add(waitInfo);
    }

    void cleanupActivity(ActivityRecord r) {
        this.mFinishingActivities.remove(r);
        stopWaitingForActivityVisible(r, -1L);
    }

    void stopWaitingForActivityVisible(ActivityRecord r) {
        stopWaitingForActivityVisible(r, getActivityMetricsLogger().getLastDrawnDelayMs(r));
    }

    void stopWaitingForActivityVisible(ActivityRecord r, long totalTime) {
        boolean changed = false;
        for (int i = this.mWaitingForActivityVisible.size() - 1; i >= 0; i--) {
            WaitInfo w = this.mWaitingForActivityVisible.get(i);
            if (w.matches(r.mActivityComponent)) {
                WaitResult result = w.getResult();
                changed = true;
                result.timeout = false;
                result.who = w.getComponent();
                result.totalTime = totalTime;
                this.mWaitingForActivityVisible.remove(w);
            }
        }
        if (changed) {
            this.mService.mGlobalLock.notifyAll();
        }
    }

    void reportWaitingActivityLaunchedIfNeeded(ActivityRecord r, int result) {
        if (this.mWaitingActivityLaunched.isEmpty()) {
            return;
        }
        if (result != 3 && result != 2) {
            return;
        }
        boolean changed = false;
        for (int i = this.mWaitingActivityLaunched.size() - 1; i >= 0; i--) {
            WaitResult w = this.mWaitingActivityLaunched.remove(i);
            if (w.who == null) {
                changed = true;
                w.result = result;
                if (result == 3) {
                    w.who = r.mActivityComponent;
                }
            }
        }
        if (changed) {
            this.mService.mGlobalLock.notifyAll();
        }
    }

    void reportActivityLaunchedLocked(boolean timeout, ActivityRecord r, long totalTime, int launchState) {
        boolean changed = false;
        for (int i = this.mWaitingActivityLaunched.size() - 1; i >= 0; i--) {
            WaitResult w = this.mWaitingActivityLaunched.remove(i);
            if (w.who == null) {
                changed = true;
                w.timeout = timeout;
                if (r != null) {
                    w.who = new ComponentName(r.info.packageName, r.info.name);
                }
                w.totalTime = totalTime;
                w.launchState = launchState;
            }
        }
        if (changed) {
            this.mService.mGlobalLock.notifyAll();
        }
    }

    ActivityInfo resolveActivity(Intent intent, ResolveInfo rInfo, int startFlags, ProfilerInfo profilerInfo) {
        ActivityInfo aInfo = rInfo != null ? rInfo.activityInfo : null;
        if (aInfo != null) {
            intent.setComponent(new ComponentName(aInfo.applicationInfo.packageName, aInfo.name));
            if (!aInfo.processName.equals("system") && ((startFlags & 14) != 0 || profilerInfo != null)) {
                synchronized (this.mService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        Message msg = PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.wm.-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc
                            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                                ((ActivityManagerInternal) obj).setDebugFlagsForStartingActivity((ActivityInfo) obj2, ((Integer) obj3).intValue(), (ProfilerInfo) obj4, (WindowManagerGlobalLock) obj5);
                            }
                        }, this.mService.mAmInternal, aInfo, Integer.valueOf(startFlags), profilerInfo, this.mService.mGlobalLock);
                        this.mService.mH.sendMessage(msg);
                        try {
                            this.mService.mGlobalLock.wait();
                        } catch (InterruptedException e) {
                        }
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            }
            String intentLaunchToken = intent.getLaunchToken();
            if (aInfo.launchToken == null && intentLaunchToken != null) {
                aInfo.launchToken = intentLaunchToken;
            }
        }
        return aInfo;
    }

    ResolveInfo resolveIntent(Intent intent, String resolvedType, int userId, int flags, int filterCallingUid) throws Throwable {
        int privateResolveFlags;
        try {
            Trace.traceBegin(32L, "resolveIntent");
            int modifiedFlags = flags | 65536 | 1024;
            int modifiedFlags2 = (intent.isWebIntent() || (intent.getFlags() & 2048) != 0) ? modifiedFlags | 8388608 : modifiedFlags;
            int privateResolveFlags2 = 0;
            if (intent.isWebIntent() && (intent.getFlags() & 1024) != 0) {
                privateResolveFlags2 = 0 | 1;
            }
            if ((intent.getFlags() & 512) == 0) {
                privateResolveFlags = privateResolveFlags2;
            } else {
                privateResolveFlags = privateResolveFlags2 | 2;
            }
            long token = Binder.clearCallingIdentity();
            try {
                try {
                    ResolveInfo resolveInfoResolveIntent = this.mService.getPackageManagerInternalLocked().resolveIntent(intent, resolvedType, modifiedFlags2, privateResolveFlags, userId, true, filterCallingUid);
                    Binder.restoreCallingIdentity(token);
                    Trace.traceEnd(32L);
                    return resolveInfoResolveIntent;
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                Trace.traceEnd(32L);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    ActivityInfo resolveActivity(Intent intent, String resolvedType, int startFlags, ProfilerInfo profilerInfo, int userId, int filterCallingUid) {
        ResolveInfo rInfo = resolveIntent(intent, resolvedType, userId, 0, filterCallingUid);
        return resolveActivity(intent, rInfo, startFlags, profilerInfo);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x030e  */
    /* JADX WARN: Code duplicated, block: B:116:0x032b A[Catch: all -> 0x0367, TRY_LEAVE, TryCatch #2 {all -> 0x0367, blocks: (B:67:0x020b, B:69:0x0228, B:71:0x0235, B:73:0x024d, B:74:0x0250, B:76:0x0258, B:78:0x025e, B:80:0x026a, B:82:0x0270, B:84:0x0276, B:85:0x0296, B:70:0x0231, B:114:0x0327, B:116:0x032b, B:120:0x0360, B:121:0x0366, B:108:0x0316, B:109:0x031b), top: B:133:0x0108 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x035f  */
    /* JADX WARN: Code duplicated, block: B:137:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0056  */
    /* JADX WARN: Code duplicated, block: B:29:0x0086 A[Catch: all -> 0x0068, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0068, blocks: (B:18:0x005e, B:24:0x0077, B:26:0x007d, B:29:0x0086, B:35:0x0095, B:41:0x00f5, B:43:0x00fa, B:45:0x00ff, B:52:0x0112, B:58:0x016f), top: B:139:0x005e }] */
    /* JADX WARN: Code duplicated, block: B:31:0x008d  */
    /* JADX WARN: Code duplicated, block: B:37:0x009d A[Catch: all -> 0x0369, TRY_ENTER, TryCatch #7 {all -> 0x0369, blocks: (B:15:0x0058, B:22:0x006d, B:27:0x0080, B:33:0x008f, B:38:0x00d9, B:48:0x0108, B:56:0x0124, B:59:0x0178, B:61:0x01d6, B:63:0x01ef, B:65:0x01f3, B:47:0x0105, B:37:0x009d), top: B:140:0x0058 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0105 A[Catch: all -> 0x0369, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x0369, blocks: (B:15:0x0058, B:22:0x006d, B:27:0x0080, B:33:0x008f, B:38:0x00d9, B:48:0x0108, B:56:0x0124, B:59:0x0178, B:61:0x01d6, B:63:0x01ef, B:65:0x01f3, B:47:0x0105, B:37:0x009d), top: B:140:0x0058 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x010e  */
    /* JADX WARN: Code duplicated, block: B:58:0x016f A[Catch: all -> 0x0068, RemoteException -> 0x0119, TRY_ENTER, TRY_LEAVE, TryCatch #5 {RemoteException -> 0x0119, blocks: (B:52:0x0112, B:58:0x016f), top: B:137:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0228 A[Catch: RemoteException -> 0x031c, all -> 0x0367, TryCatch #1 {RemoteException -> 0x031c, blocks: (B:67:0x020b, B:69:0x0228, B:71:0x0235, B:73:0x024d, B:74:0x0250, B:76:0x0258, B:78:0x025e, B:80:0x026a, B:82:0x0270, B:84:0x0276, B:85:0x0296, B:70:0x0231, B:108:0x0316, B:109:0x031b), top: B:132:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0231 A[Catch: RemoteException -> 0x031c, all -> 0x0367, TryCatch #1 {RemoteException -> 0x031c, blocks: (B:67:0x020b, B:69:0x0228, B:71:0x0235, B:73:0x024d, B:74:0x0250, B:76:0x0258, B:78:0x025e, B:80:0x026a, B:82:0x0270, B:84:0x0276, B:85:0x0296, B:70:0x0231, B:108:0x0316, B:109:0x031b), top: B:132:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:73:0x024d A[Catch: RemoteException -> 0x031c, all -> 0x0367, TryCatch #1 {RemoteException -> 0x031c, blocks: (B:67:0x020b, B:69:0x0228, B:71:0x0235, B:73:0x024d, B:74:0x0250, B:76:0x0258, B:78:0x025e, B:80:0x026a, B:82:0x0270, B:84:0x0276, B:85:0x0296, B:70:0x0231, B:108:0x0316, B:109:0x031b), top: B:132:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:91:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:94:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:97:0x02f7  */
    /* JADX WARN: Instruction removed from duplicated block: B:116:0x032b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x009d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x02b2, please report this as an issue */
    boolean realStartActivityLocked(ActivityRecord r, WindowProcessController proc, boolean andResume, boolean checkConfig) throws RemoteException {
        boolean andResume2;
        int i;
        int applicationInfoUid;
        LockTaskController lockTaskController;
        List<ResultInfo> results;
        List<ReferrerIntent> newIntents;
        Configuration procConfig;
        DisplayContent dc;
        ResumeActivityItem resumeActivityItemObtain;
        String str = "2nd-crash";
        if (!this.mRootWindowContainer.allPausedActivitiesComplete()) {
            Slog.v("ActivityTaskManager", "realStartActivityLocked: Skipping start of r=" + r + " some activities pausing...");
            return false;
        }
        Task task = r.getTask();
        ActivityStack stack = task.getStack();
        beginDeferResume();
        proc.pauseConfigurationDispatch();
        try {
            r.startFreezingScreenLocked(proc, 0);
            r.startLaunchTickingLocked();
            r.setProcess(proc);
            if (!andResume) {
                andResume2 = andResume;
                r.notifyUnknownVisibilityLaunchedForKeyguardTransition();
                if (checkConfig) {
                    this.mRootWindowContainer.ensureVisibilityAndConfig(r, r.getDisplayId(), false, true);
                }
                if (r.getRootTask().checkKeyguardVisibility(r, true, true)) {
                    r.setVisibility(true);
                }
                if (r.info.applicationInfo != null) {
                    i = r.info.applicationInfo.uid;
                } else {
                    i = -1;
                }
                applicationInfoUid = i;
                if (r.mUserId == proc.mUserId) {
                    Slog.wtf("ActivityTaskManager", "User ID for activity changing for " + r + " appInfo.uid=" + r.info.applicationInfo.uid + " info.ai.uid=" + applicationInfoUid + " old=" + r.app + " new=" + proc);
                } else {
                    Slog.wtf("ActivityTaskManager", "User ID for activity changing for " + r + " appInfo.uid=" + r.info.applicationInfo.uid + " info.ai.uid=" + applicationInfoUid + " old=" + r.app + " new=" + proc);
                }
                r.launchCount++;
                r.lastLaunchTime = SystemClock.uptimeMillis();
                proc.setLastActivityLaunchTime(r.lastLaunchTime);
                lockTaskController = this.mService.getLockTaskController();
                if (task.mLockTaskAuth != 2) {
                    lockTaskController.startLockTaskMode(task, false, 0);
                } else {
                    lockTaskController.startLockTaskMode(task, false, 0);
                }
                if (proc.hasThread()) {
                    throw new RemoteException();
                }
                results = null;
                newIntents = null;
                if (andResume2) {
                    results = r.results;
                    newIntents = r.newIntents;
                }
                Slog.v("ActivityTaskManager", "Launching: " + r + " savedState=" + r.getSavedState() + " with results=" + results + " newIntents=" + newIntents + " andResume=" + andResume2);
                EventLogTags.writeWmRestartActivity(r.mUserId, System.identityHashCode(r), task.mTaskId, r.shortComponentName);
                if (r.isActivityTypeHome()) {
                    updateHomeProcess(task.getBottomMostActivity().app);
                }
                this.mService.getPackageManagerInternalLocked().notifyPackageUse(r.intent.getComponent().getPackageName(), 0);
                r.setSleeping(false);
                r.forceNewConfig = false;
                this.mService.getAppWarningsLocked().onStartActivity(r);
                r.compat = this.mService.compatibilityInfoForPackageLocked(r.info.applicationInfo);
                procConfig = proc.prepareConfigurationForLaunchingActivity();
                MergedConfiguration mergedConfiguration = new MergedConfiguration(procConfig, r.getMergedOverrideConfiguration());
                r.setLastReportedConfiguration(mergedConfiguration);
                logIfTransactionTooLarge(r.intent, r.getSavedState());
                ClientTransaction clientTransaction = ClientTransaction.obtain(proc.getThread(), r.appToken);
                dc = r.getDisplay().mDisplayContent;
                clientTransaction.addCallback(LaunchActivityItem.obtain(new Intent(r.intent), System.identityHashCode(r), r.info, mergedConfiguration.getGlobalConfiguration(), mergedConfiguration.getOverrideConfiguration(), r.compat, r.launchedFromPackage, task.voiceInteractor, proc.getReportedProcState(), r.getSavedState(), r.getPersistentSavedState(), results, newIntents, dc.isNextTransitionForward(), proc.createProfilerInfoIfNeeded(), r.assistToken, r.createFixedRotationAdjustmentsIfNeeded()));
                if (andResume2) {
                    resumeActivityItemObtain = ResumeActivityItem.obtain(dc.isNextTransitionForward());
                } else {
                    resumeActivityItemObtain = PauseActivityItem.obtain();
                }
                clientTransaction.setLifecycleStateRequest(resumeActivityItemObtain);
                this.mService.getLifecycleManager().scheduleTransaction(clientTransaction);
                if (procConfig.seq > this.mRootWindowContainer.getConfiguration().seq) {
                    proc.setLastReportedConfiguration(procConfig);
                }
                if ((proc.mInfo.privateFlags & 2) != 0) {
                    if (this.mService.mHeavyWeightProcess != null) {
                        Slog.w("ActivityTaskManager", "Starting new heavy weight process " + proc + " when already running " + this.mService.mHeavyWeightProcess);
                    }
                    this.mService.setHeavyWeightProcess(r);
                }
                endDeferResume();
                proc.resumeConfigurationDispatch();
                r.launchFailed = false;
                if (andResume2) {
                    Slog.v("WindowManager", "Moving to PAUSED: " + r + " (starting in paused state)");
                    r.setState(ActivityStack.ActivityState.PAUSED, "realStartActivityLocked");
                    this.mRootWindowContainer.executeAppTransitionForAllDisplay();
                } else {
                    Slog.v("WindowManager", "Moving to PAUSED: " + r + " (starting in paused state)");
                    r.setState(ActivityStack.ActivityState.PAUSED, "realStartActivityLocked");
                    this.mRootWindowContainer.executeAppTransitionForAllDisplay();
                }
                proc.onStartActivity(this.mService.mTopProcessState, r.info);
                if (this.mRootWindowContainer.isTopDisplayFocusedStack(stack)) {
                    this.mService.getActivityStartController().startSetupActivity();
                }
                if (r.app != null) {
                    return true;
                }
                r.app.updateServiceConnectionActivities();
                return true;
                if (!r.launchFailed) {
                    r.launchFailed = true;
                    proc.removeActivity(r);
                    throw e;
                }
                Slog.e("ActivityTaskManager", "Second failure launching " + r.intent.getComponent().flattenToShortString() + ", giving up", e);
                String str2 = str;
                proc.appDied(str2);
                r.finishIfPossible(str2, false);
                endDeferResume();
                proc.resumeConfigurationDispatch();
                return false;
            }
            try {
                if (r.canResumeByCompat()) {
                    andResume2 = andResume;
                } else {
                    andResume2 = false;
                }
                try {
                    r.notifyUnknownVisibilityLaunchedForKeyguardTransition();
                    if (checkConfig) {
                        try {
                            this.mRootWindowContainer.ensureVisibilityAndConfig(r, r.getDisplayId(), false, true);
                        } catch (Throwable th) {
                            e = th;
                        }
                    }
                    if (r.getRootTask().checkKeyguardVisibility(r, true, true) && r.allowMoveToFront()) {
                        r.setVisibility(true);
                    }
                    if (r.info.applicationInfo != null) {
                        i = r.info.applicationInfo.uid;
                    } else {
                        i = -1;
                    }
                    applicationInfoUid = i;
                    if (r.mUserId == proc.mUserId || r.info.applicationInfo.uid != applicationInfoUid) {
                        Slog.wtf("ActivityTaskManager", "User ID for activity changing for " + r + " appInfo.uid=" + r.info.applicationInfo.uid + " info.ai.uid=" + applicationInfoUid + " old=" + r.app + " new=" + proc);
                    }
                    r.launchCount++;
                    r.lastLaunchTime = SystemClock.uptimeMillis();
                    proc.setLastActivityLaunchTime(r.lastLaunchTime);
                    lockTaskController = this.mService.getLockTaskController();
                    if (task.mLockTaskAuth != 2 || task.mLockTaskAuth == 4 || (task.mLockTaskAuth == 3 && lockTaskController.getLockTaskModeState() == 1)) {
                        lockTaskController.startLockTaskMode(task, false, 0);
                    }
                    try {
                        try {
                            try {
                                if (proc.hasThread()) {
                                    throw new RemoteException();
                                }
                                results = null;
                                newIntents = null;
                                if (andResume2) {
                                    try {
                                        results = r.results;
                                        newIntents = r.newIntents;
                                    } catch (RemoteException e) {
                                        e = e;
                                        str = "2nd-crash";
                                    }
                                }
                                Slog.v("ActivityTaskManager", "Launching: " + r + " savedState=" + r.getSavedState() + " with results=" + results + " newIntents=" + newIntents + " andResume=" + andResume2);
                                EventLogTags.writeWmRestartActivity(r.mUserId, System.identityHashCode(r), task.mTaskId, r.shortComponentName);
                                if (r.isActivityTypeHome()) {
                                    updateHomeProcess(task.getBottomMostActivity().app);
                                }
                                this.mService.getPackageManagerInternalLocked().notifyPackageUse(r.intent.getComponent().getPackageName(), 0);
                                r.setSleeping(false);
                                r.forceNewConfig = false;
                                this.mService.getAppWarningsLocked().onStartActivity(r);
                                r.compat = this.mService.compatibilityInfoForPackageLocked(r.info.applicationInfo);
                                procConfig = proc.prepareConfigurationForLaunchingActivity();
                                MergedConfiguration mergedConfiguration2 = new MergedConfiguration(procConfig, r.getMergedOverrideConfiguration());
                                r.setLastReportedConfiguration(mergedConfiguration2);
                                logIfTransactionTooLarge(r.intent, r.getSavedState());
                                ClientTransaction clientTransaction2 = ClientTransaction.obtain(proc.getThread(), r.appToken);
                                dc = r.getDisplay().mDisplayContent;
                                try {
                                    try {
                                        try {
                                            clientTransaction2.addCallback(LaunchActivityItem.obtain(new Intent(r.intent), System.identityHashCode(r), r.info, mergedConfiguration2.getGlobalConfiguration(), mergedConfiguration2.getOverrideConfiguration(), r.compat, r.launchedFromPackage, task.voiceInteractor, proc.getReportedProcState(), r.getSavedState(), r.getPersistentSavedState(), results, newIntents, dc.isNextTransitionForward(), proc.createProfilerInfoIfNeeded(), r.assistToken, r.createFixedRotationAdjustmentsIfNeeded()));
                                            if (andResume2) {
                                                resumeActivityItemObtain = ResumeActivityItem.obtain(dc.isNextTransitionForward());
                                            } else {
                                                resumeActivityItemObtain = PauseActivityItem.obtain();
                                            }
                                            clientTransaction2.setLifecycleStateRequest(resumeActivityItemObtain);
                                            this.mService.getLifecycleManager().scheduleTransaction(clientTransaction2);
                                            if (procConfig.seq > this.mRootWindowContainer.getConfiguration().seq) {
                                                proc.setLastReportedConfiguration(procConfig);
                                            }
                                            if ((proc.mInfo.privateFlags & 2) != 0 && this.mService.mHasHeavyWeightFeature && proc.mName.equals(proc.mInfo.packageName)) {
                                                if (this.mService.mHeavyWeightProcess != null && this.mService.mHeavyWeightProcess != proc) {
                                                    Slog.w("ActivityTaskManager", "Starting new heavy weight process " + proc + " when already running " + this.mService.mHeavyWeightProcess);
                                                }
                                                this.mService.setHeavyWeightProcess(r);
                                            }
                                            endDeferResume();
                                            proc.resumeConfigurationDispatch();
                                            r.launchFailed = false;
                                            if (andResume2 || !readyToResume()) {
                                                Slog.v("WindowManager", "Moving to PAUSED: " + r + " (starting in paused state)");
                                                r.setState(ActivityStack.ActivityState.PAUSED, "realStartActivityLocked");
                                                this.mRootWindowContainer.executeAppTransitionForAllDisplay();
                                            } else {
                                                stack.minimalResumeActivityLocked(r);
                                            }
                                            proc.onStartActivity(this.mService.mTopProcessState, r.info);
                                            if (this.mRootWindowContainer.isTopDisplayFocusedStack(stack)) {
                                                this.mService.getActivityStartController().startSetupActivity();
                                            }
                                            if (r.app != null) {
                                                return true;
                                            }
                                            r.app.updateServiceConnectionActivities();
                                            return true;
                                        } catch (RemoteException e2) {
                                            e = e2;
                                            if (!r.launchFailed) {
                                                r.launchFailed = true;
                                                proc.removeActivity(r);
                                                throw e;
                                            }
                                            Slog.e("ActivityTaskManager", "Second failure launching " + r.intent.getComponent().flattenToShortString() + ", giving up", e);
                                            String str3 = str;
                                            proc.appDied(str3);
                                            r.finishIfPossible(str3, false);
                                            endDeferResume();
                                            proc.resumeConfigurationDispatch();
                                            return false;
                                        }
                                    } catch (RemoteException e3) {
                                        e = e3;
                                    }
                                } catch (RemoteException e4) {
                                    e = e4;
                                    str = "2nd-crash";
                                }
                            } catch (RemoteException e5) {
                                e = e5;
                            }
                        } catch (Throwable th2) {
                            e = th2;
                        }
                    } catch (RemoteException e6) {
                        e = e6;
                        str = "2nd-crash";
                    }
                    if (!r.launchFailed) {
                        r.launchFailed = true;
                        proc.removeActivity(r);
                        throw e;
                    }
                    Slog.e("ActivityTaskManager", "Second failure launching " + r.intent.getComponent().flattenToShortString() + ", giving up", e);
                    String str4 = str;
                    proc.appDied(str4);
                    r.finishIfPossible(str4, false);
                    endDeferResume();
                    proc.resumeConfigurationDispatch();
                    return false;
                } catch (Throwable th3) {
                    e = th3;
                }
            } catch (Throwable th4) {
                e = th4;
            }
        } catch (Throwable th5) {
            e = th5;
        }
        endDeferResume();
        proc.resumeConfigurationDispatch();
        throw e;
    }

    void updateHomeProcess(WindowProcessController app) {
        if (app != null && this.mService.mHomeProcess != app) {
            if (!this.mHandler.hasMessages(REPORT_HOME_CHANGED_MSG)) {
                this.mHandler.sendEmptyMessage(REPORT_HOME_CHANGED_MSG);
            }
            this.mService.mHomeProcess = app;
        }
    }

    private void logIfTransactionTooLarge(Intent intent, Bundle icicle) {
        Bundle extras;
        int extrasSize = 0;
        if (intent != null && (extras = intent.getExtras()) != null) {
            extrasSize = extras.getSize();
        }
        int icicleSize = icicle == null ? 0 : icicle.getSize();
        if (extrasSize + icicleSize > 200000) {
            Slog.e("ActivityTaskManager", "Transaction too large, intent: " + intent + ", extras size: " + extrasSize + ", icicle size: " + icicleSize);
        }
    }

    void startSpecificActivity(ActivityRecord r, boolean andResume, boolean checkConfig) {
        WindowProcessController wpc = this.mService.getProcessController(r.processName, r.info.applicationInfo.uid);
        boolean knownToBeDead = false;
        if (wpc != null && wpc.hasThread()) {
            try {
                realStartActivityLocked(r, wpc, andResume, checkConfig);
                return;
            } catch (RemoteException e) {
                Slog.w("ActivityTaskManager", "Exception when starting activity " + r.intent.getComponent().flattenToShortString(), e);
                knownToBeDead = true;
            }
        }
        r.notifyUnknownVisibilityLaunchedForKeyguardTransition();
        boolean isTop = andResume && r.isTopRunningActivity();
        this.mService.startProcessAsync(r, knownToBeDead, isTop, isTop ? "top-activity" : "activity");
    }

    boolean checkStartAnyActivityPermission(Intent intent, ActivityInfo aInfo, String resultWho, int requestCode, int callingPid, int callingUid, String callingPackage, String callingFeatureId, boolean ignoreTargetSecurity, boolean launchingInTask, WindowProcessController callerApp, ActivityRecord resultRecord, ActivityStack resultStack) {
        String msg;
        boolean isCallerRecents = this.mService.getRecentTasks() != null && this.mService.getRecentTasks().isCallerRecents(callingUid);
        int startAnyPerm = ActivityTaskManagerService.checkPermission("android.permission.START_ANY_ACTIVITY", callingPid, callingUid);
        if (startAnyPerm == 0) {
            return true;
        }
        if (isCallerRecents && launchingInTask) {
            return true;
        }
        int componentRestriction = getComponentRestrictionForCallingPackage(aInfo, callingPackage, callingFeatureId, callingPid, callingUid, ignoreTargetSecurity);
        int actionRestriction = getActionRestrictionForCallingPackage(intent.getAction(), callingPackage, callingFeatureId, callingPid, callingUid);
        if (componentRestriction != 1 && actionRestriction != 1) {
            if (actionRestriction == 2) {
                String message = "Appop Denial: starting " + intent.toString() + " from " + callerApp + " (pid=" + callingPid + ", uid=" + callingUid + ") requires " + AppOpsManager.permissionToOp(ACTION_TO_RUNTIME_PERMISSION.get(intent.getAction()));
                Slog.w("ActivityTaskManager", message);
                return false;
            }
            if (componentRestriction == 2) {
                String message2 = "Appop Denial: starting " + intent.toString() + " from " + callerApp + " (pid=" + callingPid + ", uid=" + callingUid + ") requires appop " + AppOpsManager.permissionToOp(aInfo.permission);
                Slog.w("ActivityTaskManager", message2);
                return false;
            }
            return true;
        }
        if (resultRecord != null) {
            resultRecord.sendResult(-1, resultWho, requestCode, 0, null, null);
        }
        if (actionRestriction == 1) {
            msg = "Permission Denial: starting " + intent.toString() + " from " + callerApp + " (pid=" + callingPid + ", uid=" + callingUid + ") with revoked permission " + ACTION_TO_RUNTIME_PERMISSION.get(intent.getAction());
        } else if (!aInfo.exported) {
            msg = "Permission Denial: starting " + intent.toString() + " from " + callerApp + " (pid=" + callingPid + ", uid=" + callingUid + ") not exported from uid " + aInfo.applicationInfo.uid;
        } else {
            msg = "Permission Denial: starting " + intent.toString() + " from " + callerApp + " (pid=" + callingPid + ", uid=" + callingUid + ") requires " + aInfo.permission;
        }
        Slog.w("ActivityTaskManager", msg);
        throw new SecurityException(msg);
    }

    boolean isCallerAllowedToLaunchOnTaskDisplayArea(int callingPid, int callingUid, TaskDisplayArea taskDisplayArea, ActivityInfo aInfo) {
        return isCallerAllowedToLaunchOnDisplay(callingPid, callingUid, taskDisplayArea != null ? taskDisplayArea.getDisplayId() : 0, aInfo);
    }

    boolean isCallerAllowedToLaunchOnDisplay(int callingPid, int callingUid, int launchDisplayId, ActivityInfo aInfo) {
        if (callingPid == -1 && callingUid == -1) {
            return true;
        }
        DisplayContent displayContent = this.mRootWindowContainer.getDisplayContentOrCreate(launchDisplayId);
        if (displayContent == null || displayContent.isRemoved()) {
            Slog.w("ActivityTaskManager", "Launch on display check: display not found");
            return false;
        }
        int startAnyPerm = ActivityTaskManagerService.checkPermission("android.permission.INTERNAL_SYSTEM_WINDOW", callingPid, callingUid);
        if (startAnyPerm == 0) {
            return true;
        }
        boolean uidPresentOnDisplay = displayContent.isUidPresent(callingUid);
        int displayOwnerUid = displayContent.mDisplay.getOwnerUid();
        if (displayContent.mDisplay.getType() == 5 && displayOwnerUid != 1000) {
            if ((aInfo.flags & Integer.MIN_VALUE) == 0) {
                return false;
            }
            if (ActivityTaskManagerService.checkPermission("android.permission.ACTIVITY_EMBEDDING", callingPid, callingUid) == -1 && !uidPresentOnDisplay) {
                return false;
            }
        }
        if (!displayContent.isPrivate() || displayOwnerUid == callingUid || uidPresentOnDisplay) {
            return true;
        }
        Slog.w("ActivityTaskManager", "Launch on display check: denied");
        return false;
    }

    UserInfo getUserInfo(int userId) {
        long identity = Binder.clearCallingIdentity();
        try {
            return UserManager.get(this.mService.mContext).getUserInfo(userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private AppOpsManager getAppOpsManager() {
        if (this.mAppOpsManager == null) {
            this.mAppOpsManager = (AppOpsManager) this.mService.mContext.getSystemService(AppOpsManager.class);
        }
        return this.mAppOpsManager;
    }

    private int getComponentRestrictionForCallingPackage(ActivityInfo activityInfo, String callingPackage, String callingFeatureId, int callingPid, int callingUid, boolean ignoreTargetSecurity) {
        int opCode;
        if (ignoreTargetSecurity || ActivityTaskManagerService.checkComponentPermission(activityInfo.permission, callingPid, callingUid, activityInfo.applicationInfo.uid, activityInfo.exported) != -1) {
            return (activityInfo.permission == null || (opCode = AppOpsManager.permissionToOpCode(activityInfo.permission)) == -1 || getAppOpsManager().noteOpNoThrow(opCode, callingUid, callingPackage, callingFeatureId, "") == 0 || ignoreTargetSecurity) ? 0 : 2;
        }
        return 1;
    }

    private int getActionRestrictionForCallingPackage(String action, String callingPackage, String callingFeatureId, int callingPid, int callingUid) {
        String permission;
        if (action == null || (permission = ACTION_TO_RUNTIME_PERMISSION.get(action)) == null) {
            return 0;
        }
        try {
            PackageInfo packageInfo = this.mService.mContext.getPackageManager().getPackageInfoAsUser(callingPackage, 4096, UserHandle.getUserId(callingUid));
            if (!ArrayUtils.contains(packageInfo.requestedPermissions, permission)) {
                return 0;
            }
            if (ActivityTaskManagerService.checkPermission(permission, callingPid, callingUid) == -1) {
                return 1;
            }
            int opCode = AppOpsManager.permissionToOpCode(permission);
            if (opCode == -1 || getAppOpsManager().noteOpNoThrow(opCode, callingUid, callingPackage, callingFeatureId, "") == 0) {
                return 0;
            }
            return 2;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.i("ActivityTaskManager", "Cannot find package info for " + callingPackage);
            return 0;
        }
    }

    void setLaunchSource(int uid) {
        this.mLaunchingActivityWakeLock.setWorkSource(new WorkSource(uid));
    }

    void acquireLaunchWakelock() {
        this.mLaunchingActivityWakeLock.acquire();
        if (!this.mHandler.hasMessages(LAUNCH_TIMEOUT_MSG)) {
            this.mHandler.sendEmptyMessageDelayed(LAUNCH_TIMEOUT_MSG, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        }
    }

    private boolean checkFinishBootingLocked() {
        boolean booting = this.mService.isBooting();
        boolean enableScreen = false;
        this.mService.setBooting(false);
        if (!this.mService.isBooted()) {
            this.mService.setBooted(true);
            enableScreen = true;
        }
        if (booting || enableScreen) {
            this.mService.postFinishBooting(booting, enableScreen);
        }
        return booting;
    }

    void activityIdleInternal(ActivityRecord r, boolean fromTimeout, boolean processPausingActivities, Configuration config) {
        boolean booting = false;
        if (r != null) {
            Slog.d("ActivityTaskManager", "activityIdleInternal: Callers=" + Debug.getCallers(4));
            this.mHandler.removeMessages(200, r);
            r.finishLaunchTickingLocked();
            if (fromTimeout) {
                reportActivityLaunchedLocked(fromTimeout, r, -1L, -1);
            }
            if (config != null) {
                r.setLastReportedGlobalConfiguration(config);
            }
            r.idle = true;
            if ((this.mService.isBooting() && this.mRootWindowContainer.allResumedActivitiesIdle()) || fromTimeout) {
                booting = checkFinishBootingLocked();
            }
            r.mRelaunchReason = 0;
        }
        if (this.mRootWindowContainer.allResumedActivitiesIdle()) {
            if (r != null) {
                this.mService.scheduleAppGcsLocked();
            }
            if (this.mLaunchingActivityWakeLock.isHeld()) {
                this.mHandler.removeMessages(LAUNCH_TIMEOUT_MSG);
                this.mLaunchingActivityWakeLock.release();
            }
            this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
        }
        processStoppingAndFinishingActivities(r, processPausingActivities, "idle");
        if (!this.mStartingUsers.isEmpty()) {
            ArrayList<UserState> startingUsers = new ArrayList<>(this.mStartingUsers);
            this.mStartingUsers.clear();
            if (!booting) {
                for (int i = 0; i < startingUsers.size(); i++) {
                    this.mService.mAmInternal.finishUserSwitch(startingUsers.get(i));
                }
            }
        }
        this.mService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityStackSupervisor$iNb1-M_lYtbDycAXODgbDkmI9ww
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$activityIdleInternal$0$ActivityStackSupervisor();
            }
        });
    }

    public /* synthetic */ void lambda$activityIdleInternal$0$ActivityStackSupervisor() {
        this.mService.mAmInternal.trimApplications();
    }

    void findTaskToMoveToFront(Task task, int flags, ActivityOptions options, String reason, boolean forceNonResizeable) throws Throwable {
        ActivityStack currentStack = task.getStack();
        if (currentStack == null) {
            Slog.e("ActivityTaskManager", "findTaskToMoveToFront: can't move task=" + task + " to front. Stack is null");
            return;
        }
        if ((flags & 2) == 0) {
            this.mUserLeaving = true;
        }
        String reason2 = reason + " findTaskToMoveToFront";
        boolean reparented = false;
        AppTimeTracker appTimeTracker = null;
        if (!task.isResizeable() || !canUseActivityOptionsLaunchBounds(options)) {
            appTimeTracker = null;
        } else {
            Rect bounds = options.getLaunchBounds();
            task.setBounds(bounds);
            ActivityStack stack = this.mRootWindowContainer.getLaunchStack(null, options, task, true);
            if (stack != currentStack) {
                moveHomeStackToFrontIfNeeded(flags, stack.getDisplayArea(), reason2);
                task.reparent(stack, true, 1, false, true, reason2);
                currentStack = stack;
                reparented = true;
            }
            if (stack.shouldResizeStackWithLaunchBounds()) {
                stack.resize(bounds, false, false);
            } else {
                task.resize(false, false);
            }
        }
        ActivityStack currentStack2 = currentStack;
        if (!reparented) {
            moveHomeStackToFrontIfNeeded(flags, currentStack2.getDisplayArea(), reason2);
        }
        ActivityRecord r = task.getTopNonFinishingActivity();
        if (r != null) {
            appTimeTracker = r.appTimeTracker;
        }
        currentStack2.moveTaskToFront(task, false, options, appTimeTracker, reason2);
        handleNonResizableTaskIfNeeded(task, 0, this.mRootWindowContainer.getDefaultTaskDisplayArea(), currentStack2, forceNonResizeable);
    }

    private void moveHomeStackToFrontIfNeeded(int flags, TaskDisplayArea taskDisplayArea, String reason) {
        ActivityStack focusedStack = taskDisplayArea.getFocusedStack();
        if ((taskDisplayArea.getWindowingMode() == 1 && (flags & 1) != 0) || (focusedStack != null && focusedStack.isActivityTypeRecents())) {
            taskDisplayArea.moveHomeStackToFront(reason);
        }
    }

    boolean canUseActivityOptionsLaunchBounds(ActivityOptions options) {
        if (options == null || options.getLaunchBounds() == null) {
            return false;
        }
        return (this.mService.mSupportsPictureInPicture && options.getLaunchWindowingMode() == 2) || this.mService.mSupportsFreeformWindowManagement;
    }

    LaunchParamsController getLaunchParamsController() {
        return this.mLaunchParamsController;
    }

    void setSplitScreenResizing(boolean resizing) {
        if (resizing == this.mDockedStackResizing) {
            return;
        }
        this.mDockedStackResizing = resizing;
        this.mWindowManager.setDockedStackResizing(resizing);
    }

    private void removePinnedStackInSurfaceTransaction(ActivityStack stack) {
        stack.cancelAnimation();
        stack.setForceHidden(1, true);
        stack.ensureActivitiesVisible(null, 0, true);
        activityIdleInternal(null, false, true, null);
        DisplayContent toDisplay = this.mRootWindowContainer.getDisplayContent(0);
        this.mService.deferWindowLayout();
        try {
            stack.setWindowingMode(0);
            stack.setBounds(null);
            toDisplay.getDefaultTaskDisplayArea().positionTaskBehindHome(stack);
            stack.setForceHidden(1, false);
            this.mRootWindowContainer.ensureActivitiesVisible(null, 0, true);
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        } finally {
            this.mService.continueWindowLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: removeStackInSurfaceTransaction, reason: merged with bridge method [inline-methods] */
    public void lambda$removeStack$1$ActivityStackSupervisor(ActivityStack stack) {
        if (stack.getWindowingMode() == 2) {
            removePinnedStackInSurfaceTransaction(stack);
            return;
        }
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityStackSupervisor) obj).processRemoveTask((Task) obj2);
            }
        }, this, PooledLambda.__(Task.class));
        stack.forAllLeafTasks(c, true);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processRemoveTask(Task task) {
        removeTask(task, true, true, "remove-stack");
    }

    void removeStack(final ActivityStack stack) {
        this.mWindowManager.inSurfaceTransaction(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityStackSupervisor$UyRHhEK51F9dKhfp0wUGjTncdyo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeStack$1$ActivityStackSupervisor(stack);
            }
        });
    }

    boolean removeTaskById(int taskId, boolean killProcess, boolean removeFromRecents, String reason) {
        Task task = this.mRootWindowContainer.anyTaskForId(taskId, 1);
        if (task != null) {
            removeTask(task, killProcess, removeFromRecents, reason);
            return true;
        }
        Slog.w("ActivityTaskManager", "Request to remove task ignored for non-existent task " + taskId);
        return false;
    }

    void removeTask(Task task, boolean killProcess, boolean removeFromRecents, String reason) {
        if (task.mInRemoveTask) {
            return;
        }
        task.mInRemoveTask = true;
        try {
            task.performClearTask(reason);
            cleanUpRemovedTaskLocked(task, killProcess, removeFromRecents);
            this.mService.getLockTaskController().clearLockedTask(task);
            this.mService.getTaskChangeNotificationController().notifyTaskStackChanged();
            if (task.isPersistable) {
                this.mService.notifyTaskPersisterLocked(null, true);
            }
        } finally {
            task.mInRemoveTask = false;
        }
    }

    void cleanUpRemovedTaskLocked(Task task, boolean killProcess, boolean removeFromRecents) {
        if (removeFromRecents) {
            this.mRecentTasks.remove(task);
        }
        ComponentName component = task.getBaseIntent().getComponent();
        if (component == null) {
            Slog.w("ActivityTaskManager", "No component for base intent of task: " + task);
            return;
        }
        Message msg = PooledLambda.obtainMessage(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                ((ActivityManagerInternal) obj).cleanUpServices(((Integer) obj2).intValue(), (ComponentName) obj3, (Intent) obj4);
            }
        }, this.mService.mAmInternal, Integer.valueOf(task.mUserId), component, new Intent(task.getBaseIntent()));
        this.mService.mH.sendMessage(msg);
        if (!killProcess) {
            return;
        }
        String pkg = component.getPackageName();
        ArrayList<Object> procsToKill = new ArrayList<>();
        ArrayMap<String, SparseArray<WindowProcessController>> pmap = this.mService.mProcessNames.getMap();
        for (int i = 0; i < pmap.size(); i++) {
            SparseArray<WindowProcessController> uids = pmap.valueAt(i);
            for (int j = 0; j < uids.size(); j++) {
                WindowProcessController proc = uids.valueAt(j);
                if (proc.mUserId == task.mUserId && proc != this.mService.mHomeProcess && proc.mPkgList.contains(pkg)) {
                    if (!proc.shouldKillProcessForRemovedTask(task) || proc.hasForegroundServices()) {
                        return;
                    } else {
                        procsToKill.add(proc);
                    }
                }
            }
        }
        Message m = PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityManagerInternal) obj).killProcessesForRemovedTask((ArrayList) obj2);
            }
        }, this.mService.mAmInternal, procsToKill);
        this.mService.mH.sendMessage(m);
    }

    boolean restoreRecentTaskLocked(Task task, ActivityOptions aOptions, boolean onTop) {
        ActivityStack stack = this.mRootWindowContainer.getLaunchStack(null, aOptions, task, onTop);
        WindowContainer parent = task.getParent();
        if (parent == stack || task == stack) {
            return true;
        }
        if (parent != null) {
            task.reparent(stack, Integer.MAX_VALUE, true, "restoreRecentTaskLocked");
            return true;
        }
        stack.addChild((WindowContainer) task, onTop, true);
        return true;
    }

    @Override // com.android.server.wm.RecentTasks.Callbacks
    public void onRecentTaskAdded(Task task) {
        task.touchActiveTime();
    }

    @Override // com.android.server.wm.RecentTasks.Callbacks
    public void onRecentTaskRemoved(Task task, boolean wasTrimmed, boolean killProcess) {
        if (wasTrimmed) {
            removeTaskById(task.mTaskId, killProcess, false, "recent-task-trimmed");
        }
        task.removedFromRecents();
    }

    ActivityStack getReparentTargetStack(Task task, ActivityStack stack, boolean toTop) {
        ActivityStack prevStack = task.getStack();
        int rootTaskId = stack.mTaskId;
        boolean inMultiWindowMode = stack.inMultiWindowMode();
        if (prevStack != null && prevStack.mTaskId == rootTaskId) {
            Slog.w("ActivityTaskManager", "Can not reparent to same stack, task=" + task + " already in stackId=" + rootTaskId);
            return prevStack;
        }
        if (inMultiWindowMode && !this.mService.mSupportsMultiWindow) {
            throw new IllegalArgumentException("Device doesn't support multi-window, can not reparent task=" + task + " to stack=" + stack);
        }
        if (stack.getDisplayId() != 0 && !this.mService.mSupportsMultiDisplay) {
            throw new IllegalArgumentException("Device doesn't support multi-display, can not reparent task=" + task + " to stackId=" + rootTaskId);
        }
        if (stack.getWindowingMode() == 5 && !this.mService.mSupportsFreeformWindowManagement) {
            throw new IllegalArgumentException("Device doesn't support freeform, can not reparent task=" + task);
        }
        if (inMultiWindowMode && !task.isResizeable()) {
            Slog.w("ActivityTaskManager", "Can not move unresizeable task=" + task + " to multi-window stack=" + stack + " Moving to a fullscreen stack instead.");
            if (prevStack != null) {
                return prevStack;
            }
            return stack.getDisplayArea().createStack(1, stack.getActivityType(), toTop);
        }
        return stack;
    }

    void goingToSleepLocked() {
        scheduleSleepTimeout();
        if (!this.mGoingToSleepWakeLock.isHeld()) {
            this.mGoingToSleepWakeLock.acquire();
            if (this.mLaunchingActivityWakeLock.isHeld()) {
                this.mLaunchingActivityWakeLock.release();
                this.mHandler.removeMessages(LAUNCH_TIMEOUT_MSG);
            }
        }
        this.mRootWindowContainer.applySleepTokens(false);
        checkReadyForSleepLocked(true);
    }

    boolean shutdownLocked(int timeout) {
        goingToSleepLocked();
        boolean timedout = false;
        long endTime = System.currentTimeMillis() + ((long) timeout);
        while (!this.mRootWindowContainer.putStacksToSleep(true, true)) {
            long timeRemaining = endTime - System.currentTimeMillis();
            if (timeRemaining > 0) {
                try {
                    this.mService.mGlobalLock.wait(timeRemaining);
                } catch (InterruptedException e) {
                }
            } else {
                Slog.w("ActivityTaskManager", "Activity manager shutdown timed out");
                timedout = true;
                break;
            }
        }
        checkReadyForSleepLocked(false);
        return timedout;
    }

    void comeOutOfSleepIfNeededLocked() {
        removeSleepTimeouts();
        if (this.mGoingToSleepWakeLock.isHeld()) {
            this.mGoingToSleepWakeLock.release();
        }
    }

    void checkReadyForSleepLocked(boolean allowDelay) {
        if (!this.mService.isSleepingOrShuttingDownLocked() || !this.mRootWindowContainer.putStacksToSleep(allowDelay, false)) {
            return;
        }
        this.mRootWindowContainer.sendPowerHintForLaunchEndIfNeeded();
        removeSleepTimeouts();
        if (this.mGoingToSleepWakeLock.isHeld()) {
            this.mGoingToSleepWakeLock.release();
        }
        if (this.mService.mShuttingDown) {
            this.mService.mGlobalLock.notifyAll();
        }
    }

    boolean reportResumedActivityLocked(ActivityRecord r) {
        this.mStoppingActivities.remove(r);
        ActivityStack stack = r.getRootTask();
        if (!stack.getDisplayArea().allResumedActivitiesComplete()) {
            return false;
        }
        this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
        this.mRootWindowContainer.executeAppTransitionForAllDisplay();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLaunchTaskBehindCompleteLocked(ActivityRecord r) {
        Task task = r.getTask();
        ActivityStack stack = task.getStack();
        this.mRecentTasks.add(task);
        this.mService.getTaskChangeNotificationController().notifyTaskStackChanged();
        stack.ensureActivitiesVisible(null, 0, false);
        ActivityRecord top = stack.getTopNonFinishingActivity();
        if (top != null) {
            top.getTask().touchActiveTime();
        }
    }

    void scheduleLaunchTaskBehindComplete(IBinder token) {
        this.mHandler.obtainMessage(212, token).sendToTarget();
    }

    boolean isCurrentProfileLocked(int userId) {
        if (userId == this.mRootWindowContainer.mCurrentUser) {
            return true;
        }
        return this.mService.mAmInternal.isCurrentProfile(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processStoppingAndFinishingActivities(ActivityRecord launchedActivity, boolean processPausingActivities, String reason) {
        ArrayList<ActivityRecord> readyToStopActivities = null;
        for (int i = this.mStoppingActivities.size() - 1; i >= 0; i--) {
            ActivityRecord s = this.mStoppingActivities.get(i);
            boolean animating = s.isAnimating(3, 9);
            Slog.v("ActivityTaskManager", "Stopping " + s + ": nowVisible=" + s.nowVisible + " animating=" + animating + " finishing=" + s.finishing);
            if (!animating || this.mService.mShuttingDown) {
                if (!processPausingActivities && s.isState(ActivityStack.ActivityState.PAUSING)) {
                    removeIdleTimeoutForActivity(launchedActivity);
                    scheduleIdleTimeout(launchedActivity);
                } else {
                    Slog.v("ActivityTaskManager", "Ready to stop: " + s);
                    if (readyToStopActivities == null) {
                        readyToStopActivities = new ArrayList<>();
                    }
                    readyToStopActivities.add(s);
                    this.mStoppingActivities.remove(i);
                }
            }
        }
        int numReadyStops = readyToStopActivities == null ? 0 : readyToStopActivities.size();
        for (int i2 = 0; i2 < numReadyStops; i2++) {
            ActivityRecord r = readyToStopActivities.get(i2);
            if (r.isInHistory()) {
                if (r.finishing) {
                    r.destroyIfPossible(reason);
                } else {
                    r.stopIfPossible();
                }
            }
        }
        int numFinishingActivities = this.mFinishingActivities.size();
        if (numFinishingActivities == 0) {
            return;
        }
        ArrayList<ActivityRecord> finishingActivities = new ArrayList<>(this.mFinishingActivities);
        this.mFinishingActivities.clear();
        for (int i3 = 0; i3 < numFinishingActivities; i3++) {
            ActivityRecord r2 = finishingActivities.get(i3);
            if (r2.isInHistory()) {
                r2.destroyImmediately(true, "finish-" + reason);
            }
        }
    }

    void removeHistoryRecords(WindowProcessController app) {
        removeHistoryRecords(this.mStoppingActivities, app, "mStoppingActivities");
        removeHistoryRecords(this.mFinishingActivities, app, "mFinishingActivities");
    }

    private void removeHistoryRecords(ArrayList<ActivityRecord> list, WindowProcessController app, String listName) {
        int i = list.size();
        while (i > 0) {
            i--;
            ActivityRecord r = list.get(i);
            if (r.app == app) {
                list.remove(i);
                r.removeTimeouts();
            }
        }
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.println();
        pw.println("ActivityStackSupervisor state:");
        this.mRootWindowContainer.dump(pw, prefix, true);
        getKeyguardController().dump(pw, prefix);
        this.mService.getLockTaskController().dump(pw, prefix);
        pw.print(prefix);
        pw.println("mCurTaskIdForUser=" + this.mCurTaskIdForUser);
        pw.println(prefix + "mUserStackInFront=" + this.mRootWindowContainer.mUserStackInFront);
        pw.println(prefix + "mVisibilityTransactionDepth=" + this.mVisibilityTransactionDepth);
        if (!this.mWaitingForActivityVisible.isEmpty()) {
            pw.println(prefix + "mWaitingForActivityVisible=");
            for (int i = 0; i < this.mWaitingForActivityVisible.size(); i++) {
                pw.print(prefix + prefix);
                this.mWaitingForActivityVisible.get(i).dump(pw, prefix);
            }
        }
        pw.print(prefix);
        pw.print("isHomeRecentsComponent=");
        pw.println(this.mRecentTasks.isRecentsComponentHomeActivity(this.mRootWindowContainer.mCurrentUser));
        pw.println();
    }

    static boolean printThisActivity(PrintWriter pw, ActivityRecord activity, String dumpPackage, boolean needSep, String prefix, Runnable header) {
        if (activity != null) {
            if (dumpPackage == null || dumpPackage.equals(activity.packageName)) {
                if (needSep) {
                    pw.println();
                }
                if (header != null) {
                    header.run();
                }
                pw.print(prefix);
                pw.println(activity);
                return true;
            }
            return false;
        }
        return false;
    }

    static boolean dumpHistoryList(FileDescriptor fd, PrintWriter pw, List<ActivityRecord> list, String prefix, String label, boolean complete, boolean brief, boolean client, String dumpPackage, boolean needNL, Runnable header, Task lastTask) {
        boolean needNL2;
        Runnable header2;
        TransferPipe tp;
        boolean z = true;
        String[] args = null;
        boolean printed = false;
        int i = list.size() - 1;
        Runnable header3 = header;
        Task lastTask2 = lastTask;
        String innerPrefix = null;
        boolean needNL3 = needNL;
        while (i >= 0) {
            ActivityRecord r = list.get(i);
            if (dumpPackage == 0 || dumpPackage.equals(r.packageName)) {
                boolean full = false;
                if (innerPrefix == null) {
                    innerPrefix = prefix + "      ";
                    args = new String[0];
                }
                printed = true;
                if (!brief && (complete || !r.isInHistory())) {
                    full = z;
                }
                if (needNL3) {
                    pw.println("");
                    needNL2 = false;
                } else {
                    needNL2 = needNL3;
                }
                if (header3 != null) {
                    header3.run();
                    header3 = null;
                }
                if (lastTask2 != r.getTask()) {
                    lastTask2 = r.getTask();
                    pw.print(prefix);
                    pw.print(full ? "* " : "  ");
                    pw.println(lastTask2);
                    if (full) {
                        lastTask2.dump(pw, prefix + "  ");
                    } else if (complete && lastTask2.intent != null) {
                        pw.print(prefix);
                        pw.print("  ");
                        pw.println(lastTask2.intent.toInsecureString());
                    }
                }
                pw.print(prefix);
                pw.print(full ? "  * " : "    ");
                pw.print(label);
                pw.print(" #");
                pw.print(i);
                pw.print(": ");
                pw.println(r);
                if (full) {
                    r.dump(pw, innerPrefix, z);
                } else if (complete) {
                    pw.print(innerPrefix);
                    pw.println(r.intent.toInsecureString());
                    if (r.app != null) {
                        pw.print(innerPrefix);
                        pw.println(r.app);
                    }
                }
                if (!client || !r.attachedToProcess()) {
                    header3 = header3;
                    needNL3 = needNL2;
                } else {
                    pw.flush();
                    try {
                        TransferPipe tp2 = new TransferPipe();
                        try {
                            r.app.getThread().dumpActivity(tp2.getWriteFd(), r.appToken, innerPrefix, args);
                            Runnable runnable = header3;
                            tp = tp2;
                            header2 = runnable;
                            try {
                                tp.go(fd, 2000L);
                                try {
                                    tp.kill();
                                } catch (RemoteException e) {
                                    pw.println(innerPrefix + "Got a RemoteException while dumping the activity");
                                } catch (IOException e2) {
                                    e = e2;
                                    pw.println(innerPrefix + "Failure while dumping the activity: " + e);
                                }
                            } catch (Throwable th) {
                                th = th;
                                tp.kill();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            Runnable runnable2 = header3;
                            tp = tp2;
                            header2 = runnable2;
                        }
                    } catch (RemoteException e3) {
                        header2 = header3;
                    } catch (IOException e4) {
                        e = e4;
                        header2 = header3;
                    }
                    needNL3 = true;
                    header3 = header2;
                }
            }
            i--;
            z = true;
        }
        return printed;
    }

    void scheduleIdleTimeout(ActivityRecord next) {
        Slog.d("ActivityTaskManager", "scheduleIdleTimeout: Callers=" + Debug.getCallers(4));
        Message msg = this.mHandler.obtainMessage(200, next);
        this.mHandler.sendMessageDelayed(msg, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
    }

    final void scheduleIdle() {
        this.mHandler.sendEmptyMessage(IDLE_NOW_MSG);
    }

    void updateTopResumedActivityIfNeeded() {
        ActivityRecord prevTopActivity = this.mTopResumedActivity;
        ActivityStack topStack = this.mRootWindowContainer.getTopDisplayFocusedStack();
        if (topStack == null || topStack.mResumedActivity == prevTopActivity) {
            return;
        }
        boolean prevActivityReceivedTopState = (prevTopActivity == null || this.mTopResumedActivityWaitingForPrev) ? false : true;
        if (prevActivityReceivedTopState && prevTopActivity.scheduleTopResumedActivityChanged(false)) {
            scheduleTopResumedStateLossTimeout(prevTopActivity);
            this.mTopResumedActivityWaitingForPrev = true;
        }
        this.mTopResumedActivity = topStack.mResumedActivity;
        scheduleTopResumedActivityStateIfNeeded();
    }

    private void scheduleTopResumedActivityStateIfNeeded() {
        ActivityRecord activityRecord = this.mTopResumedActivity;
        if (activityRecord != null && !this.mTopResumedActivityWaitingForPrev) {
            activityRecord.scheduleTopResumedActivityChanged(true);
        }
    }

    private void scheduleTopResumedStateLossTimeout(ActivityRecord r) {
        Message msg = this.mHandler.obtainMessage(TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG);
        msg.obj = r;
        r.topResumedStateLossTime = SystemClock.uptimeMillis();
        this.mHandler.sendMessageDelayed(msg, 500L);
        Slog.v("WindowManager", "Waiting for top state to be released by " + r);
    }

    void handleTopResumedStateReleased(boolean timeout) {
        StringBuilder sb = new StringBuilder();
        sb.append("Top resumed state released ");
        sb.append(timeout ? " (due to timeout)" : " (transition complete)");
        Slog.v("WindowManager", sb.toString());
        this.mHandler.removeMessages(TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG);
        if (!this.mTopResumedActivityWaitingForPrev) {
            return;
        }
        this.mTopResumedActivityWaitingForPrev = false;
        scheduleTopResumedActivityStateIfNeeded();
    }

    void removeIdleTimeoutForActivity(ActivityRecord r) {
        Slog.d("ActivityTaskManager", "removeTimeoutsForActivity: Callers=" + Debug.getCallers(4));
        this.mHandler.removeMessages(200, r);
    }

    final void scheduleResumeTopActivities() {
        if (!this.mHandler.hasMessages(RESUME_TOP_ACTIVITY_MSG)) {
            this.mHandler.sendEmptyMessage(RESUME_TOP_ACTIVITY_MSG);
        }
    }

    void scheduleProcessStoppingAndFinishingActivities() {
        if (!this.mHandler.hasMessages(PROCESS_STOPPING_AND_FINISHING_MSG)) {
            this.mHandler.sendEmptyMessage(PROCESS_STOPPING_AND_FINISHING_MSG);
        }
    }

    void removeSleepTimeouts() {
        this.mHandler.removeMessages(SLEEP_TIMEOUT_MSG);
    }

    final void scheduleSleepTimeout() {
        removeSleepTimeouts();
        this.mHandler.sendEmptyMessageDelayed(SLEEP_TIMEOUT_MSG, 5000L);
    }

    void removeRestartTimeouts(ActivityRecord r) {
        this.mHandler.removeMessages(RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG, r);
    }

    final void scheduleRestartTimeout(ActivityRecord r) {
        removeRestartTimeouts(r);
        ActivityStackSupervisorHandler activityStackSupervisorHandler = this.mHandler;
        activityStackSupervisorHandler.sendMessageDelayed(activityStackSupervisorHandler.obtainMessage(RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG, r), 2000L);
    }

    void handleNonResizableTaskIfNeeded(Task task, int preferredWindowingMode, TaskDisplayArea preferredTaskDisplayArea, ActivityStack actualStack) {
        handleNonResizableTaskIfNeeded(task, preferredWindowingMode, preferredTaskDisplayArea, actualStack, false);
    }

    void handleNonResizableTaskIfNeeded(Task task, int preferredWindowingMode, TaskDisplayArea preferredTaskDisplayArea, ActivityStack actualStack, boolean forceNonResizable) {
        boolean singleTaskInstance = false;
        boolean isSecondaryDisplayPreferred = (preferredTaskDisplayArea == null || preferredTaskDisplayArea.getDisplayId() == 0) ? false : true;
        boolean inSplitScreenMode = actualStack != null && actualStack.getDisplayArea().isSplitScreenModeActivated();
        if ((!inSplitScreenMode && preferredWindowingMode != 3 && !isSecondaryDisplayPreferred) || !task.isActivityTypeStandardOrUndefined()) {
            return;
        }
        if (isSecondaryDisplayPreferred) {
            if (!task.canBeLaunchedOnDisplay(task.getDisplayId())) {
                throw new IllegalStateException("Task resolved to incompatible display");
            }
            DisplayContent preferredDisplay = preferredTaskDisplayArea.mDisplayContent;
            if (preferredDisplay != null && preferredDisplay.isSingleTaskInstance()) {
                singleTaskInstance = true;
            }
            if (preferredDisplay != task.getDisplayContent()) {
                if (singleTaskInstance) {
                    this.mService.getTaskChangeNotificationController().notifyActivityLaunchOnSecondaryDisplayRerouted(task.getTaskInfo(), preferredDisplay.mDisplayId);
                    return;
                }
                Slog.w("ActivityTaskManager", "Failed to put " + task + " on display " + preferredDisplay.mDisplayId);
                this.mService.getTaskChangeNotificationController().notifyActivityLaunchOnSecondaryDisplayFailed(task.getTaskInfo(), preferredDisplay.mDisplayId);
                return;
            }
            if (!forceNonResizable) {
                handleForcedResizableTaskIfNeeded(task, 2);
                return;
            }
            return;
        }
        if (!task.supportsSplitScreenWindowingMode() || forceNonResizable) {
            TaskDisplayArea taskDisplayArea = task.getDisplayArea();
            if (taskDisplayArea.isSplitScreenModeActivated()) {
                this.mService.getTaskChangeNotificationController().notifyActivityDismissingDockedStack();
                taskDisplayArea.onSplitScreenModeDismissed((ActivityStack) task);
                taskDisplayArea.mDisplayContent.ensureActivitiesVisible(null, 0, true, true);
                return;
            }
            return;
        }
        handleForcedResizableTaskIfNeeded(task, 1);
    }

    private void handleForcedResizableTaskIfNeeded(Task task, int reason) {
        ActivityRecord topActivity = task.getTopNonFinishingActivity();
        if (topActivity == null || topActivity.noDisplay || !topActivity.isNonResizableOrForcedResizable(task.getWindowingMode())) {
            return;
        }
        this.mService.getTaskChangeNotificationController().notifyActivityForcedResizable(task.mTaskId, reason, topActivity.info.applicationInfo.packageName);
    }

    void activityRelaunchedLocked(IBinder token) {
        ActivityRecord r = ActivityRecord.isInStackLocked(token);
        if (r != null) {
            r.finishRelaunching();
            if (r.getRootTask().shouldSleepOrShutDownActivities()) {
                r.getStack().ensureActivitiesVisible(null, 0, false);
            }
        }
    }

    void logStackState() {
        this.mActivityMetricsLogger.logWindowState();
    }

    void scheduleUpdateMultiWindowMode(Task task) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStackSupervisor$BFgD0ahFSDg4CqQNytqWrPRgFII
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityStackSupervisor) obj).addToMultiWindowModeChangedList((ActivityRecord) obj2);
            }
        }, this, PooledLambda.__(ActivityRecord.class));
        task.forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
        if (!this.mHandler.hasMessages(REPORT_MULTI_WINDOW_MODE_CHANGED_MSG)) {
            this.mHandler.sendEmptyMessage(REPORT_MULTI_WINDOW_MODE_CHANGED_MSG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addToMultiWindowModeChangedList(ActivityRecord r) {
        if (r.attachedToProcess()) {
            this.mMultiWindowModeChangedActivities.add(r);
        }
    }

    void scheduleUpdatePictureInPictureModeIfNeeded(Task task, ActivityStack prevStack) {
        ActivityStack stack = task.getStack();
        if (prevStack != null) {
            if (prevStack != stack && !prevStack.inPinnedWindowingMode() && !stack.inPinnedWindowingMode()) {
                return;
            }
            scheduleUpdatePictureInPictureModeIfNeeded(task, stack.getRequestedOverrideBounds());
        }
    }

    private void scheduleUpdatePictureInPictureModeIfNeeded(Task task, Rect targetStackBounds) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityStackSupervisor$mLKHIIzkTAK9QSlSxia8-84y15M
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityStackSupervisor) obj).addToPipModeChangedList((ActivityRecord) obj2);
            }
        }, this, PooledLambda.__(ActivityRecord.class));
        task.forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
        this.mPipModeChangedTargetStackBounds = targetStackBounds;
        if (!this.mHandler.hasMessages(REPORT_PIP_MODE_CHANGED_MSG)) {
            this.mHandler.sendEmptyMessage(REPORT_PIP_MODE_CHANGED_MSG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addToPipModeChangedList(ActivityRecord r) {
        if (r.attachedToProcess()) {
            this.mPipModeChangedActivities.add(r);
            this.mMultiWindowModeChangedActivities.remove(r);
        }
    }

    void updatePictureInPictureMode(Task task, Rect targetStackBounds, boolean forceUpdate) {
        this.mHandler.removeMessages(REPORT_PIP_MODE_CHANGED_MSG);
        PooledConsumer c = PooledLambda.obtainConsumer(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((ActivityRecord) obj).updatePictureInPictureMode((Rect) obj2, ((Boolean) obj3).booleanValue());
            }
        }, PooledLambda.__(ActivityRecord.class), targetStackBounds, Boolean.valueOf(forceUpdate));
        task.getStack().setBounds(targetStackBounds);
        task.forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
    }

    void wakeUp(String reason) {
        this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), 2, "android.server.am:TURN_ON:" + reason);
    }

    void beginActivityVisibilityUpdate() {
        this.mVisibilityTransactionDepth++;
    }

    void endActivityVisibilityUpdate() {
        int i = this.mVisibilityTransactionDepth - 1;
        this.mVisibilityTransactionDepth = i;
        if (i == 0) {
            getKeyguardController().visibilitiesUpdated();
        }
    }

    boolean inActivityVisibilityUpdate() {
        return this.mVisibilityTransactionDepth > 0;
    }

    void beginDeferResume() {
        this.mDeferResumeCount++;
    }

    void endDeferResume() {
        this.mDeferResumeCount--;
    }

    boolean readyToResume() {
        return this.mDeferResumeCount == 0;
    }

    private final class ActivityStackSupervisorHandler extends Handler {
        ActivityStackSupervisorHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            synchronized (ActivityStackSupervisor.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (handleMessageInner(msg)) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    if (msg.what == ActivityStackSupervisor.RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG) {
                        ActivityRecord r = (ActivityRecord) msg.obj;
                        String processName = null;
                        int uid = 0;
                        synchronized (ActivityStackSupervisor.this.mService.mGlobalLock) {
                            try {
                                WindowManagerService.boostPriorityForLockedSection();
                                if (r.attachedToProcess() && r.isState(ActivityStack.ActivityState.RESTARTING_PROCESS)) {
                                    processName = r.app.mName;
                                    uid = r.app.mUid;
                                }
                            } catch (Throwable th) {
                                WindowManagerService.resetPriorityAfterLockedSection();
                                throw th;
                            }
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        if (processName != null) {
                            ActivityStackSupervisor.this.mService.mAmInternal.killProcess(processName, uid, "restartActivityProcessTimeout");
                        }
                    }
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
        }

        private void activityIdleFromMessage(ActivityRecord idleActivity, boolean fromTimeout) {
            ActivityStackSupervisor.this.activityIdleInternal(idleActivity, fromTimeout, fromTimeout, null);
        }

        private boolean handleMessageInner(Message msg) {
            int i = msg.what;
            if (i != 212) {
                switch (i) {
                    case 200:
                        Slog.d("ActivityTaskManager", "handleMessage: IDLE_TIMEOUT_MSG: r=" + msg.obj);
                        activityIdleFromMessage((ActivityRecord) msg.obj, true);
                        break;
                    case ActivityStackSupervisor.IDLE_NOW_MSG /* 201 */:
                        Slog.d("ActivityTaskManager", "handleMessage: IDLE_NOW_MSG: r=" + msg.obj);
                        activityIdleFromMessage((ActivityRecord) msg.obj, false);
                        break;
                    case ActivityStackSupervisor.RESUME_TOP_ACTIVITY_MSG /* 202 */:
                        ActivityStackSupervisor.this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                        break;
                    case ActivityStackSupervisor.SLEEP_TIMEOUT_MSG /* 203 */:
                        if (ActivityStackSupervisor.this.mService.isSleepingOrShuttingDownLocked()) {
                            Slog.w("ActivityTaskManager", "Sleep timeout!  Sleeping now.");
                            ActivityStackSupervisor.this.checkReadyForSleepLocked(false);
                        }
                        break;
                    case ActivityStackSupervisor.LAUNCH_TIMEOUT_MSG /* 204 */:
                        if (ActivityStackSupervisor.this.mLaunchingActivityWakeLock.isHeld()) {
                            Slog.w("ActivityTaskManager", "Launch timeout has expired, giving up wake lock!");
                            ActivityStackSupervisor.this.mLaunchingActivityWakeLock.release();
                        }
                        break;
                    case ActivityStackSupervisor.PROCESS_STOPPING_AND_FINISHING_MSG /* 205 */:
                        ActivityStackSupervisor.this.processStoppingAndFinishingActivities(null, false, "transit");
                        break;
                    default:
                        switch (i) {
                            case ActivityStackSupervisor.REPORT_MULTI_WINDOW_MODE_CHANGED_MSG /* 214 */:
                                for (int i2 = ActivityStackSupervisor.this.mMultiWindowModeChangedActivities.size() - 1; i2 >= 0; i2--) {
                                    ((ActivityRecord) ActivityStackSupervisor.this.mMultiWindowModeChangedActivities.remove(i2)).updateMultiWindowMode();
                                }
                                break;
                            case ActivityStackSupervisor.REPORT_PIP_MODE_CHANGED_MSG /* 215 */:
                                for (int i3 = ActivityStackSupervisor.this.mPipModeChangedActivities.size() - 1; i3 >= 0; i3--) {
                                    ((ActivityRecord) ActivityStackSupervisor.this.mPipModeChangedActivities.remove(i3)).updatePictureInPictureMode(ActivityStackSupervisor.this.mPipModeChangedTargetStackBounds, false);
                                }
                                break;
                            case ActivityStackSupervisor.REPORT_HOME_CHANGED_MSG /* 216 */:
                                ActivityStackSupervisor.this.mHandler.removeMessages(ActivityStackSupervisor.REPORT_HOME_CHANGED_MSG);
                                ActivityStackSupervisor.this.mRootWindowContainer.startHomeOnEmptyDisplays("homeChanged");
                                break;
                            case ActivityStackSupervisor.TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG /* 217 */:
                                ActivityRecord r = (ActivityRecord) msg.obj;
                                Slog.w("ActivityTaskManager", "Activity top resumed state loss timeout for " + r);
                                if (r.hasProcess()) {
                                    ActivityStackSupervisor.this.mService.logAppTooSlow(r.app, r.topResumedStateLossTime, "top state loss for " + r);
                                }
                                ActivityStackSupervisor.this.handleTopResumedStateReleased(true);
                                break;
                            default:
                                return false;
                        }
                        break;
                }
            } else {
                ActivityRecord r2 = ActivityRecord.forTokenLocked((IBinder) msg.obj);
                if (r2 != null) {
                    ActivityStackSupervisor.this.handleLaunchTaskBehindCompleteLocked(r2);
                }
            }
            return true;
        }
    }

    /* JADX WARN: Not initialized variable reg: 26, insn: 0x0157: MOVE (r3 I:??[OBJECT, ARRAY]) = (r26 I:??[OBJECT, ARRAY] A[D('task' com.android.server.wm.Task)]), block:B:58:0x0157 */
    int startActivityFromRecents(int callingPid, int callingUid, int taskId, SafeActivityOptions options) throws Throwable {
        int activityType;
        int windowingMode;
        ActivityMetricsLogger.LaunchingState launchingState;
        ActivityRecord targetActivity;
        ActivityOptions activityOptions = options != null ? options.getOptions(this) : null;
        if (activityOptions != null) {
            int activityType2 = activityOptions.getLaunchActivityType();
            int windowingMode2 = activityOptions.getLaunchWindowingMode();
            if (activityOptions.freezeRecentTasksReordering() && this.mRecentTasks.isCallerRecents(callingUid)) {
                this.mRecentTasks.setFreezeTaskListReordering();
            }
            activityType = activityType2;
            windowingMode = windowingMode2;
        } else {
            activityType = 0;
            windowingMode = 0;
        }
        if (activityType == 2 || activityType == 3) {
            throw new IllegalArgumentException("startActivityFromRecents: Task " + taskId + " can't be launch in the home/recents stack.");
        }
        this.mService.deferWindowLayout();
        try {
            Task task = this.mRootWindowContainer.anyTaskForId(taskId, 2, activityOptions, true);
            try {
                if (task == null) {
                    this.mWindowManager.executeAppTransition();
                    throw new IllegalArgumentException("startActivityFromRecents: Task " + taskId + " not found.");
                }
                if (windowingMode != 3) {
                    try {
                        this.mRootWindowContainer.getDefaultTaskDisplayArea().moveHomeStackToFront("startActivityFromRecents");
                    } catch (Throwable th) {
                        th = th;
                        this.mService.continueWindowLayout();
                        throw th;
                    }
                }
                try {
                    if (this.mService.mAmInternal.shouldConfirmCredentials(task.mUserId) || task.getRootActivity() == null) {
                        String callingPackage = task.mCallingPackage;
                        String callingFeatureId = task.mCallingFeatureId;
                        Intent intent = task.intent;
                        intent.addFlags(1048576);
                        int userId = task.mUserId;
                        int iStartActivityInPackage = this.mService.getActivityStartController().startActivityInPackage(task.mCallingUid, callingPid, callingUid, callingPackage, callingFeatureId, intent, null, null, null, 0, 0, options, userId, task, "startActivityFromRecents", false, null, false);
                        this.mService.continueWindowLayout();
                        return iStartActivityInPackage;
                    }
                    ActivityRecord targetActivity2 = task.getTopNonFinishingActivity();
                    this.mRootWindowContainer.sendPowerHintForLaunchStartIfNeeded(true, targetActivity2);
                    ActivityMetricsLogger.LaunchingState launchingState2 = this.mActivityMetricsLogger.notifyActivityLaunching(task.intent);
                    try {
                        launchingState = launchingState2;
                        try {
                            this.mService.moveTaskToFrontLocked(null, null, task.mTaskId, 0, options);
                            targetActivity2.applyOptionsLocked();
                            this.mActivityMetricsLogger.notifyActivityLaunched(launchingState, 2, targetActivity2);
                            this.mService.getActivityStartController().postStartActivityProcessingForLastStarter(task.getTopNonFinishingActivity(), 2, task.getStack());
                            this.mService.continueWindowLayout();
                            return 2;
                        } catch (Throwable th2) {
                            th = th2;
                            targetActivity = targetActivity2;
                            this.mActivityMetricsLogger.notifyActivityLaunched(launchingState, 2, targetActivity);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        launchingState = launchingState2;
                        targetActivity = targetActivity2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    this.mService.continueWindowLayout();
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    static class WaitInfo {
        private final WaitResult mResult;
        private final ComponentName mTargetComponent;

        WaitInfo(ComponentName targetComponent, WaitResult result) {
            this.mTargetComponent = targetComponent;
            this.mResult = result;
        }

        public boolean matches(ComponentName targetComponent) {
            ComponentName componentName = this.mTargetComponent;
            return componentName == null || componentName.equals(targetComponent);
        }

        public WaitResult getResult() {
            return this.mResult;
        }

        public ComponentName getComponent() {
            return this.mTargetComponent;
        }

        public void dump(PrintWriter pw, String prefix) {
            pw.println(prefix + "WaitInfo:");
            pw.println(prefix + "  mTargetComponent=" + this.mTargetComponent);
            StringBuilder sb = new StringBuilder();
            sb.append(prefix);
            sb.append("  mResult=");
            pw.println(sb.toString());
            this.mResult.dump(pw, prefix);
        }
    }
}
