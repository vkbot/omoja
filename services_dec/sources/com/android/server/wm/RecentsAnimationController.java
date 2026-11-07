package com.android.server.wm;

import android.app.ActivityManager;
import android.app.WindowConfiguration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseBooleanArray;
import android.util.proto.ProtoOutputStream;
import android.view.IRecentsAnimationController;
import android.view.IRecentsAnimationRunner;
import android.view.InputWindowHandle;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.wm.utils.InsetUtils;
import com.google.android.collect.Sets;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes2.dex */
public class RecentsAnimationController implements IBinder.DeathRecipient {
    private static final long FAILSAFE_DELAY = 1000;
    public static final int REORDER_KEEP_IN_PLACE = 0;
    public static final int REORDER_MOVE_TO_ORIGINAL_POSITION = 2;
    public static final int REORDER_MOVE_TO_TOP = 1;
    private static final String TAG = RecentsAnimationController.class.getSimpleName();
    private final RecentsAnimationCallbacks mCallbacks;
    private boolean mCancelDeferredWithScreenshot;
    private boolean mCancelOnNextTransitionStart;
    private boolean mCanceled;
    private DisplayContent mDisplayContent;
    private final int mDisplayId;
    private boolean mInputConsumerEnabled;
    private boolean mLinkedToDeathOfRunner;
    SurfaceAnimator mRecentScreenshotAnimator;
    private boolean mRequestDeferCancelUntilNextTransition;
    private IRecentsAnimationRunner mRunner;
    private final WindowManagerService mService;
    private ActivityRecord mTargetActivityRecord;
    private int mTargetActivityType;
    private final ArrayList<TaskAnimationAdapter> mPendingAnimations = new ArrayList<>();
    private final IntArray mPendingNewTaskTargets = new IntArray(0);
    private final ArrayList<WallpaperAnimationAdapter> mPendingWallpaperAnimations = new ArrayList<>();
    private boolean mWillFinishToHome = false;
    private final Runnable mFailsafeRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0$RecentsAnimationController();
        }
    };
    private Rect mMinimizedHomeBounds = new Rect();
    private boolean mPendingStart = true;
    private final Rect mTmpRect = new Rect();
    final WindowManagerInternal.AppTransitionListener mAppTransitionListener = new WindowManagerInternal.AppTransitionListener() { // from class: com.android.server.wm.RecentsAnimationController.1
        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public int onAppTransitionStartingLocked(int transit, long duration, long statusBarAnimationStartTime, long statusBarAnimationDuration) {
            continueDeferredCancel();
            return 0;
        }

        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public void onAppTransitionCancelledLocked(int transit) {
            continueDeferredCancel();
        }

        private void continueDeferredCancel() {
            RecentsAnimationController.this.mDisplayContent.mAppTransition.unregisterListener(this);
            if (!RecentsAnimationController.this.mCanceled && RecentsAnimationController.this.mCancelOnNextTransitionStart) {
                RecentsAnimationController.this.mCancelOnNextTransitionStart = false;
                RecentsAnimationController recentsAnimationController = RecentsAnimationController.this;
                recentsAnimationController.cancelAnimationWithScreenshot(recentsAnimationController.mCancelDeferredWithScreenshot);
            }
        }
    };
    private final IRecentsAnimationController mController = new IRecentsAnimationController.Stub() { // from class: com.android.server.wm.RecentsAnimationController.2
        public ActivityManager.TaskSnapshot screenshotTask(int taskId) {
            if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                long protoLogParam0 = taskId;
                boolean protoLogParam1 = RecentsAnimationController.this.mCanceled;
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 184362060, 13, null, Long.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1));
            }
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (RecentsAnimationController.this.mService.getWindowManagerLock()) {
                    if (RecentsAnimationController.this.mCanceled) {
                        Binder.restoreCallingIdentity(token);
                        return null;
                    }
                    for (int i = RecentsAnimationController.this.mPendingAnimations.size() - 1; i >= 0; i--) {
                        TaskAnimationAdapter adapter = (TaskAnimationAdapter) RecentsAnimationController.this.mPendingAnimations.get(i);
                        Task task = adapter.mTask;
                        if (task.mTaskId == taskId) {
                            TaskSnapshotController snapshotController = RecentsAnimationController.this.mService.mTaskSnapshotController;
                            ArraySet<Task> tasks = Sets.newArraySet(new Task[]{task});
                            snapshotController.snapshotTasks(tasks);
                            snapshotController.addSkipClosingAppSnapshotTasks(tasks);
                            ActivityManager.TaskSnapshot snapshot = snapshotController.getSnapshot(taskId, 0, false, false);
                            Binder.restoreCallingIdentity(token);
                            return snapshot;
                        }
                    }
                    Binder.restoreCallingIdentity(token);
                    return null;
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void finish(boolean moveHomeToTop, boolean sendUserLeaveHint) {
            if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                boolean protoLogParam1 = RecentsAnimationController.this.mCanceled;
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -445944810, 15, null, Boolean.valueOf(moveHomeToTop), Boolean.valueOf(protoLogParam1));
            }
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (RecentsAnimationController.this.mService.getWindowManagerLock()) {
                    if (!RecentsAnimationController.this.mCanceled) {
                        for (int i = RecentsAnimationController.this.mPendingNewTaskTargets.size() - 1; i >= 0; i--) {
                            RecentsAnimationController.this.removeTaskInternal(RecentsAnimationController.this.mPendingNewTaskTargets.get(i));
                        }
                        RecentsAnimationController.this.mCallbacks.onAnimationFinished(moveHomeToTop ? 1 : 2, sendUserLeaveHint);
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setAnimationTargetsBehindSystemBars(boolean behindSystemBars) throws RemoteException {
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (RecentsAnimationController.this.mService.getWindowManagerLock()) {
                    for (int i = RecentsAnimationController.this.mPendingAnimations.size() - 1; i >= 0; i--) {
                        Task task = ((TaskAnimationAdapter) RecentsAnimationController.this.mPendingAnimations.get(i)).mTask;
                        if (task.getActivityType() != RecentsAnimationController.this.mTargetActivityType) {
                            task.setCanAffectSystemUiFlags(behindSystemBars);
                        }
                    }
                    RecentsAnimationController.this.mService.mWindowPlacerLocked.requestTraversal();
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setInputConsumerEnabled(boolean enabled) {
            if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                String protoLogParam0 = String.valueOf(enabled);
                boolean protoLogParam1 = RecentsAnimationController.this.mCanceled;
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1219773477, 12, null, protoLogParam0, Boolean.valueOf(protoLogParam1));
            }
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (RecentsAnimationController.this.mService.getWindowManagerLock()) {
                    if (!RecentsAnimationController.this.mCanceled) {
                        RecentsAnimationController.this.mInputConsumerEnabled = enabled;
                        InputMonitor inputMonitor = RecentsAnimationController.this.mDisplayContent.getInputMonitor();
                        inputMonitor.updateInputWindowsLw(true);
                        RecentsAnimationController.this.mService.scheduleAnimationLocked();
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void hideCurrentInputMethod() {
            long token = Binder.clearCallingIdentity();
            try {
                InputMethodManagerInternal inputMethodManagerInternal = (InputMethodManagerInternal) LocalServices.getService(InputMethodManagerInternal.class);
                if (inputMethodManagerInternal != null) {
                    inputMethodManagerInternal.hideCurrentInputMethod(18);
                }
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void setDeferCancelUntilNextTransition(boolean defer, boolean screenshot) {
            synchronized (RecentsAnimationController.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    RecentsAnimationController.this.setDeferredCancel(defer, screenshot);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void cleanupScreenshot() {
            synchronized (RecentsAnimationController.this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (RecentsAnimationController.this.mRecentScreenshotAnimator != null) {
                        RecentsAnimationController.this.mRecentScreenshotAnimator.cancelAnimation();
                        RecentsAnimationController.this.mRecentScreenshotAnimator = null;
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        public void setWillFinishToHome(boolean willFinishToHome) {
            synchronized (RecentsAnimationController.this.mService.getWindowManagerLock()) {
                RecentsAnimationController.this.mWillFinishToHome = willFinishToHome;
            }
        }

        public boolean removeTask(int taskId) {
            boolean zRemoveTaskInternal;
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (RecentsAnimationController.this.mService.getWindowManagerLock()) {
                    zRemoveTaskInternal = RecentsAnimationController.this.removeTaskInternal(taskId);
                }
                Binder.restoreCallingIdentity(token);
                return zRemoveTaskInternal;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    };
    private final StatusBarManagerInternal mStatusBar = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);

    public interface RecentsAnimationCallbacks {
        void onAnimationFinished(int i, boolean z);
    }

    public @interface ReorderMode {
    }

    public /* synthetic */ void lambda$new$0$RecentsAnimationController() {
        cancelAnimation(this.mWillFinishToHome ? 1 : 2, "failSafeRunnable");
    }

    RecentsAnimationController(WindowManagerService service, IRecentsAnimationRunner remoteAnimationRunner, RecentsAnimationCallbacks callbacks, int displayId) {
        this.mService = service;
        this.mRunner = remoteAnimationRunner;
        this.mCallbacks = callbacks;
        this.mDisplayId = displayId;
        this.mDisplayContent = service.mRoot.getDisplayContent(displayId);
    }

    public void initialize(int targetActivityType, SparseBooleanArray recentTaskIds, ActivityRecord targetActivity) {
        this.mTargetActivityType = targetActivityType;
        this.mDisplayContent.mAppTransition.registerListenerLocked(this.mAppTransitionListener);
        ArrayList<Task> visibleTasks = this.mDisplayContent.getDefaultTaskDisplayArea().getVisibleTasks();
        ActivityStack targetStack = this.mDisplayContent.getDefaultTaskDisplayArea().getStack(0, targetActivityType);
        if (targetStack != null) {
            PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RecentsAnimationController.lambda$initialize$1((Task) obj, (ArrayList) obj2);
                }
            }, PooledLambda.__(Task.class), visibleTasks);
            targetStack.forAllLeafTasks(c, true);
            c.recycle();
        }
        int taskCount = visibleTasks.size();
        for (int i = 0; i < taskCount; i++) {
            Task task = visibleTasks.get(i);
            WindowConfiguration config = task.getWindowConfiguration();
            if (!config.tasksAreFloating() && config.getWindowingMode() != 3) {
                addAnimation(task, !recentTaskIds.get(task.mTaskId));
            }
        }
        if (this.mPendingAnimations.isEmpty()) {
            cancelAnimation(2, "initialize-noVisibleTasks");
            return;
        }
        try {
            linkToDeathOfRunner();
            if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                String protoLogParam0 = String.valueOf(targetActivity.getName());
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 1519757176, 0, null, protoLogParam0);
            }
            this.mTargetActivityRecord = targetActivity;
            if (targetActivity.windowsCanBeWallpaperTarget()) {
                this.mDisplayContent.pendingLayoutChanges |= 4;
                this.mDisplayContent.setLayoutNeeded();
            }
            ActivityStack rootHomeTask = this.mDisplayContent.getDefaultTaskDisplayArea().getRootHomeTask();
            this.mMinimizedHomeBounds = rootHomeTask != null ? rootHomeTask.getBounds() : null;
            this.mService.mWindowPlacerLocked.performSurfacePlacement();
            this.mDisplayContent.mFixedRotationTransitionListener.onStartRecentsAnimation(targetActivity);
            StatusBarManagerInternal statusBarManagerInternal = this.mStatusBar;
            if (statusBarManagerInternal != null) {
                statusBarManagerInternal.onRecentsAnimationStateChanged(true);
            }
        } catch (RemoteException e) {
            cancelAnimation(2, "initialize-failedToLinkToDeath");
        }
    }

    static /* synthetic */ void lambda$initialize$1(Task t, ArrayList outList) {
        if (outList.contains(t)) {
            return;
        }
        outList.add(t);
    }

    AnimationAdapter addAnimation(Task task, boolean isRecentTaskInvisible) {
        return addAnimation(task, isRecentTaskInvisible, false, null);
    }

    AnimationAdapter addAnimation(Task task, boolean isRecentTaskInvisible, boolean hidden, SurfaceAnimator.OnAnimationFinishedCallback finishedCallback) {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(task.getName());
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 302992539, 0, null, protoLogParam0);
        }
        TaskAnimationAdapter taskAdapter = new TaskAnimationAdapter(task, isRecentTaskInvisible);
        task.startAnimation(task.getPendingTransaction(), taskAdapter, hidden, 8, finishedCallback);
        task.commitPendingTransaction();
        this.mPendingAnimations.add(taskAdapter);
        return taskAdapter;
    }

    void removeAnimation(TaskAnimationAdapter taskAdapter) {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            long protoLogParam0 = taskAdapter.mTask.mTaskId;
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 83950285, 1, null, Long.valueOf(protoLogParam0));
        }
        taskAdapter.mTask.setCanAffectSystemUiFlags(true);
        taskAdapter.mCapturedFinishCallback.onAnimationFinished(taskAdapter.mLastAnimationType, taskAdapter);
        this.mPendingAnimations.remove(taskAdapter);
    }

    void removeWallpaperAnimation(WallpaperAnimationAdapter wallpaperAdapter) {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1768557332, 0, null, (Object[]) null);
        }
        wallpaperAdapter.getLeashFinishedCallback().onAnimationFinished(wallpaperAdapter.getLastAnimationType(), wallpaperAdapter);
        this.mPendingWallpaperAnimations.remove(wallpaperAdapter);
    }

    void startAnimation() {
        Rect minimizedHomeBounds;
        Rect contentInsets;
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            boolean protoLogParam0 = this.mPendingStart;
            boolean protoLogParam1 = this.mCanceled;
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 17696244, 15, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1));
        }
        boolean protoLogParam2 = this.mPendingStart;
        if (!protoLogParam2 || this.mCanceled) {
            return;
        }
        try {
            RemoteAnimationTarget[] appTargets = createAppAnimations();
            if (appTargets.length == 0) {
                cancelAnimation(2, "startAnimation-noAppWindows");
                return;
            }
            RemoteAnimationTarget[] wallpaperTargets = createWallpaperAnimations();
            this.mPendingStart = false;
            this.mDisplayContent.performLayout(false, false);
            if (this.mTargetActivityRecord != null && this.mTargetActivityRecord.inSplitScreenSecondaryWindowingMode()) {
                minimizedHomeBounds = this.mMinimizedHomeBounds;
            } else {
                minimizedHomeBounds = null;
            }
            if (this.mTargetActivityRecord != null && this.mTargetActivityRecord.findMainWindow() != null) {
                contentInsets = this.mTargetActivityRecord.findMainWindow().getContentInsets();
            } else {
                this.mService.getStableInsets(this.mDisplayId, this.mTmpRect);
                contentInsets = this.mTmpRect;
            }
            this.mRunner.onAnimationStart(this.mController, appTargets, wallpaperTargets, contentInsets, minimizedHomeBounds);
            if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                String protoLogParam3 = String.valueOf(this.mPendingAnimations.stream().map(new Function() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimationController$Qf54zw-ZSotFC4zX6WOgsNr8yHw
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Integer.valueOf(((RecentsAnimationController.TaskAnimationAdapter) obj).mTask.mTaskId);
                    }
                }).collect(Collectors.toList()));
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1207757583, 0, null, protoLogParam3);
            }
            if (this.mTargetActivityRecord != null) {
                ArrayMap<WindowContainer, Integer> reasons = new ArrayMap<>(1);
                reasons.put(this.mTargetActivityRecord, 5);
                this.mService.mAtmService.mStackSupervisor.getActivityMetricsLogger().notifyTransitionStarting(reasons);
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to start recents animation", e);
        }
    }

    void addTaskToTargets(Task task, SurfaceAnimator.OnAnimationFinishedCallback finishedCallback) {
        RemoteAnimationTarget target;
        if (this.mRunner == null || isAnimatingTask(task) || (target = createTaskRemoteAnimation(task, finishedCallback)) == null) {
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(target);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -172900257, 0, null, protoLogParam0);
        }
        try {
            this.mRunner.onTaskAppeared(target);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to report task appeared", e);
        }
    }

    private RemoteAnimationTarget createTaskRemoteAnimation(Task task, SurfaceAnimator.OnAnimationFinishedCallback finishedCallback) {
        SparseBooleanArray recentTaskIds = this.mService.mAtmService.getRecentTasks().getRecentTaskIds();
        TaskAnimationAdapter adapter = (TaskAnimationAdapter) addAnimation(task, !recentTaskIds.get(task.mTaskId), true, finishedCallback);
        this.mPendingNewTaskTargets.add(task.mTaskId);
        return adapter.createRemoteAnimationTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeTaskInternal(int taskId) {
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            TaskAnimationAdapter target = this.mPendingAnimations.get(i);
            if (target.mTask.mTaskId == taskId && target.mTask.isOnTop()) {
                removeAnimation(target);
                int taskIndex = this.mPendingNewTaskTargets.indexOf(taskId);
                if (taskIndex != -1) {
                    this.mPendingNewTaskTargets.remove(taskIndex);
                }
                return true;
            }
        }
        return false;
    }

    private RemoteAnimationTarget[] createAppAnimations() {
        ArrayList<RemoteAnimationTarget> targets = new ArrayList<>();
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            TaskAnimationAdapter taskAdapter = this.mPendingAnimations.get(i);
            RemoteAnimationTarget target = taskAdapter.createRemoteAnimationTarget();
            if (target != null) {
                targets.add(target);
            } else {
                removeAnimation(taskAdapter);
            }
        }
        int i2 = targets.size();
        return (RemoteAnimationTarget[]) targets.toArray(new RemoteAnimationTarget[i2]);
    }

    private RemoteAnimationTarget[] createWallpaperAnimations() {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 1495525537, 0, null, (Object[]) null);
        }
        return WallpaperAnimationAdapter.startWallpaperAnimations(this.mService, 0L, 0L, new Consumer() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimationController$j5cfzBzoc-2KFpZ5MiHSgWihq-Y
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$createWallpaperAnimations$3$RecentsAnimationController((WallpaperAnimationAdapter) obj);
            }
        }, this.mPendingWallpaperAnimations);
    }

    public /* synthetic */ void lambda$createWallpaperAnimations$3$RecentsAnimationController(WallpaperAnimationAdapter adapter) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mPendingWallpaperAnimations.remove(adapter);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void cancelAnimation(int reorderMode, String reason) {
        cancelAnimation(reorderMode, false, reason);
    }

    void cancelAnimationWithScreenshot(boolean screenshot) {
        cancelAnimation(0, screenshot, "stackOrderChanged");
    }

    private void cancelAnimation(int reorderMode, boolean screenshot, String reason) {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(reason);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 1525976603, 0, null, protoLogParam0);
        }
        synchronized (this.mService.getWindowManagerLock()) {
            if (this.mCanceled) {
                return;
            }
            this.mService.mH.removeCallbacks(this.mFailsafeRunnable);
            this.mCanceled = true;
            if (!screenshot) {
                try {
                    this.mRunner.onAnimationCanceled((ActivityManager.TaskSnapshot) null);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to cancel recents animation", e);
                }
                this.mCallbacks.onAnimationFinished(reorderMode, false);
            }
            Task task = this.mPendingAnimations.get(0).mTask;
            ActivityManager.TaskSnapshot taskSnapshot = screenshotRecentTask(task, reorderMode);
            try {
                this.mRunner.onAnimationCanceled(taskSnapshot);
            } catch (RemoteException e2) {
                Slog.e(TAG, "Failed to cancel recents animation", e2);
            }
            if (taskSnapshot == null) {
                this.mCallbacks.onAnimationFinished(reorderMode, false);
            }
        }
    }

    void setCancelOnNextTransitionStart() {
        this.mCancelOnNextTransitionStart = true;
    }

    void setDeferredCancel(boolean defer, boolean screenshot) {
        this.mRequestDeferCancelUntilNextTransition = defer;
        this.mCancelDeferredWithScreenshot = screenshot;
    }

    boolean shouldDeferCancelUntilNextTransition() {
        return this.mRequestDeferCancelUntilNextTransition;
    }

    boolean shouldDeferCancelWithScreenshot() {
        return this.mRequestDeferCancelUntilNextTransition && this.mCancelDeferredWithScreenshot;
    }

    ActivityManager.TaskSnapshot screenshotRecentTask(Task task, final int reorderMode) {
        TaskSnapshotController snapshotController = this.mService.mTaskSnapshotController;
        ArraySet<Task> tasks = Sets.newArraySet(new Task[]{task});
        snapshotController.snapshotTasks(tasks);
        snapshotController.addSkipClosingAppSnapshotTasks(tasks);
        ActivityManager.TaskSnapshot taskSnapshot = snapshotController.getSnapshot(task.mTaskId, task.mUserId, false, false);
        if (taskSnapshot == null) {
            return null;
        }
        TaskScreenshotAnimatable animatable = new TaskScreenshotAnimatable(this.mService.mSurfaceControlFactory, task, new SurfaceControl.ScreenshotGraphicBuffer(taskSnapshot.getSnapshot(), taskSnapshot.getColorSpace(), false));
        SurfaceAnimator surfaceAnimator = new SurfaceAnimator(animatable, new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk
            @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
            public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                this.f$0.lambda$screenshotRecentTask$4$RecentsAnimationController(reorderMode, i, animationAdapter);
            }
        }, this.mService);
        this.mRecentScreenshotAnimator = surfaceAnimator;
        surfaceAnimator.transferAnimation(task.mSurfaceAnimator);
        return taskSnapshot;
    }

    public /* synthetic */ void lambda$screenshotRecentTask$4$RecentsAnimationController(int reorderMode, int type, AnimationAdapter anim) {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1939358269, 0, null, (Object[]) null);
        }
        this.mCallbacks.onAnimationFinished(reorderMode, false);
    }

    void cleanupAnimation(int reorderMode) {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            long protoLogParam0 = this.mPendingAnimations.size();
            long protoLogParam1 = reorderMode;
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1434147454, 5, null, Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1));
        }
        if (reorderMode != 2) {
            this.mDisplayContent.mFixedRotationTransitionListener.notifyRecentsWillBeTop();
        }
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            TaskAnimationAdapter taskAdapter = this.mPendingAnimations.get(i);
            if (reorderMode == 1 || reorderMode == 0) {
                taskAdapter.mTask.dontAnimateDimExit();
            }
            removeAnimation(taskAdapter);
        }
        for (int i2 = this.mPendingWallpaperAnimations.size() - 1; i2 >= 0; i2--) {
            WallpaperAnimationAdapter wallpaperAdapter = this.mPendingWallpaperAnimations.get(i2);
            removeWallpaperAnimation(wallpaperAdapter);
        }
        this.mService.mH.removeCallbacks(this.mFailsafeRunnable);
        this.mDisplayContent.mAppTransition.unregisterListener(this.mAppTransitionListener);
        unlinkToDeathOfRunner();
        this.mRunner = null;
        this.mCanceled = true;
        SurfaceAnimator surfaceAnimator = this.mRecentScreenshotAnimator;
        if (surfaceAnimator != null) {
            surfaceAnimator.cancelAnimation();
            this.mRecentScreenshotAnimator = null;
        }
        InputMonitor inputMonitor = this.mDisplayContent.getInputMonitor();
        inputMonitor.updateInputWindowsLw(true);
        if (this.mTargetActivityRecord != null && (reorderMode == 1 || reorderMode == 0)) {
            this.mDisplayContent.mAppTransition.notifyAppTransitionFinishedLocked(this.mTargetActivityRecord.token);
        }
        this.mDisplayContent.mFixedRotationTransitionListener.onFinishRecentsAnimation();
        StatusBarManagerInternal statusBarManagerInternal = this.mStatusBar;
        if (statusBarManagerInternal != null) {
            statusBarManagerInternal.onRecentsAnimationStateChanged(false);
        }
    }

    void scheduleFailsafe() {
        this.mService.mH.postDelayed(this.mFailsafeRunnable, 1000L);
    }

    private void linkToDeathOfRunner() throws RemoteException {
        if (!this.mLinkedToDeathOfRunner) {
            this.mRunner.asBinder().linkToDeath(this, 0);
            this.mLinkedToDeathOfRunner = true;
        }
    }

    private void unlinkToDeathOfRunner() {
        if (this.mLinkedToDeathOfRunner) {
            this.mRunner.asBinder().unlinkToDeath(this, 0);
            this.mLinkedToDeathOfRunner = false;
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        cancelAnimation(2, "binderDied");
        synchronized (this.mService.getWindowManagerLock()) {
            InputMonitor inputMonitor = this.mDisplayContent.getInputMonitor();
            inputMonitor.destroyInputConsumer("recents_animation_input_consumer");
        }
    }

    void checkAnimationReady(WallpaperController wallpaperController) {
        if (this.mPendingStart) {
            boolean wallpaperReady = !isTargetOverWallpaper() || (wallpaperController.getWallpaperTarget() != null && wallpaperController.wallpaperTransitionReady());
            if (wallpaperReady) {
                this.mService.getRecentsAnimationController().startAnimation();
            }
        }
    }

    boolean isWallpaperVisible(WindowState w) {
        return w != null && w.mAttrs.type == 1 && ((w.mActivityRecord != null && this.mTargetActivityRecord == w.mActivityRecord) || isAnimatingTask(w.getTask())) && isTargetOverWallpaper() && w.isOnScreen();
    }

    boolean shouldApplyInputConsumer(ActivityRecord activity) {
        return this.mInputConsumerEnabled && activity != null && !isTargetApp(activity) && isAnimatingApp(activity);
    }

    boolean updateInputConsumerForApp(InputWindowHandle inputWindowHandle, boolean hasFocus) {
        WindowState targetAppMainWindow;
        ActivityRecord activityRecord = this.mTargetActivityRecord;
        if (activityRecord != null) {
            targetAppMainWindow = activityRecord.findMainWindow();
        } else {
            targetAppMainWindow = null;
        }
        if (targetAppMainWindow != null) {
            targetAppMainWindow.getBounds(this.mTmpRect);
            inputWindowHandle.hasFocus = hasFocus;
            inputWindowHandle.touchableRegion.set(this.mTmpRect);
            return true;
        }
        return false;
    }

    boolean isTargetApp(ActivityRecord activity) {
        ActivityRecord activityRecord = this.mTargetActivityRecord;
        return activityRecord != null && activity == activityRecord;
    }

    private boolean isTargetOverWallpaper() {
        ActivityRecord activityRecord = this.mTargetActivityRecord;
        if (activityRecord == null) {
            return false;
        }
        return activityRecord.windowsCanBeWallpaperTarget();
    }

    boolean isAnimatingTask(Task task) {
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            if (task == this.mPendingAnimations.get(i).mTask) {
                return true;
            }
        }
        return false;
    }

    boolean isAnimatingWallpaper(WallpaperWindowToken token) {
        for (int i = this.mPendingWallpaperAnimations.size() - 1; i >= 0; i--) {
            if (token == this.mPendingWallpaperAnimations.get(i).getToken()) {
                return true;
            }
        }
        return false;
    }

    private boolean isAnimatingApp(ActivityRecord activity) {
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            Task task = this.mPendingAnimations.get(i).mTask;
            PooledFunction f = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Boolean.valueOf(((ActivityRecord) obj) == ((ActivityRecord) obj2));
                }
            }, activity, PooledLambda.__(ActivityRecord.class));
            boolean isAnimatingApp = task.forAllActivities((Function<ActivityRecord, Boolean>) f);
            f.recycle();
            if (isAnimatingApp) {
                return true;
            }
        }
        return false;
    }

    boolean shouldIgnoreForAccessibility(WindowState windowState) {
        Task task = windowState.getTask();
        return (task == null || !isAnimatingTask(task) || isTargetApp(windowState.mActivityRecord)) ? false : true;
    }

    void linkFixedRotationTransformIfNeeded(WindowToken wallpaper) {
        ActivityRecord activityRecord = this.mTargetActivityRecord;
        if (activityRecord == null) {
            return;
        }
        wallpaper.linkFixedRotationTransform(activityRecord);
    }

    class TaskAnimationAdapter implements AnimationAdapter {
        private SurfaceAnimator.OnAnimationFinishedCallback mCapturedFinishCallback;
        private SurfaceControl mCapturedLeash;
        private final boolean mIsRecentTaskInvisible;
        private int mLastAnimationType;
        private RemoteAnimationTarget mTarget;
        private final Task mTask;
        private final Rect mBounds = new Rect();
        private Rect mLocalBounds = new Rect();

        TaskAnimationAdapter(Task task, boolean isRecentTaskInvisible) {
            this.mTask = task;
            this.mIsRecentTaskInvisible = isRecentTaskInvisible;
            this.mBounds.set(task.getBounds());
            this.mLocalBounds.set(this.mBounds);
            Point tmpPos = new Point();
            this.mTask.getRelativePosition(tmpPos);
            this.mLocalBounds.offsetTo(tmpPos.x, tmpPos.y);
        }

        RemoteAnimationTarget createRemoteAnimationTarget() {
            WindowState mainWindow;
            int mode;
            ActivityRecord topApp = this.mTask.getTopVisibleActivity();
            if (topApp != null) {
                mainWindow = topApp.findMainWindow();
            } else {
                mainWindow = null;
            }
            if (mainWindow == null) {
                return null;
            }
            Rect insets = new Rect();
            mainWindow.getContentInsets(insets);
            InsetUtils.addInsets(insets, mainWindow.mActivityRecord.getLetterboxInsets());
            if (topApp.getActivityType() == RecentsAnimationController.this.mTargetActivityType) {
                mode = 0;
            } else {
                mode = 1;
            }
            RemoteAnimationTarget remoteAnimationTarget = new RemoteAnimationTarget(this.mTask.mTaskId, mode, this.mCapturedLeash, !topApp.fillsParent(), mainWindow.mWinAnimator.mLastClipRect, insets, this.mTask.getPrefixOrderIndex(), new Point(this.mBounds.left, this.mBounds.top), this.mLocalBounds, this.mBounds, this.mTask.getWindowConfiguration(), this.mIsRecentTaskInvisible, (SurfaceControl) null, (Rect) null);
            this.mTarget = remoteAnimationTarget;
            return remoteAnimationTarget;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public boolean getShowWallpaper() {
            return false;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void startAnimation(SurfaceControl animationLeash, SurfaceControl.Transaction t, int type, SurfaceAnimator.OnAnimationFinishedCallback finishCallback) {
            t.setPosition(animationLeash, this.mLocalBounds.left, this.mLocalBounds.top);
            RecentsAnimationController.this.mTmpRect.set(this.mLocalBounds);
            RecentsAnimationController.this.mTmpRect.offsetTo(0, 0);
            t.setWindowCrop(animationLeash, RecentsAnimationController.this.mTmpRect);
            this.mCapturedLeash = animationLeash;
            this.mCapturedFinishCallback = finishCallback;
            this.mLastAnimationType = type;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void onAnimationCancelled(SurfaceControl animationLeash) {
            RecentsAnimationController.this.cancelAnimation(2, "taskAnimationAdapterCanceled");
        }

        @Override // com.android.server.wm.AnimationAdapter
        public long getDurationHint() {
            return 0L;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public long getStatusBarTransitionsStartTime() {
            return SystemClock.uptimeMillis();
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void dump(PrintWriter pw, String prefix) {
            pw.print(prefix);
            pw.println("task=" + this.mTask);
            if (this.mTarget != null) {
                pw.print(prefix);
                pw.println("Target:");
                this.mTarget.dump(pw, prefix + "  ");
            } else {
                pw.print(prefix);
                pw.println("Target: null");
            }
            pw.println("mIsRecentTaskInvisible=" + this.mIsRecentTaskInvisible);
            pw.println("mLocalBounds=" + this.mLocalBounds);
            pw.println("mBounds=" + this.mBounds);
            pw.println("mIsRecentTaskInvisible=" + this.mIsRecentTaskInvisible);
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void dumpDebug(ProtoOutputStream proto) {
            long token = proto.start(1146756268034L);
            RemoteAnimationTarget remoteAnimationTarget = this.mTarget;
            if (remoteAnimationTarget != null) {
                remoteAnimationTarget.dumpDebug(proto, 1146756268033L);
            }
            proto.end(token);
        }
    }

    public void dump(PrintWriter pw, String prefix) {
        String innerPrefix = prefix + "  ";
        pw.print(prefix);
        pw.println(RecentsAnimationController.class.getSimpleName() + ":");
        pw.print(innerPrefix);
        pw.println("mPendingStart=" + this.mPendingStart);
        pw.print(innerPrefix);
        pw.println("mPendingAnimations=" + this.mPendingAnimations.size());
        pw.print(innerPrefix);
        pw.println("mCanceled=" + this.mCanceled);
        pw.print(innerPrefix);
        pw.println("mInputConsumerEnabled=" + this.mInputConsumerEnabled);
        pw.print(innerPrefix);
        pw.println("mTargetActivityRecord=" + this.mTargetActivityRecord);
        pw.print(innerPrefix);
        pw.println("isTargetOverWallpaper=" + isTargetOverWallpaper());
        pw.print(innerPrefix);
        pw.println("mRequestDeferCancelUntilNextTransition=" + this.mRequestDeferCancelUntilNextTransition);
        pw.print(innerPrefix);
        pw.println("mCancelOnNextTransitionStart=" + this.mCancelOnNextTransitionStart);
        pw.print(innerPrefix);
        pw.println("mCancelDeferredWithScreenshot=" + this.mCancelDeferredWithScreenshot);
    }
}
