package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.graphics.IconShape;

/* JADX INFO: loaded from: classes.dex */
public class ClipIconView extends View implements ClipPathView {
    private static final int FG_TRANS_X_FACTOR = 60;
    private static final int FG_TRANS_Y_FACTOR = 75;
    private Drawable mBackground;
    private final int mBlurSizeOutline;
    private Path mClipPath;
    private final Rect mEndRevealRect;
    private final SpringAnimation mFgSpringX;
    private final SpringAnimation mFgSpringY;
    private float mFgTransX;
    private float mFgTransY;
    private final Rect mFinalDrawableBounds;
    private Drawable mForeground;
    private boolean mIsAdaptiveIcon;
    private final boolean mIsRtl;
    private final Rect mOutline;
    private ValueAnimator mRevealAnimator;
    private final Rect mStartRevealRect;
    private float mTaskCornerRadius;
    private static final Rect sTmpRect = new Rect();
    private static final FloatPropertyCompat<ClipIconView> mFgTransYProperty = new FloatPropertyCompat<ClipIconView>("ClipIconViewFgTransY") { // from class: com.android.launcher3.views.ClipIconView.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(ClipIconView view) {
            return view.mFgTransY;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(ClipIconView view, float transY) {
            view.mFgTransY = transY;
            view.invalidate();
        }
    };
    private static final FloatPropertyCompat<ClipIconView> mFgTransXProperty = new FloatPropertyCompat<ClipIconView>("ClipIconViewFgTransX") { // from class: com.android.launcher3.views.ClipIconView.2
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(ClipIconView view) {
            return view.mFgTransX;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(ClipIconView view, float transX) {
            view.mFgTransX = transX;
            view.invalidate();
        }
    };

    public ClipIconView(Context context) {
        this(context, null);
    }

    public ClipIconView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ClipIconView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsAdaptiveIcon = false;
        this.mStartRevealRect = new Rect();
        this.mEndRevealRect = new Rect();
        this.mOutline = new Rect();
        this.mFinalDrawableBounds = new Rect();
        this.mBlurSizeOutline = getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mFgSpringX = new SpringAnimation(this, mFgTransXProperty).setSpring(new SpringForce().setDampingRatio(0.75f).setStiffness(200.0f));
        this.mFgSpringY = new SpringAnimation(this, mFgTransYProperty).setSpring(new SpringForce().setDampingRatio(0.75f).setStiffness(200.0f));
    }

