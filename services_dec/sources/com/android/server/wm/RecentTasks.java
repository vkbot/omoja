package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Environment;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.WindowManagerPolicyConstants;
import com.android.internal.util.function.pooled.PooledLambda;
import com.google.android.collect.Sets;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class RecentTasks {
    private static final int DEFAULT_INITIAL_CAPACITY = 5;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_RECENTS = "ActivityTaskManager";
    private static final String TAG_TASKS = "ActivityTaskManager";
    private long mActiveTasksSessionDurationMs;
    private final ArrayList<Callbacks> mCallbacks;
    private String mFeatureId;
    private boolean mFreezeTaskListReordering;
    private long mFreezeTaskListTimeoutMs;
    private int mGlobalMaxNumTasks;
    private boolean mHasVisibleRecentTasks;
    private final ArrayList<Task> mHiddenTasks;
    private final WindowManagerPolicyConstants.PointerEventListener mListener;
    private int mMaxNumVisibleTasks;
    private int mMinNumVisibleTasks;
    private final SparseArray<SparseBooleanArray> mPersistedTaskIds;
    private ComponentName mRecentsComponent;
    private int mRecentsUid;
    private final Runnable mResetFreezeTaskListOnTimeoutRunnable;
    private final ActivityTaskManagerService mService;
    private final ActivityStackSupervisor mSupervisor;
    private TaskChangeNotificationController mTaskNotificationController;
    private final TaskPersister mTaskPersister;
    private final ArrayList<Task> mTasks;
    private final HashMap<ComponentName, ActivityInfo> mTmpAvailActCache;
    private final HashMap<String, ApplicationInfo> mTmpAvailAppCache;
    private final SparseBooleanArray mTmpQuietProfileUserIds;
    private final ArrayList<Task> mTmpRecents;
    private final SparseBooleanArray mUsersWithRecentsLoaded;
    private static final long FREEZE_TASK_LIST_TIMEOUT_MS = TimeUnit.SECONDS.toMillis(5);
    private static final Comparator<Task> TASK_ID_COMPARATOR = new Comparator() { // from class: com.android.server.wm.-$$Lambda$RecentTasks$eaeTjEEoVsLAhHFPccdtbbB3Lrk
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return RecentTasks.lambda$static$0((Task) obj, (Task) obj2);
        }
    };
    private static final ActivityInfo NO_ACTIVITY_INFO_TOKEN = new ActivityInfo();
    private static final ApplicationInfo NO_APPLICATION_INFO_TOKEN = new ApplicationInfo();

    interface Callbacks {
        void onRecentTaskAdded(Task task);

        void onRecentTaskRemoved(Task task, boolean z, boolean z2);
    }

    static /* synthetic */ int lambda$static$0(Task lhs, Task rhs) {
        return rhs.mTaskId - lhs.mTaskId;
    }

    /* JADX INFO: renamed from: com.android.server.wm.RecentTasks$1, reason: invalid class name */
    class AnonymousClass1 implements WindowManagerPolicyConstants.PointerEventListener {
        AnonymousClass1() {
        }

        public void onPointerEvent(MotionEvent ev) {
            if (!RecentTasks.this.mFreezeTaskListReordering || ev.getAction() != 0) {
                return;
            }
            final int displayId = ev.getDisplayId();
            final int x = (int) ev.getX();
            final int y = (int) ev.getY();
            RecentTasks.this.mService.mH.post(PooledLambda.obtainRunnable(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onPointerEvent$0$RecentTasks$1(displayId, x, y, obj);
                }
            }, (Object) null).recycleOnUse());
        }

        public /* synthetic */ void lambda$onPointerEvent$0$RecentTasks$1(int displayId, int x, int y, Object nonArg) {
            synchronized (RecentTasks.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    RootWindowContainer rac = RecentTasks.this.mService.mRootWindowContainer;
                    DisplayContent dc = rac.getDisplayContent(displayId).mDisplayContent;
                    if (dc.pointWithinAppWindow(x, y)) {
                        ActivityStack stack = RecentTasks.this.mService.getTopDisplayFocusedStack();
                        Task topTask = stack != null ? stack.getTopMostTask() : null;
                        RecentTasks.this.resetFreezeTaskListReordering(topTask);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    RecentTasks(ActivityTaskManagerService service, TaskPersister taskPersister) {
        this.mRecentsUid = -1;
        this.mRecentsComponent = null;
        this.mUsersWithRecentsLoaded = new SparseBooleanArray(5);
        this.mPersistedTaskIds = new SparseArray<>(5);
        this.mTasks = new ArrayList<>();
        this.mCallbacks = new ArrayList<>();
        this.mHiddenTasks = new ArrayList<>();
        this.mFreezeTaskListTimeoutMs = FREEZE_TASK_LIST_TIMEOUT_MS;
        this.mTmpRecents = new ArrayList<>();
        this.mTmpAvailActCache = new HashMap<>();
        this.mTmpAvailAppCache = new HashMap<>();
        this.mTmpQuietProfileUserIds = new SparseBooleanArray();
        this.mListener = new AnonymousClass1();
        this.mResetFreezeTaskListOnTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.resetFreezeTaskListReorderingOnTimeout();
            }
        };
        this.mService = service;
        this.mSupervisor = service.mStackSupervisor;
        this.mTaskPersister = taskPersister;
        this.mGlobalMaxNumTasks = ActivityTaskManager.getMaxRecentTasksStatic();
        this.mHasVisibleRecentTasks = true;
        this.mTaskNotificationController = service.getTaskChangeNotificationController();
    }

    RecentTasks(ActivityTaskManagerService service, ActivityStackSupervisor stackSupervisor) {
        this.mRecentsUid = -1;
        this.mRecentsComponent = null;
        this.mUsersWithRecentsLoaded = new SparseBooleanArray(5);
        this.mPersistedTaskIds = new SparseArray<>(5);
        this.mTasks = new ArrayList<>();
        this.mCallbacks = new ArrayList<>();
        this.mHiddenTasks = new ArrayList<>();
        this.mFreezeTaskListTimeoutMs = FREEZE_TASK_LIST_TIMEOUT_MS;
        this.mTmpRecents = new ArrayList<>();
        this.mTmpAvailActCache = new HashMap<>();
        this.mTmpAvailAppCache = new HashMap<>();
        this.mTmpQuietProfileUserIds = new SparseBooleanArray();
        this.mListener = new AnonymousClass1();
        this.mResetFreezeTaskListOnTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.resetFreezeTaskListReorderingOnTimeout();
            }
        };
        File systemDir = Environment.getDataSystemDirectory();
        Resources res = service.mContext.getResources();
        this.mService = service;
        this.mSupervisor = service.mStackSupervisor;
        this.mTaskPersister = new TaskPersister(systemDir, stackSupervisor, service, this, stackSupervisor.mPersisterQueue);
        this.mGlobalMaxNumTasks = ActivityTaskManager.getMaxRecentTasksStatic();
        this.mTaskNotificationController = service.getTaskChangeNotificationController();
        this.mHasVisibleRecentTasks = res.getBoolean(R.bool.config_cecQuerySadDtsEnabled_allowed);
        loadParametersFromResources(res);
    }

    void setParameters(int minNumVisibleTasks, int maxNumVisibleTasks, long activeSessionDurationMs) {
        this.mMinNumVisibleTasks = minNumVisibleTasks;
        this.mMaxNumVisibleTasks = maxNumVisibleTasks;
        this.mActiveTasksSessionDurationMs = activeSessionDurationMs;
    }

    void setGlobalMaxNumTasks(int globalMaxNumTasks) {
        this.mGlobalMaxNumTasks = globalMaxNumTasks;
    }

    void setFreezeTaskListTimeout(long timeoutMs) {
        this.mFreezeTaskListTimeoutMs = timeoutMs;
    }

    WindowManagerPolicyConstants.PointerEventListener getInputListener() {
        return this.mListener;
    }

    void setFreezeTaskListReordering() {
        if (!this.mFreezeTaskListReordering) {
            this.mTaskNotificationController.notifyTaskListFrozen(true);
            this.mFreezeTaskListReordering = true;
        }
        this.mService.mH.removeCallbacks(this.mResetFreezeTaskListOnTimeoutRunnable);
        this.mService.mH.postDelayed(this.mResetFreezeTaskListOnTimeoutRunnable, this.mFreezeTaskListTimeoutMs);
    }

    void resetFreezeTaskListReordering(Task topTask) {
        if (!this.mFreezeTaskListReordering) {
            return;
        }
        this.mFreezeTaskListReordering = false;
        this.mService.mH.removeCallbacks(this.mResetFreezeTaskListOnTimeoutRunnable);
        if (topTask != null) {
            this.mTasks.remove(topTask);
            this.mTasks.add(0, topTask);
        }
        trimInactiveRecentTasks();
        this.mTaskNotificationController.notifyTaskStackChanged();
        this.mTaskNotificationController.notifyTaskListFrozen(false);
    }

    void resetFreezeTaskListReorderingOnTimeout() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ActivityStack focusedStack = this.mService.getTopDisplayFocusedStack();
                Task topTask = focusedStack != null ? focusedStack.getTopMostTask() : null;
                resetFreezeTaskListReordering(topTask);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    boolean isFreezeTaskListReorderingSet() {
        return this.mFreezeTaskListReordering;
    }

    void loadParametersFromResources(Resources res) {
        long millis;
        if (ActivityManager.isLowRamDeviceStatic()) {
            this.mMinNumVisibleTasks = res.getInteger(R.integer.config_doubleTapOnHomeBehavior);
            this.mMaxNumVisibleTasks = res.getInteger(R.integer.config_displayWhiteBalanceDisplayNominalWhiteCct);
        } else if (SystemProperties.getBoolean("ro.recents.grid", false)) {
            this.mMinNumVisibleTasks = res.getInteger(R.integer.config_doubleTapMinTimeMillis);
            this.mMaxNumVisibleTasks = res.getInteger(R.integer.config_displayWhiteBalanceDecreaseDebounce);
        } else {
            this.mMinNumVisibleTasks = res.getInteger(R.integer.config_doublePressOnStemPrimaryBehavior);
            this.mMaxNumVisibleTasks = res.getInteger(R.integer.config_displayWhiteBalanceColorTemperatureSensorRate);
        }
        int sessionDurationHrs = res.getInteger(R.integer.config_allowedUnprivilegedKeepalivePerUid);
        if (sessionDurationHrs > 0) {
            millis = TimeUnit.HOURS.toMillis(sessionDurationHrs);
        } else {
            millis = -1;
        }
        this.mActiveTasksSessionDurationMs = millis;
    }

    void loadRecentsComponent(Resources res) {
        ComponentName cn;
        String rawRecentsComponent = res.getString(R.string.PERSOSUBSTATE_RUIM_CORPORATE_PUK_IN_PROGRESS);
        if (!TextUtils.isEmpty(rawRecentsComponent) && (cn = ComponentName.unflattenFromString(rawRecentsComponent)) != null) {
            try {
                ApplicationInfo appInfo = AppGlobals.getPackageManager().getApplicationInfo(cn.getPackageName(), 0, this.mService.mContext.getUserId());
                if (appInfo != null) {
                    this.mRecentsUid = appInfo.uid;
                    this.mRecentsComponent = cn;
                }
            } catch (RemoteException e) {
                Slog.w("ActivityTaskManager", "Could not load application info for recents component: " + cn);
            }
        }
    }

    boolean isCallerRecents(int callingUid) {
        return UserHandle.isSameApp(callingUid, this.mRecentsUid);
    }

    boolean isRecentsComponent(ComponentName cn, int uid) {
        return cn.equals(this.mRecentsComponent) && UserHandle.isSameApp(uid, this.mRecentsUid);
    }

    boolean isRecentsComponentHomeActivity(int userId) {
        ComponentName defaultHomeActivity = this.mService.getPackageManagerInternalLocked().getDefaultHomeActivity(userId);
        return (defaultHomeActivity == null || this.mRecentsComponent == null || !defaultHomeActivity.getPackageName().equals(this.mRecentsComponent.getPackageName())) ? false : true;
    }

    ComponentName getRecentsComponent() {
        return this.mRecentsComponent;
    }

    String getRecentsComponentFeatureId() {
        return this.mFeatureId;
    }

    int getRecentsComponentUid() {
        return this.mRecentsUid;
    }

    void registerCallback(Callbacks callback) {
        this.mCallbacks.add(callback);
    }

    void unregisterCallback(Callbacks callback) {
        this.mCallbacks.remove(callback);
    }

    private void notifyTaskAdded(Task task) {
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            this.mCallbacks.get(i).onRecentTaskAdded(task);
        }
        this.mTaskNotificationController.notifyTaskListUpdated();
    }

    private void notifyTaskRemoved(Task task, boolean wasTrimmed, boolean killProcess) {
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            this.mCallbacks.get(i).onRecentTaskRemoved(task, wasTrimmed, killProcess);
        }
        this.mTaskNotificationController.notifyTaskListUpdated();
    }

    void loadUserRecentsLocked(int userId) {
        if (this.mUsersWithRecentsLoaded.get(userId)) {
            return;
        }
        loadPersistedTaskIdsForUserLocked(userId);
        SparseBooleanArray preaddedTasks = new SparseBooleanArray();
        for (Task task : this.mTasks) {
            if (task.mUserId == userId && shouldPersistTaskLocked(task)) {
                preaddedTasks.put(task.mTaskId, true);
            }
        }
        Slog.i("ActivityTaskManager", "Loading recents for user " + userId + " into memory.");
        List<Task> tasks = this.mTaskPersister.restoreTasksForUserLocked(userId, preaddedTasks);
        this.mTasks.addAll(tasks);
        cleanupLocked(userId);
        this.mUsersWithRecentsLoaded.put(userId, true);
        if (preaddedTasks.size() > 0) {
            syncPersistentTaskIdsLocked();
        }
    }

    private void loadPersistedTaskIdsForUserLocked(int userId) {
        if (this.mPersistedTaskIds.get(userId) == null) {
            this.mPersistedTaskIds.put(userId, this.mTaskPersister.loadPersistedTaskIdsForUser(userId));
            Slog.i("ActivityTaskManager", "Loaded persisted task ids for user " + userId);
        }
    }

    boolean containsTaskId(int taskId, int userId) {
        loadPersistedTaskIdsForUserLocked(userId);
        return this.mPersistedTaskIds.get(userId).get(taskId);
    }

    SparseBooleanArray getTaskIdsForUser(int userId) {
        loadPersistedTaskIdsForUserLocked(userId);
        return this.mPersistedTaskIds.get(userId);
    }

    void notifyTaskPersisterLocked(Task task, boolean flush) {
        ActivityStack stack = task != null ? task.getStack() : null;
        if (stack != null && stack.isHomeOrRecentsStack()) {
            return;
        }
        syncPersistentTaskIdsLocked();
        this.mTaskPersister.wakeup(task, flush);
    }

    private void syncPersistentTaskIdsLocked() {
        for (int i = this.mPersistedTaskIds.size() - 1; i >= 0; i--) {
            int userId = this.mPersistedTaskIds.keyAt(i);
            if (this.mUsersWithRecentsLoaded.get(userId)) {
                this.mPersistedTaskIds.valueAt(i).clear();
            }
        }
        for (int i2 = this.mTasks.size() - 1; i2 >= 0; i2--) {
            Task task = this.mTasks.get(i2);
            if (shouldPersistTaskLocked(task)) {
                if (this.mPersistedTaskIds.get(task.mUserId) == null) {
                    Slog.wtf("ActivityTaskManager", "No task ids found for userId " + task.mUserId + ". task=" + task + " mPersistedTaskIds=" + this.mPersistedTaskIds);
                    this.mPersistedTaskIds.put(task.mUserId, new SparseBooleanArray());
                }
                this.mPersistedTaskIds.get(task.mUserId).put(task.mTaskId, true);
            }
        }
    }

    private static boolean shouldPersistTaskLocked(Task task) {
        ActivityStack stack = task.getStack();
        return task.isPersistable && (stack == null || !stack.isHomeOrRecentsStack());
    }

    void onSystemReadyLocked() {
        loadRecentsComponent(this.mService.mContext.getResources());
        this.mTasks.clear();
    }

    Bitmap getTaskDescriptionIcon(String path) {
        return this.mTaskPersister.getTaskDescriptionIcon(path);
    }

    void saveImage(Bitmap image, String path) {
        this.mTaskPersister.saveImage(image, path);
    }

    void flush() {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                syncPersistentTaskIdsLocked();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        this.mTaskPersister.flush();
    }

    int[] usersWithRecentsLoadedLocked() {
        int[] usersWithRecentsLoaded = new int[this.mUsersWithRecentsLoaded.size()];
        int len = 0;
        for (int i = 0; i < usersWithRecentsLoaded.length; i++) {
            int userId = this.mUsersWithRecentsLoaded.keyAt(i);
            if (this.mUsersWithRecentsLoaded.valueAt(i)) {
                usersWithRecentsLoaded[len] = userId;
                len++;
            }
        }
        int i2 = usersWithRecentsLoaded.length;
        if (len < i2) {
            return Arrays.copyOf(usersWithRecentsLoaded, len);
        }
        return usersWithRecentsLoaded;
    }

    void unloadUserDataFromMemoryLocked(int userId) {
        if (this.mUsersWithRecentsLoaded.get(userId)) {
            Slog.i("ActivityTaskManager", "Unloading recents for user " + userId + " from memory.");
            this.mUsersWithRecentsLoaded.delete(userId);
            removeTasksForUserLocked(userId);
        }
        this.mPersistedTaskIds.delete(userId);
        this.mTaskPersister.unloadUserDataFromMemory(userId);
    }

    private void removeTasksForUserLocked(int userId) {
        if (userId <= 0) {
            Slog.i("ActivityTaskManager", "Can't remove recent task on user " + userId);
            return;
        }
        for (int i = this.mTasks.size() - 1; i >= 0; i--) {
            Task task = this.mTasks.get(i);
            if (task.mUserId == userId) {
                remove(task);
            }
        }
    }

    void onPackagesSuspendedChanged(String[] packages, boolean suspended, int userId) {
        Set<String> packageNames = Sets.newHashSet(packages);
        for (int i = this.mTasks.size() - 1; i >= 0; i--) {
            Task task = this.mTasks.get(i);
            if (task.realActivity != null && packageNames.contains(task.realActivity.getPackageName()) && task.mUserId == userId && task.realActivitySuspended != suspended) {
                task.realActivitySuspended = suspended;
                if (suspended) {
                    this.mSupervisor.removeTask(task, false, true, "suspended-package");
                }
                notifyTaskPersisterLocked(task, false);
            }
        }
    }

    void onLockTaskModeStateChanged(int lockTaskModeState, int userId) {
        if (lockTaskModeState == 1) {
            for (int i = this.mTasks.size() - 1; i >= 0; i--) {
                Task task = this.mTasks.get(i);
                if (task.mUserId == userId && !this.mService.getLockTaskController().isTaskAllowlisted(task)) {
                    remove(task);
                }
            }
        }
    }

    void removeTasksByPackageName(String packageName, int userId) {
        for (int i = this.mTasks.size() - 1; i >= 0; i--) {
            Task task = this.mTasks.get(i);
            String taskPackageName = task.getBaseIntent().getComponent().getPackageName();
            if (task.mUserId == userId && taskPackageName.equals(packageName)) {
                this.mSupervisor.removeTask(task, true, true, "remove-package-task");
            }
        }
    }

    void removeAllVisibleTasks(int userId) {
        Set<Integer> profileIds = getProfileIds(userId);
        for (int i = this.mTasks.size() - 1; i >= 0; i--) {
            Task task = this.mTasks.get(i);
            if (profileIds.contains(Integer.valueOf(task.mUserId)) && isVisibleRecentTask(task)) {
                this.mTasks.remove(i);
                notifyTaskRemoved(task, true, true);
            }
        }
    }

    void cleanupDisabledPackageTasksLocked(String packageName, Set<String> filterByClasses, int userId) {
        for (int i = this.mTasks.size() - 1; i >= 0; i--) {
            Task task = this.mTasks.get(i);
            if (userId == -1 || task.mUserId == userId) {
                ComponentName cn = task.intent != null ? task.intent.getComponent() : null;
                boolean sameComponent = cn != null && cn.getPackageName().equals(packageName) && (filterByClasses == null || filterByClasses.contains(cn.getClassName()));
                if (sameComponent) {
                    this.mSupervisor.removeTask(task, false, true, "disabled-package");
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b2 A[PHI: r6
  0x00b2: PHI (r6v11 'app' android.content.pm.ApplicationInfo) = (r6v7 'app' android.content.pm.ApplicationInfo), (r6v9 'app' android.content.pm.ApplicationInfo) binds: [B:31:0x0090, B:36:0x00a4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:60:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x00bf, please report this as an issue */
    void cleanupLocked(int userId) {
        ApplicationInfo app;
        int recentsCount = this.mTasks.size();
        if (recentsCount == 0) {
            return;
        }
        this.mTmpAvailActCache.clear();
        this.mTmpAvailAppCache.clear();
        IPackageManager pm = AppGlobals.getPackageManager();
        for (int i = recentsCount - 1; i >= 0; i--) {
            Task task = this.mTasks.get(i);
            if (userId == -1 || task.mUserId == userId) {
                if (task.autoRemoveRecents && task.getTopNonFinishingActivity() == null) {
                    remove(task);
                    Slog.w("ActivityTaskManager", "Removing auto-remove without activity: " + task);
                } else if (task.realActivity != null) {
                    ActivityInfo ai = this.mTmpAvailActCache.get(task.realActivity);
                    if (ai == null) {
                        try {
                            ai = pm.getActivityInfo(task.realActivity, 268436480, userId);
                            if (ai == null) {
                                ai = NO_ACTIVITY_INFO_TOKEN;
                            }
                            this.mTmpAvailActCache.put(task.realActivity, ai);
                            if (ai == NO_ACTIVITY_INFO_TOKEN) {
                                app = this.mTmpAvailAppCache.get(task.realActivity.getPackageName());
                                if (app == null) {
                                    try {
                                        app = pm.getApplicationInfo(task.realActivity.getPackageName(), 8192, userId);
                                        if (app == null) {
                                            app = NO_APPLICATION_INFO_TOKEN;
                                        }
                                        this.mTmpAvailAppCache.put(task.realActivity.getPackageName(), app);
                                        if (app != NO_APPLICATION_INFO_TOKEN || (8388608 & app.flags) == 0) {
                                            remove(task);
                                            Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                                        } else {
                                            task.isAvailable = false;
                                        }
                                    } catch (RemoteException e) {
                                    }
                                } else if (app != NO_APPLICATION_INFO_TOKEN) {
                                    remove(task);
                                    Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                                } else {
                                    remove(task);
                                    Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                                }
                            } else if (ai.enabled || !ai.applicationInfo.enabled || (ai.applicationInfo.flags & 8388608) == 0) {
                                task.isAvailable = false;
                            } else {
                                task.isAvailable = true;
                            }
                        } catch (RemoteException e2) {
                        }
                    } else if (ai == NO_ACTIVITY_INFO_TOKEN) {
                        app = this.mTmpAvailAppCache.get(task.realActivity.getPackageName());
                        if (app == null) {
                            app = pm.getApplicationInfo(task.realActivity.getPackageName(), 8192, userId);
                            if (app == null) {
                                app = NO_APPLICATION_INFO_TOKEN;
                            }
                            this.mTmpAvailAppCache.put(task.realActivity.getPackageName(), app);
                            if (app != NO_APPLICATION_INFO_TOKEN) {
                                remove(task);
                                Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                            } else {
                                remove(task);
                                Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                            }
                        } else if (app != NO_APPLICATION_INFO_TOKEN) {
                            remove(task);
                            Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                        } else {
                            remove(task);
                            Slog.w("ActivityTaskManager", "Removing no longer valid recent: " + task);
                        }
                    } else if (ai.enabled) {
                        task.isAvailable = false;
                    } else {
                        task.isAvailable = false;
                    }
                }
            }
        }
        int i2 = 0;
        int recentsCount2 = this.mTasks.size();
        while (i2 < recentsCount2) {
            i2 = processNextAffiliateChainLocked(i2);
        }
    }

    private boolean canAddTaskWithoutTrim(Task task) {
        return findRemoveIndexForAddTask(task) == -1;
    }

    ArrayList<IBinder> getAppTasksList(int callingUid, String callingPackage) {
        Intent intent;
        ArrayList<IBinder> list = new ArrayList<>();
        int size = this.mTasks.size();
        for (int i = 0; i < size; i++) {
            Task task = this.mTasks.get(i);
            if (task.effectiveUid == callingUid && (intent = task.getBaseIntent()) != null && callingPackage.equals(intent.getComponent().getPackageName())) {
                AppTaskImpl taskImpl = new AppTaskImpl(this.mService, task.mTaskId, callingUid);
                list.add(taskImpl.asBinder());
            }
        }
        return list;
    }

    Set<Integer> getProfileIds(int userId) {
        Set<Integer> userIds = new ArraySet<>();
        int[] profileIds = this.mService.getUserManager().getProfileIds(userId, false);
        for (int i : profileIds) {
            userIds.add(Integer.valueOf(i));
        }
        return userIds;
    }

    UserInfo getUserInfo(int userId) {
        return this.mService.getUserManager().getUserInfo(userId);
    }

    int[] getCurrentProfileIds() {
        return this.mService.mAmInternal.getCurrentProfileIds();
    }

    boolean isUserRunning(int userId, int flags) {
        return this.mService.mAmInternal.isUserRunning(userId, flags);
    }

    ParceledListSlice<ActivityManager.RecentTaskInfo> getRecentTasks(int maxNum, int flags, boolean getTasksAllowed, int userId, int callingUid) {
        return new ParceledListSlice<>(getRecentTasksImpl(maxNum, flags, getTasksAllowed, userId, callingUid));
    }

    private ArrayList<ActivityManager.RecentTaskInfo> getRecentTasksImpl(int maxNum, int flags, boolean getTasksAllowed, int userId, int callingUid) {
        boolean withExcluded = (flags & 1) != 0;
        if (!isUserRunning(userId, 4)) {
            Slog.i("ActivityTaskManager", "user " + userId + " is still locked. Cannot load recents");
            return new ArrayList<>();
        }
        loadUserRecentsLocked(userId);
        Set<Integer> includedUsers = getProfileIds(userId);
        includedUsers.add(Integer.valueOf(userId));
        ArrayList<ActivityManager.RecentTaskInfo> res = new ArrayList<>();
        int size = this.mTasks.size();
        int numVisibleTasks = 0;
        for (int i = 0; i < size; i++) {
            Task task = this.mTasks.get(i);
            if (isVisibleRecentTask(task)) {
                numVisibleTasks++;
                if (isInVisibleRange(task, i, numVisibleTasks, withExcluded) && res.size() < maxNum && includedUsers.contains(Integer.valueOf(task.mUserId)) && !task.realActivitySuspended && ((getTasksAllowed || task.isActivityTypeHome() || task.effectiveUid == callingUid) && ((!task.autoRemoveRecents || task.getTopNonFinishingActivity() != null) && (((flags & 2) == 0 || task.isAvailable) && task.mUserSetupComplete)))) {
                    res.add(createRecentTaskInfo(task, true, getTasksAllowed));
                }
            }
        }
        return res;
    }

    void getPersistableTaskIds(ArraySet<Integer> persistentTaskIds) {
        int size = this.mTasks.size();
        for (int i = 0; i < size; i++) {
            Task task = this.mTasks.get(i);
            ActivityStack stack = task.getStack();
            if ((task.isPersistable || task.inRecents) && (stack == null || !stack.isHomeOrRecentsStack())) {
                persistentTaskIds.add(Integer.valueOf(task.mTaskId));
            }
        }
    }

    ArrayList<Task> getRawTasks() {
        return this.mTasks;
    }

    SparseBooleanArray getRecentTaskIds() {
        SparseBooleanArray res = new SparseBooleanArray();
        int size = this.mTasks.size();
        int numVisibleTasks = 0;
        for (int i = 0; i < size; i++) {
            Task task = this.mTasks.get(i);
            if (isVisibleRecentTask(task)) {
                numVisibleTasks++;
                if (isInVisibleRange(task, i, numVisibleTasks, false)) {
                    res.put(task.mTaskId, true);
                }
            }
        }
        return res;
    }

    Task getTask(int id) {
        int recentsCount = this.mTasks.size();
        for (int i = 0; i < recentsCount; i++) {
            Task task = this.mTasks.get(i);
            if (task.mTaskId == id) {
                return task;
            }
        }
        return null;
    }

    void add(Task task) {
        int otherIndex;
        int taskIndex;
        boolean canTrimTask = !this.mSupervisor.inActivityVisibilityUpdate();
        if (canTrimTask && !this.mHiddenTasks.isEmpty() && task.isActivityTypeHome()) {
            removeUnreachableHiddenTasks(task.getWindowingMode());
        }
        boolean isAffiliated = (task.mAffiliatedTaskId == task.mTaskId && task.mNextAffiliateTaskId == -1 && task.mPrevAffiliateTaskId == -1) ? false : true;
        int recentsCount = this.mTasks.size();
        if (task.voiceSession != null) {
            return;
        }
        if (!isAffiliated && recentsCount > 0 && this.mTasks.get(0) == task) {
            return;
        }
        if (isAffiliated && recentsCount > 0 && task.inRecents && task.mAffiliatedTaskId == this.mTasks.get(0).mAffiliatedTaskId) {
            return;
        }
        boolean needAffiliationFix = false;
        if (task.inRecents) {
            int taskIndex2 = this.mTasks.indexOf(task);
            if (taskIndex2 >= 0) {
                if (!isAffiliated) {
                    if (!this.mFreezeTaskListReordering) {
                        this.mTasks.remove(taskIndex2);
                        this.mTasks.add(0, task);
                    }
                    notifyTaskPersisterLocked(task, false);
                    return;
                }
            } else {
                Slog.wtf("ActivityTaskManager", "Task with inRecent not in recents: " + task);
                needAffiliationFix = true;
            }
        }
        removeForAddTask(task);
        task.inRecents = true;
        if (!isAffiliated || needAffiliationFix) {
            this.mTasks.add(0, task);
            notifyTaskAdded(task);
        } else if (isAffiliated) {
            Task other = task.mNextAffiliate;
            if (other == null) {
                other = task.mPrevAffiliate;
            }
            if (other != null && (otherIndex = this.mTasks.indexOf(other)) >= 0) {
                if (other == task.mNextAffiliate) {
                    taskIndex = otherIndex + 1;
                } else {
                    taskIndex = otherIndex;
                }
                this.mTasks.add(taskIndex, task);
                notifyTaskAdded(task);
                if (moveAffiliatedTasksToFront(task, taskIndex)) {
                    return;
                } else {
                    needAffiliationFix = true;
                }
            } else {
                needAffiliationFix = true;
            }
        }
        if (needAffiliationFix) {
            cleanupLocked(task.mUserId);
        }
        if (canTrimTask) {
            trimInactiveRecentTasks();
        }
        notifyTaskPersisterLocked(task, false);
    }

    boolean addToBottom(Task task) {
        if (!canAddTaskWithoutTrim(task)) {
            return false;
        }
        add(task);
        return true;
    }

    void remove(Task task) {
        this.mTasks.remove(task);
        notifyTaskRemoved(task, false, false);
    }

    private void trimInactiveRecentTasks() {
        if (this.mFreezeTaskListReordering) {
            return;
        }
        for (int recentsCount = this.mTasks.size(); recentsCount > this.mGlobalMaxNumTasks; recentsCount--) {
            notifyTaskRemoved(this.mTasks.remove(recentsCount - 1), true, false);
        }
        int[] profileUserIds = getCurrentProfileIds();
        this.mTmpQuietProfileUserIds.clear();
        for (int userId : profileUserIds) {
            UserInfo userInfo = getUserInfo(userId);
            if (userInfo != null && userInfo.isManagedProfile() && userInfo.isQuietModeEnabled()) {
                this.mTmpQuietProfileUserIds.put(userId, true);
            }
        }
        int numVisibleTasks = 0;
        int i = 0;
        while (i < this.mTasks.size()) {
            Task task = this.mTasks.get(i);
            if (isActiveRecentTask(task, this.mTmpQuietProfileUserIds)) {
                if (!this.mHasVisibleRecentTasks) {
                    i++;
                } else if (!isVisibleRecentTask(task)) {
                    i++;
                } else {
                    numVisibleTasks++;
                    if (isInVisibleRange(task, i, numVisibleTasks, false) || !isTrimmable(task)) {
                        i++;
                    }
                }
            }
            this.mTasks.remove(task);
            notifyTaskRemoved(task, true, false);
            notifyTaskPersisterLocked(task, false);
        }
    }

    private boolean isActiveRecentTask(Task task, SparseBooleanArray quietProfileUserIds) {
        Task affiliatedTask;
        if (quietProfileUserIds.get(task.mUserId)) {
            return false;
        }
        return task.mAffiliatedTaskId == -1 || task.mAffiliatedTaskId == task.mTaskId || (affiliatedTask = getTask(task.mAffiliatedTaskId)) == null || isActiveRecentTask(affiliatedTask, quietProfileUserIds);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x000f, code lost:
    
        if (r0 != 5) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean isVisibleRecentTask(com.android.server.wm.Task r6) {
        /*
            r5 = this;
            int r0 = r6.getActivityType()
            r1 = 2
            r2 = 0
            if (r0 == r1) goto L63
            r3 = 3
            if (r0 == r3) goto L63
            r4 = 4
            if (r0 == r4) goto L12
            r4 = 5
            if (r0 == r4) goto L63
            goto L20
        L12:
            android.content.Intent r0 = r6.getBaseIntent()
            int r0 = r0.getFlags()
            r4 = 8388608(0x800000, float:1.17549435E-38)
            r0 = r0 & r4
            if (r0 != r4) goto L20
            return r2
        L20:
            int r0 = r6.getWindowingMode()
            if (r0 == r1) goto L62
            if (r0 == r3) goto L33
            r1 = 6
            if (r0 == r1) goto L2c
            goto L40
        L2c:
            boolean r0 = r6.isAlwaysOnTop()
            if (r0 == 0) goto L40
            return r2
        L33:
            com.android.server.wm.ActivityStack r0 = r6.getStack()
            if (r0 == 0) goto L40
            com.android.server.wm.Task r1 = r0.getTopMostTask()
            if (r1 != r6) goto L40
            return r2
        L40:
            com.android.server.wm.ActivityStack r0 = r6.getStack()
            if (r0 == 0) goto L53
            com.android.server.wm.DisplayContent r1 = r0.getDisplay()
            if (r1 == 0) goto L53
            boolean r3 = r1.isSingleTaskInstance()
            if (r3 == 0) goto L53
            return r2
        L53:
            com.android.server.wm.ActivityTaskManagerService r1 = r5.mService
            com.android.server.wm.LockTaskController r1 = r1.getLockTaskController()
            com.android.server.wm.Task r1 = r1.getRootTask()
            if (r6 != r1) goto L60
            return r2
        L60:
            r1 = 1
            return r1
        L62:
            return r2
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.RecentTasks.isVisibleRecentTask(com.android.server.wm.Task):boolean");
    }

    private boolean isInVisibleRange(Task task, int taskIndex, int numVisibleTasks, boolean skipExcludedCheck) {
        if (!skipExcludedCheck) {
            boolean isExcludeFromRecents = (task.getBaseIntent().getFlags() & 8388608) == 8388608;
            if (isExcludeFromRecents) {
                return taskIndex == 0;
            }
        }
        int i = this.mMinNumVisibleTasks;
        if (i >= 0 && numVisibleTasks <= i) {
            return true;
        }
        int i2 = this.mMaxNumVisibleTasks;
        if (i2 >= 0) {
            return numVisibleTasks <= i2;
        }
        return this.mActiveTasksSessionDurationMs > 0 && task.getInactiveDuration() <= this.mActiveTasksSessionDurationMs;
    }

    protected boolean isTrimmable(Task task) {
        ActivityStack rootHomeTask;
        ActivityStack stack = task.getStack();
        if (stack == null) {
            return true;
        }
        return stack.isOnHomeDisplay() && (rootHomeTask = stack.getDisplayArea().getRootHomeTask()) != null && task.compareTo((WindowContainer) rootHomeTask) < 0;
    }

    private void removeUnreachableHiddenTasks(int windowingMode) {
        for (int i = this.mHiddenTasks.size() - 1; i >= 0; i--) {
            Task hiddenTask = this.mHiddenTasks.get(i);
            if (!hiddenTask.hasChild() || hiddenTask.inRecents) {
                this.mHiddenTasks.remove(i);
            } else if (hiddenTask.getWindowingMode() == windowingMode && hiddenTask.getTopVisibleActivity() == null) {
                this.mHiddenTasks.remove(i);
                this.mSupervisor.removeTask(hiddenTask, false, false, "remove-hidden-task");
            }
        }
    }

    private void removeForAddTask(Task task) {
        this.mHiddenTasks.remove(task);
        int removeIndex = findRemoveIndexForAddTask(task);
        if (removeIndex == -1) {
            return;
        }
        Task removedTask = this.mTasks.remove(removeIndex);
        if (removedTask != task) {
            if (removedTask.hasChild()) {
                this.mHiddenTasks.add(removedTask);
            }
            notifyTaskRemoved(removedTask, false, false);
        }
        notifyTaskPersisterLocked(removedTask, false);
    }

    private int findRemoveIndexForAddTask(Task task) {
        if (this.mFreezeTaskListReordering) {
            return -1;
        }
        int recentsCount = this.mTasks.size();
        Intent intent = task.intent;
        boolean z = true;
        boolean document = intent != null && intent.isDocument();
        int maxRecents = task.maxRecents - 1;
        int i = 0;
        while (i < recentsCount) {
            Task t = this.mTasks.get(i);
            if (task != t) {
                if (hasCompatibleActivityTypeAndWindowingMode(task, t) && task.mUserId == t.mUserId) {
                    Intent trIntent = t.intent;
                    boolean sameAffinity = (task.affinity == null || !task.affinity.equals(t.affinity)) ? false : z;
                    boolean sameIntent = (intent == null || !intent.filterEquals(trIntent)) ? false : z;
                    boolean multiTasksAllowed = false;
                    int flags = intent.getFlags();
                    if ((flags & 268959744) != 0 && (flags & AudioFormat.OPUS) != 0) {
                        multiTasksAllowed = true;
                    }
                    boolean trIsDocument = (trIntent == null || !trIntent.isDocument()) ? false : z;
                    boolean bothDocuments = (document && trIsDocument) ? z : false;
                    if (sameAffinity || sameIntent || bothDocuments) {
                        if (bothDocuments) {
                            boolean sameActivity = (task.realActivity == null || t.realActivity == null || !task.realActivity.equals(t.realActivity)) ? false : true;
                            if (!sameActivity) {
                                continue;
                            } else if (maxRecents > 0) {
                                maxRecents--;
                                if (!sameIntent || multiTasksAllowed) {
                                }
                            }
                        } else if (document || trIsDocument) {
                        }
                    }
                }
                i++;
                z = true;
            }
            return i;
        }
        return -1;
    }

    private int processNextAffiliateChainLocked(int start) {
        Task startTask = this.mTasks.get(start);
        int affiliateId = startTask.mAffiliatedTaskId;
        if (startTask.mTaskId == affiliateId && startTask.mPrevAffiliate == null && startTask.mNextAffiliate == null) {
            startTask.inRecents = true;
            return start + 1;
        }
        this.mTmpRecents.clear();
        for (int i = this.mTasks.size() - 1; i >= start; i--) {
            Task task = this.mTasks.get(i);
            if (task.mAffiliatedTaskId == affiliateId) {
                this.mTasks.remove(i);
                this.mTmpRecents.add(task);
            }
        }
        Collections.sort(this.mTmpRecents, TASK_ID_COMPARATOR);
        Task first = this.mTmpRecents.get(0);
        first.inRecents = true;
        if (first.mNextAffiliate != null) {
            Slog.w("ActivityTaskManager", "Link error 1 first.next=" + first.mNextAffiliate);
            first.setNextAffiliate(null);
            notifyTaskPersisterLocked(first, false);
        }
        int tmpSize = this.mTmpRecents.size();
        for (int i2 = 0; i2 < tmpSize - 1; i2++) {
            Task next = this.mTmpRecents.get(i2);
            Task prev = this.mTmpRecents.get(i2 + 1);
            if (next.mPrevAffiliate != prev) {
                Slog.w("ActivityTaskManager", "Link error 2 next=" + next + " prev=" + next.mPrevAffiliate + " setting prev=" + prev);
                next.setPrevAffiliate(prev);
                notifyTaskPersisterLocked(next, false);
            }
            if (prev.mNextAffiliate != next) {
                Slog.w("ActivityTaskManager", "Link error 3 prev=" + prev + " next=" + prev.mNextAffiliate + " setting next=" + next);
                prev.setNextAffiliate(next);
                notifyTaskPersisterLocked(prev, false);
            }
            prev.inRecents = true;
        }
        Task last = this.mTmpRecents.get(tmpSize - 1);
        if (last.mPrevAffiliate != null) {
            Slog.w("ActivityTaskManager", "Link error 4 last.prev=" + last.mPrevAffiliate);
            last.setPrevAffiliate(null);
            notifyTaskPersisterLocked(last, false);
        }
        this.mTasks.addAll(start, this.mTmpRecents);
        this.mTmpRecents.clear();
        return start + tmpSize;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006e  */
    /* JADX WARN: Code duplicated, block: B:30:0x007c A[EDGE_INSN: B:30:0x007c->B:44:0x016d BREAK  A[LOOP:1: B:12:0x0026->B:40:0x0127]] */
    /* JADX WARN: Code duplicated, block: B:31:0x009f  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:37:0x0106  */
    /* JADX WARN: Code duplicated, block: B:40:0x0127 A[LOOP:1: B:12:0x0026->B:40:0x0127, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:30:0x007c, please report this as an issue */
    private boolean moveAffiliatedTasksToFront(Task task, int taskIndex) {
        Task top;
        int recentsCount = this.mTasks.size();
        Task top2 = task;
        int topIndex = taskIndex;
        while (top2.mNextAffiliate != null && topIndex > 0) {
            top2 = top2.mNextAffiliate;
            topIndex--;
        }
        boolean sane = top2.mAffiliatedTaskId == task.mAffiliatedTaskId;
        int endIndex = topIndex;
        Task prev = top2;
        while (endIndex < recentsCount) {
            Task cur = this.mTasks.get(endIndex);
            if (cur == top2) {
                if (cur.mNextAffiliate == null && cur.mNextAffiliateTaskId == -1) {
                    top = top2;
                    if (cur.mPrevAffiliateTaskId == -1) {
                        if (cur.mPrevAffiliate != null) {
                            break;
                        }
                        Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": last task " + cur + " has previous affiliate " + cur.mPrevAffiliate);
                        sane = false;
                        break;
                    }
                    if (cur.mPrevAffiliate == null) {
                        Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": task " + cur + " has previous affiliate " + cur.mPrevAffiliate + " but should be id " + cur.mPrevAffiliate);
                        sane = false;
                        break;
                    }
                    if (cur.mAffiliatedTaskId != task.mAffiliatedTaskId) {
                        Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": task " + cur + " has affiliated id " + cur.mAffiliatedTaskId + " but should be " + task.mAffiliatedTaskId);
                        sane = false;
                        break;
                    }
                    prev = cur;
                    endIndex++;
                    if (endIndex >= recentsCount) {
                        Slog.wtf("ActivityTaskManager", "Bad chain ran off index " + endIndex + ": last task " + prev);
                        sane = false;
                        break;
                    }
                    top2 = top;
                } else {
                    Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": first task has next affiliate: " + prev);
                    sane = false;
                    break;
                }
            } else if (cur.mNextAffiliate == prev && cur.mNextAffiliateTaskId == prev.mTaskId) {
                top = top2;
                if (cur.mPrevAffiliateTaskId == -1) {
                    if (cur.mPrevAffiliate != null) {
                        break;
                    }
                    Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": last task " + cur + " has previous affiliate " + cur.mPrevAffiliate);
                    sane = false;
                    break;
                }
                if (cur.mPrevAffiliate == null) {
                    Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": task " + cur + " has previous affiliate " + cur.mPrevAffiliate + " but should be id " + cur.mPrevAffiliate);
                    sane = false;
                    break;
                }
                if (cur.mAffiliatedTaskId != task.mAffiliatedTaskId) {
                    Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": task " + cur + " has affiliated id " + cur.mAffiliatedTaskId + " but should be " + task.mAffiliatedTaskId);
                    sane = false;
                    break;
                }
                prev = cur;
                endIndex++;
                if (endIndex >= recentsCount) {
                    Slog.wtf("ActivityTaskManager", "Bad chain ran off index " + endIndex + ": last task " + prev);
                    sane = false;
                    break;
                }
                top2 = top;
            } else {
                Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": middle task " + cur + " @" + endIndex + " has bad next affiliate " + cur.mNextAffiliate + " id " + cur.mNextAffiliateTaskId + ", expected " + prev);
                sane = false;
                break;
            }
        }
        if (sane && endIndex < taskIndex) {
            Slog.wtf("ActivityTaskManager", "Bad chain @" + endIndex + ": did not extend to task " + task + " @" + taskIndex);
            sane = false;
        }
        if (sane) {
            for (int i = topIndex; i <= endIndex; i++) {
                this.mTasks.add(i - topIndex, this.mTasks.remove(i));
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:107:0x01ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:118:0x0143 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0127 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0129  */
    /* JADX WARN: Code duplicated, block: B:55:0x0140  */
    void dump(PrintWriter pw, boolean dumpAll, String dumpPackage) {
        pw.println("ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)");
        pw.println("mRecentsUid=" + this.mRecentsUid);
        pw.println("mRecentsComponent=" + this.mRecentsComponent);
        pw.println("mFreezeTaskListReordering=" + this.mFreezeTaskListReordering);
        pw.println("mFreezeTaskListReorderingPendingTimeout=" + this.mService.mH.hasCallbacks(this.mResetFreezeTaskListOnTimeoutRunnable));
        if (!this.mHiddenTasks.isEmpty()) {
            pw.println("mHiddenTasks=" + this.mHiddenTasks);
        }
        if (this.mTasks.isEmpty()) {
            return;
        }
        boolean printedHeader = false;
        int size = this.mTasks.size();
        int i = 0;
        boolean printedAnything = false;
        while (true) {
            boolean z = false;
            if (i >= size) {
                break;
            }
            Task task = this.mTasks.get(i);
            if (dumpPackage != null) {
                boolean match = (task.intent == null || task.intent.getComponent() == null || !dumpPackage.equals(task.intent.getComponent().getPackageName())) ? false : true;
                if (!match) {
                    match |= (task.affinityIntent == null || task.affinityIntent.getComponent() == null || !dumpPackage.equals(task.affinityIntent.getComponent().getPackageName())) ? false : true;
                }
                if (!match) {
                    match |= task.origActivity != null && dumpPackage.equals(task.origActivity.getPackageName());
                }
                if (!match) {
                    if (task.realActivity != null && dumpPackage.equals(task.realActivity.getPackageName())) {
                        z = true;
                    }
                    match |= z;
                }
                if (!match) {
                    match |= dumpPackage.equals(task.mCallingPackage);
                }
                if (match) {
                    if (!printedHeader) {
                        pw.println("  Recent tasks:");
                        printedHeader = true;
                        printedAnything = true;
                    }
                    pw.print("  * Recent #");
                    pw.print(i);
                    pw.print(": ");
                    pw.println(task);
                    if (dumpAll) {
                        task.dump(pw, "    ");
                    }
                }
            } else {
                if (!printedHeader) {
                    pw.println("  Recent tasks:");
                    printedHeader = true;
                    printedAnything = true;
                }
                pw.print("  * Recent #");
                pw.print(i);
                pw.print(": ");
                pw.println(task);
                if (dumpAll) {
                    task.dump(pw, "    ");
                }
            }
            i++;
        }
        if (this.mHasVisibleRecentTasks) {
            boolean printedHeader2 = false;
            ArrayList<ActivityManager.RecentTaskInfo> tasks = getRecentTasksImpl(Integer.MAX_VALUE, 0, true, this.mService.getCurrentUserId(), 1000);
            for (int i2 = 0; i2 < tasks.size(); i2++) {
                ActivityManager.RecentTaskInfo taskInfo = tasks.get(i2);
                if (dumpPackage != null) {
                    boolean match2 = (taskInfo.baseIntent == null || taskInfo.baseIntent.getComponent() == null || !dumpPackage.equals(taskInfo.baseIntent.getComponent().getPackageName())) ? false : true;
                    if (!match2) {
                        match2 |= taskInfo.baseActivity != null && dumpPackage.equals(taskInfo.baseActivity.getPackageName());
                    }
                    if (!match2) {
                        match2 |= taskInfo.topActivity != null && dumpPackage.equals(taskInfo.topActivity.getPackageName());
                    }
                    if (!match2) {
                        match2 |= taskInfo.origActivity != null && dumpPackage.equals(taskInfo.origActivity.getPackageName());
                    }
                    if (!match2) {
                        match2 |= taskInfo.realActivity != null && dumpPackage.equals(taskInfo.realActivity.getPackageName());
                    }
                    if (match2) {
                        if (!printedHeader2) {
                            if (printedAnything) {
                                pw.println();
                            }
                            pw.println("  Visible recent tasks (most recent first):");
                            printedHeader2 = true;
                            printedAnything = true;
                        }
                        pw.print("  * RecentTaskInfo #");
                        pw.print(i2);
                        pw.print(": ");
                        taskInfo.dump(pw, "    ");
                    }
                } else {
                    if (!printedHeader2) {
                        if (printedAnything) {
                            pw.println();
                        }
                        pw.println("  Visible recent tasks (most recent first):");
                        printedHeader2 = true;
                        printedAnything = true;
                    }
                    pw.print("  * RecentTaskInfo #");
                    pw.print(i2);
                    pw.print(": ");
                    taskInfo.dump(pw, "    ");
                }
            }
        }
        if (!printedAnything) {
            pw.println("  (nothing)");
        }
    }

    ActivityManager.RecentTaskInfo createRecentTaskInfo(Task tr, boolean stripExtras, boolean getTasksAllowed) {
        ActivityManager.RecentTaskInfo rti = new ActivityManager.RecentTaskInfo();
        tr.fillTaskInfo(rti, stripExtras);
        rti.id = rti.isRunning ? rti.taskId : -1;
        rti.persistentId = rti.taskId;
        if (!getTasksAllowed) {
            Task.trimIneffectiveInfo(tr, rti);
        }
        return rti;
    }

    private boolean hasCompatibleActivityTypeAndWindowingMode(Task t1, Task t2) {
        int activityType = t1.getActivityType();
        int windowingMode = t1.getWindowingMode();
        boolean isUndefinedType = activityType == 0;
        boolean isUndefinedMode = windowingMode == 0;
        int otherActivityType = t2.getActivityType();
        int otherWindowingMode = t2.getWindowingMode();
        boolean isOtherUndefinedType = otherActivityType == 0;
        boolean isOtherUndefinedMode = otherWindowingMode == 0;
        boolean isCompatibleType = activityType == otherActivityType || isUndefinedType || isOtherUndefinedType;
        boolean isCompatibleMode = windowingMode == otherWindowingMode || isUndefinedMode || isOtherUndefinedMode;
        return isCompatibleType && isCompatibleMode;
    }
}
