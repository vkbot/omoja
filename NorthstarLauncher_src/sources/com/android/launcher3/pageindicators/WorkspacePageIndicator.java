package com.android.launcher3.pageindicators;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;

/* JADX INFO: loaded from: classes.dex */
public class WorkspacePageIndicator extends View implements Insettable, PageIndicator {
    private static final int ANIMATOR_COUNT = 3;
    public static final int BLACK_ALPHA = 165;
    private static final int LINE_ALPHA_ANIMATOR_INDEX = 0;
    private static final int NUM_PAGES_ANIMATOR_INDEX = 1;
    private static final int TOTAL_SCROLL_ANIMATOR_INDEX = 2;
    public static final int WHITE_ALPHA = 178;
    private int mActiveAlpha;
    private ValueAnimator[] mAnimators;
    private int mCurrentScroll;
    private final Handler mDelayedLineFadeHandler;
    private Runnable mHideLineRunnable;
    private final Launcher mLauncher;
    private final int mLineHeight;
    private Paint mLinePaint;
    private float mNumPagesFloat;
    private boolean mShouldAutoHide;
    private int mToAlpha;
    private int mTotalScroll;
    private static final int LINE_ANIMATE_DURATION = ViewConfiguration.getScrollBarFadeDuration();
    private static final int LINE_FADE_DELAY = ViewConfiguration.getScrollDefaultDelay();
    private static final Property<WorkspacePageIndicator, Integer> PAINT_ALPHA = new Property<WorkspacePageIndicator, Integer>(Integer.class, "paint_alpha") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.1
        @Override // android.util.Property
        public Integer get(WorkspacePageIndicator obj) {
            return Integer.valueOf(obj.mLinePaint.getAlpha());
        }