    public void update(RectF rect, float progress, float shapeProgressStart, float cornerRadius, boolean isOpening, View container, DeviceProfile dp, boolean isVerticalBarLayout) {
        float f;
        int marginStart;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) container.getLayoutParams();
        if (this.mIsRtl) {
            f = rect.left;
            marginStart = (dp.widthPx - marginLayoutParams.getMarginStart()) - marginLayoutParams.width;
        } else {
            f = rect.left;
            marginStart = marginLayoutParams.getMarginStart();
        }
        float f2 = f - marginStart;
        float f3 = rect.top - marginLayoutParams.topMargin;
        container.setTranslationX(f2);
        container.setTranslationY(f3);
        float fMin = Math.min(marginLayoutParams.width, marginLayoutParams.height);
        float fMax = Math.max(1.0f, Math.min(rect.width() / fMin, rect.height() / fMin));
        update(rect, progress, shapeProgressStart, cornerRadius, isOpening, fMax, fMin, marginLayoutParams, isVerticalBarLayout, dp);
        container.setPivotX(0.0f);
        container.setPivotY(0.0f);
        container.setScaleX(fMax);
        container.setScaleY(fMax);
        container.invalidate();
    }

    private void update(RectF rect, float progress, float shapeProgressStart, float cornerRadius, boolean isOpening, float scale, float minSize, ViewGroup.MarginLayoutParams parentLp, boolean isVerticalBarLayout, DeviceProfile dp) {
        float f;
        int marginStart;
        int i;
        if (this.mIsRtl) {
            f = rect.left;
            marginStart = (dp.widthPx - parentLp.getMarginStart()) - parentLp.width;
        } else {
            f = rect.left;
            marginStart = parentLp.getMarginStart();
        }
        float f2 = f - marginStart;
        float f3 = rect.top - parentLp.topMargin;
        float fBoundToRange = Utilities.boundToRange(Utilities.mapToRange(Math.max(shapeProgressStart, progress), shapeProgressStart, 1.0f, 0.0f, isOpening ? 10.0f : 1.0f, Interpolators.LINEAR), 0.0f, 1.0f);
        if (isVerticalBarLayout) {
            this.mOutline.right = (int) (rect.width() / scale);
        } else {
            this.mOutline.bottom = (int) (rect.height() / scale);
        }
        this.mTaskCornerRadius = cornerRadius / scale;
        if (this.mIsAdaptiveIcon) {
            if (!isOpening && progress >= shapeProgressStart) {
                if (this.mRevealAnimator == null) {
                    ValueAnimator valueAnimator = (ValueAnimator) IconShape.getShape().createRevealAnimator(this, this.mStartRevealRect, this.mOutline, this.mTaskCornerRadius, !isOpening);
                    this.mRevealAnimator = valueAnimator;
                    valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.ClipIconView.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animation) {
                            ClipIconView.this.mRevealAnimator = null;
                        }
                    });
                    this.mRevealAnimator.start();
                    this.mRevealAnimator.pause();
                }
                this.mRevealAnimator.setCurrentFraction(fBoundToRange);
            }
            Rect rect2 = this.mOutline;
            float fWidth = (isVerticalBarLayout ? rect2.width() : rect2.height()) / minSize;
            setBackgroundDrawableBounds(fWidth, isVerticalBarLayout);
            if (isOpening) {
                int iHeight = this.mFinalDrawableBounds.height();
                int iWidth = this.mFinalDrawableBounds.width();
                int i2 = 0;
                if (isVerticalBarLayout) {
                    i = 0;
                } else {
                    float f4 = iHeight;
                    i = (int) (((f4 * fWidth) - f4) / 2.0f);
                }
                if (isVerticalBarLayout) {
                    float f5 = iWidth;
                    i2 = (int) (((fWidth * f5) - f5) / 2.0f);
                }
                Rect rect3 = sTmpRect;
                rect3.set(this.mFinalDrawableBounds);
                rect3.offset(i2, i);
                this.mForeground.setBounds(rect3);
            } else {
                int i3 = (int) ((f2 / dp.availableWidthPx) * 60.0f);
                int i4 = (int) (75.0f * (f3 / dp.availableHeightPx));
                this.mFgSpringX.animateToFinalPosition(i3);
                this.mFgSpringY.animateToFinalPosition(i4);
            }
        }
        invalidate();
        invalidateOutline();
    }

    private void setBackgroundDrawableBounds(float scale, boolean isVerticalBarLayout) {
        Rect rect = sTmpRect;
        rect.set(this.mFinalDrawableBounds);
        Utilities.scaleRectAboutCenter(rect, scale);
        if (isVerticalBarLayout) {
            rect.offsetTo((int) (this.mFinalDrawableBounds.left * scale), rect.top);
        } else {
            rect.offsetTo(rect.left, (int) (this.mFinalDrawableBounds.top * scale));
        }
        this.mBackground.setBounds(rect);
    }

    protected void endReveal() {
        ValueAnimator valueAnimator = this.mRevealAnimator;
        if (valueAnimator != null) {
            valueAnimator.end();
        }
    }

    public void setIcon(Drawable drawable, int iconOffset, ViewGroup.MarginLayoutParams lp, boolean isOpening, boolean isVerticalBarLayout, DeviceProfile dp) {
        int marginStart;
        boolean z = drawable instanceof AdaptiveIconDrawable;
        this.mIsAdaptiveIcon = z;
        if (z) {
            boolean z2 = drawable instanceof FolderAdaptiveIcon;
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
            Drawable background = adaptiveIconDrawable.getBackground();
            if (background == null) {
                background = new ColorDrawable(0);
            }
            this.mBackground = background;
            Drawable foreground = adaptiveIconDrawable.getForeground();
            if (foreground == null) {
                foreground = new ColorDrawable(0);
            }
            this.mForeground = foreground;
            int i = lp.height;
            int i2 = lp.width;
            int i3 = this.mBlurSizeOutline / 2;
            this.mFinalDrawableBounds.set(0, 0, i2, i);
            if (!z2) {
                int i4 = iconOffset - i3;
                this.mFinalDrawableBounds.inset(i4, i4);
            }
            this.mForeground.setBounds(this.mFinalDrawableBounds);
            this.mBackground.setBounds(this.mFinalDrawableBounds);
            this.mStartRevealRect.set(0, 0, i2, i);
            if (!z2) {
                Utilities.scaleRectAboutCenter(this.mStartRevealRect, IconShape.getNormalizationScale());
            }
            if (isVerticalBarLayout) {
                lp.width = (int) Math.max(lp.width, lp.height * dp.aspectRatio);
            } else {
                lp.height = (int) Math.max(lp.height, lp.width * dp.aspectRatio);
            }
            if (this.mIsRtl) {
                marginStart = (dp.widthPx - lp.getMarginStart()) - lp.width;
            } else {
                marginStart = lp.leftMargin;
            }
            layout(marginStart, lp.topMargin, lp.width + marginStart, lp.topMargin + lp.height);
            float fMax = Math.max(lp.height / i, lp.width / i2);
            if (isOpening) {
                this.mOutline.set(0, 0, i2, i);
                fMax = 1.0f;
            } else {
                this.mOutline.set(0, 0, lp.width, lp.height);
            }
            setBackgroundDrawableBounds(fMax, isVerticalBarLayout);
            this.mEndRevealRect.set(0, 0, lp.width, lp.height);
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.views.ClipIconView.4
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(ClipIconView.this.mOutline, ClipIconView.this.mTaskCornerRadius);
                }
            });
            setClipToOutline(true);
        } else {
            setBackground(drawable);
            setClipToOutline(false);
        }
        invalidate();
        invalidateOutline();
    }

    @Override // com.android.launcher3.views.ClipPathView
    public void setClipPath(Path clipPath) {
        this.mClipPath = clipPath;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        Path path = this.mClipPath;
        if (path != null) {
            canvas.clipPath(path);
        }
        super.draw(canvas);
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        if (this.mForeground != null) {
            int iSave2 = canvas.save();
            canvas.translate(this.mFgTransX, this.mFgTransY);
            this.mForeground.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        canvas.restoreToCount(iSave);
    }

    void recycle() {
        setBackground(null);
        this.mIsAdaptiveIcon = false;
        this.mForeground = null;
        this.mBackground = null;
        this.mClipPath = null;
        this.mFinalDrawableBounds.setEmpty();
        ValueAnimator valueAnimator = this.mRevealAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mRevealAnimator = null;
        this.mTaskCornerRadius = 0.0f;
        this.mOutline.setEmpty();
        this.mFgTransY = 0.0f;
        this.mFgSpringX.cancel();
        this.mFgTransX = 0.0f;
        this.mFgSpringY.cancel();
    }
}
