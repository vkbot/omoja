package com.android.server.wm;

import android.R;
import android.graphics.Rect;
import android.util.IntArray;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.InsetsAnimationControlCallbacks;
import android.view.InsetsAnimationControlImpl;
import android.view.InsetsAnimationControlRunner;
import android.view.InsetsController;
import android.view.InsetsSource;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.ViewRootImpl;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimationControlListener;
import com.android.server.DisplayThread;

/* JADX INFO: loaded from: classes2.dex */
class InsetsPolicy {
    private boolean mAnimatingShown;
    private final DisplayContent mDisplayContent;
    private WindowState mFocusedWin;
    private final DisplayPolicy mPolicy;
    private boolean mRemoteInsetsControllerControlsSystemBars;
    private final InsetsStateController mStateController;
    private final IntArray mShowingTransientTypes = new IntArray();
    private final InsetsControlTarget mDummyControlTarget = new InsetsControlTarget() { // from class: com.android.server.wm.InsetsPolicy.1
        @Override // com.android.server.wm.InsetsControlTarget
        public void notifyInsetsControlChanged() {
            SurfaceControl leash;
            boolean hasLeash = false;
            InsetsSourceControl[] controls = InsetsPolicy.this.mStateController.getControlsForDispatch(this);
            if (controls == null) {
                return;
            }
            for (InsetsSourceControl control : controls) {
                int type = control.getType();
                if (InsetsPolicy.this.mShowingTransientTypes.indexOf(type) == -1 && (leash = control.getLeash()) != null) {
                    hasLeash = true;
                    InsetsPolicy.this.mDisplayContent.getPendingTransaction().setAlpha(leash, InsetsState.getDefaultVisibility(type) ? 1.0f : 0.0f);
                }
            }
            if (hasLeash) {
                InsetsPolicy.this.mDisplayContent.scheduleAnimation();
            }
        }
    };
    private BarWindow mStatusBar = new BarWindow(1);
    private BarWindow mNavBar = new BarWindow(2);
    private final float[] mTmpFloat9 = new float[9];

    InsetsPolicy(InsetsStateController stateController, DisplayContent displayContent) {
        this.mStateController = stateController;
        this.mDisplayContent = displayContent;
        DisplayPolicy displayPolicy = displayContent.getDisplayPolicy();
        this.mPolicy = displayPolicy;
        this.mRemoteInsetsControllerControlsSystemBars = displayPolicy.getContext().getResources().getBoolean(R.bool.config_remoteInsetsControllerControlsSystemBars);
    }

    boolean getRemoteInsetsControllerControlsSystemBars() {
        return this.mRemoteInsetsControllerControlsSystemBars;
    }

    void setRemoteInsetsControllerControlsSystemBars(boolean controlsSystemBars) {
        this.mRemoteInsetsControllerControlsSystemBars = controlsSystemBars;
    }

    void updateBarControlTarget(WindowState focusedWin) {
        if (focusedWin != null && focusedWin.mAttrs.type == 3) {
            return;
        }
        if (this.mFocusedWin != focusedWin) {
            abortTransient();
        }
        this.mFocusedWin = focusedWin;
        boolean forceShowsSystemBarsForWindowingMode = forceShowsSystemBarsForWindowingMode();
        InsetsControlTarget statusControlTarget = getStatusControlTarget(focusedWin, forceShowsSystemBarsForWindowingMode);
        InsetsControlTarget navControlTarget = getNavControlTarget(focusedWin, forceShowsSystemBarsForWindowingMode);
        this.mStateController.onBarControlTargetChanged(statusControlTarget, getFakeControlTarget(focusedWin, statusControlTarget), navControlTarget, getFakeControlTarget(focusedWin, navControlTarget));
        if (ViewRootImpl.sNewInsetsMode != 2) {
            return;
        }
        this.mStatusBar.updateVisibility(statusControlTarget, 0);
        this.mNavBar.updateVisibility(navControlTarget, 1);
        this.mPolicy.updateHideNavInputEventReceiver();
    }

    boolean isHidden(int type) {
        InsetsSourceProvider provider = this.mStateController.peekSourceProvider(type);
        return (provider == null || !provider.hasWindow() || provider.getSource().isVisible()) ? false : true;
    }

