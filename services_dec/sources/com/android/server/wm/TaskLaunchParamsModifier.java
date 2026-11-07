package com.android.server.wm;

import android.app.ActivityOptions;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import android.window.WindowContainerToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class TaskLaunchParamsModifier implements LaunchParamsController.LaunchParamsModifier {
    private static final int BOUNDS_CONFLICT_THRESHOLD = 4;
    private static final int CASCADING_OFFSET_DP = 75;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_PORTRAIT_PHONE_HEIGHT_DP = 732;
    private static final int DEFAULT_PORTRAIT_PHONE_WIDTH_DP = 412;
    private static final int EPSILON = 2;
    private static final int MINIMAL_STEP = 1;
    private static final int STEP_DENOMINATOR = 16;
    private static final String TAG = "ActivityTaskManager";
    private StringBuilder mLogBuilder;
    private final ActivityStackSupervisor mSupervisor;
    private final Rect mTmpBounds = new Rect();
    private final int[] mTmpDirections = new int[2];

    TaskLaunchParamsModifier(ActivityStackSupervisor supervisor) {
        this.mSupervisor = supervisor;
    }

    int onCalculate(Task task, ActivityInfo.WindowLayout layout, ActivityRecord activity, ActivityRecord source, ActivityOptions options, LaunchParamsController.LaunchParams currentParams, LaunchParamsController.LaunchParams outParams) {
        return onCalculate(task, layout, activity, source, options, 2, currentParams, outParams);
    }

    @Override // com.android.server.wm.LaunchParamsController.LaunchParamsModifier
    public int onCalculate(Task task, ActivityInfo.WindowLayout layout, ActivityRecord activity, ActivityRecord source, ActivityOptions options, int phase, LaunchParamsController.LaunchParams currentParams, LaunchParamsController.LaunchParams outParams) {
        initLogBuilder(task, activity);
        int result = calculate(task, layout, activity, source, options, phase, currentParams, outParams);
        outputLog();
        return result;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0095  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d3 A[PHI: r0 r1
  0x00d3: PHI (r0v8 'fullyResolvedCurrentParam' boolean) = 
  (r0v7 'fullyResolvedCurrentParam' boolean)
  (r0v7 'fullyResolvedCurrentParam' boolean)
  (r0v37 'fullyResolvedCurrentParam' boolean)
  (r0v37 'fullyResolvedCurrentParam' boolean)
  (r0v7 'fullyResolvedCurrentParam' boolean)
 binds: [B:46:0x009c, B:47:0x009e, B:62:0x00c3, B:64:0x00cd, B:51:0x00a6] A[DONT_GENERATE, DONT_INLINE]
  0x00d3: PHI (r1v5 'launchMode' int) = 
  (r1v4 'launchMode' int)
  (r1v4 'launchMode' int)
  (r1v11 'launchMode' int)
  (r1v11 'launchMode' int)
  (r1v4 'launchMode' int)
 binds: [B:46:0x009c, B:47:0x009e, B:62:0x00c3, B:64:0x00cd, B:51:0x00a6] A[DONT_GENERATE, DONT_INLINE]] */
    private int calculate(Task task, ActivityInfo.WindowLayout layout, ActivityRecord activity, ActivityRecord source, ActivityOptions options, int phase, LaunchParamsController.LaunchParams currentParams, LaunchParamsController.LaunchParams outParams) {
        ActivityRecord root;
        boolean hasInitialBounds;
        boolean fullyResolvedCurrentParam;
        int launchMode;
        int i;
        if (task != null) {
            root = task.getRootActivity() == null ? activity : task.getRootActivity();
        } else {
            root = activity;
        }
        if (root == null) {
            return 0;
        }
        TaskDisplayArea taskDisplayArea = getPreferredLaunchTaskDisplayArea(task, options, source, currentParams);
        outParams.mPreferredTaskDisplayArea = taskDisplayArea;
        DisplayContent display = taskDisplayArea.mDisplayContent;
        if (phase == 0) {
            return 2;
        }
        int launchMode2 = options != null ? options.getLaunchWindowingMode() : 0;
        if (launchMode2 == 0 && canInheritWindowingModeFromSource(display, source)) {
            launchMode2 = source.getWindowingMode();
        }
        boolean canApplyFreeformPolicy = canApplyFreeformWindowPolicy(display, launchMode2);
        if (this.mSupervisor.canUseActivityOptionsLaunchBounds(options) && (canApplyFreeformPolicy || canApplyPipWindowPolicy(launchMode2))) {
            if (launchMode2 == 0) {
                i = 5;
            } else {
                i = launchMode2;
            }
            launchMode2 = i;
            outParams.mBounds.set(options.getLaunchBounds());
            hasInitialBounds = true;
        } else if (launchMode2 != 2 && launchMode2 != 1 && layout != null && canApplyFreeformPolicy) {
            getLayoutBounds(display, root, layout, this.mTmpBounds);
            if (!this.mTmpBounds.isEmpty()) {
                launchMode2 = 5;
                outParams.mBounds.set(this.mTmpBounds);
                hasInitialBounds = true;
            } else {
                hasInitialBounds = false;
            }
        } else {
            hasInitialBounds = false;
        }
        boolean fullyResolvedCurrentParam2 = false;
        if (!currentParams.isEmpty() && !hasInitialBounds && (currentParams.mPreferredTaskDisplayArea == null || currentParams.mPreferredTaskDisplayArea == taskDisplayArea)) {
            if (currentParams.hasWindowingMode() && display.inFreeformWindowingMode()) {
                launchMode2 = currentParams.mWindowingMode;
                fullyResolvedCurrentParam2 = launchMode2 != 5;
            }
            if (!currentParams.mBounds.isEmpty()) {
                outParams.mBounds.set(currentParams.mBounds);
                if (launchMode2 == 5) {
                    fullyResolvedCurrentParam = true;
                } else {
                    fullyResolvedCurrentParam = fullyResolvedCurrentParam2;
                }
            } else {
                fullyResolvedCurrentParam = fullyResolvedCurrentParam2;
            }
        } else {
            fullyResolvedCurrentParam = fullyResolvedCurrentParam2;
        }
        if (display.inFreeformWindowingMode() && launchMode2 != 2 && !this.mSupervisor.mService.mSizeCompatFreeform && !root.isResizeable()) {
            outParams.mBounds.setEmpty();
            launchMode = 1;
        } else {
            launchMode = launchMode2;
        }
        outParams.mWindowingMode = launchMode == display.getWindowingMode() ? 0 : launchMode;
        if (phase == 1) {
            return 2;
        }
        int resolvedMode = launchMode != 0 ? launchMode : display.getWindowingMode();
        if (fullyResolvedCurrentParam) {
            if (resolvedMode != 5) {
                return 2;
            }
            if (currentParams.mPreferredTaskDisplayArea != taskDisplayArea) {
                adjustBoundsToFitInDisplay(display, outParams.mBounds);
            }
            adjustBoundsToAvoidConflictInDisplay(display, outParams.mBounds);
            return 2;
        }
        if (!taskDisplayArea.inFreeformWindowingMode()) {
            return 2;
        }
        if (source != null && source.inFreeformWindowingMode() && resolvedMode == 5 && outParams.mBounds.isEmpty() && source.getDisplayArea() == taskDisplayArea) {
            cascadeBounds(source.getConfiguration().windowConfiguration.getBounds(), display, outParams.mBounds);
        }
        getTaskBounds(root, display, layout, resolvedMode, hasInitialBounds, outParams.mBounds);
        return 2;
    }

    private TaskDisplayArea getPreferredLaunchTaskDisplayArea(Task task, ActivityOptions options, ActivityRecord source, LaunchParamsController.LaunchParams currentParams) {
        WindowContainerToken optionLaunchTaskDisplayAreaToken;
        DisplayContent dc;
        TaskDisplayArea taskDisplayArea = null;
        ActivityStack stack = null;
        if (options == null) {
            optionLaunchTaskDisplayAreaToken = null;
        } else {
            optionLaunchTaskDisplayAreaToken = options.getLaunchTaskDisplayArea();
        }
        if (optionLaunchTaskDisplayAreaToken != null) {
            taskDisplayArea = (TaskDisplayArea) WindowContainer.fromBinder(optionLaunchTaskDisplayAreaToken.asBinder());
        }
        if (taskDisplayArea == null) {
            int optionLaunchId = options != null ? options.getLaunchDisplayId() : -1;
            if (optionLaunchId != -1 && (dc = this.mSupervisor.mRootWindowContainer.getDisplayContent(optionLaunchId)) != null) {
                taskDisplayArea = dc.getDefaultTaskDisplayArea();
            }
        }
        if (taskDisplayArea == null && source != null && source.noDisplay && (taskDisplayArea = source.mHandoverTaskDisplayArea) == null) {
            int displayId = source.mHandoverLaunchDisplayId;
            DisplayContent dc2 = this.mSupervisor.mRootWindowContainer.getDisplayContent(displayId);
            if (dc2 != null) {
                taskDisplayArea = dc2.getDefaultTaskDisplayArea();
            }
        }
        if (taskDisplayArea == null && task != null) {
            stack = task.getStack();
        }
        if (stack != null) {
            taskDisplayArea = stack.getDisplayArea();
        }
        if (taskDisplayArea == null && source != null) {
            TaskDisplayArea sourceDisplayArea = source.getDisplayArea();
            taskDisplayArea = sourceDisplayArea;
        }
        if (taskDisplayArea == null && options != null) {
            int callerDisplayId = options.getCallerDisplayId();
            DisplayContent dc3 = this.mSupervisor.mRootWindowContainer.getDisplayContent(callerDisplayId);
            if (dc3 != null) {
                taskDisplayArea = dc3.getDefaultTaskDisplayArea();
            }
        }
        if (taskDisplayArea == null) {
            taskDisplayArea = currentParams.mPreferredTaskDisplayArea;
        }
        if (taskDisplayArea != null && !this.mSupervisor.mService.mSupportsMultiDisplay && taskDisplayArea.getDisplayId() != 0) {
            taskDisplayArea = this.mSupervisor.mRootWindowContainer.getDefaultTaskDisplayArea();
        }
        if (taskDisplayArea != null) {
            return taskDisplayArea;
        }
        return this.mSupervisor.mRootWindowContainer.getDefaultTaskDisplayArea();
    }

    private boolean canInheritWindowingModeFromSource(DisplayContent display, ActivityRecord source) {
        if (source == null || display.inFreeformWindowingMode()) {
            return false;
        }
        int sourceWindowingMode = source.getWindowingMode();
        if ((sourceWindowingMode != 1 && sourceWindowingMode != 5) || display.getDisplayId() != source.getDisplayId()) {
            return false;
        }
        return true;
    }

    private boolean canApplyFreeformWindowPolicy(DisplayContent display, int launchMode) {
        return this.mSupervisor.mService.mSupportsFreeformWindowManagement && (display.inFreeformWindowingMode() || launchMode == 5);
    }

    private boolean canApplyPipWindowPolicy(int launchMode) {
        return this.mSupervisor.mService.mSupportsPictureInPicture && launchMode == 2;
    }

    private void getLayoutBounds(DisplayContent display, ActivityRecord root, ActivityInfo.WindowLayout windowLayout, Rect outBounds) {
        int width;
        int height;
        float fractionOfHorizontalOffset;
        float fractionOfVerticalOffset;
        int verticalGravity = windowLayout.gravity & 112;
        int horizontalGravity = windowLayout.gravity & 7;
        if (!windowLayout.hasSpecifiedSize() && verticalGravity == 0 && horizontalGravity == 0) {
            outBounds.setEmpty();
            return;
        }
        Rect displayStableBounds = display.mDisplayContent.mDisplayFrames.mStable;
        int defaultWidth = displayStableBounds.width();
        int defaultHeight = displayStableBounds.height();
        if (!windowLayout.hasSpecifiedSize()) {
            outBounds.setEmpty();
            getTaskBounds(root, display, windowLayout, 5, false, outBounds);
            width = outBounds.width();
            height = outBounds.height();
        } else {
            width = defaultWidth;
            if (windowLayout.width > 0 && windowLayout.width < defaultWidth) {
                width = windowLayout.width;
            } else if (windowLayout.widthFraction > 0.0f && windowLayout.widthFraction < 1.0f) {
                width = (int) (width * windowLayout.widthFraction);
            }
            height = defaultHeight;
            if (windowLayout.height > 0 && windowLayout.height < defaultHeight) {
                height = windowLayout.height;
            } else if (windowLayout.heightFraction > 0.0f && windowLayout.heightFraction < 1.0f) {
                height = (int) (height * windowLayout.heightFraction);
            }
        }
        if (horizontalGravity == 3) {
            fractionOfHorizontalOffset = 0.0f;
        } else if (horizontalGravity == 5) {
            fractionOfHorizontalOffset = 1.0f;
        } else {
            fractionOfHorizontalOffset = 0.5f;
        }
        if (verticalGravity == 48) {
            fractionOfVerticalOffset = 0.0f;
        } else if (verticalGravity == 80) {
            fractionOfVerticalOffset = 1.0f;
        } else {
            fractionOfVerticalOffset = 0.5f;
        }
        outBounds.set(0, 0, width, height);
        outBounds.offset(displayStableBounds.left, displayStableBounds.top);
        int xOffset = (int) ((defaultWidth - width) * fractionOfHorizontalOffset);
        int yOffset = (int) ((defaultHeight - height) * fractionOfVerticalOffset);
        outBounds.offset(xOffset, yOffset);
    }

    private int resolveOrientation(ActivityRecord activity) {
        int orientation = activity.info.screenOrientation;
        if (orientation != 0) {
            if (orientation != 1) {
                if (orientation != 11) {
                    if (orientation != 12) {
                        if (orientation != 14) {
                            switch (orientation) {
                                case 5:
                                    break;
                                case 6:
                                case 8:
                                    break;
                                case 7:
                                case 9:
                                    break;
                                default:
                                    return -1;
                            }
                        }
                        return 14;
                    }
                }
            }
            return 1;
        }
        return 0;
    }

    private void cascadeBounds(Rect srcBounds, DisplayContent display, Rect outBounds) {
        outBounds.set(srcBounds);
        float density = display.getConfiguration().densityDpi / 160.0f;
        int defaultOffset = (int) ((75.0f * density) + 0.5f);
        display.getBounds(this.mTmpBounds);
        int dx = Math.min(defaultOffset, Math.max(0, this.mTmpBounds.right - srcBounds.right));
        int dy = Math.min(defaultOffset, Math.max(0, this.mTmpBounds.bottom - srcBounds.bottom));
        outBounds.offset(dx, dy);
    }

    private void getTaskBounds(ActivityRecord root, DisplayContent display, ActivityInfo.WindowLayout layout, int resolvedMode, boolean hasInitialBounds, Rect inOutBounds) {
        if (resolvedMode == 1) {
            inOutBounds.setEmpty();
            return;
        }
        if (resolvedMode != 5) {
            return;
        }
        int orientation = resolveOrientation(root, display, inOutBounds);
        if (orientation != 1 && orientation != 0) {
            throw new IllegalStateException("Orientation must be one of portrait or landscape, but it's " + ActivityInfo.screenOrientationToString(orientation));
        }
        getDefaultFreeformSize(display, layout, orientation, this.mTmpBounds);
        if (hasInitialBounds || sizeMatches(inOutBounds, this.mTmpBounds)) {
            if (orientation != orientationFromBounds(inOutBounds)) {
                centerBounds(display, inOutBounds.height(), inOutBounds.width(), inOutBounds);
            }
        } else {
            centerBounds(display, this.mTmpBounds.width(), this.mTmpBounds.height(), inOutBounds);
            adjustBoundsToFitInDisplay(display, inOutBounds);
        }
        adjustBoundsToAvoidConflictInDisplay(display, inOutBounds);
    }

    private int convertOrientationToScreenOrientation(int orientation) {
        if (orientation == 1) {
            return 1;
        }
        if (orientation == 2) {
            return 0;
        }
        return -1;
    }

    private int resolveOrientation(ActivityRecord root, DisplayContent display, Rect bounds) {
        int iOrientationFromBounds;
        int orientation = resolveOrientation(root);
        if (orientation == 14) {
            if (bounds.isEmpty()) {
                iOrientationFromBounds = convertOrientationToScreenOrientation(display.getConfiguration().orientation);
            } else {
                iOrientationFromBounds = orientationFromBounds(bounds);
            }
            orientation = iOrientationFromBounds;
        }
        if (orientation == -1) {
            return bounds.isEmpty() ? 1 : orientationFromBounds(bounds);
        }
        return orientation;
    }

    private void getDefaultFreeformSize(DisplayContent display, ActivityInfo.WindowLayout layout, int orientation, Rect bounds) {
        int layoutMinWidth;
        Rect displayStableBounds = display.mDisplayContent.mDisplayFrames.mStable;
        int portraitHeight = Math.min(displayStableBounds.width(), displayStableBounds.height());
        int otherDimension = Math.max(displayStableBounds.width(), displayStableBounds.height());
        int portraitWidth = (portraitHeight * portraitHeight) / otherDimension;
        int defaultWidth = orientation == 0 ? portraitHeight : portraitWidth;
        int defaultHeight = orientation == 0 ? portraitWidth : portraitHeight;
        float density = display.getConfiguration().densityDpi / 160.0f;
        int phonePortraitWidth = (int) ((412.0f * density) + 0.5f);
        int phonePortraitHeight = (int) ((732.0f * density) + 0.5f);
        int phoneWidth = orientation == 0 ? phonePortraitHeight : phonePortraitWidth;
        int phoneHeight = orientation == 0 ? phonePortraitWidth : phonePortraitHeight;
        int layoutMinHeight = -1;
        if (layout != null) {
            layoutMinWidth = layout.minWidth;
        } else {
            layoutMinWidth = -1;
        }
        if (layout != null) {
            layoutMinHeight = layout.minHeight;
        }
        int width = Math.min(defaultWidth, Math.max(phoneWidth, layoutMinWidth));
        int height = Math.min(defaultHeight, Math.max(phoneHeight, layoutMinHeight));
        bounds.set(0, 0, width, height);
        int i = displayStableBounds.left;
        int width2 = displayStableBounds.top;
        bounds.offset(i, width2);
    }

    private void centerBounds(DisplayContent display, int width, int height, Rect inOutBounds) {
        if (inOutBounds.isEmpty()) {
            inOutBounds.set(display.mDisplayContent.mDisplayFrames.mStable);
        }
        int left = inOutBounds.centerX() - (width / 2);
        int top = inOutBounds.centerY() - (height / 2);
        inOutBounds.set(left, top, left + width, top + height);
    }

    private void adjustBoundsToFitInDisplay(DisplayContent display, Rect inOutBounds) {
        int left;
        int dx;
        int dy;
        Rect displayStableBounds = display.mDisplayContent.mDisplayFrames.mStable;
        if (displayStableBounds.width() < inOutBounds.width() || displayStableBounds.height() < inOutBounds.height()) {
            int layoutDirection = this.mSupervisor.mRootWindowContainer.getConfiguration().getLayoutDirection();
            if (layoutDirection == 1) {
                left = (displayStableBounds.right - inOutBounds.right) + inOutBounds.left;
            } else {
                left = displayStableBounds.left;
            }
            inOutBounds.offsetTo(left, displayStableBounds.top);
            return;
        }
        if (inOutBounds.right > displayStableBounds.right) {
            dx = displayStableBounds.right - inOutBounds.right;
        } else {
            int dx2 = inOutBounds.left;
            if (dx2 < displayStableBounds.left) {
                dx = displayStableBounds.left - inOutBounds.left;
            } else {
                dx = 0;
            }
        }
        if (inOutBounds.top < displayStableBounds.top) {
            dy = displayStableBounds.top - inOutBounds.top;
        } else {
            int dy2 = inOutBounds.bottom;
            if (dy2 > displayStableBounds.bottom) {
                dy = displayStableBounds.bottom - inOutBounds.bottom;
            } else {
                dy = 0;
            }
        }
        inOutBounds.offset(dx, dy);
    }

    private void adjustBoundsToAvoidConflictInDisplay(DisplayContent display, Rect inOutBounds) {
        List<Rect> taskBoundsToCheck = new ArrayList<>();
        int numTaskContainers = display.getTaskDisplayAreaCount();
        for (int tdaNdx = 0; tdaNdx < numTaskContainers; tdaNdx++) {
            TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
            int numStacks = taskDisplayArea.getStackCount();
            for (int sNdx = 0; sNdx < numStacks; sNdx++) {
                ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                if (stack.inFreeformWindowingMode()) {
                    for (int j = 0; j < stack.getChildCount(); j++) {
                        taskBoundsToCheck.add(stack.getChildAt(j).getBounds());
                    }
                }
            }
        }
        adjustBoundsToAvoidConflict(display.getBounds(), taskBoundsToCheck, inOutBounds);
    }

    void adjustBoundsToAvoidConflict(Rect displayBounds, List<Rect> taskBoundsToCheck, Rect inOutBounds) {
        if (!displayBounds.contains(inOutBounds) || !boundsConflict(taskBoundsToCheck, inOutBounds)) {
            return;
        }
        calculateCandidateShiftDirections(displayBounds, inOutBounds);
        for (int direction : this.mTmpDirections) {
            if (direction != 0) {
                this.mTmpBounds.set(inOutBounds);
                while (boundsConflict(taskBoundsToCheck, this.mTmpBounds) && displayBounds.contains(this.mTmpBounds)) {
                    shiftBounds(direction, displayBounds, this.mTmpBounds);
                }
                if (!boundsConflict(taskBoundsToCheck, this.mTmpBounds) && displayBounds.contains(this.mTmpBounds)) {
                    inOutBounds.set(this.mTmpBounds);
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void calculateCandidateShiftDirections(Rect availableBounds, Rect initialBounds) {
        int i = 0;
        while (true) {
            int[] iArr = this.mTmpDirections;
            if (i >= iArr.length) {
                break;
            }
            iArr[i] = 0;
            i++;
        }
        int i2 = availableBounds.left;
        int oneThirdWidth = ((i2 * 2) + availableBounds.right) / 3;
        int twoThirdWidth = (availableBounds.left + (availableBounds.right * 2)) / 3;
        int centerX = initialBounds.centerX();
        if (centerX < oneThirdWidth) {
            this.mTmpDirections[0] = 5;
            return;
        }
        if (centerX > twoThirdWidth) {
            this.mTmpDirections[0] = 3;
            return;
        }
        int oneThirdHeight = ((availableBounds.top * 2) + availableBounds.bottom) / 3;
        int twoThirdHeight = (availableBounds.top + (availableBounds.bottom * 2)) / 3;
        int centerY = initialBounds.centerY();
        if (centerY < oneThirdHeight || centerY > twoThirdHeight) {
            int[] iArr2 = this.mTmpDirections;
            iArr2[0] = 5;
            iArr2[1] = 3;
        } else {
            int[] iArr3 = this.mTmpDirections;
            iArr3[0] = 85;
            iArr3[1] = 51;
        }
    }

    private boolean boundsConflict(List<Rect> taskBoundsToCheck, Rect candidateBounds) {
        Iterator<Rect> it = taskBoundsToCheck.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            Rect taskBounds = it.next();
            boolean leftClose = Math.abs(taskBounds.left - candidateBounds.left) < 4;
            boolean topClose = Math.abs(taskBounds.top - candidateBounds.top) < 4;
            boolean rightClose = Math.abs(taskBounds.right - candidateBounds.right) < 4;
            boolean bottomClose = Math.abs(taskBounds.bottom - candidateBounds.bottom) < 4;
            if ((leftClose && topClose) || ((leftClose && bottomClose) || ((rightClose && topClose) || (rightClose && bottomClose)))) {
                return true;
            }
        }
    }

    private void shiftBounds(int direction, Rect availableRect, Rect inOutBounds) {
        int horizontalOffset;
        int verticalOffset;
        int i = direction & 7;
        if (i == 3) {
            horizontalOffset = -Math.max(1, availableRect.width() / 16);
        } else if (i == 5) {
            int horizontalOffset2 = availableRect.width();
            horizontalOffset = Math.max(1, horizontalOffset2 / 16);
        } else {
            horizontalOffset = 0;
        }
        int i2 = direction & 112;
        if (i2 == 48) {
            int verticalOffset2 = availableRect.height();
            verticalOffset = -Math.max(1, verticalOffset2 / 16);
        } else if (i2 == 80) {
            int verticalOffset3 = availableRect.height();
            verticalOffset = Math.max(1, verticalOffset3 / 16);
        } else {
            verticalOffset = 0;
        }
        inOutBounds.offset(horizontalOffset, verticalOffset);
    }

    private void initLogBuilder(Task task, ActivityRecord activity) {
    }

    private void appendLog(String log) {
    }

    private void outputLog() {
    }

    private static int orientationFromBounds(Rect bounds) {
        return bounds.width() > bounds.height() ? 0 : 1;
    }

    private static boolean sizeMatches(Rect left, Rect right) {
        return Math.abs(right.width() - left.width()) < 2 && Math.abs(right.height() - left.height()) < 2;
    }
}
