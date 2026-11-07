package com.android.server.wm;

import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.SurfaceControl;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class SurfaceAnimator {
    static final int ANIMATION_TYPE_ALL = -1;
    static final int ANIMATION_TYPE_APP_TRANSITION = 1;
    static final int ANIMATION_TYPE_DIMMER = 4;
    static final int ANIMATION_TYPE_FIXED_TRANSFORM = 64;
    static final int ANIMATION_TYPE_INSETS_CONTROL = 32;
    static final int ANIMATION_TYPE_NONE = 0;
    static final int ANIMATION_TYPE_RECENTS = 8;
    static final int ANIMATION_TYPE_SCREEN_ROTATION = 2;
    static final int ANIMATION_TYPE_WINDOW_ANIMATION = 16;
    private static final String TAG = "WindowManager";
    final Animatable mAnimatable;
    private AnimationAdapter mAnimation;
    private OnAnimationFinishedCallback mAnimationFinishedCallback;
    private boolean mAnimationStartDelayed;
    private int mAnimationType;
    private final OnAnimationFinishedCallback mInnerAnimationFinishedCallback;
    SurfaceControl mLeash;
    private final WindowManagerService mService;
    final OnAnimationFinishedCallback mStaticAnimationFinishedCallback;

    @Retention(RetentionPolicy.SOURCE)
    @interface AnimationType {
    }

    interface OnAnimationFinishedCallback {
        void onAnimationFinished(int i, AnimationAdapter animationAdapter);
    }

    SurfaceAnimator(Animatable animatable, OnAnimationFinishedCallback staticAnimationFinishedCallback, WindowManagerService service) {
        this.mAnimatable = animatable;
        this.mService = service;
        this.mStaticAnimationFinishedCallback = staticAnimationFinishedCallback;
        this.mInnerAnimationFinishedCallback = getFinishedCallback(staticAnimationFinishedCallback);
    }

    private OnAnimationFinishedCallback getFinishedCallback(final OnAnimationFinishedCallback staticAnimationFinishedCallback) {
        return new OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg
            @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
            public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                this.f$0.lambda$getFinishedCallback$1$SurfaceAnimator(staticAnimationFinishedCallback, i, animationAdapter);
            }
        };
    }

    public /* synthetic */ void lambda$getFinishedCallback$1$SurfaceAnimator(final OnAnimationFinishedCallback staticAnimationFinishedCallback, final int type, final AnimationAdapter anim) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                SurfaceAnimator target = this.mService.mAnimationTransferMap.remove(anim);
                if (target != null) {
                    target.mInnerAnimationFinishedCallback.onAnimationFinished(type, anim);
                } else {
                    if (anim != this.mAnimation) {
                        return;
                    }
                    Runnable resetAndInvokeFinish = new Runnable() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimator$qxm0Z0Ve0b3lKnyQQMgWVQfTP3Q
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$getFinishedCallback$0$SurfaceAnimator(anim, staticAnimationFinishedCallback, type);
                        }
                    };
                    if (!this.mAnimatable.shouldDeferAnimationFinish(resetAndInvokeFinish) && !anim.shouldDeferAnimationFinish(resetAndInvokeFinish)) {
                        resetAndInvokeFinish.run();
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public /* synthetic */ void lambda$getFinishedCallback$0$SurfaceAnimator(AnimationAdapter anim, OnAnimationFinishedCallback staticAnimationFinishedCallback, int type) {
        if (anim != this.mAnimation) {
            return;
        }
        OnAnimationFinishedCallback animationFinishCallback = this.mAnimationFinishedCallback;
        reset(this.mAnimatable.getPendingTransaction(), true);
        if (staticAnimationFinishedCallback != null) {
            staticAnimationFinishedCallback.onAnimationFinished(type, anim);
        }
        if (animationFinishCallback != null) {
            animationFinishCallback.onAnimationFinished(type, anim);
        }
    }

    void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, boolean hidden, int type, OnAnimationFinishedCallback animationFinishedCallback, SurfaceFreezer freezer) {
        cancelAnimation(t, true, true);
        this.mAnimation = anim;
        this.mAnimationType = type;
        this.mAnimationFinishedCallback = animationFinishedCallback;
        SurfaceControl surface = this.mAnimatable.getSurfaceControl();
        if (surface == null) {
            Slog.w(TAG, "Unable to start animation, surface is null or no children.");
            cancelAnimation();
            return;
        }
        SurfaceControl surfaceControlTakeLeashForAnimation = freezer != null ? freezer.takeLeashForAnimation() : null;
        this.mLeash = surfaceControlTakeLeashForAnimation;
        if (surfaceControlTakeLeashForAnimation == null) {
            Animatable animatable = this.mAnimatable;
            SurfaceControl surfaceControlCreateAnimationLeash = createAnimationLeash(animatable, surface, t, type, animatable.getSurfaceWidth(), this.mAnimatable.getSurfaceHeight(), 0, 0, hidden, this.mService.mTransactionFactory);
            this.mLeash = surfaceControlCreateAnimationLeash;
            this.mAnimatable.onAnimationLeashCreated(t, surfaceControlCreateAnimationLeash);
        }
        this.mAnimatable.onLeashAnimationStarting(t, this.mLeash);
        if (!this.mAnimationStartDelayed) {
            this.mAnimation.startAnimation(this.mLeash, t, type, this.mInnerAnimationFinishedCallback);
        }
    }

    void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, boolean hidden, int type, OnAnimationFinishedCallback animationFinishedCallback) {
        startAnimation(t, anim, hidden, type, animationFinishedCallback, null);
    }

    void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, boolean hidden, int type) {
        startAnimation(t, anim, hidden, type, null);
    }

    void startDelayingAnimationStart() {
        if (!isAnimating()) {
            this.mAnimationStartDelayed = true;
        }
    }

    void endDelayingAnimationStart() {
        AnimationAdapter animationAdapter;
        boolean delayed = this.mAnimationStartDelayed;
        this.mAnimationStartDelayed = false;
        if (delayed && (animationAdapter = this.mAnimation) != null) {
            animationAdapter.startAnimation(this.mLeash, this.mAnimatable.getPendingTransaction(), this.mAnimationType, this.mInnerAnimationFinishedCallback);
            this.mAnimatable.commitPendingTransaction();
        }
    }

    boolean isAnimating() {
        return this.mAnimation != null;
    }

    int getAnimationType() {
        return this.mAnimationType;
    }

    AnimationAdapter getAnimation() {
        return this.mAnimation;
    }

    void cancelAnimation() {
        cancelAnimation(this.mAnimatable.getPendingTransaction(), false, true);
        this.mAnimatable.commitPendingTransaction();
    }

    void setLayer(SurfaceControl.Transaction t, int layer) {
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl == null) {
            surfaceControl = this.mAnimatable.getSurfaceControl();
        }
        t.setLayer(surfaceControl, layer);
    }

    void setRelativeLayer(SurfaceControl.Transaction t, SurfaceControl relativeTo, int layer) {
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl == null) {
            surfaceControl = this.mAnimatable.getSurfaceControl();
        }
        t.setRelativeLayer(surfaceControl, relativeTo, layer);
    }

    void reparent(SurfaceControl.Transaction t, SurfaceControl newParent) {
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl == null) {
            surfaceControl = this.mAnimatable.getSurfaceControl();
        }
        t.reparent(surfaceControl, newParent);
    }

    boolean hasLeash() {
        return this.mLeash != null;
    }

    void transferAnimation(SurfaceAnimator from) {
        if (from.mLeash == null) {
            return;
        }
        SurfaceControl surface = this.mAnimatable.getSurfaceControl();
        SurfaceControl parent = this.mAnimatable.getAnimationLeashParent();
        if (surface == null || parent == null) {
            Slog.w(TAG, "Unable to transfer animation, surface or parent is null");
            cancelAnimation();
            return;
        }
        endDelayingAnimationStart();
        SurfaceControl.Transaction t = this.mAnimatable.getPendingTransaction();
        cancelAnimation(t, true, true);
        this.mLeash = from.mLeash;
        this.mAnimation = from.mAnimation;
        this.mAnimationType = from.mAnimationType;
        this.mAnimationFinishedCallback = from.mAnimationFinishedCallback;
        from.cancelAnimation(t, false, false);
        t.reparent(surface, this.mLeash);
        t.reparent(this.mLeash, parent);
        this.mAnimatable.onAnimationLeashCreated(t, this.mLeash);
        this.mService.mAnimationTransferMap.put(this.mAnimation, this);
    }

    boolean isAnimationStartDelayed() {
        return this.mAnimationStartDelayed;
    }

    private void cancelAnimation(SurfaceControl.Transaction t, boolean restarting, boolean forwardCancel) {
        SurfaceControl leash = this.mLeash;
        AnimationAdapter animation = this.mAnimation;
        int animationType = this.mAnimationType;
        OnAnimationFinishedCallback animationFinishedCallback = this.mAnimationFinishedCallback;
        reset(t, false);
        if (animation != null) {
            if (!this.mAnimationStartDelayed && forwardCancel) {
                animation.onAnimationCancelled(leash);
            }
            if (!restarting) {
                OnAnimationFinishedCallback onAnimationFinishedCallback = this.mStaticAnimationFinishedCallback;
                if (onAnimationFinishedCallback != null) {
                    onAnimationFinishedCallback.onAnimationFinished(animationType, animation);
                }
                if (animationFinishedCallback != null) {
                    animationFinishedCallback.onAnimationFinished(animationType, animation);
                }
            }
        }
        if (forwardCancel && leash != null) {
            t.remove(leash);
            this.mService.scheduleAnimationLocked();
        }
        if (!restarting) {
            this.mAnimationStartDelayed = false;
        }
    }

    private void reset(SurfaceControl.Transaction t, boolean destroyLeash) {
        this.mService.mAnimationTransferMap.remove(this.mAnimation);
        this.mAnimation = null;
        this.mAnimationFinishedCallback = null;
        this.mAnimationType = 0;
        if (this.mLeash == null) {
            return;
        }
        SurfaceControl leash = this.mLeash;
        this.mLeash = null;
        boolean scheduleAnim = removeLeash(t, this.mAnimatable, leash, destroyLeash);
        if (scheduleAnim) {
            this.mService.scheduleAnimationLocked();
        }
    }

    static boolean removeLeash(SurfaceControl.Transaction t, Animatable animatable, SurfaceControl leash, boolean destroy) {
        boolean scheduleAnim = false;
        SurfaceControl surface = animatable.getSurfaceControl();
        SurfaceControl parent = animatable.getParentSurfaceControl();
        boolean reparent = surface != null;
        if (reparent && surface.isValid() && parent != null && parent.isValid()) {
            t.reparent(surface, parent);
            scheduleAnim = true;
        }
        if (destroy) {
            t.remove(leash);
            scheduleAnim = true;
        }
        if (reparent) {
            animatable.onAnimationLeashLost(t);
            return true;
        }
        return scheduleAnim;
    }

    static SurfaceControl createAnimationLeash(Animatable animatable, SurfaceControl surface, SurfaceControl.Transaction t, int type, int width, int height, int x, int y, boolean hidden, Supplier<SurfaceControl.Transaction> transactionFactory) {
        SurfaceControl.Builder builder = animatable.makeAnimationLeash().setParent(animatable.getAnimationLeashParent()).setName(surface + " - animation-leash").setHidden(hidden).setEffectLayer().setCallsite("SurfaceAnimator.createAnimationLeash");
        SurfaceControl leash = builder.build();
        t.setWindowCrop(leash, width, height);
        t.setPosition(leash, (float) x, (float) y);
        t.show(leash);
        t.setAlpha(leash, hidden ? 0.0f : 1.0f);
        t.reparent(surface, leash);
        return leash;
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        AnimationAdapter animationAdapter = this.mAnimation;
        if (animationAdapter != null) {
            animationAdapter.dumpDebug(proto, 1146756268035L);
        }
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl != null) {
            surfaceControl.dumpDebug(proto, 1146756268033L);
        }
        proto.write(1133871366146L, this.mAnimationStartDelayed);
        proto.end(token);
    }

    void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("mLeash=");
        pw.print(this.mLeash);
        pw.print(" mAnimationType=" + this.mAnimationType);
        pw.println(this.mAnimationStartDelayed ? " mAnimationStartDelayed=true" : "");
        pw.print(prefix);
        pw.print("Animation: ");
        pw.println(this.mAnimation);
        AnimationAdapter animationAdapter = this.mAnimation;
        if (animationAdapter != null) {
            animationAdapter.dump(pw, prefix + "  ");
        }
    }

    interface Animatable {
        void commitPendingTransaction();

        SurfaceControl getAnimationLeashParent();

        SurfaceControl getParentSurfaceControl();

        SurfaceControl.Transaction getPendingTransaction();

        SurfaceControl getSurfaceControl();

        int getSurfaceHeight();

        int getSurfaceWidth();

        SurfaceControl.Builder makeAnimationLeash();

        void onAnimationLeashCreated(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl);

        void onAnimationLeashLost(SurfaceControl.Transaction transaction);

        default void onLeashAnimationStarting(SurfaceControl.Transaction t, SurfaceControl leash) {
        }

        default boolean shouldDeferAnimationFinish(Runnable endDeferFinishCallback) {
            return false;
        }
    }
}
