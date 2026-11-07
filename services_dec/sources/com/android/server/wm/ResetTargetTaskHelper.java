package com.android.server.wm;

import android.app.ActivityOptions;
import android.os.Debug;
import android.util.Slog;
import com.android.internal.util.function.TriFunction;
import com.android.internal.util.function.pooled.PooledFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import java.util.ArrayList;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
class ResetTargetTaskHelper {
    private int mActivityReparentPosition;
    private boolean mCanMoveOptions;
    private boolean mForceReset;
    private ActivityRecord mRoot;
    private ActivityStack mTargetStack;
    private Task mTargetTask;
    private boolean mTargetTaskFound;
    private Task mTask;
    private ActivityOptions mTopOptions;
    private ArrayList<ActivityRecord> mResultActivities = new ArrayList<>();
    private ArrayList<ActivityRecord> mAllActivities = new ArrayList<>();
    private ArrayList<ActivityRecord> mPendingReparentActivities = new ArrayList<>();

    ResetTargetTaskHelper() {
    }

    private void reset(Task task) {
        this.mTask = task;
        this.mRoot = null;
        this.mCanMoveOptions = true;
        this.mTopOptions = null;
        this.mResultActivities.clear();
        this.mAllActivities.clear();
    }

    ActivityOptions process(Task targetTask, boolean forceReset) {
        this.mForceReset = forceReset;
        this.mTargetTask = targetTask;
        this.mTargetTaskFound = false;
        this.mTargetStack = targetTask.getStack();
        this.mActivityReparentPosition = -1;
        Consumer<Task> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ResetTargetTaskHelper) obj).processTask((Task) obj2);
            }
        }, this, PooledLambda.__(Task.class));
        targetTask.mWmService.mRoot.forAllLeafTasks(consumerObtainConsumer, true);
        consumerObtainConsumer.recycle();
        processPendingReparentActivities();
        reset(null);
        return this.mTopOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processTask(Task task) {
        reset(task);
        ActivityRecord rootActivity = task.getRootActivity(true);
        this.mRoot = rootActivity;
        if (rootActivity == null) {
            return;
        }
        boolean isTargetTask = task == this.mTargetTask;
        if (isTargetTask) {
            this.mTargetTaskFound = true;
        }
        PooledFunction f = PooledLambda.obtainFunction(new TriFunction() { // from class: com.android.server.wm.-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(((ResetTargetTaskHelper) obj).processActivity((ActivityRecord) obj2, ((Boolean) obj3).booleanValue()));
            }
        }, this, PooledLambda.__(ActivityRecord.class), Boolean.valueOf(isTargetTask));
        task.forAllActivities((Function<ActivityRecord, Boolean>) f);
        f.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processActivity(ActivityRecord r, boolean isTargetTask) {
        ActivityRecord p;
        if (r == this.mRoot) {
            return true;
        }
        this.mAllActivities.add(r);
        int flags = r.info.flags;
        boolean finishOnTaskLaunch = (flags & 2) != 0;
        boolean allowTaskReparenting = (flags & 64) != 0;
        boolean clearWhenTaskReset = (r.intent.getFlags() & 524288) != 0;
        if (isTargetTask) {
            if (!finishOnTaskLaunch && !clearWhenTaskReset) {
                if (r.resultTo != null) {
                    this.mResultActivities.add(r);
                    return false;
                }
                if (allowTaskReparenting && r.taskAffinity != null && !r.taskAffinity.equals(this.mTask.affinity)) {
                    this.mPendingReparentActivities.add(r);
                    return false;
                }
            }
            if (this.mForceReset || finishOnTaskLaunch || clearWhenTaskReset) {
                if (clearWhenTaskReset) {
                    finishActivities(this.mAllActivities, "clearWhenTaskReset");
                } else {
                    this.mResultActivities.add(r);
                    finishActivities(this.mResultActivities, "reset-task");
                }
                this.mResultActivities.clear();
                return false;
            }
            this.mResultActivities.clear();
            return false;
        }
        if (r.resultTo != null) {
            this.mResultActivities.add(r);
            return false;
        }
        if (this.mTargetTaskFound && allowTaskReparenting && this.mTargetTask.affinity != null && this.mTargetTask.affinity.equals(r.taskAffinity)) {
            this.mResultActivities.add(r);
            if (this.mForceReset || finishOnTaskLaunch) {
                finishActivities(this.mResultActivities, "move-affinity");
                return false;
            }
            if (this.mActivityReparentPosition == -1) {
                this.mActivityReparentPosition = this.mTargetTask.getChildCount();
            }
            processResultActivities(r, this.mTargetTask, this.mActivityReparentPosition, false, false);
            if (r.info.launchMode == 1 && (p = this.mTargetTask.getActivityBelow(r)) != null && p.intent.getComponent().equals(r.intent.getComponent())) {
                p.finishIfPossible("replace", false);
            }
        }
        return false;
    }

    private void finishActivities(ArrayList<ActivityRecord> activities, String reason) {
        boolean noOptions = this.mCanMoveOptions;
        while (!activities.isEmpty()) {
            ActivityRecord p = activities.remove(0);
            if (!p.finishing) {
                noOptions = takeOption(p, noOptions);
                p.finishIfPossible(reason, false);
            }
        }
    }

    private void processResultActivities(ActivityRecord target, Task targetTask, int position, boolean ignoreFinishing, boolean takeOptions) {
        boolean noOptions = this.mCanMoveOptions;
        while (!this.mResultActivities.isEmpty()) {
            ActivityRecord p = this.mResultActivities.remove(0);
            if (!ignoreFinishing || !p.finishing) {
                if (takeOptions) {
                    noOptions = takeOption(p, noOptions);
                }
                Slog.i("ActivityTaskManager", "Removing activity " + p + " from task=" + this.mTask + " adding to task=" + targetTask + " Callers=" + Debug.getCallers(4));
                p.reparent(targetTask, position, "resetTargetTaskIfNeeded");
            }
        }
    }

    private void processPendingReparentActivities() {
        if (this.mPendingReparentActivities.isEmpty()) {
            return;
        }
        ActivityTaskManagerService atmService = this.mTargetStack.mAtmService;
        TaskDisplayArea taskDisplayArea = this.mTargetStack.getDisplayArea();
        boolean singleTaskInstanceDisplay = taskDisplayArea.mDisplayContent.isSingleTaskInstance();
        if (singleTaskInstanceDisplay) {
            taskDisplayArea = atmService.mRootWindowContainer.getDefaultTaskDisplayArea();
        }
        int windowingMode = this.mTargetStack.getWindowingMode();
        int activityType = this.mTargetStack.getActivityType();
        while (!this.mPendingReparentActivities.isEmpty()) {
            ActivityRecord r = this.mPendingReparentActivities.remove(0);
            boolean alwaysCreateTask = DisplayContent.alwaysCreateStack(windowingMode, activityType);
            Task task = alwaysCreateTask ? taskDisplayArea.getBottomMostTask() : this.mTargetStack.getBottomMostTask();
            Task targetTask = null;
            if (task != null && r.taskAffinity.equals(task.affinity)) {
                targetTask = task;
            }
            if (targetTask == null) {
                if (alwaysCreateTask) {
                    targetTask = taskDisplayArea.getOrCreateStack(windowingMode, activityType, false);
                } else {
                    targetTask = this.mTargetStack.reuseOrCreateTask(r.info, null, false);
                }
                targetTask.affinityIntent = r.intent;
            }
            r.reparent(targetTask, 0, "resetTargetTaskIfNeeded");
            atmService.mStackSupervisor.mRecentTasks.add(targetTask);
        }
    }

    private boolean takeOption(ActivityRecord p, boolean noOptions) {
        this.mCanMoveOptions = false;
        if (noOptions && this.mTopOptions == null) {
            ActivityOptions activityOptionsTakeOptionsLocked = p.takeOptionsLocked(false);
            this.mTopOptions = activityOptionsTakeOptionsLocked;
            if (activityOptionsTakeOptionsLocked != null) {
                return false;
            }
            return noOptions;
        }
        return noOptions;
    }
}
