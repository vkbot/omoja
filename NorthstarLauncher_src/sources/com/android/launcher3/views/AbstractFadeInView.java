package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFadeInView extends AbstractFloatingView implements SingleAxisSwipeDetector.Listener {
    protected static final float ALPHA_CLOSED = 0.0f;
    protected static final float ALPHA_OPENED = 1.0f;
    protected static final float TRANSLATION_SHIFT_CLOSED = 1.0f;
    protected static final float TRANSLATION_SHIFT_OPENED = 0.0f;
    protected float mAlphaShift;
    protected final ObjectAnimator mCloseAnimator;
    protected final View mColorScrim;
    protected View mContent;
    protected final Launcher mLauncher;
    protected boolean mNoIntercept;
    protected final ObjectAnimator mOpenCloseAnimator;
    protected Interpolator mScrollInterpolator;
    protected final SingleAxisSwipeDetector mSwipeDetector;
    protected float mTranslationShift;
    protected static final Property<AbstractFadeInView, Float> TRANSLATION_SHIFT = new Property<AbstractFadeInView, Float>(Float.class, "translationShift") { // from class: com.android.launcher3.views.AbstractFadeInView.1
        @Override // android.util.Property
        public Float get(AbstractFadeInView view) {
            return Float.valueOf(view.mTranslationShift);
        }

        @Override // android.util.Property
        public void set(AbstractFadeInView view, Float value) {
            view.setTranslationShift(value.floatValue());
        }
    };
    protected static final Property<AbstractFadeInView, Float> ALPHA_SHIFT = new Property<AbstractFadeInView, Float>(Float.class, "alphaShift") { // from class: com.android.launcher3.views.AbstractFadeInView.2
        @Override // android.util.Property
        public Float get(AbstractFadeInView view) {
            return Float.valueOf(view.mAlphaShift);
        }

        @Override // android.util.Property
        public void set(AbstractFadeInView view, Float value) {
            view.setAlphaShift(value.floatValue());
        }
    };

    protected int getScrimColor(Context context) {
        return -1;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean start, float startDisplacement) {
    }

    public AbstractFadeInView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTranslationShift = 1.0f;
        this.mAlphaShift = 1.0f;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        this.mScrollInterpolator = Interpolators.SCROLL_CUBIC;
        this.mSwipeDetector = new SingleAxisSwipeDetector(context, this, SingleAxisSwipeDetector.VERTICAL);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[0]);
        this.mOpenCloseAnimator = objectAnimatorOfPropertyValuesHolder;
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.AbstractFadeInView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                AbstractFadeInView.this.mSwipeDetector.finishedScrolling();
                AbstractFadeInView.this.announceAccessibilityChanges();
            }
        });
        ObjectAnimator objectAnimatorOfPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[0]);
        this.mCloseAnimator = objectAnimatorOfPropertyValuesHolder2;
        objectAnimatorOfPropertyValuesHolder2.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.AbstractFadeInView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                AbstractFadeInView.this.mSwipeDetector.finishedScrolling();
                AbstractFadeInView.this.announceAccessibilityChanges();
            }
        });
        int scrimColor = getScrimColor(launcher);
        this.mColorScrim = scrimColor != -1 ? createColorScrim(launcher, scrimColor) : null;
    }

    protected void attachToContainer() {
        if (this.mColorScrim != null) {
            getPopupContainer().addView(this.mColorScrim);
        }
        getPopupContainer().addView(this);
    }

    protected void setTranslationShift(float translationShift) {
        this.mTranslationShift = translationShift;
        View view = this.mContent;
        view.setTranslationY(translationShift * view.getHeight());
        View view2 = this.mColorScrim;
        if (view2 != null) {
            view2.setAlpha(1.0f - this.mTranslationShift);
        }
    }

    protected void setAlphaShift(float alphaShift) {
        this.mAlphaShift = alphaShift;
        this.mContent.setAlpha(alphaShift);
        View view = this.mColorScrim;
        if (view != null) {
            view.setAlpha(alphaShift);
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        if (this.mNoIntercept) {
            return false;
        }
        this.mSwipeDetector.setDetectableScrollConditions(this.mSwipeDetector.isIdleState() ? 2 : 0, false);
        this.mSwipeDetector.onTouchEvent(ev);
        return this.mSwipeDetector.isDraggingOrSettling() || !getPopupContainer().isEventOverView(this.mContent, ev);
    }

    @Override // com.android.launcher3.AbstractFloatingView, com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent ev) {
        this.mSwipeDetector.onTouchEvent(ev);
        if (ev.getAction() == 1 && this.mSwipeDetector.isIdleState() && !isOpeningAnimationRunning() && !getPopupContainer().isEventOverView(this.mContent, ev)) {
            close(true);
        }
        return true;
    }

    private boolean isOpeningAnimationRunning() {
        return this.mIsOpen && this.mOpenCloseAnimator.isRunning();
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float displacement) {
        float height = this.mContent.getHeight();
        setTranslationShift(Utilities.boundToRange(displacement, 0.0f, height) / height);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float velocity) {
        if ((this.mSwipeDetector.isFling(velocity) && velocity > 0.0f) || this.mTranslationShift > 0.5f) {
            this.mScrollInterpolator = Interpolators.scrollInterpolatorForVelocity(velocity);
            this.mCloseAnimator.setDuration(BaseSwipeDetector.calculateDuration(velocity, 1.0f - this.mTranslationShift));
            close(true);
        } else {
            this.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat(TRANSLATION_SHIFT, 0.0f));
            this.mOpenCloseAnimator.setDuration(BaseSwipeDetector.calculateDuration(velocity, this.mTranslationShift)).setInterpolator(Interpolators.DEACCEL);
            this.mOpenCloseAnimator.start();
        }
    }

    protected void handleClose(boolean animate, long defaultDuration) {
        if (this.mIsOpen) {
            if (!animate) {
                this.mOpenCloseAnimator.cancel();
                this.mCloseAnimator.cancel();
                setTranslationShift(0.0f);
                onCloseComplete();
                return;
            }
            this.mCloseAnimator.setValues(PropertyValuesHolder.ofFloat(ALPHA_SHIFT, 0.0f));
            this.mCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.AbstractFadeInView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    MLog.d("WidgetsTableSheet", "onAnimationEnd:");
                    AbstractFadeInView.this.onCloseComplete();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    MLog.d("WidgetsTableSheet", "onAnimationStart:");
                }
            });
            if (this.mSwipeDetector.isIdleState()) {
                this.mCloseAnimator.setDuration(defaultDuration).setInterpolator(Interpolators.ACCEL);
            } else {
                this.mCloseAnimator.setInterpolator(this.mScrollInterpolator);
            }
            this.mCloseAnimator.start();
        }
    }

    protected void onCloseComplete() {
        this.mIsOpen = false;
        getPopupContainer().removeView(this);
        if (this.mColorScrim != null) {
            getPopupContainer().removeView(this.mColorScrim);
        }
    }

    protected BaseDragLayer getPopupContainer() {
        return this.mLauncher.getDragLayer();
    }

    protected static View createColorScrim(Context context, int bgColor) {
        View view = new View(context);
        view.forceHasOverlappingRendering(false);
        view.setBackgroundColor(bgColor);
        BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(-1, -1);
        layoutParams.ignoreInsets = true;
        view.setLayoutParams(layoutParams);
        return view;
    }
}
