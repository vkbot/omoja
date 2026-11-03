package com.android.launcher3;

import android.animation.ValueAnimator;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.util.DefaultDisplay;

/* JADX INFO: loaded from: classes.dex */
public class FirstFrameAnimatorHelper implements ViewTreeObserver.OnDrawListener, View.OnAttachStateChangeListener {
    private static final boolean DEBUG = false;
    private static final int MAX_DELAY = 1000;
    private static final String TAG = "FirstFrameAnimatorHlpr";
    private long mGlobalFrameCount;
    private View mRootView;

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        this.mGlobalFrameCount++;
    }

    public FirstFrameAnimatorHelper(View target) {
        target.addOnAttachStateChangeListener(this);
        if (target.isAttachedToWindow()) {
            onViewAttachedToWindow(target);
        }
    }

    public <T extends ValueAnimator> T addTo(T anim) {
        anim.addUpdateListener(new MyListener());
        return anim;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        View rootView = view.getRootView();
        this.mRootView = rootView;
        rootView.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        View view2 = this.mRootView;
        if (view2 != null) {
            view2.getViewTreeObserver().removeOnDrawListener(this);
            this.mRootView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class MyListener implements ValueAnimator.AnimatorUpdateListener {
        private boolean mAdjustedSecondFrameTime;
        private boolean mHandlingOnAnimationUpdate;
        private long mStartFrame;
        private long mStartTime;

        private MyListener() {
            this.mStartTime = -1L;
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00aa A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:37:0x00ac  */
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(final ValueAnimator animation) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.mStartTime == -1) {
                this.mStartFrame = FirstFrameAnimatorHelper.this.mGlobalFrameCount;
                this.mStartTime = jCurrentTimeMillis;
            }
            long currentPlayTime = animation.getCurrentPlayTime();
            boolean z = Float.compare(1.0f, animation.getAnimatedFraction()) == 0;
            if (this.mHandlingOnAnimationUpdate || FirstFrameAnimatorHelper.this.mRootView == null || FirstFrameAnimatorHelper.this.mRootView.getWindowVisibility() != 0 || currentPlayTime >= animation.getDuration() || z) {
                return;
            }
            this.mHandlingOnAnimationUpdate = true;
            long j = FirstFrameAnimatorHelper.this.mGlobalFrameCount - this.mStartFrame;
            if (j != 0 || jCurrentTimeMillis >= this.mStartTime + 1000 || currentPlayTime <= 0) {
                int singleFrameMs = DefaultDisplay.getSingleFrameMs(FirstFrameAnimatorHelper.this.mRootView.getContext());
                if (j == 1) {
                    long j2 = this.mStartTime;
                    if (jCurrentTimeMillis < 1000 + j2 && !this.mAdjustedSecondFrameTime) {
                        long j3 = singleFrameMs;
                        if (jCurrentTimeMillis > j2 + j3 && currentPlayTime > j3) {
                            animation.setCurrentPlayTime(j3);
                            this.mAdjustedSecondFrameTime = true;
                        } else if (j > 1) {
                            FirstFrameAnimatorHelper.this.mRootView.post(new Runnable() { // from class: com.android.launcher3.FirstFrameAnimatorHelper$MyListener$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m22x52bb68e7(animation);
                                }
                            });
                        }
                    } else if (j > 1) {
                        FirstFrameAnimatorHelper.this.mRootView.post(new Runnable() { // from class: com.android.launcher3.FirstFrameAnimatorHelper$MyListener$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m22x52bb68e7(animation);
                            }
                        });
                    }
                } else if (j > 1) {
                    FirstFrameAnimatorHelper.this.mRootView.post(new Runnable() { // from class: com.android.launcher3.FirstFrameAnimatorHelper$MyListener$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m22x52bb68e7(animation);
                        }
                    });
                }
            } else {
                FirstFrameAnimatorHelper.this.mRootView.invalidate();
                animation.setCurrentPlayTime(0L);
            }
            this.mHandlingOnAnimationUpdate = false;
        }

        /* JADX INFO: renamed from: lambda$onAnimationUpdate$0$com-android-launcher3-FirstFrameAnimatorHelper$MyListener, reason: not valid java name */
        /* synthetic */ void m22x52bb68e7(ValueAnimator valueAnimator) {
            valueAnimator.removeUpdateListener(this);
        }

        public void print(ValueAnimator animation) {
            Log.d(FirstFrameAnimatorHelper.TAG, FirstFrameAnimatorHelper.this.mGlobalFrameCount + "(" + (FirstFrameAnimatorHelper.this.mGlobalFrameCount - this.mStartFrame) + ") " + FirstFrameAnimatorHelper.this.mRootView + " dirty? " + FirstFrameAnimatorHelper.this.mRootView.isDirty() + " " + (animation.getCurrentPlayTime() / animation.getDuration()) + " " + this + " " + animation);
        }
    }
}
