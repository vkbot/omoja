package com.android.server.wm;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.Trace;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.server.wm.ActivityTaskManagerService.SleepTokenAcquirerImpl;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
class KeyguardController {
    private static final String TAG = "ActivityTaskManager";
    private boolean mAodShowing;
    private int mBeforeUnoccludeTransit;
    private boolean mDismissalRequested;
    private final SparseArray<KeyguardDisplayState> mDisplayStates = new SparseArray<>();
    private boolean mKeyguardGoingAway;
    private boolean mKeyguardShowing;
    private RootWindowContainer mRootWindowContainer;
    private final ActivityTaskManagerService mService;
    private final ActivityTaskManagerInternal.SleepTokenAcquirer mSleepTokenAcquirer;
    private final ActivityStackSupervisor mStackSupervisor;
    private WindowManagerService mWindowManager;

    KeyguardController(ActivityTaskManagerService service, ActivityStackSupervisor stackSupervisor) {
        this.mService = service;
        this.mStackSupervisor = stackSupervisor;
        Objects.requireNonNull(service);
        this.mSleepTokenAcquirer = service.new SleepTokenAcquirerImpl("keyguard");
    }

    void setWindowManager(WindowManagerService windowManager) {
        this.mWindowManager = windowManager;
        this.mRootWindowContainer = this.mService.mRootWindowContainer;
    }

    boolean isKeyguardOrAodShowing(int displayId) {
        return ((!this.mKeyguardShowing && !this.mAodShowing) || this.mKeyguardGoingAway || isDisplayOccluded(displayId)) ? false : true;
    }

    boolean isKeyguardUnoccludedOrAodShowing(int displayId) {
        if (displayId == 0 && this.mAodShowing) {
            return true;
        }
        return isKeyguardOrAodShowing(displayId);
    }

    boolean isKeyguardShowing(int displayId) {
        return (!this.mKeyguardShowing || this.mKeyguardGoingAway || isDisplayOccluded(displayId)) ? false : true;
    }

    boolean isKeyguardLocked() {
        return this.mKeyguardShowing && !this.mKeyguardGoingAway;
    }

