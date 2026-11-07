package com.android.server.wm;

import android.app.ActivityManager;
import android.app.WindowConfiguration;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Slog;
import android.util.SparseArray;
import android.view.SurfaceControl;
import android.window.ITaskOrganizer;
import android.window.ITaskOrganizerController;
import android.window.WindowContainerToken;
import com.android.internal.util.ArrayUtils;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class TaskOrganizerController extends ITaskOrganizerController.Stub {
    private static final LinkedList<IBinder> EMPTY_LIST = new LinkedList<>();
    private static final int REPORT_CONFIGS = 536873984;
    private static final int REPORT_WINDOW_CONFIGS = 3;
    private static final String TAG = "TaskOrganizerController";
    private Consumer<Runnable> mDeferTaskOrgCallbacksConsumer;
    private final WindowManagerGlobalLock mGlobalLock;
    private final ActivityTaskManagerService mService;
    private ActivityManager.RunningTaskInfo mTmpTaskInfo;
    private final SparseArray<LinkedList<IBinder>> mTaskOrganizersForWindowingMode = new SparseArray<>();
    private final HashMap<IBinder, TaskOrganizerState> mTaskOrganizerStates = new HashMap<>();
    private final WeakHashMap<Task, ActivityManager.RunningTaskInfo> mLastSentTaskInfos = new WeakHashMap<>();
    private final ArrayList<Task> mPendingTaskInfoChanges = new ArrayList<>();

    private class DeathRecipient implements IBinder.DeathRecipient {
        ITaskOrganizer mTaskOrganizer;

        DeathRecipient(ITaskOrganizer organizer) {
            this.mTaskOrganizer = organizer;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (TaskOrganizerController.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    TaskOrganizerState state = (TaskOrganizerState) TaskOrganizerController.this.mTaskOrganizerStates.remove(this.mTaskOrganizer.asBinder());
                    if (state != null) {
                        state.dispose();
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class TaskOrganizerCallbacks {
        final Consumer<Runnable> mDeferTaskOrgCallbacksConsumer;
        final WindowManagerService mService;
        final ITaskOrganizer mTaskOrganizer;
        private final SurfaceControl.Transaction mTransaction;

        TaskOrganizerCallbacks(WindowManagerService wm, ITaskOrganizer taskOrg, Consumer<Runnable> deferTaskOrgCallbacksConsumer) {
            this.mService = wm;
            this.mDeferTaskOrgCallbacksConsumer = deferTaskOrgCallbacksConsumer;
            this.mTaskOrganizer = taskOrg;
            this.mTransaction = wm.mTransactionFactory.get();
        }

        IBinder getBinder() {
            return this.mTaskOrganizer.asBinder();
        }

        void onTaskAppeared(final Task task) {
            final boolean visible = task.isVisible();
            final ActivityManager.RunningTaskInfo taskInfo = task.getTaskInfo();
            this.mDeferTaskOrgCallbacksConsumer.accept(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTaskAppeared$0$TaskOrganizerController$TaskOrganizerCallbacks(task, visible, taskInfo);
                }
            });
        }

        public /* synthetic */ void lambda$onTaskAppeared$0$TaskOrganizerController$TaskOrganizerCallbacks(Task task, boolean visible, ActivityManager.RunningTaskInfo taskInfo) {
            try {
                SurfaceControl outSurfaceControl = new SurfaceControl(task.getSurfaceControl(), "TaskOrganizerController.onTaskAppeared");
                if (!task.mCreatedByOrganizer && !visible) {
                    this.mTransaction.hide(outSurfaceControl);
                    this.mTransaction.apply();
                }
                this.mTaskOrganizer.onTaskAppeared(taskInfo, outSurfaceControl);
            } catch (RemoteException e) {
                Slog.e(TaskOrganizerController.TAG, "Exception sending onTaskAppeared callback", e);
            }
        }

        void onTaskVanished(Task task) {
            final ActivityManager.RunningTaskInfo taskInfo = task.getTaskInfo();
            this.mDeferTaskOrgCallbacksConsumer.accept(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTaskVanished$1$TaskOrganizerController$TaskOrganizerCallbacks(taskInfo);
                }
            });
        }

        public /* synthetic */ void lambda$onTaskVanished$1$TaskOrganizerController$TaskOrganizerCallbacks(ActivityManager.RunningTaskInfo taskInfo) {
            try {
                this.mTaskOrganizer.onTaskVanished(taskInfo);
            } catch (RemoteException e) {
                Slog.e(TaskOrganizerController.TAG, "Exception sending onTaskVanished callback", e);
            }
        }

        void onTaskInfoChanged(final Task task, final ActivityManager.RunningTaskInfo taskInfo) {
            if (!task.mCreatedByOrganizer && !task.mTaskAppearedSent) {
                return;
            }
            this.mDeferTaskOrgCallbacksConsumer.accept(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTaskInfoChanged$2$TaskOrganizerController$TaskOrganizerCallbacks(task, taskInfo);
                }
            });
        }

        public /* synthetic */ void lambda$onTaskInfoChanged$2$TaskOrganizerController$TaskOrganizerCallbacks(Task task, ActivityManager.RunningTaskInfo taskInfo) {
            if (!task.isOrganized()) {
                return;
            }
            try {
                this.mTaskOrganizer.onTaskInfoChanged(taskInfo);
            } catch (RemoteException e) {
                Slog.e(TaskOrganizerController.TAG, "Exception sending onTaskInfoChanged callback", e);
            }
        }

        void onBackPressedOnTaskRoot(final Task task) {
            if (!task.mCreatedByOrganizer && !task.mTaskAppearedSent) {
                return;
            }
            this.mDeferTaskOrgCallbacksConsumer.accept(new Runnable() { // from class: com.android.server.wm.-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBackPressedOnTaskRoot$3$TaskOrganizerController$TaskOrganizerCallbacks(task);
                }
            });
        }

        public /* synthetic */ void lambda$onBackPressedOnTaskRoot$3$TaskOrganizerController$TaskOrganizerCallbacks(Task task) {
            if (!task.isOrganized()) {
                return;
            }
            try {
                this.mTaskOrganizer.onBackPressedOnTaskRoot(task.getTaskInfo());
            } catch (Exception e) {
                Slog.e(TaskOrganizerController.TAG, "Exception sending onBackPressedOnTaskRoot callback", e);
            }
        }
    }

    private class TaskOrganizerState {
        private final DeathRecipient mDeathRecipient;
        private boolean mInterceptBackPressedOnTaskRoot;
        private final ArrayList<Task> mOrganizedTasks = new ArrayList<>();
        private final TaskOrganizerCallbacks mOrganizer;
        private final int mUid;

        TaskOrganizerState(ITaskOrganizer organizer, int uid) {
            Consumer<Runnable> deferTaskOrgCallbacksConsumer;
            if (TaskOrganizerController.this.mDeferTaskOrgCallbacksConsumer != null) {
                deferTaskOrgCallbacksConsumer = TaskOrganizerController.this.mDeferTaskOrgCallbacksConsumer;
            } else {
                final WindowAnimator windowAnimator = TaskOrganizerController.this.mService.mWindowManager.mAnimator;
                Objects.requireNonNull(windowAnimator);
                deferTaskOrgCallbacksConsumer = new Consumer() { // from class: com.android.server.wm.-$$Lambda$vZR5471cvTgvcvM990tM31bi4pI
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        windowAnimator.addAfterPrepareSurfacesRunnable((Runnable) obj);
                    }
                };
            }
            this.mOrganizer = TaskOrganizerController.this.new TaskOrganizerCallbacks(TaskOrganizerController.this.mService.mWindowManager, organizer, deferTaskOrgCallbacksConsumer);
            this.mDeathRecipient = TaskOrganizerController.this.new DeathRecipient(organizer);
            try {
                organizer.asBinder().linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException e) {
                Slog.e(TaskOrganizerController.TAG, "TaskOrganizer failed to register death recipient");
            }
            this.mUid = uid;
        }

        void setInterceptBackPressedOnTaskRoot(boolean interceptBackPressed) {
            this.mInterceptBackPressedOnTaskRoot = interceptBackPressed;
        }

        void addTask(Task t) {
            if (t.mTaskAppearedSent) {
                return;
            }
            if (!this.mOrganizedTasks.contains(t)) {
                this.mOrganizedTasks.add(t);
            }
            if (t.taskAppearedReady()) {
                t.mTaskAppearedSent = true;
                this.mOrganizer.onTaskAppeared(t);
            }
        }

        void removeTask(Task t) {
            if (t.mTaskAppearedSent) {
                t.migrateToNewSurfaceControl();
                t.mTaskAppearedSent = false;
                this.mOrganizer.onTaskVanished(t);
            }
            this.mOrganizedTasks.remove(t);
        }

        void dispose() {
            for (int i = TaskOrganizerController.this.mTaskOrganizersForWindowingMode.size() - 1; i >= 0; i--) {
                ((LinkedList) TaskOrganizerController.this.mTaskOrganizersForWindowingMode.valueAt(i)).remove(this.mOrganizer.getBinder());
            }
            while (!this.mOrganizedTasks.isEmpty()) {
                Task t = this.mOrganizedTasks.get(0);
                t.updateTaskOrganizerState(true);
                if (this.mOrganizedTasks.contains(t)) {
                    removeTask(t);
                }
            }
            TaskOrganizerController.this.mTaskOrganizerStates.remove(TaskOrganizerController.this.asBinder());
        }

        void unlinkDeath() {
            this.mOrganizer.getBinder().unlinkToDeath(this.mDeathRecipient, 0);
        }
    }

    TaskOrganizerController(ActivityTaskManagerService atm) {
        this.mService = atm;
        this.mGlobalLock = atm.mGlobalLock;
    }

    private void enforceStackPermission(String func) {
        this.mService.mAmInternal.enforceCallingPermission("android.permission.MANAGE_ACTIVITY_STACKS", func);
    }

    public void setDeferTaskOrgCallbacksConsumer(Consumer<Runnable> consumer) {
        this.mDeferTaskOrgCallbacksConsumer = consumer;
    }

    public void registerTaskOrganizer(ITaskOrganizer organizer, final int windowingMode) {
        if (windowingMode == 2) {
            if (!this.mService.mSupportsPictureInPicture) {
                throw new UnsupportedOperationException("Picture in picture is not supported on this device");
            }
        } else if (WindowConfiguration.isSplitScreenWindowingMode(windowingMode)) {
            if (!this.mService.mSupportsSplitScreenMultiWindow) {
                throw new UnsupportedOperationException("Split-screen is not supported on this device");
            }
        } else if (windowingMode == 6) {
            if (!this.mService.mSupportsMultiWindow) {
                throw new UnsupportedOperationException("Multi-window is not supported on this device");
            }
        } else {
            throw new UnsupportedOperationException("As of now only Pinned/Split/Multiwindow windowing modes are supported for registerTaskOrganizer");
        }
        enforceStackPermission("registerTaskOrganizer()");
        int uid = Binder.getCallingUid();
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (getTaskOrganizer(windowingMode) != null) {
                        Slog.w(TAG, "Task organizer already exists for windowing mode: " + windowingMode);
                    }
                    LinkedList<IBinder> orgs = this.mTaskOrganizersForWindowingMode.get(windowingMode);
                    if (orgs == null) {
                        orgs = new LinkedList<>();
                        this.mTaskOrganizersForWindowingMode.put(windowingMode, orgs);
                    }
                    orgs.add(organizer.asBinder());
                    if (!this.mTaskOrganizerStates.containsKey(organizer.asBinder())) {
                        this.mTaskOrganizerStates.put(organizer.asBinder(), new TaskOrganizerState(organizer, uid));
                    }
                    this.mService.mRootWindowContainer.forAllTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$TaskOrganizerController$6oHHz4Ki8lAtXH-ILvgmrwWRqNM
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            TaskOrganizerController.lambda$registerTaskOrganizer$0(windowingMode, (Task) obj);
                        }
                    });
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

    static /* synthetic */ void lambda$registerTaskOrganizer$0(int windowingMode, Task task) {
        if (task.getWindowingMode() == windowingMode) {
            task.updateTaskOrganizerState(true);
        }
    }

    public void unregisterTaskOrganizer(ITaskOrganizer organizer) {
        enforceStackPermission("unregisterTaskOrganizer()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    TaskOrganizerState state = this.mTaskOrganizerStates.get(organizer.asBinder());
                    if (state != null) {
                        state.unlinkDeath();
                        state.dispose();
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

    ITaskOrganizer getTaskOrganizer(int windowingMode) {
        TaskOrganizerState state;
        IBinder organizer = this.mTaskOrganizersForWindowingMode.get(windowingMode, EMPTY_LIST).peekLast();
        if (organizer != null && (state = this.mTaskOrganizerStates.get(organizer)) != null) {
            return state.mOrganizer.mTaskOrganizer;
        }
        return null;
    }

    void onTaskAppeared(ITaskOrganizer organizer, Task task) {
        TaskOrganizerState state = this.mTaskOrganizerStates.get(organizer.asBinder());
        state.addTask(task);
    }

    void onTaskVanished(ITaskOrganizer organizer, Task task) {
        TaskOrganizerState state = this.mTaskOrganizerStates.get(organizer.asBinder());
        if (state != null) {
            state.removeTask(task);
        }
    }

    public ActivityManager.RunningTaskInfo createRootTask(int displayId, int windowingMode) {
        enforceStackPermission("createRootTask()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent display = this.mService.mRootWindowContainer.getDisplayContent(displayId);
                    if (display != null) {
                        Task task = display.getDefaultTaskDisplayArea().createStack(windowingMode, 0, false, null, new Intent(), true);
                        ActivityManager.RunningTaskInfo out = task.getTaskInfo();
                        this.mLastSentTaskInfos.put(task, out);
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return out;
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

    public boolean deleteRootTask(WindowContainerToken token) {
        enforceStackPermission("deleteRootTask()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Task task = WindowContainer.fromBinder(token.asBinder()).asTask();
                    if (task != null) {
                        if (!task.mCreatedByOrganizer) {
                            throw new IllegalArgumentException("Attempt to delete task not created by organizer task=" + task);
                        }
                        task.removeImmediately();
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return true;
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

    void dispatchPendingTaskInfoChanges() {
        if (this.mService.mWindowManager.mWindowPlacerLocked.isLayoutDeferred()) {
            return;
        }
        int n = this.mPendingTaskInfoChanges.size();
        for (int i = 0; i < n; i++) {
            dispatchTaskInfoChanged(this.mPendingTaskInfoChanges.get(i), false);
        }
        this.mPendingTaskInfoChanges.clear();
    }

    void dispatchTaskInfoChanged(Task task, boolean force) {
        TaskOrganizerState state;
        int winCfgChanges;
        if (!force && this.mService.mWindowManager.mWindowPlacerLocked.isLayoutDeferred()) {
            this.mPendingTaskInfoChanges.remove(task);
            this.mPendingTaskInfoChanges.add(task);
            return;
        }
        ActivityManager.RunningTaskInfo lastInfo = this.mLastSentTaskInfos.get(task);
        if (this.mTmpTaskInfo == null) {
            this.mTmpTaskInfo = new ActivityManager.RunningTaskInfo();
        }
        this.mTmpTaskInfo.configuration.unset();
        task.fillTaskInfo(this.mTmpTaskInfo);
        boolean changed = (lastInfo != null && this.mTmpTaskInfo.topActivityType == lastInfo.topActivityType && this.mTmpTaskInfo.isResizeable == lastInfo.isResizeable && this.mTmpTaskInfo.pictureInPictureParams == lastInfo.pictureInPictureParams && ActivityManager.TaskDescription.equals(this.mTmpTaskInfo.taskDescription, lastInfo.taskDescription) && this.mTmpTaskInfo.requestedOrientation == lastInfo.requestedOrientation) ? false : true;
        if (!changed) {
            int cfgChanges = this.mTmpTaskInfo.configuration.diff(lastInfo.configuration);
            if ((536870912 & cfgChanges) != 0) {
                winCfgChanges = (int) this.mTmpTaskInfo.configuration.windowConfiguration.diff(lastInfo.configuration.windowConfiguration, true);
            } else {
                winCfgChanges = 0;
            }
            if ((winCfgChanges & 3) == 0) {
                cfgChanges &= -536870913;
            }
            changed = (REPORT_CONFIGS & cfgChanges) != 0;
        }
        if (!(changed || this.mTmpTaskInfo.numActivities != lastInfo.numActivities) && !force) {
            return;
        }
        ActivityManager.RunningTaskInfo newInfo = this.mTmpTaskInfo;
        this.mLastSentTaskInfos.put(task, this.mTmpTaskInfo);
        this.mTmpTaskInfo = null;
        if (task.isOrganized() && (state = this.mTaskOrganizerStates.get(task.mTaskOrganizer.asBinder())) != null) {
            state.mOrganizer.onTaskInfoChanged(task, newInfo);
        }
    }

    public WindowContainerToken getImeTarget(int displayId) {
        enforceStackPermission("getImeTarget()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent dc = this.mService.mWindowManager.mRoot.getDisplayContent(displayId);
                    if (dc != null && dc.mInputMethodTarget != null) {
                        Task task = dc.mInputMethodTarget.getTask();
                        if (task == null) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                            return null;
                        }
                        WindowContainerToken windowContainerToken = task.getRootTask().mRemoteToken.toWindowContainerToken();
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return windowContainerToken;
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

    public void setLaunchRoot(int displayId, WindowContainerToken token) {
        enforceStackPermission("setLaunchRoot()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    TaskDisplayArea defaultTaskDisplayArea = this.mService.mRootWindowContainer.getDisplayContent(displayId).getDefaultTaskDisplayArea();
                    if (defaultTaskDisplayArea == null) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    Task task = token == null ? null : WindowContainer.fromBinder(token.asBinder()).asTask();
                    if (task == null) {
                        defaultTaskDisplayArea.mLaunchRootTask = null;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    if (!task.mCreatedByOrganizer) {
                        throw new IllegalArgumentException("Attempt to set task not created by organizer as launch root task=" + task);
                    }
                    if (task.getDisplayArea() != null && task.getDisplayArea().getDisplayId() == displayId) {
                        task.getDisplayArea().mLaunchRootTask = task;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    } else {
                        throw new RuntimeException("Can't set launch root for display " + displayId + " to task on display " + task.getDisplayContent().getDisplayId());
                    }
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

    public List<ActivityManager.RunningTaskInfo> getChildTasks(WindowContainerToken parent, int[] activityTypes) {
        enforceStackPermission("getChildTasks()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (parent == null) {
                        throw new IllegalArgumentException("Can't get children of null parent");
                    }
                    WindowContainer container = WindowContainer.fromBinder(parent.asBinder());
                    if (container == null) {
                        Slog.e(TAG, "Can't get children of " + parent + " because it is not valid.");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return null;
                    }
                    Task task = container.asTask();
                    if (task == null) {
                        Slog.e(TAG, container + " is not a task...");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return null;
                    }
                    if (!task.mCreatedByOrganizer) {
                        Slog.w(TAG, "Can only get children of root tasks created via createRootTask");
                        WindowManagerService.resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(ident);
                        return null;
                    }
                    ArrayList<ActivityManager.RunningTaskInfo> out = new ArrayList<>();
                    for (int i = task.getChildCount() - 1; i >= 0; i--) {
                        Task child = task.getChildAt(i).asTask();
                        if (child != null && (activityTypes == null || ArrayUtils.contains(activityTypes, child.getActivityType()))) {
                            out.add(child.getTaskInfo());
                        }
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(ident);
                    return out;
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

    public List<ActivityManager.RunningTaskInfo> getRootTasks(int displayId, int[] activityTypes) {
        ArrayList<ActivityManager.RunningTaskInfo> out;
        enforceStackPermission("getRootTasks()");
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent dc = this.mService.mRootWindowContainer.getDisplayContent(displayId);
                    if (dc == null) {
                        throw new IllegalArgumentException("Display " + displayId + " doesn't exist");
                    }
                    out = new ArrayList<>();
                    for (int tdaNdx = dc.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                        TaskDisplayArea taskDisplayArea = dc.getTaskDisplayAreaAt(tdaNdx);
                        for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                            Task task = taskDisplayArea.getStackAt(sNdx);
                            if (activityTypes == null || ArrayUtils.contains(activityTypes, task.getActivityType())) {
                                out.add(task.getTaskInfo());
                            }
                        }
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
            return out;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void setInterceptBackPressedOnTaskRoot(ITaskOrganizer organizer, boolean interceptBackPressed) {
        enforceStackPermission("setInterceptBackPressedOnTaskRoot()");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    TaskOrganizerState state = this.mTaskOrganizerStates.get(organizer.asBinder());
                    if (state != null) {
                        state.setInterceptBackPressedOnTaskRoot(interceptBackPressed);
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

    public boolean handleInterceptBackPressedOnTaskRoot(Task task) {
        if (task == null || !task.isOrganized()) {
            return false;
        }
        TaskOrganizerState state = this.mTaskOrganizerStates.get(task.mTaskOrganizer.asBinder());
        if (state.mInterceptBackPressedOnTaskRoot) {
            state.mOrganizer.onBackPressedOnTaskRoot(task);
            return true;
        }
        return false;
    }

    public void dump(PrintWriter pw, String prefix) {
        String innerPrefix = prefix + "  ";
        pw.print(prefix);
        pw.println("TaskOrganizerController:");
        pw.print(innerPrefix);
        pw.println("Per windowing mode:");
        for (int i = 0; i < this.mTaskOrganizersForWindowingMode.size(); i++) {
            int windowingMode = this.mTaskOrganizersForWindowingMode.keyAt(i);
            List<IBinder> taskOrgs = this.mTaskOrganizersForWindowingMode.valueAt(i);
            pw.println(innerPrefix + "  " + WindowConfiguration.windowingModeToString(windowingMode) + ":");
            for (int j = 0; j < taskOrgs.size(); j++) {
                TaskOrganizerState state = this.mTaskOrganizerStates.get(taskOrgs.get(j));
                ArrayList<Task> tasks = state.mOrganizedTasks;
                pw.print(innerPrefix + "    ");
                pw.println(state.mOrganizer.mTaskOrganizer + " uid=" + state.mUid + ":");
                for (int k = 0; k < tasks.size(); k++) {
                    pw.println(innerPrefix + "      " + tasks.get(k));
                }
            }
        }
        pw.println();
    }
}