        @Override // android.util.Property
        public void set(WorkspacePageIndicator obj, Integer alpha) {
            obj.mLinePaint.setAlpha(alpha.intValue());
            obj.invalidate();
        }
    };
    private static final Property<WorkspacePageIndicator, Float> NUM_PAGES = new Property<WorkspacePageIndicator, Float>(Float.class, "num_pages") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.2
        @Override // android.util.Property
        public Float get(WorkspacePageIndicator obj) {
            return Float.valueOf(obj.mNumPagesFloat);
        }

        @Override // android.util.Property
        public void set(WorkspacePageIndicator obj, Float numPages) {
            obj.mNumPagesFloat = numPages.floatValue();
            obj.invalidate();
        }
    };
    private static final Property<WorkspacePageIndicator, Integer> TOTAL_SCROLL = new Property<WorkspacePageIndicator, Integer>(Integer.class, "total_scroll") { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.3
        @Override // android.util.Property
        public Integer get(WorkspacePageIndicator obj) {
            return Integer.valueOf(obj.mTotalScroll);
        }

        @Override // android.util.Property
        public void set(WorkspacePageIndicator obj, Integer totalScroll) {
            obj.mTotalScroll = totalScroll.intValue();
            obj.invalidate();
        }
    };

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setActiveMarker(int activePage) {
    }

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-pageindicators-WorkspacePageIndicator, reason: not valid java name */
    /* synthetic */ void m130x22eed34c() {
        animateLineToAlpha(0);
    }

    public WorkspacePageIndicator(Context context) {
        this(context, null);
    }

    public WorkspacePageIndicator(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WorkspacePageIndicator(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mAnimators = new ValueAnimator[3];
        this.mDelayedLineFadeHandler = new Handler(Looper.getMainLooper());
        this.mShouldAutoHide = true;
        this.mActiveAlpha = 0;
        this.mHideLineRunnable = new Runnable() { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m130x22eed34c();
            }
        };
        Resources resources = context.getResources();
        Paint paint = new Paint();
        this.mLinePaint = paint;
        paint.setAlpha(0);
        this.mLauncher = Launcher.getLauncher(context);
        this.mLineHeight = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_line_height);
        this.mActiveAlpha = WHITE_ALPHA;
        this.mLinePaint.setColor(-1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = this.mTotalScroll;
        if (i == 0 || this.mNumPagesFloat == 0.0f) {
            return;
        }
        float fBoundToRange = Utilities.boundToRange(this.mCurrentScroll / i, 0.0f, 1.0f);
        int width = getWidth();
        int i2 = (int) (width / this.mNumPagesFloat);
        int i3 = (int) (fBoundToRange * (width - i2));
        int i4 = i2 + i3;
        int height = getHeight() / 2;
        int i5 = this.mLineHeight;
        canvas.drawRoundRect(i3, (getHeight() / 2) - (this.mLineHeight / 2), i4, height + (i5 / 2), i5, i5, this.mLinePaint);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setScroll(int currentScroll, int totalScroll) {
        if (getAlpha() == 0.0f) {
            return;
        }
        animateLineToAlpha(this.mActiveAlpha);
        this.mCurrentScroll = currentScroll;
        int i = this.mTotalScroll;
        if (i == 0) {
            this.mTotalScroll = totalScroll;
        } else if (i != totalScroll) {
            animateToTotalScroll(totalScroll);
        } else {
            invalidate();
        }
        if (this.mShouldAutoHide) {
            hideAfterDelay();
        }
    }

    private void hideAfterDelay() {
        this.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
        this.mDelayedLineFadeHandler.postDelayed(this.mHideLineRunnable, LINE_FADE_DELAY);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public void setMarkersCount(int numMarkers) {
        float f = numMarkers;
        if (Float.compare(f, this.mNumPagesFloat) != 0) {
            setupAndRunAnimation(ObjectAnimator.ofFloat(this, NUM_PAGES, f), 1);
            return;
        }
        ValueAnimator valueAnimator = this.mAnimators[1];
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mAnimators[1] = null;
        }
    }

    public void setShouldAutoHide(boolean shouldAutoHide) {
        this.mShouldAutoHide = shouldAutoHide;
        if (shouldAutoHide && this.mLinePaint.getAlpha() > 0) {
            hideAfterDelay();
        } else {
            if (shouldAutoHide) {
                return;
            }
            this.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
        }
    }

    private void animateLineToAlpha(int alpha) {
        if (alpha == this.mToAlpha) {
            return;
        }
        this.mToAlpha = alpha;
        setupAndRunAnimation(ObjectAnimator.ofInt(this, PAINT_ALPHA, alpha), 0);
    }

    private void animateToTotalScroll(int totalScroll) {
        setupAndRunAnimation(ObjectAnimator.ofInt(this, TOTAL_SCROLL, totalScroll), 2);
    }

    private void setupAndRunAnimation(ValueAnimator animator, final int animatorIndex) {
        ValueAnimator valueAnimator = this.mAnimators[animatorIndex];
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mAnimators[animatorIndex] = animator;
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.pageindicators.WorkspacePageIndicator.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                WorkspacePageIndicator.this.mAnimators[animatorIndex] = null;
            }
        });
        this.mAnimators[animatorIndex].setDuration(LINE_ANIMATE_DURATION);
        this.mAnimators[animatorIndex].start();
    }

    public void pauseAnimations() {
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimator = this.mAnimators[i];
            if (valueAnimator != null) {
                valueAnimator.pause();
            }
        }
    }

    public void skipAnimationsToEnd() {
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimator = this.mAnimators[i];
            if (valueAnimator != null) {
                valueAnimator.end();
            }
        }
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (deviceProfile.isVerticalBarLayout()) {
            Rect rect = deviceProfile.workspacePadding;
            layoutParams.leftMargin = rect.left + deviceProfile.workspaceCellPaddingXPx;
            layoutParams.rightMargin = rect.right + deviceProfile.workspaceCellPaddingXPx;
            layoutParams.bottomMargin = rect.bottom;
        } else {
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = deviceProfile.hotseatBarSizePx + insets.bottom;
        }
        setLayoutParams(layoutParams);
    }
}