    void showTransient(int[] types) {
        boolean changed = false;
        for (int i = types.length - 1; i >= 0; i--) {
            int type = types[i];
            if (isHidden(type) && this.mShowingTransientTypes.indexOf(type) == -1) {
                this.mShowingTransientTypes.add(type);
                changed = true;
            }
        }
        if (changed) {
            this.mPolicy.getStatusBarManagerInternal().showTransient(this.mDisplayContent.getDisplayId(), this.mShowingTransientTypes.toArray());
            updateBarControlTarget(this.mFocusedWin);
            this.mDisplayContent.mWmService.mAnimator.getChoreographer().postFrameCallback(new Choreographer.FrameCallback() { // from class: com.android.server.wm.-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    this.f$0.lambda$showTransient$1$InsetsPolicy(j);
                }
            });
        }
    }

    public /* synthetic */ void lambda$showTransient$1$InsetsPolicy(long time) {
        synchronized (this.mDisplayContent.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                InsetsState state = new InsetsState(this.mStateController.getRawInsetsState());
                startAnimation(true, new Runnable() { // from class: com.android.server.wm.-$$Lambda$InsetsPolicy$LCR2QgJZxbNat6Qb0Be-JDpy3i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showTransient$0$InsetsPolicy();
                    }
                }, state);
                this.mStateController.onInsetsModified(this.mDummyControlTarget, state);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public /* synthetic */ void lambda$showTransient$0$InsetsPolicy() {
        synchronized (this.mDisplayContent.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mStateController.notifyInsetsChanged();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void hideTransient() {
        if (this.mShowingTransientTypes.size() == 0) {
            return;
        }
        InsetsState state = new InsetsState(this.mStateController.getRawInsetsState());
        startAnimation(false, new Runnable() { // from class: com.android.server.wm.-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hideTransient$2$InsetsPolicy();
            }
        }, state);
        this.mStateController.onInsetsModified(this.mDummyControlTarget, state);
    }

    public /* synthetic */ void lambda$hideTransient$2$InsetsPolicy() {
        synchronized (this.mDisplayContent.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mShowingTransientTypes.clear();
                this.mStateController.notifyInsetsChanged();
                updateBarControlTarget(this.mFocusedWin);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    boolean isTransient(int type) {
        return this.mShowingTransientTypes.indexOf(type) != -1;
    }

    InsetsState getInsetsForDispatch(WindowState target) {
        InsetsState originalState = this.mStateController.getInsetsForDispatch(target);
        InsetsState state = originalState;
        for (int i = this.mShowingTransientTypes.size() - 1; i >= 0; i--) {
            int type = this.mShowingTransientTypes.get(i);
            InsetsSource originalSource = state.peekSource(type);
            if (originalSource != null && originalSource.isVisible()) {
                if (state == originalState) {
                    state = new InsetsState(originalState);
                }
                InsetsSource source = new InsetsSource(originalSource);
                source.setVisible(false);
                state.addSource(source);
            }
        }
        return state;
    }

    void onInsetsModified(WindowState windowState, InsetsState state) {
        this.mStateController.onInsetsModified(windowState, state);
        checkAbortTransient(windowState, state);
        updateBarControlTarget(this.mFocusedWin);
    }

    private void checkAbortTransient(WindowState windowState, InsetsState state) {
        if (this.mShowingTransientTypes.size() != 0) {
            IntArray abortTypes = new IntArray();
            for (int i = this.mShowingTransientTypes.size() - 1; i >= 0; i--) {
                int type = this.mShowingTransientTypes.get(i);
                if (this.mStateController.isFakeTarget(type, windowState) && state.getSource(type).isVisible()) {
                    this.mShowingTransientTypes.remove(i);
                    abortTypes.add(type);
                }
            }
            int i2 = abortTypes.size();
            if (i2 > 0) {
                this.mPolicy.getStatusBarManagerInternal().abortTransient(this.mDisplayContent.getDisplayId(), abortTypes.toArray());
            }
        }
    }

    private void abortTransient() {
        this.mPolicy.getStatusBarManagerInternal().abortTransient(this.mDisplayContent.getDisplayId(), this.mShowingTransientTypes.toArray());
        this.mShowingTransientTypes.clear();
    }

    private InsetsControlTarget getFakeControlTarget(WindowState focused, InsetsControlTarget realControlTarget) {
        if (realControlTarget == this.mDummyControlTarget) {
            return focused;
        }
        return null;
    }

    private InsetsControlTarget getStatusControlTarget(WindowState focusedWin, boolean forceShowsSystemBarsForWindowingMode) {
        if (this.mShowingTransientTypes.indexOf(0) != -1) {
            return this.mDummyControlTarget;
        }
        if (focusedWin == this.mPolicy.getNotificationShade()) {
            return focusedWin;
        }
        if (remoteInsetsControllerControlsSystemBars(focusedWin)) {
            this.mDisplayContent.mRemoteInsetsControlTarget.topFocusedWindowChanged(focusedWin.mAttrs.packageName);
            return this.mDisplayContent.mRemoteInsetsControlTarget;
        }
        if (forceShowsSystemBarsForWindowingMode) {
            return null;
        }
        if (forceShowsStatusBarTransiently()) {
            return this.mDummyControlTarget;
        }
        if (!canBeTopFullscreenOpaqueWindow(focusedWin) && this.mPolicy.topAppHidesStatusBar()) {
            return this.mPolicy.getTopFullscreenOpaqueWindow();
        }
        return focusedWin;
    }

    private static boolean canBeTopFullscreenOpaqueWindow(WindowState win) {
        boolean nonAttachedAppWindow = win != null && win.mAttrs.type >= 1 && win.mAttrs.type <= 99;
        return nonAttachedAppWindow && win.mAttrs.isFullscreen() && !win.isFullyTransparent() && !win.inMultiWindowMode();
    }

    private InsetsControlTarget getNavControlTarget(WindowState focusedWin, boolean forceShowsSystemBarsForWindowingMode) {
        if (this.mShowingTransientTypes.indexOf(1) != -1) {
            return this.mDummyControlTarget;
        }
        if (focusedWin == this.mPolicy.getNotificationShade()) {
            return focusedWin;
        }
        if (remoteInsetsControllerControlsSystemBars(focusedWin)) {
            this.mDisplayContent.mRemoteInsetsControlTarget.topFocusedWindowChanged(focusedWin.mAttrs.packageName);
            return this.mDisplayContent.mRemoteInsetsControlTarget;
        }
        if (forceShowsSystemBarsForWindowingMode) {
            return null;
        }
        if (forceShowsNavigationBarTransiently()) {
            return this.mDummyControlTarget;
        }
        return focusedWin;
    }

    boolean remoteInsetsControllerControlsSystemBars(WindowState focusedWin) {
        DisplayContent displayContent;
        return focusedWin != null && this.mRemoteInsetsControllerControlsSystemBars && (displayContent = this.mDisplayContent) != null && displayContent.mRemoteInsetsControlTarget != null && focusedWin.getAttrs().type >= 1 && focusedWin.getAttrs().type <= 99;
    }

    private boolean forceShowsStatusBarTransiently() {
        WindowState win = this.mPolicy.getStatusBar();
        return (win == null || (win.mAttrs.privateFlags & 4096) == 0) ? false : true;
    }

    private boolean forceShowsNavigationBarTransiently() {
        WindowState win = this.mPolicy.getNotificationShade();
        return (win == null || (win.mAttrs.privateFlags & 8388608) == 0) ? false : true;
    }

    private boolean forceShowsSystemBarsForWindowingMode() {
        boolean isDockedStackVisible = this.mDisplayContent.getDefaultTaskDisplayArea().isStackVisible(3);
        boolean isFreeformStackVisible = this.mDisplayContent.getDefaultTaskDisplayArea().isStackVisible(5);
        boolean isResizing = this.mDisplayContent.getDockedDividerController().isResizing();
        return isDockedStackVisible || isFreeformStackVisible || isResizing;
    }

    void startAnimation(boolean show, Runnable callback, InsetsState state) {
        int typesReady = 0;
        SparseArray<InsetsSourceControl> controls = new SparseArray<>();
        IntArray showingTransientTypes = this.mShowingTransientTypes;
        for (int i = showingTransientTypes.size() - 1; i >= 0; i--) {
            int type = showingTransientTypes.get(i);
            InsetsSourceProvider provider = this.mStateController.getSourceProvider(type);
            InsetsSourceControl control = provider.getControl(this.mDummyControlTarget);
            if (control != null && control.getLeash() != null) {
                typesReady |= InsetsState.toPublicType(type);
                controls.put(control.getType(), new InsetsSourceControl(control));
                state.setSourceVisible(type, show);
            }
        }
        controlAnimationUnchecked(typesReady, controls, show, callback);
    }

    private void controlAnimationUnchecked(int typesReady, SparseArray<InsetsSourceControl> controls, boolean show, Runnable callback) {
        InsetsPolicyAnimationControlListener listener = new InsetsPolicyAnimationControlListener(show, callback, typesReady);
        listener.mControlCallbacks.controlAnimationUnchecked(typesReady, controls, show);
    }

    private class BarWindow {
        private final int mId;
        private int mState = 0;

        BarWindow(int id) {
            this.mId = id;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateVisibility(InsetsControlTarget controlTarget, int type) {
            WindowState controllingWin = controlTarget instanceof WindowState ? (WindowState) controlTarget : null;
            setVisible(controllingWin == null || controllingWin.getRequestedInsetsState().getSourceOrDefaultVisibility(type));
        }

        private void setVisible(boolean visible) {
            int state = visible ? 0 : 2;
            if (this.mState != state) {
                this.mState = state;
                InsetsPolicy.this.mPolicy.getStatusBarManagerInternal().setWindowState(InsetsPolicy.this.mDisplayContent.getDisplayId(), this.mId, state);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class InsetsPolicyAnimationControlListener extends InsetsController.InternalAnimationControlListener {
        InsetsPolicyAnimationControlCallbacks mControlCallbacks;
        Runnable mFinishCallback;

        InsetsPolicyAnimationControlListener(boolean show, Runnable finishCallback, int types) {
            super(show, false, types, false, (int) ((InsetsPolicy.this.mDisplayContent.getDisplayMetrics().density * (-80.0f)) + 0.5f));
            this.mFinishCallback = finishCallback;
            this.mControlCallbacks = new InsetsPolicyAnimationControlCallbacks(this);
        }

        protected void onAnimationFinish() {
            super.onAnimationFinish();
            DisplayThread.getHandler().post(this.mFinishCallback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        class InsetsPolicyAnimationControlCallbacks implements InsetsAnimationControlCallbacks {
            private InsetsAnimationControlImpl mAnimationControl = null;
            private InsetsPolicyAnimationControlListener mListener;

            InsetsPolicyAnimationControlCallbacks(InsetsPolicyAnimationControlListener listener) {
                this.mListener = listener;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Type inference failed for: r5v0, types: [android.view.WindowInsetsAnimationControlListener, com.android.server.wm.InsetsPolicy$InsetsPolicyAnimationControlListener] */
            public void controlAnimationUnchecked(final int i, SparseArray<InsetsSourceControl> sparseArray, boolean z) {
                if (i != 0) {
                    InsetsPolicy.this.mAnimatingShown = z;
                    Rect bounds = InsetsPolicy.this.mFocusedWin.getDisplayContent().getBounds();
                    InsetsState state = getState();
                    ?? r5 = this.mListener;
                    this.mAnimationControl = new InsetsAnimationControlImpl(sparseArray, bounds, state, (WindowInsetsAnimationControlListener) r5, i, this, r5.getDurationMs(), InsetsController.SYSTEM_BARS_INTERPOLATOR, !z ? 1 : 0);
                    SurfaceAnimationThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks$g4iZp8JC81kbnUW8925AyPjUE34
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$controlAnimationUnchecked$0$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks(i);
                        }
                    });
                }
            }

            public /* synthetic */ void lambda$controlAnimationUnchecked$0$InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks(int typesReady) {
                this.mListener.onReady(this.mAnimationControl, typesReady);
            }

            public void scheduleApplyChangeInsets(InsetsAnimationControlRunner runner) {
                InsetsState state = getState();
                if (this.mAnimationControl.applyChangeInsets(state)) {
                    this.mAnimationControl.finish(InsetsPolicy.this.mAnimatingShown);
                }
            }

            public void notifyFinished(InsetsAnimationControlRunner runner, boolean shown) {
            }

            private InsetsState getState() {
                InsetsState overrideState = new InsetsState(InsetsPolicy.this.mFocusedWin.getRequestedInsetsState(), true);
                overrideState.setDisplayFrame(InsetsPolicy.this.mFocusedWin.getDisplayContent().getBounds());
                return overrideState;
            }

            public void applySurfaceParams(SyncRtSurfaceTransactionApplier.SurfaceParams... params) {
                SurfaceControl.Transaction t = new SurfaceControl.Transaction();
                for (int i = params.length - 1; i >= 0; i--) {
                    SyncRtSurfaceTransactionApplier.SurfaceParams surfaceParams = params[i];
                    SyncRtSurfaceTransactionApplier.applyParams(t, surfaceParams, InsetsPolicy.this.mTmpFloat9);
                }
                t.apply();
                t.close();
            }

            public void releaseSurfaceControlFromRt(SurfaceControl sc) {
                sc.release();
            }

            public void startAnimation(InsetsAnimationControlImpl controller, WindowInsetsAnimationControlListener listener, int types, WindowInsetsAnimation animation, WindowInsetsAnimation.Bounds bounds) {
            }

            public void reportPerceptible(int types, boolean perceptible) {
            }
        }
    }
}
