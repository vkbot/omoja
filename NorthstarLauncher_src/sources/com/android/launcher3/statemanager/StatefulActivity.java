package com.android.launcher3.statemanager;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.views.BaseDragLayer;
import mega.car.VehicleArea;

/* JADX INFO: loaded from: classes.dex */
public abstract class StatefulActivity<STATE_TYPE extends BaseState<STATE_TYPE>> extends BaseDraggingActivity {
    public static final long HOME_ICON_DELAY = 2000;
    public static final int MSG_FIVE_FINGER_GRAB_TIMEOUT = 101;
    public static final int MSG_HANDLE_CLICK_APP_TIMEOUT = 103;
    public static final int MSG_HOME_ICON_TIMEOUT = 100;
    public static final int MSG_VOICE_EXIT_APP_TIMEOUT = 102;
    private boolean mDeferredResumePending;
    private LauncherRootView mRootView;
    public final Handler mHandler = new Handler();
    private final Runnable mHandleDeferredResume = new Runnable() { // from class: com.android.launcher3.statemanager.StatefulActivity$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.handleDeferredResume();
        }
    };

    protected abstract StateManager.StateHandler<STATE_TYPE>[] createStateHandlers();

    @Override // com.android.launcher3.BaseDraggingActivity
    public final LauncherRootView getRootView() {
        return this.mRootView;
    }

    public abstract StateManager<STATE_TYPE> getStateManager();

    protected void onDeferredResumed() {
    }

    public void onStateSetEnd(STATE_TYPE state) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onUiChangedWhileSleeping() {
    }

    public boolean isInState(STATE_TYPE state) {
        return getStateManager().getState() == state;
    }

    protected void inflateRootView(int layoutId) {
        LauncherRootView launcherRootView = (LauncherRootView) LayoutInflater.from(this).inflate(layoutId, (ViewGroup) null);
        this.mRootView = launcherRootView;
        launcherRootView.setSystemUiVisibility(VehicleArea.REAR_ROW);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) this.mRootView.findViewById(i);
    }

    public void onStateSetStart(STATE_TYPE state) {
        if (this.mDeferredResumePending) {
            handleDeferredResume();
        }
    }

    public StateManager.AtomicAnimationFactory<STATE_TYPE> createAtomicAnimationFactory() {
        return new StateManager.AtomicAnimationFactory<>(0);
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void reapplyUi() {
        reapplyUi(true);
    }

    public void reapplyUi(boolean cancelCurrentAnimation) {
        getRootView().dispatchInsets();
        getStateManager().reapplyState(cancelCurrentAnimation);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    protected void onStop() {
        final BaseDragLayer dragLayer = getDragLayer();
        boolean zIsUserActive = isUserActive();
        final BaseState state = getStateManager().getState();
        final int childCount = dragLayer.getChildCount();
        super.onStop();
        if (!isChangingConfigurations() && state != LauncherState.WORKSPACE_HIDE_STATE) {
            getStateManager().moveToRestState();
        }
        onTrimMemory(20);
        if (zIsUserActive) {
            dragLayer.post(new Runnable() { // from class: com.android.launcher3.statemanager.StatefulActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m155x8a7c404e(state, dragLayer, childCount);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$onStop$0$com-android-launcher3-statemanager-StatefulActivity, reason: not valid java name */
    /* synthetic */ void m155x8a7c404e(BaseState baseState, BaseDragLayer baseDragLayer, int i) {
        if (getStateManager().isInStableState(baseState) && baseDragLayer.getAlpha() >= 1.0f && baseDragLayer.getChildCount() == i) {
            return;
        }
        onUiChangedWhileSleeping();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeferredResume() {
        if (!hasBeenResumed() || getStateManager().getState().hasFlag(1)) {
            this.mDeferredResumePending = true;
            return;
        }
        onDeferredResumed();
        addActivityFlags(4);
        this.mDeferredResumePending = false;
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mRootView.setSystemUiVisibility(VehicleArea.REAR_ROW);
        this.mHandler.removeCallbacks(this.mHandleDeferredResume);
        Utilities.postAsyncCallback(this.mHandler, this.mHandleDeferredResume);
    }
}
