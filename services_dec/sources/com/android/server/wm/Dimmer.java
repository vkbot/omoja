package com.android.server.wm;

import android.graphics.Rect;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import android.view.Surface;
import android.view.SurfaceControl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class Dimmer {
    private static final int DEFAULT_DIM_ANIM_DURATION = 200;
    private static final String TAG = "WindowManager";
    DimState mDimState;
    private WindowContainer mHost;
    private WindowContainer mLastRequestedDimContainer;
    private final SurfaceAnimatorStarter mSurfaceAnimatorStarter;

    interface SurfaceAnimatorStarter {
        void startAnimation(SurfaceAnimator surfaceAnimator, SurfaceControl.Transaction transaction, AnimationAdapter animationAdapter, boolean z, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DimAnimatable implements SurfaceAnimator.Animatable {
        private SurfaceControl mDimLayer;

        private DimAnimatable(SurfaceControl dimLayer) {
            this.mDimLayer = dimLayer;
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public SurfaceControl.Transaction getPendingTransaction() {
            return Dimmer.this.mHost.getSyncTransaction();
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public void commitPendingTransaction() {
            Dimmer.this.mHost.commitPendingTransaction();
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public void onAnimationLeashCreated(SurfaceControl.Transaction t, SurfaceControl leash) {
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public void onAnimationLeashLost(SurfaceControl.Transaction t) {
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public SurfaceControl.Builder makeAnimationLeash() {
            return Dimmer.this.mHost.makeAnimationLeash();
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public SurfaceControl getAnimationLeashParent() {
            return Dimmer.this.mHost.getSurfaceControl();
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public SurfaceControl getSurfaceControl() {
            return this.mDimLayer;
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public SurfaceControl getParentSurfaceControl() {
            return Dimmer.this.mHost.getSurfaceControl();
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public int getSurfaceWidth() {
            return Dimmer.this.mHost.getSurfaceWidth();
        }

        @Override // com.android.server.wm.SurfaceAnimator.Animatable
        public int getSurfaceHeight() {
            return Dimmer.this.mHost.getSurfaceHeight();
        }

        void removeSurface() {
            SurfaceControl surfaceControl = this.mDimLayer;
            if (surfaceControl != null && surfaceControl.isValid()) {
                getPendingTransaction().remove(this.mDimLayer);
            }
            this.mDimLayer = null;
        }
    }

    class DimState {
        boolean isVisible;
        SurfaceControl mDimLayer;
        boolean mDontReset;
        SurfaceAnimator mSurfaceAnimator;
        boolean mAnimateExit = true;
        boolean mDimming = true;

        DimState(SurfaceControl dimLayer) {
            this.mDimLayer = dimLayer;
            final DimAnimatable dimAnimatable = new DimAnimatable(dimLayer);
            this.mSurfaceAnimator = new SurfaceAnimator(dimAnimatable, new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$Dimmer$DimState$wU1YjYaM1_enRLsRLQ25SnC1ECw
                @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
                public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                    this.f$0.lambda$new$0$Dimmer$DimState(dimAnimatable, i, animationAdapter);
                }
            }, Dimmer.this.mHost.mWmService);
        }

        public /* synthetic */ void lambda$new$0$Dimmer$DimState(DimAnimatable dimAnimatable, int type, AnimationAdapter anim) {
            if (!this.mDimming) {
                dimAnimatable.removeSurface();
            }
        }
    }

    Dimmer(WindowContainer host) {
        this(host, new SurfaceAnimatorStarter() { // from class: com.android.server.wm.-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE
            @Override // com.android.server.wm.Dimmer.SurfaceAnimatorStarter
            public final void startAnimation(SurfaceAnimator surfaceAnimator, SurfaceControl.Transaction transaction, AnimationAdapter animationAdapter, boolean z, int i) {
                surfaceAnimator.startAnimation(transaction, animationAdapter, z, i);
            }
        });
    }

    Dimmer(WindowContainer host, SurfaceAnimatorStarter surfaceAnimatorStarter) {
        this.mHost = host;
        this.mSurfaceAnimatorStarter = surfaceAnimatorStarter;
    }

    private SurfaceControl makeDimLayer() {
        return this.mHost.makeChildSurface(null).setParent(this.mHost.getSurfaceControl()).setColorLayer().setName("Dim Layer for - " + this.mHost.getName()).setCallsite("Dimmer.makeDimLayer").build();
    }

    private DimState getDimState(WindowContainer container) {
        if (this.mDimState == null) {
            try {
                SurfaceControl ctl = makeDimLayer();
                DimState dimState = new DimState(ctl);
                this.mDimState = dimState;
                if (container == null) {
                    dimState.mDontReset = true;
                }
            } catch (Surface.OutOfResourcesException e) {
                Log.w(TAG, "OutOfResourcesException creating dim surface");
            }
        }
        this.mLastRequestedDimContainer = container;
        return this.mDimState;
    }

    private void dim(SurfaceControl.Transaction t, WindowContainer container, int relativeLayer, float alpha) {
        DimState d = getDimState(container);
        if (d == null) {
            return;
        }
        if (container != null) {
            t.setRelativeLayer(d.mDimLayer, container.getSurfaceControl(), relativeLayer);
        } else {
            t.setLayer(d.mDimLayer, Integer.MAX_VALUE);
        }
        t.setAlpha(d.mDimLayer, alpha);
        d.mDimming = true;
    }

    void stopDim(SurfaceControl.Transaction t) {
        DimState dimState = this.mDimState;
        if (dimState != null) {
            t.hide(dimState.mDimLayer);
            this.mDimState.isVisible = false;
            this.mDimState.mDontReset = false;
        }
    }

    void dimAbove(SurfaceControl.Transaction t, float alpha) {
        dim(t, null, 1, alpha);
    }

    void dimAbove(SurfaceControl.Transaction t, WindowContainer container, float alpha) {
        dim(t, container, 1, alpha);
    }

    void dimBelow(SurfaceControl.Transaction t, WindowContainer container, float alpha) {
        dim(t, container, -1, alpha);
    }

    void resetDimStates() {
        DimState dimState = this.mDimState;
        if (dimState != null && !dimState.mDontReset) {
            this.mDimState.mDimming = false;
        }
    }

    void dontAnimateExit() {
        DimState dimState = this.mDimState;
        if (dimState != null) {
            dimState.mAnimateExit = false;
        }
    }

    boolean updateDims(SurfaceControl.Transaction t, Rect bounds) {
        DimState dimState = this.mDimState;
        if (dimState == null) {
            return false;
        }
        if (!dimState.mDimming) {
            if (!this.mDimState.mAnimateExit) {
                if (this.mDimState.mDimLayer.isValid()) {
                    t.remove(this.mDimState.mDimLayer);
                }
            } else {
                startDimExit(this.mLastRequestedDimContainer, this.mDimState.mSurfaceAnimator, t);
            }
            this.mDimState = null;
            return false;
        }
        t.setPosition(this.mDimState.mDimLayer, bounds.left, bounds.top);
        t.setWindowCrop(this.mDimState.mDimLayer, bounds.width(), bounds.height());
        if (!this.mDimState.isVisible) {
            this.mDimState.isVisible = true;
            t.show(this.mDimState.mDimLayer);
            startDimEnter(this.mLastRequestedDimContainer, this.mDimState.mSurfaceAnimator, t);
        }
        return true;
    }

    private void startDimEnter(WindowContainer container, SurfaceAnimator animator, SurfaceControl.Transaction t) {
        startAnim(container, animator, t, 0.0f, 1.0f);
    }

    private void startDimExit(WindowContainer container, SurfaceAnimator animator, SurfaceControl.Transaction t) {
        startAnim(container, animator, t, 1.0f, 0.0f);
    }

    private void startAnim(WindowContainer container, SurfaceAnimator animator, SurfaceControl.Transaction t, float startAlpha, float endAlpha) {
        this.mSurfaceAnimatorStarter.startAnimation(animator, t, new LocalAnimationAdapter(new AlphaAnimationSpec(startAlpha, endAlpha, getDimDuration(container)), this.mHost.mWmService.mSurfaceAnimationRunner), false, 4);
    }

    private long getDimDuration(WindowContainer container) {
        if (container == null) {
            return 0L;
        }
        AnimationAdapter animationAdapter = container.mSurfaceAnimator.getAnimation();
        if (animationAdapter == null) {
            return 200L;
        }
        return animationAdapter.getDurationHint();
    }

    private static class AlphaAnimationSpec implements LocalAnimationAdapter.AnimationSpec {
        private final long mDuration;
        private final float mFromAlpha;
        private final float mToAlpha;

        AlphaAnimationSpec(float fromAlpha, float toAlpha, long duration) {
            this.mFromAlpha = fromAlpha;
            this.mToAlpha = toAlpha;
            this.mDuration = duration;
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public long getDuration() {
            return this.mDuration;
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public void apply(SurfaceControl.Transaction t, SurfaceControl sc, long currentPlayTime) {
            float fraction = getFraction(currentPlayTime);
            float f = this.mToAlpha;
            float f2 = this.mFromAlpha;
            float alpha = ((f - f2) * fraction) + f2;
            t.setAlpha(sc, alpha);
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public void dump(PrintWriter pw, String prefix) {
            pw.print(prefix);
            pw.print("from=");
            pw.print(this.mFromAlpha);
            pw.print(" to=");
            pw.print(this.mToAlpha);
            pw.print(" duration=");
            pw.println(this.mDuration);
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public void dumpDebugInner(ProtoOutputStream proto) {
            long token = proto.start(1146756268035L);
            proto.write(1108101562369L, this.mFromAlpha);
            proto.write(1108101562370L, this.mToAlpha);
            proto.write(1112396529667L, this.mDuration);
            proto.end(token);
        }
    }
}
