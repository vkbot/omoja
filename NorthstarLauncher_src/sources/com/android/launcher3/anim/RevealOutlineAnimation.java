package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
public abstract class RevealOutlineAnimation extends ViewOutlineProvider {
    protected Rect mOutline = new Rect();
    protected float mOutlineRadius;

    public float getRadius() {
        return this.mOutlineRadius;
    }

    abstract void setProgress(float progress);

    abstract boolean shouldRemoveElevationDuringAnimation();

    public ValueAnimator createRevealAnimator(final View revealView, boolean isReversed) {
        ValueAnimator valueAnimatorOfFloat = isReversed ? ValueAnimator.ofFloat(1.0f, 0.0f) : ValueAnimator.ofFloat(0.0f, 1.0f);
        final float elevation = revealView.getElevation();
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.RevealOutlineAnimation.1
            private boolean mIsClippedToOutline;
            private ViewOutlineProvider mOldOutlineProvider;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                this.mIsClippedToOutline = revealView.getClipToOutline();
                this.mOldOutlineProvider = revealView.getOutlineProvider();
                revealView.setOutlineProvider(RevealOutlineAnimation.this);
                revealView.setClipToOutline(true);
                if (RevealOutlineAnimation.this.shouldRemoveElevationDuringAnimation()) {
                    revealView.setTranslationZ(-elevation);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                revealView.setOutlineProvider(this.mOldOutlineProvider);
                revealView.setClipToOutline(this.mIsClippedToOutline);
                if (RevealOutlineAnimation.this.shouldRemoveElevationDuringAnimation()) {
                    revealView.setTranslationZ(0.0f);
                }
            }
        });
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.anim.RevealOutlineAnimation$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.m79x6142485c(revealView, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: lambda$createRevealAnimator$0$com-android-launcher3-anim-RevealOutlineAnimation, reason: not valid java name */
    /* synthetic */ void m79x6142485c(View view, ValueAnimator valueAnimator) {
        setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        view.invalidateOutline();
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View v, Outline outline) {
        outline.setRoundRect(this.mOutline, this.mOutlineRadius);
    }

    public void getOutline(Rect out) {
        out.set(this.mOutline);
    }
}
