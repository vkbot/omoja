package com.android.server.wm;

import android.animation.AnimationHandler;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.PowerManagerInternal;
import android.util.ArrayMap;
import android.view.Choreographer;
import android.view.SurfaceControl;
import com.android.internal.graphics.SfVsyncFrameCallbackProvider;
import com.android.server.AnimationThread;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class SurfaceAnimationRunner {
    private final AnimationHandler mAnimationHandler;
    private boolean mAnimationStartDeferred;
    private final Handler mAnimationThreadHandler;
    private final AnimatorFactory mAnimatorFactory;
    private boolean mApplyScheduled;
    private final Runnable mApplyTransactionRunnable;
    private final Object mCancelLock;
    Choreographer mChoreographer;
    private final SurfaceControl.Transaction mFrameTransaction;
    private final Object mLock;
    final ArrayMap<SurfaceControl, RunningAnimation> mPendingAnimations;
    private final PowerManagerInternal mPowerManagerInternal;
    final ArrayMap<SurfaceControl, RunningAnimation> mRunningAnimations;
    private final Handler mSurfaceAnimationHandler;

    interface AnimatorFactory {
        ValueAnimator makeAnimator();
    }

    SurfaceAnimationRunner(Supplier<SurfaceControl.Transaction> transactionFactory, PowerManagerInternal powerManagerInternal) {
        this(null, null, transactionFactory.get(), powerManagerInternal);
    }

    SurfaceAnimationRunner(AnimationHandler.AnimationFrameCallbackProvider callbackProvider, AnimatorFactory animatorFactory, SurfaceControl.Transaction frameTransaction, PowerManagerInternal powerManagerInternal) {
        AnimationHandler.AnimationFrameCallbackProvider sfVsyncFrameCallbackProvider;
        AnimatorFactory animatorFactory2;
        this.mLock = new Object();
        this.mCancelLock = new Object();
        this.mAnimationThreadHandler = AnimationThread.getHandler();
        this.mSurfaceAnimationHandler = SurfaceAnimationThread.getHandler();
        this.mApplyTransactionRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.applyTransaction();
            }
        };
        this.mPendingAnimations = new ArrayMap<>();
        this.mRunningAnimations = new ArrayMap<>();
        this.mSurfaceAnimationHandler.runWithScissors(new Runnable() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$SurfaceAnimationRunner();
            }
        }, 0L);
        this.mFrameTransaction = frameTransaction;
        AnimationHandler animationHandler = new AnimationHandler();
        this.mAnimationHandler = animationHandler;
        if (callbackProvider != null) {
            sfVsyncFrameCallbackProvider = callbackProvider;
        } else {
            sfVsyncFrameCallbackProvider = new SfVsyncFrameCallbackProvider(this.mChoreographer);
        }
        animationHandler.setProvider(sfVsyncFrameCallbackProvider);
        if (animatorFactory != null) {
            animatorFactory2 = animatorFactory;
        } else {
            animatorFactory2 = new AnimatorFactory() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE
                @Override // com.android.server.wm.SurfaceAnimationRunner.AnimatorFactory
                public final ValueAnimator makeAnimator() {
                    return this.f$0.lambda$new$1$SurfaceAnimationRunner();
                }
            };
        }
        this.mAnimatorFactory = animatorFactory2;
        this.mPowerManagerInternal = powerManagerInternal;
    }

    public /* synthetic */ void lambda$new$0$SurfaceAnimationRunner() {
        this.mChoreographer = Choreographer.getSfInstance();
    }

    public /* synthetic */ ValueAnimator lambda$new$1$SurfaceAnimationRunner() {
        return new SfValueAnimator();
    }

    void deferStartingAnimations() {
        synchronized (this.mLock) {
            this.mAnimationStartDeferred = true;
        }
    }

    void continueStartingAnimations() {
        synchronized (this.mLock) {
            this.mAnimationStartDeferred = false;
            if (!this.mPendingAnimations.isEmpty()) {
                this.mChoreographer.postFrameCallback(new $$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60(this));
            }
        }
    }

    void startAnimation(LocalAnimationAdapter.AnimationSpec a, SurfaceControl animationLeash, SurfaceControl.Transaction t, Runnable finishCallback) {
        synchronized (this.mLock) {
            RunningAnimation runningAnim = new RunningAnimation(a, animationLeash, finishCallback);
            this.mPendingAnimations.put(animationLeash, runningAnim);
            if (!this.mAnimationStartDeferred) {
                this.mChoreographer.postFrameCallback(new $$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60(this));
            }
            applyTransformation(runningAnim, t, 0L);
        }
    }

    void onAnimationCancelled(SurfaceControl leash) {
        synchronized (this.mLock) {
            if (this.mPendingAnimations.containsKey(leash)) {
                this.mPendingAnimations.remove(leash);
                return;
            }
            final RunningAnimation anim = this.mRunningAnimations.get(leash);
            if (anim != null) {
                this.mRunningAnimations.remove(leash);
                synchronized (this.mCancelLock) {
                    anim.mCancelled = true;
                }
                this.mSurfaceAnimationHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAnimationCancelled$2$SurfaceAnimationRunner(anim);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$onAnimationCancelled$2$SurfaceAnimationRunner(RunningAnimation anim) {
        anim.mAnim.cancel();
        applyTransaction();
    }

    private void startPendingAnimationsLocked() {
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            startAnimationLocked(this.mPendingAnimations.valueAt(i));
        }
        this.mPendingAnimations.clear();
    }

    private void startAnimationLocked(final RunningAnimation a) {
        final ValueAnimator anim = this.mAnimatorFactory.makeAnimator();
        anim.overrideDurationScale(1.0f);
        anim.setDuration(a.mAnimSpec.getDuration());
        anim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.server.wm.-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startAnimationLocked$3$SurfaceAnimationRunner(a, anim, valueAnimator);
            }
        });
        anim.addListener(new AnimatorListenerAdapter() { // from class: com.android.server.wm.SurfaceAnimationRunner.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                synchronized (SurfaceAnimationRunner.this.mCancelLock) {
                    if (!a.mCancelled) {
                        SurfaceAnimationRunner.this.mFrameTransaction.setAlpha(a.mLeash, 1.0f);
                    }
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                synchronized (SurfaceAnimationRunner.this.mLock) {
                    SurfaceAnimationRunner.this.mRunningAnimations.remove(a.mLeash);
                    synchronized (SurfaceAnimationRunner.this.mCancelLock) {
                        if (!a.mCancelled) {
                            SurfaceAnimationRunner.this.mAnimationThreadHandler.post(a.mFinishCallback);
                        }
                    }
                }
            }
        });
        a.mAnim = anim;
        this.mRunningAnimations.put(a.mLeash, a);
        anim.start();
        if (a.mAnimSpec.canSkipFirstFrame()) {
            anim.setCurrentPlayTime(this.mChoreographer.getFrameIntervalNanos() / 1000000);
        }
        anim.doAnimationFrame(this.mChoreographer.getFrameTime());
    }

    public /* synthetic */ void lambda$startAnimationLocked$3$SurfaceAnimationRunner(RunningAnimation a, ValueAnimator anim, ValueAnimator animation) {
        synchronized (this.mCancelLock) {
            if (!a.mCancelled) {
                long duration = anim.getDuration();
                long currentPlayTime = anim.getCurrentPlayTime();
                if (currentPlayTime > duration) {
                    currentPlayTime = duration;
                }
                applyTransformation(a, this.mFrameTransaction, currentPlayTime);
            }
        }
        scheduleApplyTransaction();
    }

    private void applyTransformation(RunningAnimation a, SurfaceControl.Transaction t, long currentPlayTime) {
        a.mAnimSpec.apply(t, a.mLeash, currentPlayTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAnimations(long frameTimeNanos) {
        synchronized (this.mLock) {
            startPendingAnimationsLocked();
        }
        this.mPowerManagerInternal.powerHint(2, 0);
    }

    private void scheduleApplyTransaction() {
        if (!this.mApplyScheduled) {
            this.mChoreographer.postCallback(3, this.mApplyTransactionRunnable, null);
            this.mApplyScheduled = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTransaction() {
        this.mFrameTransaction.setAnimationTransaction();
        this.mFrameTransaction.apply();
        this.mApplyScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class RunningAnimation {
        ValueAnimator mAnim;
        final LocalAnimationAdapter.AnimationSpec mAnimSpec;
        private boolean mCancelled;
        final Runnable mFinishCallback;
        final SurfaceControl mLeash;

        RunningAnimation(LocalAnimationAdapter.AnimationSpec animSpec, SurfaceControl leash, Runnable finishCallback) {
            this.mAnimSpec = animSpec;
            this.mLeash = leash;
            this.mFinishCallback = finishCallback;
        }
    }

    private class SfValueAnimator extends ValueAnimator {
        SfValueAnimator() {
            setFloatValues(0.0f, 1.0f);
        }

        public AnimationHandler getAnimationHandler() {
            return SurfaceAnimationRunner.this.mAnimationHandler;
        }
    }
}
