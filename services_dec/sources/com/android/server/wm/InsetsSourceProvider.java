package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.proto.ProtoOutputStream;
import android.view.InsetsSource;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.SurfaceControl;
import android.view.ViewRootImpl;
import com.android.internal.util.function.TriConsumer;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class InsetsSourceProvider {
    private ControlAdapter mAdapter;
    private boolean mClientVisible;
    private InsetsSourceControl mControl;
    private InsetsControlTarget mControlTarget;
    private final boolean mControllable;
    protected final DisplayContent mDisplayContent;
    private final InsetsSourceControl mFakeControl;
    private InsetsControlTarget mFakeControlTarget;
    private TriConsumer<DisplayFrames, WindowState, Rect> mFrameProvider;
    private TriConsumer<DisplayFrames, WindowState, Rect> mImeFrameProvider;
    private boolean mIsLeashReadyForDispatching;
    private InsetsControlTarget mPendingControlTarget;
    private boolean mSeamlessRotating;
    private boolean mServerVisible;
    protected final InsetsSource mSource;
    private final InsetsStateController mStateController;
    protected WindowState mWin;
    private final Rect mTmpRect = new Rect();
    private final Rect mImeOverrideFrame = new Rect();
    private long mFinishSeamlessRotateFrameNumber = -1;

    InsetsSourceProvider(InsetsSource source, InsetsStateController stateController, DisplayContent displayContent) {
        this.mClientVisible = InsetsState.getDefaultVisibility(source.getType());
        this.mSource = source;
        this.mDisplayContent = displayContent;
        this.mStateController = stateController;
        this.mFakeControl = new InsetsSourceControl(source.getType(), (SurfaceControl) null, new Point());
        int type = source.getType();
        if (type == 0 || type == 1 || type == 18 || type == 19) {
            this.mControllable = ViewRootImpl.sNewInsetsMode == 2;
        } else if (type == 17) {
            this.mControllable = ViewRootImpl.sNewInsetsMode >= 1;
        } else {
            this.mControllable = false;
        }
    }

    InsetsSource getSource() {
        return this.mSource;
    }

    boolean isControllable() {
        return this.mControllable;
    }

    void setWindow(WindowState win, TriConsumer<DisplayFrames, WindowState, Rect> frameProvider, TriConsumer<DisplayFrames, WindowState, Rect> imeFrameProvider) {
        WindowState windowState = this.mWin;
        if (windowState != null) {
            if (this.mControllable) {
                windowState.setControllableInsetProvider(null);
            }
            this.mWin.cancelAnimation();
        }
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(win);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, -395922585, 0, null, protoLogParam0);
        }
        this.mWin = win;
        this.mFrameProvider = frameProvider;
        this.mImeFrameProvider = imeFrameProvider;
        if (win == null) {
            setServerVisible(false);
            this.mSource.setFrame(new Rect());
            this.mSource.setVisibleFrame((Rect) null);
        } else if (this.mControllable) {
            win.setControllableInsetProvider(this);
            InsetsControlTarget insetsControlTarget = this.mPendingControlTarget;
            if (insetsControlTarget != null) {
                updateControlForTarget(insetsControlTarget, true);
                this.mPendingControlTarget = null;
            }
        }
    }

    boolean hasWindow() {
        return this.mWin != null;
    }

    void updateSourceFrame() {
        WindowState windowState = this.mWin;
        if (windowState == null) {
            return;
        }
        if (this.mServerVisible) {
            this.mTmpRect.set(windowState.getFrameLw());
            TriConsumer<DisplayFrames, WindowState, Rect> triConsumer = this.mFrameProvider;
            if (triConsumer != null) {
                triConsumer.accept(this.mWin.getDisplayContent().mDisplayFrames, this.mWin, this.mTmpRect);
            } else {
                this.mTmpRect.inset(this.mWin.mGivenContentInsets);
            }
        } else {
            this.mTmpRect.setEmpty();
        }
        this.mSource.setFrame(this.mTmpRect);
        if (this.mImeFrameProvider != null) {
            this.mImeOverrideFrame.set(this.mWin.getFrameLw());
            this.mImeFrameProvider.accept(this.mWin.getDisplayContent().mDisplayFrames, this.mWin, this.mImeOverrideFrame);
        }
        if (this.mWin.mGivenVisibleInsets.left != 0 || this.mWin.mGivenVisibleInsets.top != 0 || this.mWin.mGivenVisibleInsets.right != 0 || this.mWin.mGivenVisibleInsets.bottom != 0) {
            this.mTmpRect.set(this.mWin.getFrameLw());
            this.mTmpRect.inset(this.mWin.mGivenVisibleInsets);
            this.mSource.setVisibleFrame(this.mTmpRect);
            return;
        }
        this.mSource.setVisibleFrame((Rect) null);
    }

    InsetsSource createSimulatedSource(DisplayFrames displayFrames, WindowFrames windowFrames) {
        InsetsSource source = new InsetsSource(this.mSource.getType());
        source.setVisible(this.mSource.isVisible());
        this.mTmpRect.set(windowFrames.mFrame);
        TriConsumer<DisplayFrames, WindowState, Rect> triConsumer = this.mFrameProvider;
        if (triConsumer != null) {
            triConsumer.accept(displayFrames, this.mWin, this.mTmpRect);
        }
        source.setFrame(this.mTmpRect);
        return source;
    }

    void onPostLayout() {
        InsetsControlTarget insetsControlTarget;
        WindowState windowState = this.mWin;
        if (windowState == null) {
            return;
        }
        setServerVisible(windowState.wouldBeVisibleIfPolicyIgnored() && this.mWin.isVisibleByPolicy() && !this.mWin.mGivenInsetsPending);
        updateSourceFrame();
        if (this.mControl != null) {
            Rect frame = this.mWin.getWindowFrames().mFrame;
            if (this.mControl.setSurfacePosition(frame.left, frame.top) && (insetsControlTarget = this.mControlTarget) != null) {
                updateControlForTarget(insetsControlTarget, true);
                this.mStateController.notifyControlChanged(this.mControlTarget);
            }
        }
    }

    void updateControlForFakeTarget(InsetsControlTarget fakeTarget) {
        if (fakeTarget == this.mFakeControlTarget) {
            return;
        }
        this.mFakeControlTarget = fakeTarget;
    }

    void updateControlForTarget(InsetsControlTarget target, boolean force) {
        if (this.mSeamlessRotating) {
            return;
        }
        if (target != null && target.getWindow() != null) {
            target = target.getWindow().getImeControlTarget();
        }
        WindowState windowState = this.mWin;
        if (windowState != null && windowState.getSurfaceControl() == null) {
            setWindow(null, null, null);
        }
        if (this.mWin == null) {
            this.mPendingControlTarget = target;
            return;
        }
        if (target == this.mControlTarget && !force) {
            return;
        }
        if (target == null) {
            this.mWin.cancelAnimation();
            setClientVisible(InsetsState.getDefaultVisibility(this.mSource.getType()));
            return;
        }
        this.mAdapter = new ControlAdapter();
        if (getSource().getType() == 17) {
            setClientVisible(target.getImeRequestedVisibility(this.mSource.getType()));
        }
        SurfaceControl.Transaction t = this.mDisplayContent.getPendingTransaction();
        this.mWin.startAnimation(t, this.mAdapter, !this.mClientVisible, 32);
        this.mIsLeashReadyForDispatching = false;
        SurfaceControl leash = this.mAdapter.mCapturedLeash;
        long frameNumber = this.mFinishSeamlessRotateFrameNumber;
        this.mFinishSeamlessRotateFrameNumber = -1L;
        if (frameNumber >= 0 && this.mWin.mHasSurface && leash != null) {
            SurfaceControl barrier = this.mWin.getClientViewRootSurface();
            t.deferTransactionUntil(this.mWin.getSurfaceControl(), barrier, frameNumber);
            t.deferTransactionUntil(leash, barrier, frameNumber);
        }
        this.mControlTarget = target;
        updateVisibility();
        this.mControl = new InsetsSourceControl(this.mSource.getType(), leash, new Point(this.mWin.getWindowFrames().mFrame.left, this.mWin.getWindowFrames().mFrame.top));
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(this.mControl);
            String protoLogParam1 = String.valueOf(this.mControlTarget);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 29780972, 0, null, protoLogParam0, protoLogParam1);
        }
    }

    void startSeamlessRotation() {
        if (!this.mSeamlessRotating) {
            this.mSeamlessRotating = true;
            this.mWin.cancelAnimation();
        }
    }

    void finishSeamlessRotation(boolean timeout) {
        if (this.mSeamlessRotating) {
            this.mSeamlessRotating = false;
            this.mFinishSeamlessRotateFrameNumber = timeout ? -1L : this.mWin.getFrameNumber();
        }
    }

    boolean onInsetsModified(InsetsControlTarget caller, InsetsSource modifiedSource) {
        if (this.mControlTarget != caller || modifiedSource.isVisible() == this.mClientVisible) {
            return false;
        }
        setClientVisible(modifiedSource.isVisible());
        return true;
    }

    void onSurfaceTransactionApplied() {
        this.mIsLeashReadyForDispatching = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClientVisible(boolean clientVisible) {
        if (this.mClientVisible == clientVisible) {
            return;
        }
        this.mClientVisible = clientVisible;
        this.mDisplayContent.mWmService.mH.obtainMessage(63, this.mDisplayContent).sendToTarget();
        updateVisibility();
    }

    void setServerVisible(boolean serverVisible) {
        this.mServerVisible = serverVisible;
        updateVisibility();
    }

    private void updateVisibility() {
        this.mSource.setVisible(this.mServerVisible && (isMirroredSource() || this.mClientVisible));
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(this.mServerVisible);
            String protoLogParam1 = String.valueOf(this.mClientVisible);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, -112805366, 0, null, protoLogParam0, protoLogParam1);
        }
    }

    private boolean isMirroredSource() {
        int[] provides;
        WindowState windowState = this.mWin;
        if (windowState == null || (provides = windowState.mAttrs.providesInsetsTypes) == null) {
            return false;
        }
        for (int i : provides) {
            if (i == 17) {
                return true;
            }
        }
        return false;
    }

    InsetsSourceControl getControl(InsetsControlTarget target) {
        if (target == this.mControlTarget) {
            if (!this.mIsLeashReadyForDispatching && this.mControl != null) {
                return new InsetsSourceControl(this.mControl.getType(), (SurfaceControl) null, this.mControl.getSurfacePosition());
            }
            return this.mControl;
        }
        if (target == this.mFakeControlTarget) {
            return this.mFakeControl;
        }
        return null;
    }

    InsetsControlTarget getControlTarget() {
        return this.mControlTarget;
    }

    boolean isClientVisible() {
        return ViewRootImpl.sNewInsetsMode == 0 || this.mClientVisible;
    }

    boolean overridesImeFrame() {
        return this.mImeFrameProvider != null;
    }

    Rect getImeOverrideFrame() {
        return this.mImeOverrideFrame;
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.println(prefix + "InsetsSourceProvider");
        pw.print(prefix + " mSource=");
        this.mSource.dump(prefix + "  ", pw);
        if (this.mControl != null) {
            pw.print(prefix + " mControl=");
            this.mControl.dump(prefix + "  ", pw);
        }
        pw.print(prefix + " mFakeControl=");
        this.mFakeControl.dump(prefix + "  ", pw);
        pw.print(" mIsLeashReadyForDispatching=");
        pw.print(this.mIsLeashReadyForDispatching);
        pw.print(" mImeOverrideFrame=");
        pw.print(this.mImeOverrideFrame.toString());
        if (this.mWin != null) {
            pw.print(prefix + " mWin=");
            this.mWin.dump(pw, prefix + "  ", false);
        }
        if (this.mAdapter != null) {
            pw.print(prefix + " mAdapter=");
            this.mAdapter.dump(pw, prefix + "  ");
        }
        if (this.mControlTarget != null) {
            pw.print(prefix + " mControlTarget=");
            if (this.mControlTarget.getWindow() != null) {
                this.mControlTarget.getWindow().dump(pw, prefix + "  ", false);
            }
        }
        if (this.mPendingControlTarget != null) {
            pw.print(prefix + " mPendingControlTarget=");
            if (this.mPendingControlTarget.getWindow() != null) {
                this.mPendingControlTarget.getWindow().dump(pw, prefix + "  ", false);
            }
        }
        if (this.mFakeControlTarget != null) {
            pw.print(prefix + " mFakeControlTarget=");
            if (this.mFakeControlTarget.getWindow() != null) {
                this.mFakeControlTarget.getWindow().dump(pw, prefix + "  ", false);
            }
        }
    }

    private class ControlAdapter implements AnimationAdapter {
        private SurfaceControl mCapturedLeash;

        private ControlAdapter() {
        }

        @Override // com.android.server.wm.AnimationAdapter
        public boolean getShowWallpaper() {
            return false;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void startAnimation(SurfaceControl animationLeash, SurfaceControl.Transaction t, int type, SurfaceAnimator.OnAnimationFinishedCallback finishCallback) {
            if (InsetsSourceProvider.this.mSource.getType() == 17) {
                t.setAlpha(animationLeash, 1.0f);
                t.hide(animationLeash);
            }
            if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                String protoLogParam0 = String.valueOf(InsetsSourceProvider.this.mSource);
                String protoLogParam1 = String.valueOf(InsetsSourceProvider.this.mControlTarget);
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_IME, 75707221, 0, null, protoLogParam0, protoLogParam1);
            }
            this.mCapturedLeash = animationLeash;
            Rect frame = InsetsSourceProvider.this.mWin.getWindowFrames().mFrame;
            t.setPosition(this.mCapturedLeash, frame.left, frame.top);
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void onAnimationCancelled(SurfaceControl animationLeash) {
            if (InsetsSourceProvider.this.mAdapter == this) {
                InsetsSourceProvider.this.mStateController.notifyControlRevoked(InsetsSourceProvider.this.mControlTarget, InsetsSourceProvider.this);
                InsetsSourceProvider.this.mControl = null;
                InsetsSourceProvider.this.mControlTarget = null;
                InsetsSourceProvider.this.mAdapter = null;
                InsetsSourceProvider insetsSourceProvider = InsetsSourceProvider.this;
                insetsSourceProvider.setClientVisible(InsetsState.getDefaultVisibility(insetsSourceProvider.mSource.getType()));
                if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                    String protoLogParam0 = String.valueOf(InsetsSourceProvider.this.mSource);
                    String protoLogParam1 = String.valueOf(InsetsSourceProvider.this.mControlTarget);
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_IME, 73987756, 0, null, protoLogParam0, protoLogParam1);
                }
            }
        }

        @Override // com.android.server.wm.AnimationAdapter
        public long getDurationHint() {
            return 0L;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public long getStatusBarTransitionsStartTime() {
            return 0L;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void dump(PrintWriter pw, String prefix) {
            pw.println(prefix + "ControlAdapter");
            pw.print(prefix + " mCapturedLeash=");
            pw.print(this.mCapturedLeash);
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void dumpDebug(ProtoOutputStream proto) {
        }
    }
}
