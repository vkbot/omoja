package com.android.launcher3.remoteanim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Handler;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.DefaultDisplay;
import com.android.systemui.shared.system.RemoteAnimationRunnerCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;

/* JADX INFO: loaded from: classes.dex */
public abstract class LauncherAnimationRunner implements RemoteAnimationRunnerCompat, WrappedAnimationRunnerImpl {
    private static final String TAG = "LauncherAnimationRunner";
    private AnimationResult mAnimationResult;
    private final Handler mHandler;
    private final boolean mStartAtFrontOfQueue;

    @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
    public abstract void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, AnimationResult result);

    public LauncherAnimationRunner(Handler handler, boolean startAtFrontOfQueue) {
        this.mHandler = handler;
        this.mStartAtFrontOfQueue = startAtFrontOfQueue;
    }

    @Override // com.android.systemui.shared.system.RemoteAnimationRunnerCompat
    public void onAnimationStart(final RemoteAnimationTargetCompat[] appTargets, final RemoteAnimationTargetCompat[] wallpaperTargets, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.android.launcher3.remoteanim.LauncherAnimationRunner$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m143x2e44b41f(runnable, appTargets, wallpaperTargets);
            }
        };
        if (this.mStartAtFrontOfQueue) {
            Utilities.postAtFrontOfQueueAsynchronously(this.mHandler, runnable2);
        } else {
            Utilities.postAsyncCallback(this.mHandler, runnable2);
        }
    }

    /* JADX INFO: renamed from: lambda$onAnimationStart$1$com-android-launcher3-remoteanim-LauncherAnimationRunner, reason: not valid java name */
    /* synthetic */ void m143x2e44b41f(final Runnable runnable, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2) {
        finishExistingAnimation();
        AnimationResult animationResult = new AnimationResult(new Runnable() { // from class: com.android.launcher3.remoteanim.LauncherAnimationRunner$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m142xa1579d00(runnable);
            }
        });
        this.mAnimationResult = animationResult;
        onCreateAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2, animationResult);
    }

    /* JADX INFO: renamed from: lambda$onAnimationStart$0$com-android-launcher3-remoteanim-LauncherAnimationRunner, reason: not valid java name */
    /* synthetic */ void m142xa1579d00(Runnable runnable) {
        runnable.run();
        this.mAnimationResult = null;
    }

    @Deprecated
    public void onAnimationStart(RemoteAnimationTargetCompat[] appTargets, Runnable runnable) {
        onAnimationStart(appTargets, new RemoteAnimationTargetCompat[0], runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishExistingAnimation() {
        AnimationResult animationResult = this.mAnimationResult;
        if (animationResult != null) {
            animationResult.finish();
            this.mAnimationResult = null;
        }
    }

    @Override // com.android.systemui.shared.system.RemoteAnimationRunnerCompat
    public void onAnimationCancelled() {
        Utilities.postAsyncCallback(this.mHandler, new Runnable() { // from class: com.android.launcher3.remoteanim.LauncherAnimationRunner$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finishExistingAnimation();
            }
        });
    }

    public static final class AnimationResult {
        private AnimatorSet mAnimator;
        private final Runnable mFinishRunnable;
        private boolean mFinished;
        private boolean mInitialized;

        private AnimationResult(Runnable finishRunnable) {
            this.mFinished = false;
            this.mInitialized = false;
            this.mFinishRunnable = finishRunnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finish() {
            if (this.mFinished) {
                return;
            }
            this.mFinishRunnable.run();
            this.mFinished = true;
        }

        public void setAnimation(AnimatorSet animation, Context context) {
            if (this.mInitialized) {
                throw new IllegalStateException("Animation already initialized");
            }
            this.mInitialized = true;
            this.mAnimator = animation;
            if (animation == null) {
                finish();
                return;
            }
            if (this.mFinished) {
                animation.start();
                this.mAnimator.end();
            } else {
                animation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.remoteanim.LauncherAnimationRunner.AnimationResult.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation2) {
                        AnimationResult.this.finish();
                    }
                });
                this.mAnimator.start();
                this.mAnimator.setCurrentPlayTime(Math.min(DefaultDisplay.getSingleFrameMs(context), this.mAnimator.getTotalDuration()));
            }
        }
    }
}