    boolean isKeyguardGoingAway() {
        return this.mKeyguardGoingAway && this.mKeyguardShowing;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void setKeyguardShown(boolean z, boolean z2) {
        boolean z3 = true;
        Object[] objArr = z2 != this.mAodShowing;
        if (z == this.mKeyguardShowing && (!this.mKeyguardGoingAway || !z || objArr != false)) {
            z3 = false;
        }
        if (!z3 && objArr == false) {
            return;
        }
        EventLogTags.writeWmSetKeyguardShown(z ? 1 : 0, z2 ? 1 : 0, this.mKeyguardGoingAway ? 1 : 0, "setKeyguardShown");
        this.mKeyguardShowing = z;
        this.mAodShowing = z2;
        this.mWindowManager.setAodShowing(z2);
        if (z3) {
            dismissDockedStackIfNeeded();
            setKeyguardGoingAway(false);
            if (z) {
                this.mDismissalRequested = false;
            }
        }
        this.mWindowManager.setKeyguardOrAodShowingOnDefaultDisplay(isKeyguardOrAodShowing(0));
        updateKeyguardSleepToken();
        this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
    }

    void keyguardGoingAway(int flags) {
        if (!this.mKeyguardShowing) {
            return;
        }
        Trace.traceBegin(32L, "keyguardGoingAway");
        this.mService.deferWindowLayout();
        try {
            setKeyguardGoingAway(true);
            EventLogTags.writeWmSetKeyguardShown(1, this.mAodShowing ? 1 : 0, 1, "keyguardGoingAway");
            this.mRootWindowContainer.getDefaultDisplay().mDisplayContent.prepareAppTransition(20, false, convertTransitFlags(flags), false);
            updateKeyguardSleepToken();
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
            this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
            this.mRootWindowContainer.addStartingWindowsForVisibleActivities();
            this.mWindowManager.executeAppTransition();
        } finally {
            this.mService.continueWindowLayout();
            Trace.traceEnd(32L);
        }
    }

    void dismissKeyguard(IBinder token, IKeyguardDismissCallback callback, CharSequence message) {
        ActivityRecord activityRecord = ActivityRecord.forTokenLocked(token);
        if (activityRecord == null || !activityRecord.visibleIgnoringKeyguard) {
            failCallback(callback);
            return;
        }
        Slog.i(TAG, "Activity requesting to dismiss Keyguard: " + activityRecord);
        if (activityRecord.getTurnScreenOnFlag() && activityRecord.isTopRunningActivity()) {
            this.mStackSupervisor.wakeUp("dismissKeyguard");
        }
        this.mWindowManager.dismissKeyguard(callback, message);
    }

    private void setKeyguardGoingAway(boolean keyguardGoingAway) {
        this.mKeyguardGoingAway = keyguardGoingAway;
        this.mWindowManager.setKeyguardGoingAway(keyguardGoingAway);
    }

    private void failCallback(IKeyguardDismissCallback callback) {
        try {
            callback.onDismissError();
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to call callback", e);
        }
    }

    private int convertTransitFlags(int keyguardGoingAwayFlags) {
        int result = 0;
        if ((keyguardGoingAwayFlags & 1) != 0) {
            result = 0 | 1;
        }
        if ((keyguardGoingAwayFlags & 2) != 0) {
            result |= 2;
        }
        if ((keyguardGoingAwayFlags & 4) != 0) {
            result |= 4;
        }
        if ((keyguardGoingAwayFlags & 8) != 0) {
            return result | 8;
        }
        return result;
    }

    boolean canShowActivityWhileKeyguardShowing(ActivityRecord r, boolean dismissKeyguard) {
        return dismissKeyguard && canDismissKeyguard() && !this.mAodShowing && (this.mDismissalRequested || (r.canShowWhenLocked() && getDisplay(r.getDisplayId()).mDismissingKeyguardActivity != r));
    }

    boolean canShowWhileOccluded(boolean dismissKeyguard, boolean showWhenLocked) {
        return showWhenLocked || (dismissKeyguard && !this.mWindowManager.isKeyguardSecure(this.mService.getCurrentUserId()));
    }

    void visibilitiesUpdated() {
        boolean requestDismissKeyguard = false;
        for (int displayNdx = this.mRootWindowContainer.getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) this.mRootWindowContainer.getChildAt(displayNdx);
            KeyguardDisplayState state = getDisplay(display.mDisplayId);
            state.visibilitiesUpdated(this, display);
            requestDismissKeyguard |= state.mRequestDismissKeyguard;
        }
        if (requestDismissKeyguard) {
            handleDismissKeyguard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOccludedChanged(int displayId) {
        if (displayId != 0) {
            updateKeyguardSleepToken(displayId);
            return;
        }
        this.mWindowManager.mPolicy.onKeyguardOccludedChangedLw(isDisplayOccluded(0));
        if (isKeyguardLocked()) {
            this.mService.deferWindowLayout();
            try {
                this.mRootWindowContainer.getDefaultDisplay().mDisplayContent.prepareAppTransition(resolveOccludeTransit(), false, 0, true);
                updateKeyguardSleepToken(0);
                this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
                this.mWindowManager.executeAppTransition();
                this.mService.continueWindowLayout();
            } catch (Throwable th) {
                this.mService.continueWindowLayout();
                throw th;
            }
        }
        dismissDockedStackIfNeeded();
    }

    private void handleDismissKeyguard() {
        if (!this.mWindowManager.isKeyguardSecure(this.mService.getCurrentUserId())) {
            return;
        }
        this.mWindowManager.dismissKeyguard(null, null);
        this.mDismissalRequested = true;
        DisplayContent dc = this.mRootWindowContainer.getDefaultDisplay().mDisplayContent;
        if (this.mKeyguardShowing && canDismissKeyguard() && dc.mAppTransition.getAppTransition() == 23) {
            dc.prepareAppTransition(this.mBeforeUnoccludeTransit, false, 0, true);
            this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
            this.mWindowManager.executeAppTransition();
        }
    }

    private boolean isDisplayOccluded(int displayId) {
        return getDisplay(displayId).mOccluded;
    }

    boolean canDismissKeyguard() {
        return this.mWindowManager.mPolicy.isKeyguardTrustedLw() || !this.mWindowManager.isKeyguardSecure(this.mService.getCurrentUserId());
    }

    private int resolveOccludeTransit() {
        DisplayContent dc = this.mRootWindowContainer.getDefaultDisplay().mDisplayContent;
        if (this.mBeforeUnoccludeTransit != -1 && dc.mAppTransition.getAppTransition() == 23 && isDisplayOccluded(0)) {
            return this.mBeforeUnoccludeTransit;
        }
        if (!isDisplayOccluded(0)) {
            this.mBeforeUnoccludeTransit = dc.mAppTransition.getAppTransition();
            return 23;
        }
        return 22;
    }

    private void dismissDockedStackIfNeeded() {
        if (this.mKeyguardShowing && isDisplayOccluded(0)) {
            TaskDisplayArea taskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
            if (!taskDisplayArea.isSplitScreenModeActivated()) {
                return;
            }
            taskDisplayArea.onSplitScreenModeDismissed();
        }
    }

    private void updateKeyguardSleepToken() {
        for (int displayNdx = this.mRootWindowContainer.getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) this.mRootWindowContainer.getChildAt(displayNdx);
            updateKeyguardSleepToken(display.mDisplayId);
        }
    }

    private void updateKeyguardSleepToken(int displayId) {
        KeyguardDisplayState state = getDisplay(displayId);
        if (!isKeyguardUnoccludedOrAodShowing(displayId)) {
            if (isKeyguardUnoccludedOrAodShowing(displayId)) {
                return;
            }
            state.mSleepTokenAcquirer.release(displayId);
            return;
        }
        state.mSleepTokenAcquirer.acquire(displayId);
    }

    private KeyguardDisplayState getDisplay(int displayId) {
        KeyguardDisplayState state = this.mDisplayStates.get(displayId);
        if (state == null) {
            KeyguardDisplayState state2 = new KeyguardDisplayState(this.mService, displayId, this.mSleepTokenAcquirer);
            this.mDisplayStates.append(displayId, state2);
            return state2;
        }
        return state;
    }

    void onDisplayRemoved(int displayId) {
        KeyguardDisplayState state = this.mDisplayStates.get(displayId);
        if (state != null) {
            state.onRemoved();
            this.mDisplayStates.remove(displayId);
        }
    }

    private static class KeyguardDisplayState {
        private ActivityRecord mDismissingKeyguardActivity;
        private final int mDisplayId;
        private boolean mOccluded;
        private boolean mRequestDismissKeyguard;
        private final ActivityTaskManagerService mService;
        private final ActivityTaskManagerInternal.SleepTokenAcquirer mSleepTokenAcquirer;

        KeyguardDisplayState(ActivityTaskManagerService service, int displayId, ActivityTaskManagerInternal.SleepTokenAcquirer acquirer) {
            this.mService = service;
            this.mDisplayId = displayId;
            this.mSleepTokenAcquirer = acquirer;
        }

        void onRemoved() {
            this.mDismissingKeyguardActivity = null;
            this.mSleepTokenAcquirer.release(this.mDisplayId);
        }

        void visibilitiesUpdated(KeyguardController controller, DisplayContent display) {
            boolean z;
            boolean lastOccluded = this.mOccluded;
            ActivityRecord lastDismissActivity = this.mDismissingKeyguardActivity;
            boolean z2 = false;
            this.mRequestDismissKeyguard = false;
            this.mOccluded = false;
            this.mDismissingKeyguardActivity = null;
            ActivityStack stack = getStackForControllingOccluding(display);
            if (stack != null) {
                ActivityRecord topDismissing = stack.getTopDismissingKeyguardActivity();
                if (!stack.topActivityOccludesKeyguard() && (topDismissing == null || stack.topRunningActivity() != topDismissing || !controller.canShowWhileOccluded(true, false))) {
                    z = false;
                } else {
                    z = true;
                }
                this.mOccluded = z;
                if (stack.getTopDismissingKeyguardActivity() != null) {
                    this.mDismissingKeyguardActivity = stack.getTopDismissingKeyguardActivity();
                }
                if (this.mDisplayId != 0) {
                    boolean z3 = this.mOccluded;
                    if (stack.canShowWithInsecureKeyguard() && controller.canDismissKeyguard()) {
                        z2 = true;
                    }
                    this.mOccluded = z2 | z3;
                }
            }
            if (this.mDisplayId == 0) {
                this.mOccluded |= this.mService.mRootWindowContainer.getDefaultDisplay().mDisplayContent.getDisplayPolicy().isShowingDreamLw();
            }
            if (lastOccluded != this.mOccluded) {
                controller.handleOccludedChanged(this.mDisplayId);
            }
            ActivityRecord activityRecord = this.mDismissingKeyguardActivity;
            if (lastDismissActivity != activityRecord && !this.mOccluded && activityRecord != null && controller.mWindowManager.isKeyguardSecure(controller.mService.getCurrentUserId())) {
                this.mRequestDismissKeyguard = true;
            }
        }

        private ActivityStack getStackForControllingOccluding(DisplayContent display) {
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    if (stack != null && stack.isFocusableAndVisible() && !stack.inPinnedWindowingMode()) {
                        return stack;
                    }
                }
            }
            return null;
        }

