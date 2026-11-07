package com.android.server.wm;

import android.app.ActivityOptions;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class LaunchParamsController {
    private final LaunchParamsPersister mPersister;
    private final ActivityTaskManagerService mService;
    private final List<LaunchParamsModifier> mModifiers = new ArrayList();
    private final LaunchParams mTmpParams = new LaunchParams();
    private final LaunchParams mTmpCurrent = new LaunchParams();
    private final LaunchParams mTmpResult = new LaunchParams();

    interface LaunchParamsModifier {
        public static final int PHASE_BOUNDS = 2;
        public static final int PHASE_DISPLAY = 0;
        public static final int PHASE_WINDOWING_MODE = 1;
        public static final int RESULT_CONTINUE = 2;
        public static final int RESULT_DONE = 1;
        public static final int RESULT_SKIP = 0;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Phase {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface Result {
        }

        int onCalculate(Task task, ActivityInfo.WindowLayout windowLayout, ActivityRecord activityRecord, ActivityRecord activityRecord2, ActivityOptions activityOptions, int i, LaunchParams launchParams, LaunchParams launchParams2);
    }

    LaunchParamsController(ActivityTaskManagerService service, LaunchParamsPersister persister) {
        this.mService = service;
        this.mPersister = persister;
    }

    void registerDefaultModifiers(ActivityStackSupervisor supervisor) {
        registerModifier(new TaskLaunchParamsModifier(supervisor));
    }

    void calculate(Task task, ActivityInfo.WindowLayout layout, ActivityRecord activity, ActivityRecord source, ActivityOptions options, int phase, LaunchParams result) {
        result.reset();
        if (task != null || activity != null) {
            this.mPersister.getLaunchParams(task, activity, result);
        }
        for (int i = this.mModifiers.size() - 1; i >= 0; i--) {
            this.mTmpCurrent.set(result);
            this.mTmpResult.reset();
            LaunchParamsModifier modifier = this.mModifiers.get(i);
            int iOnCalculate = modifier.onCalculate(task, layout, activity, source, options, phase, this.mTmpCurrent, this.mTmpResult);
            if (iOnCalculate != 1) {
                if (iOnCalculate == 2) {
                    result.set(this.mTmpResult);
                }
            } else {
                result.set(this.mTmpResult);
                return;
            }
        }
        if (activity != null && activity.requestedVrComponent != null) {
            result.mPreferredTaskDisplayArea = this.mService.mRootWindowContainer.getDefaultTaskDisplayArea();
        } else if (this.mService.mVr2dDisplayId != -1) {
            result.mPreferredTaskDisplayArea = this.mService.mRootWindowContainer.getDisplayContent(this.mService.mVr2dDisplayId).getDefaultTaskDisplayArea();
        }
    }

    boolean layoutTask(Task task, ActivityInfo.WindowLayout layout) {
        return layoutTask(task, layout, null, null, null);
    }

    boolean layoutTask(Task task, ActivityInfo.WindowLayout layout, ActivityRecord activity, ActivityRecord source, ActivityOptions options) {
        calculate(task, layout, activity, source, options, 2, this.mTmpParams);
        if (this.mTmpParams.isEmpty()) {
            return false;
        }
        this.mService.deferWindowLayout();
        try {
            if (this.mTmpParams.mPreferredTaskDisplayArea != null && task.getDisplayArea() != this.mTmpParams.mPreferredTaskDisplayArea) {
                this.mService.mRootWindowContainer.moveStackToTaskDisplayArea(task.getRootTaskId(), this.mTmpParams.mPreferredTaskDisplayArea, true);
            }
            if (this.mTmpParams.hasWindowingMode() && this.mTmpParams.mWindowingMode != task.getStack().getWindowingMode()) {
                int activityType = activity != null ? activity.getActivityType() : task.getActivityType();
                task.getStack().setWindowingMode(task.getDisplayArea().validateWindowingMode(this.mTmpParams.mWindowingMode, activity, task, activityType));
            }
            if (this.mTmpParams.mBounds.isEmpty()) {
                return false;
            }
            if (task.getStack().inFreeformWindowingMode()) {
                task.setBounds(this.mTmpParams.mBounds);
                return true;
            }
            task.setLastNonFullscreenBounds(this.mTmpParams.mBounds);
            return false;
        } finally {
            this.mService.continueWindowLayout();
        }
    }

    void registerModifier(LaunchParamsModifier modifier) {
        if (this.mModifiers.contains(modifier)) {
            return;
        }
        this.mModifiers.add(modifier);
    }

    static class LaunchParams {
        final Rect mBounds = new Rect();
        TaskDisplayArea mPreferredTaskDisplayArea;
        int mWindowingMode;

        LaunchParams() {
        }

        void reset() {
            this.mBounds.setEmpty();
            this.mPreferredTaskDisplayArea = null;
            this.mWindowingMode = 0;
        }

        void set(LaunchParams params) {
            this.mBounds.set(params.mBounds);
            this.mPreferredTaskDisplayArea = params.mPreferredTaskDisplayArea;
            this.mWindowingMode = params.mWindowingMode;
        }

        boolean isEmpty() {
            return this.mBounds.isEmpty() && this.mPreferredTaskDisplayArea == null && this.mWindowingMode == 0;
        }

        boolean hasWindowingMode() {
            return this.mWindowingMode != 0;
        }

        boolean hasPreferredTaskDisplayArea() {
            return this.mPreferredTaskDisplayArea != null;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            LaunchParams that = (LaunchParams) o;
            if (this.mPreferredTaskDisplayArea != that.mPreferredTaskDisplayArea || this.mWindowingMode != that.mWindowingMode) {
                return false;
            }
            Rect rect = this.mBounds;
            if (rect != null) {
                return rect.equals(that.mBounds);
            }
            if (that.mBounds == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Rect rect = this.mBounds;
            int result = rect != null ? rect.hashCode() : 0;
            int i = result * 31;
            TaskDisplayArea taskDisplayArea = this.mPreferredTaskDisplayArea;
            int result2 = i + (taskDisplayArea != null ? taskDisplayArea.hashCode() : 0);
            return (result2 * 31) + this.mWindowingMode;
        }
    }
}
