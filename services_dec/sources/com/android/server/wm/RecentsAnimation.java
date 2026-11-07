package com.android.server.wm;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Intent;
import android.os.RemoteException;
import android.os.Trace;
import android.util.Slog;
import android.view.IRecentsAnimationRunner;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.util.function.pooled.PooledPredicate;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.util.function.BiPredicate;

/* JADX INFO: loaded from: classes2.dex */
class RecentsAnimation implements RecentsAnimationController.RecentsAnimationCallbacks, TaskDisplayArea.OnStackOrderChangedListener {
    private static final String TAG = RecentsAnimation.class.getSimpleName();
    private final ActivityStartController mActivityStartController;
    private final WindowProcessController mCaller;
    private final TaskDisplayArea mDefaultTaskDisplayArea;
    private ActivityRecord mLaunchedTargetActivity;
    private final ComponentName mRecentsComponent;
    private final String mRecentsFeatureId;
    private final int mRecentsUid;
    private ActivityStack mRestoreTargetBehindStack;
    private final ActivityTaskManagerService mService;
    private final ActivityStackSupervisor mStackSupervisor;
    private final int mTargetActivityType;
    private final Intent mTargetIntent;
    private final int mUserId;
    private final WindowManagerService mWindowManager;

    RecentsAnimation(ActivityTaskManagerService atm, ActivityStackSupervisor stackSupervisor, ActivityStartController activityStartController, WindowManagerService wm, Intent targetIntent, ComponentName recentsComponent, String recentsFeatureId, int recentsUid, WindowProcessController caller) {
        int i;
        this.mService = atm;
        this.mStackSupervisor = stackSupervisor;
        this.mDefaultTaskDisplayArea = atm.mRootWindowContainer.getDefaultTaskDisplayArea();
        this.mActivityStartController = activityStartController;
        this.mWindowManager = wm;
        this.mTargetIntent = targetIntent;
        this.mRecentsComponent = recentsComponent;
        this.mRecentsFeatureId = recentsFeatureId;
        this.mRecentsUid = recentsUid;
        this.mCaller = caller;
        this.mUserId = atm.getCurrentUserId();
        if (targetIntent.getComponent() != null && recentsComponent.equals(targetIntent.getComponent())) {
            i = 3;
        } else {
            i = 2;
        }
        this.mTargetActivityType = i;
    }