        void dumpStatus(PrintWriter pw, String prefix) {
            pw.println(prefix + "  Occluded=" + this.mOccluded + " DismissingKeyguardActivity=" + this.mDismissingKeyguardActivity + " at display=" + this.mDisplayId);
        }

        void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1120986464257L, this.mDisplayId);
            proto.write(1133871366146L, this.mOccluded);
            proto.end(token);
        }
    }

    void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "KeyguardController:");
        pw.println(prefix + "  mKeyguardShowing=" + this.mKeyguardShowing);
        pw.println(prefix + "  mAodShowing=" + this.mAodShowing);
        pw.println(prefix + "  mKeyguardGoingAway=" + this.mKeyguardGoingAway);
        dumpDisplayStates(pw, prefix);
        pw.println(prefix + "  mDismissalRequested=" + this.mDismissalRequested);
        pw.println();
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1133871366147L, this.mAodShowing);
        proto.write(1133871366145L, this.mKeyguardShowing);
        writeDisplayStatesToProto(proto, 2246267895810L);
        proto.end(token);
    }

    private void dumpDisplayStates(PrintWriter pw, String prefix) {
        for (int i = 0; i < this.mDisplayStates.size(); i++) {
            this.mDisplayStates.valueAt(i).dumpStatus(pw, prefix);
        }
    }

    private void writeDisplayStatesToProto(ProtoOutputStream proto, long fieldId) {
        for (int i = 0; i < this.mDisplayStates.size(); i++) {
            this.mDisplayStates.valueAt(i).dumpDebug(proto, fieldId);
        }
    }
}