    void preloadRecentsActivity() {
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.mTargetIntent);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -106400104, 0, null, protoLogParam0);
        }
        ActivityStack targetStack = this.mDefaultTaskDisplayArea.getStack(0, this.mTargetActivityType);
        ActivityRecord targetActivity = getTargetActivity(targetStack);
        if (targetActivity != null) {
            if (targetActivity.mVisibleRequested || targetActivity.isTopRunningActivity()) {
                return;
            }
            if (targetActivity.attachedToProcess()) {
                targetActivity.ensureActivityConfiguration(0, false, true);
                if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                    String protoLogParam1 = String.valueOf(targetActivity.getConfiguration());
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1156118957, 0, null, protoLogParam1);
                }
            }
        } else {
            startRecentsActivityInBackground("preloadRecents");
            ActivityStack targetStack2 = this.mDefaultTaskDisplayArea.getStack(0, this.mTargetActivityType);
            targetActivity = getTargetActivity(targetStack2);
            if (targetActivity == null) {
                Slog.w(TAG, "Cannot start " + this.mTargetIntent);
                return;
            }
        }
        if (!targetActivity.attachedToProcess()) {
            if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 644675193, 0, null, (Object[]) null);
            }
            this.mStackSupervisor.startSpecificActivity(targetActivity, false, false);
            if (targetActivity.getDisplayContent() != null) {
                targetActivity.getDisplayContent().mUnknownAppVisibilityController.appRemovedOrHidden(targetActivity);
            }
        }
        if (!targetActivity.isState(ActivityStack.ActivityState.STOPPING, ActivityStack.ActivityState.STOPPED)) {
            targetActivity.addToStopping(true, true, "preloadRecents");
        }
    }

    void startRecentsActivity(IRecentsAnimationRunner recentsAnimationRunner) throws Exception {
        ActivityStack targetStack;
        ActivityRecord targetActivity;
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.mTargetIntent);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1413901262, 0, null, protoLogParam0);
        }
        Trace.traceBegin(32L, "RecentsAnimation#startRecentsActivity");
        ActivityStack targetStack2 = this.mDefaultTaskDisplayArea.getStack(0, this.mTargetActivityType);
        ActivityRecord targetActivity2 = getTargetActivity(targetStack2);
        boolean hasExistingActivity = targetActivity2 != null;
        if (hasExistingActivity) {
            ActivityStack stackAbove = TaskDisplayArea.getStackAbove(targetStack2);
            this.mRestoreTargetBehindStack = stackAbove;
            if (stackAbove == null) {
                notifyAnimationCancelBeforeStart(recentsAnimationRunner);
                if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                    String protoLogParam1 = String.valueOf(targetStack2);
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 474000473, 0, null, protoLogParam1);
                    return;
                }
                return;
            }
        }
        if (targetActivity2 == null || !targetActivity2.mVisibleRequested) {
            this.mService.mRootWindowContainer.sendPowerHintForLaunchStartIfNeeded(true, targetActivity2);
        }
        ActivityMetricsLogger.LaunchingState launchingState = this.mStackSupervisor.getActivityMetricsLogger().notifyActivityLaunching(this.mTargetIntent);
        WindowProcessController windowProcessController = this.mCaller;
        if (windowProcessController != null) {
            windowProcessController.setRunningRecentsAnimation(true);
        }
        this.mService.deferWindowLayout();
        try {
            try {
                if (hasExistingActivity) {
                    this.mDefaultTaskDisplayArea.moveStackBehindBottomMostVisibleStack(targetStack2);
                    if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                        String protoLogParam2 = String.valueOf(targetStack2);
                        String protoLogParam3 = String.valueOf(TaskDisplayArea.getStackAbove(targetStack2));
                        ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 853091290, 0, null, protoLogParam2, protoLogParam3);
                    }
                    Task task = targetActivity2.getTask();
                    if (targetStack2.getTopMostTask() != task) {
                        targetStack2.positionChildAtTop(task);
                    }
                    targetStack = targetStack2;
                    targetActivity = targetActivity2;
                } else {
                    startRecentsActivityInBackground("startRecentsActivity_noTargetActivity");
                    ActivityStack targetStack3 = this.mDefaultTaskDisplayArea.getStack(0, this.mTargetActivityType);
                    ActivityRecord targetActivity3 = getTargetActivity(targetStack3);
                    this.mDefaultTaskDisplayArea.moveStackBehindBottomMostVisibleStack(targetStack3);
                    if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                        String protoLogParam4 = String.valueOf(targetStack3);
                        String protoLogParam5 = String.valueOf(TaskDisplayArea.getStackAbove(targetStack3));
                        ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 853091290, 0, null, protoLogParam4, protoLogParam5);
                    }
                    this.mWindowManager.prepareAppTransition(0, false);
                    this.mWindowManager.executeAppTransition();
                    if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                        String protoLogParam6 = String.valueOf(this.mTargetIntent);
                        ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 646155519, 0, null, protoLogParam6);
                    }
                    targetStack = targetStack3;
                    targetActivity = targetActivity3;
                }
                try {
                    targetActivity.mLaunchTaskBehind = true;
                    this.mLaunchedTargetActivity = targetActivity;
                    targetActivity.intent.replaceExtras(this.mTargetIntent);
                    this.mWindowManager.cancelRecentsAnimation(2, "startRecentsActivity");
                    ActivityRecord targetActivity4 = targetActivity;
                    try {
                        this.mWindowManager.initializeRecentsAnimation(this.mTargetActivityType, recentsAnimationRunner, this, this.mDefaultTaskDisplayArea.getDisplayId(), this.mStackSupervisor.mRecentTasks.getRecentTaskIds(), targetActivity4);
                        this.mService.mRootWindowContainer.ensureActivitiesVisible(null, 0, true);
                        try {
                            this.mStackSupervisor.getActivityMetricsLogger().notifyActivityLaunched(launchingState, 2, targetActivity4);
                            this.mDefaultTaskDisplayArea.registerStackOrderChangedListener(this);
                            this.mService.continueWindowLayout();
                            Trace.traceEnd(32L);
                        } catch (Exception e) {
                            e = e;
                            Slog.e(TAG, "Failed to start recents activity", e);
                            throw e;
                        } catch (Throwable th) {
                            e = th;
                            this.mService.continueWindowLayout();
                            Trace.traceEnd(32L);
                            throw e;
                        }
                    } catch (Exception e2) {
                        e = e2;
                    } catch (Throwable th2) {
                        e = th2;
                    }
                } catch (Exception e3) {
                    e = e3;
                } catch (Throwable th3) {
                    e = th3;
                }
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Throwable th4) {
            e = th4;
        }
    }

    private void finishAnimation(final int reorderMode, final boolean sendUserLeaveHint) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                    String protoLogParam0 = String.valueOf(this.mWindowManager.getRecentsAnimationController());
                    long protoLogParam1 = reorderMode;
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 765395228, 4, null, protoLogParam0, Long.valueOf(protoLogParam1));
                }
                this.mDefaultTaskDisplayArea.unregisterStackOrderChangedListener(this);
                final RecentsAnimationController controller = this.mWindowManager.getRecentsAnimationController();
                if (controller == null) {
                    return;
                }
                if (reorderMode != 0) {
                    this.mService.mRootWindowContainer.sendPowerHintForLaunchEndIfNeeded();
                }
                if (reorderMode == 1) {
                    this.mService.stopAppSwitches();
                }
                if (this.mCaller != null) {
                    this.mCaller.setRunningRecentsAnimation(false);
                }
                this.mWindowManager.inSurfaceTransaction(new Runnable() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$finishAnimation$0$RecentsAnimation(reorderMode, sendUserLeaveHint, controller);
                    }
                });
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public /* synthetic */ void lambda$finishAnimation$0$RecentsAnimation(int reorderMode, boolean sendUserLeaveHint, RecentsAnimationController controller) {
        Trace.traceBegin(32L, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction");
        this.mService.deferWindowLayout();
        try {
            try {
                this.mWindowManager.cleanupRecentsAnimation(reorderMode);
                ActivityStack targetStack = this.mDefaultTaskDisplayArea.getStack(0, this.mTargetActivityType);
                ActivityRecord targetActivity = targetStack != null ? targetStack.isInTask(this.mLaunchedTargetActivity) : null;
                if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                    String protoLogParam0 = String.valueOf(targetStack);
                    String protoLogParam1 = String.valueOf(targetActivity);
                    String protoLogParam2 = String.valueOf(this.mRestoreTargetBehindStack);
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -7343917, 0, null, protoLogParam0, protoLogParam1, protoLogParam2);
                }
                if (targetActivity == null) {
                    this.mService.continueWindowLayout();
                    if (this.mWindowManager.mRoot.isLayoutNeeded()) {
                        this.mWindowManager.mRoot.performSurfacePlacement();
                    }
                    Trace.traceEnd(32L);
                    return;
                }
                targetActivity.mLaunchTaskBehind = false;
                if (reorderMode == 1) {
                    this.mStackSupervisor.mNoAnimActivities.add(targetActivity);
                    if (sendUserLeaveHint) {
                        this.mStackSupervisor.mUserLeaving = true;
                        targetStack.moveTaskToFront(targetActivity.getTask(), true, null, targetActivity.appTimeTracker, "RecentsAnimation.onAnimationFinished()");
                    } else {
                        targetStack.moveToFront("RecentsAnimation.onAnimationFinished()");
                    }
                    if (ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS.isLogToAny()) {
                        ActivityStack topStack = getTopNonAlwaysOnTopStack();
                        if (topStack != targetStack && ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                            String protoLogParam3 = String.valueOf(targetStack);
                            String protoLogParam4 = String.valueOf(topStack);
                            ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 1762317752, 0, null, protoLogParam3, protoLogParam4);
                        }
                    }
                } else {
                    if (reorderMode != 2) {
                        if (!controller.shouldDeferCancelWithScreenshot() && !targetStack.isFocusedStackOnDisplay()) {
                            targetStack.ensureActivitiesVisible(null, 0, false);
                        }
                        this.mService.continueWindowLayout();
                        if (this.mWindowManager.mRoot.isLayoutNeeded()) {
                            this.mWindowManager.mRoot.performSurfacePlacement();
                        }
                        Trace.traceEnd(32L);
                        return;
                    }
                    TaskDisplayArea taskDisplayArea = targetActivity.getDisplayArea();
                    taskDisplayArea.moveStackBehindStack(targetStack, this.mRestoreTargetBehindStack);
                    if (ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS.isLogToAny()) {
                        ActivityStack aboveTargetStack = TaskDisplayArea.getStackAbove(targetStack);
                        if (this.mRestoreTargetBehindStack != null && aboveTargetStack != this.mRestoreTargetBehindStack && ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                            String protoLogParam5 = String.valueOf(targetStack);
                            String protoLogParam6 = String.valueOf(this.mRestoreTargetBehindStack);
                            String protoLogParam7 = String.valueOf(aboveTargetStack);
                            ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 495032901, 0, null, protoLogParam5, protoLogParam6, protoLogParam7);
                        }
                    }
                }
                this.mWindowManager.prepareAppTransition(0, false);
                this.mService.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
                this.mService.mRootWindowContainer.resumeFocusedStacksTopActivities();
                this.mWindowManager.executeAppTransition();
                Task rootTask = targetStack.getRootTask();
                if (rootTask.isOrganized()) {
                    this.mService.mTaskOrganizerController.dispatchTaskInfoChanged(rootTask, true);
                }
                this.mService.continueWindowLayout();
                if (this.mWindowManager.mRoot.isLayoutNeeded()) {
                    this.mWindowManager.mRoot.performSurfacePlacement();
                }
                Trace.traceEnd(32L);
            } catch (Exception e) {
                Slog.e(TAG, "Failed to clean up recents activity", e);
                throw e;
            }
        } catch (Throwable th) {
            this.mService.continueWindowLayout();
            if (this.mWindowManager.mRoot.isLayoutNeeded()) {
                this.mWindowManager.mRoot.performSurfacePlacement();
            }
            Trace.traceEnd(32L);
            throw th;
        }
    }

    @Override // com.android.server.wm.RecentsAnimationController.RecentsAnimationCallbacks
    public void onAnimationFinished(int reorderMode, boolean sendUserLeaveHint) {
        finishAnimation(reorderMode, sendUserLeaveHint);
    }

    @Override // com.android.server.wm.TaskDisplayArea.OnStackOrderChangedListener
    public void onStackOrderChanged(ActivityStack stack) {
        RecentsAnimationController controller;
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(stack);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 490877640, 0, null, protoLogParam0);
        }
        if (this.mDefaultTaskDisplayArea.getIndexOf(stack) == -1 || !stack.shouldBeVisible(null) || (controller = this.mWindowManager.getRecentsAnimationController()) == null) {
            return;
        }
        if ((!controller.isAnimatingTask(stack.getTopMostTask()) || controller.isTargetApp(stack.getTopNonFinishingActivity())) && controller.shouldDeferCancelUntilNextTransition()) {
            this.mWindowManager.prepareAppTransition(0, false);
            controller.setCancelOnNextTransitionStart();
        }
    }

    private void startRecentsActivityInBackground(String reason) {
        ActivityOptions options = ActivityOptions.makeBasic();
        options.setLaunchActivityType(this.mTargetActivityType);
        options.setAvoidMoveToFront();
        this.mTargetIntent.addFlags(268500992);
        this.mActivityStartController.obtainStarter(this.mTargetIntent, reason).setCallingUid(this.mRecentsUid).setCallingPackage(this.mRecentsComponent.getPackageName()).setCallingFeatureId(this.mRecentsFeatureId).setActivityOptions(new SafeActivityOptions(options)).setUserId(this.mUserId).execute();
    }

    static void notifyAnimationCancelBeforeStart(IRecentsAnimationRunner recentsAnimationRunner) {
        try {
            recentsAnimationRunner.onAnimationCanceled((ActivityManager.TaskSnapshot) null);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to cancel recents animation before start", e);
        }
    }

    private ActivityStack getTopNonAlwaysOnTopStack() {
        for (int i = this.mDefaultTaskDisplayArea.getStackCount() - 1; i >= 0; i--) {
            ActivityStack s = this.mDefaultTaskDisplayArea.getStackAt(i);
            if (!s.getWindowConfiguration().isAlwaysOnTop()) {
                return s;
            }
        }
        return null;
    }

    private ActivityRecord getTargetActivity(ActivityStack targetStack) {
        if (targetStack == null) {
            return null;
        }
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$RecentsAnimation$L-oo1O0uvOIOr4MDh9QYSeVU09U
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return ((RecentsAnimation) obj).matchesTarget((Task) obj2);
            }
        }, this, PooledLambda.__(Task.class));
        Task task = targetStack.getTask(p);
        p.recycle();
        if (task != null) {
            return task.getTopNonFinishingActivity();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean matchesTarget(Task task) {
        return task.mUserId == this.mUserId && task.getBaseIntent().getComponent().equals(this.mTargetIntent.getComponent());
    }
}
