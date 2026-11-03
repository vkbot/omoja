package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.os.CancellationSignal;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.util.Executors;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class FloatingIconView extends FrameLayout implements Animator.AnimatorListener, ViewTreeObserver.OnGlobalLayoutListener {
    private static final int FADE_DURATION_MS = 200;
    public static final float SHAPE_PROGRESS_DURATION = 0.1f;
    private static final String TAG = "FloatingIconView";
    private static IconLoadResult sIconLoadResult;
    private Drawable mBadge;
    private ClipIconView mClipIconView;
    private Runnable mEndRunnable;
    private AnimatorSet mFadeAnimatorSet;
    private Runnable mFastFinishRunnable;
    private final Rect mFinalDrawableBounds;
    private IconLoadResult mIconLoadResult;
    private boolean mIsOpening;
    private final boolean mIsRtl;
    private boolean mIsVerticalBarLayout;
    private final Launcher mLauncher;
    private ListenerView mListenerView;
    private CancellationSignal mLoadIconSignal;
    private Runnable mOnTargetChangeRunnable;
    private View mOriginalIcon;
    private RectF mPositionOut;
    private static final RectF sTmpRectF = new RectF();
    private static final Object[] sTmpObjArray = new Object[1];

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    public void setFastFinishRunnable(Runnable runnable) {
        this.mFastFinishRunnable = runnable;
    }

    public void setOnTargetChangeListener(Runnable onTargetChangeListener) {
        this.mOnTargetChangeRunnable = onTargetChangeListener;
    }

    public FloatingIconView(Context context) {
        this(context, null);
    }

    public FloatingIconView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FloatingIconView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsVerticalBarLayout = false;
        this.mFinalDrawableBounds = new Rect();
        this.mLauncher = Launcher.getLauncher(context);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mListenerView = new ListenerView(context, attrs);
        ClipIconView clipIconView = new ClipIconView(context, attrs);
        this.mClipIconView = clipIconView;
        addView(clipIconView);
        setWillNotDraw(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIsOpening) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        super.onDetachedFromWindow();
    }

    public void update(RectF rect, float alpha, float progress, float shapeProgressStart, float cornerRadius, boolean isOpening) {
        setAlpha(alpha);
        this.mClipIconView.update(rect, progress, shapeProgressStart, cornerRadius, isOpening, this, this.mLauncher.getDeviceProfile(), this.mIsVerticalBarLayout);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        Runnable runnable = this.mEndRunnable;
        if (runnable != null) {
            runnable.run();
        } else {
            this.mClipIconView.endReveal();
        }
    }

    private void matchPositionOf(Launcher launcher, View v, boolean isOpening, RectF positionOut) {
        getLocationBoundsForView(launcher, v, isOpening, positionOut);
        InsettableFrameLayout.LayoutParams layoutParams = new InsettableFrameLayout.LayoutParams(Math.round(positionOut.width()), Math.round(positionOut.height()));
        updatePosition(positionOut, layoutParams);
        setLayoutParams(layoutParams);
        this.mClipIconView.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
    }

    private void updatePosition(RectF pos, InsettableFrameLayout.LayoutParams lp) {
        int marginStart;
        this.mPositionOut.set(pos);
        lp.ignoreInsets = true;
        lp.topMargin = Math.round(pos.top);
        if (this.mIsRtl) {
            lp.setMarginStart(Math.round(this.mLauncher.getDeviceProfile().widthPx - pos.right));
        } else {
            lp.setMarginStart(Math.round(pos.left));
        }
        if (this.mIsRtl) {
            marginStart = (this.mLauncher.getDeviceProfile().widthPx - lp.getMarginStart()) - lp.width;
        } else {
            marginStart = lp.leftMargin;
        }
        layout(marginStart, lp.topMargin, lp.width + marginStart, lp.topMargin + lp.height);
    }

    private static void getLocationBoundsForView(Launcher launcher, View v, boolean isOpening, RectF outRect) {
        getLocationBoundsForView(launcher, v, isOpening, outRect, new Rect());
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public static void getLocationBoundsForView(Launcher launcher, View v, boolean isOpening, RectF outRect, Rect outViewBounds) {
        boolean z = !isOpening;
        if (v instanceof DeepShortcutView) {
            v = ((DeepShortcutView) v).getBubbleText();
        } else {
            if (v.getParent() instanceof DeepShortcutView) {
                v = ((DeepShortcutView) v.getParent()).getIconView();
            }
            if (v == null) {
                return;
            }
            if (v instanceof BubbleTextView) {
                ((BubbleTextView) v).getIconBounds(outViewBounds);
            } else if (v instanceof FolderIcon) {
                ((FolderIcon) v).getPreviewBounds(outViewBounds);
            } else {
                outViewBounds.set(0, 0, v.getWidth(), v.getHeight());
            }
            float[] fArr = {outViewBounds.left, outViewBounds.top, outViewBounds.right, outViewBounds.bottom};
            Utilities.getDescendantCoordRelativeToAncestor(v, launcher.getDragLayer(), fArr, false, z);
            outRect.set(Math.min(fArr[0], fArr[2]), Math.min(fArr[1], fArr[3]), Math.max(fArr[0], fArr[2]), Math.max(fArr[1], fArr[3]));
        }
        z = false;
        if (v == null) {
            return;
        }
        if (v instanceof BubbleTextView) {
            ((BubbleTextView) v).getIconBounds(outViewBounds);
        } else if (v instanceof FolderIcon) {
            ((FolderIcon) v).getPreviewBounds(outViewBounds);
        } else {
            outViewBounds.set(0, 0, v.getWidth(), v.getHeight());
        }
        float[] fArr2 = {outViewBounds.left, outViewBounds.top, outViewBounds.right, outViewBounds.bottom};
        Utilities.getDescendantCoordRelativeToAncestor(v, launcher.getDragLayer(), fArr2, false, z);
        outRect.set(Math.min(fArr2[0], fArr2[2]), Math.min(fArr2[1], fArr2[3]), Math.max(fArr2[0], fArr2[2]), Math.max(fArr2[1], fArr2[3]));
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006f  */
    /* JADX WARN: Code duplicated, block: B:32:0x0071  */
    /* JADX WARN: Code duplicated, block: B:37:0x0088 A[Catch: all -> 0x0097, TryCatch #0 {, blocks: (B:35:0x007e, B:37:0x0088, B:38:0x0093, B:39:0x0095), top: B:44:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:44:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void getIconResult(Launcher l, View originalView, ItemInfo info, RectF pos, IconLoadResult iconLoadResult) {
        Drawable badge;
        Drawable drawableNewDrawable;
        int offsetForIconBounds;
        boolean z = FeatureFlags.ADAPTIVE_ICON_WINDOW_ANIM.get() && !info.isDisabled();
        boolean z2 = originalView instanceof BubbleTextView;
        Drawable icon = z2 ? ((BubbleTextView) originalView).getIcon() : null;
        if (info instanceof SystemShortcut) {
            if (originalView instanceof ImageView) {
                icon = ((ImageView) originalView).getDrawable();
            } else {
                icon = originalView instanceof DeepShortcutView ? ((DeepShortcutView) originalView).getIconView().getBackground() : originalView.getBackground();
            }
        } else {
            int iWidth = (int) pos.width();
            int iHeight = (int) pos.height();
            if (z) {
                Object[] objArr = sTmpObjArray;
                Drawable fullDrawable = Utilities.getFullDrawable(l, info, iWidth, iHeight, objArr);
                if (fullDrawable instanceof AdaptiveIconDrawable) {
                    badge = Utilities.getBadge(l, info, objArr[0]);
                    icon = fullDrawable;
                }
                if (icon == null) {
                    drawableNewDrawable = null;
                } else {
                    drawableNewDrawable = icon.getConstantState().newDrawable();
                }
                offsetForIconBounds = getOffsetForIconBounds(l, drawableNewDrawable, pos);
                synchronized (iconLoadResult) {
                    iconLoadResult.drawable = drawableNewDrawable;
                    iconLoadResult.badge = badge;
                    iconLoadResult.iconOffset = offsetForIconBounds;
                    if (iconLoadResult.onIconLoaded != null) {
                        l.getMainExecutor().execute(iconLoadResult.onIconLoaded);
                        iconLoadResult.onIconLoaded = null;
                    }
                    iconLoadResult.isIconLoaded = true;
                }
            }
            if (!z2) {
                icon = Utilities.getFullDrawable(l, info, iWidth, iHeight, sTmpObjArray);
            }
        }
        badge = null;
        if (icon == null) {
            drawableNewDrawable = null;
        } else {
            drawableNewDrawable = icon.getConstantState().newDrawable();
        }
        offsetForIconBounds = getOffsetForIconBounds(l, drawableNewDrawable, pos);
        synchronized (iconLoadResult) {
            iconLoadResult.drawable = drawableNewDrawable;
            iconLoadResult.badge = badge;
            iconLoadResult.iconOffset = offsetForIconBounds;
            if (iconLoadResult.onIconLoaded != null) {
                l.getMainExecutor().execute(iconLoadResult.onIconLoaded);
                iconLoadResult.onIconLoaded = null;
            }
            iconLoadResult.isIconLoaded = true;
        }
    }

    private void setIcon(Drawable drawable, Drawable badge, int iconOffset) {
        InsettableFrameLayout.LayoutParams layoutParams = (InsettableFrameLayout.LayoutParams) getLayoutParams();
        this.mBadge = badge;
        this.mClipIconView.setIcon(drawable, iconOffset, layoutParams, this.mIsOpening, this.mIsVerticalBarLayout, this.mLauncher.getDeviceProfile());
        if (drawable instanceof AdaptiveIconDrawable) {
            this.mFinalDrawableBounds.set(0, 0, layoutParams.width, layoutParams.height);
            float f = this.mLauncher.getDeviceProfile().aspectRatio;
            if (this.mIsVerticalBarLayout) {
                layoutParams.width = (int) Math.max(layoutParams.width, layoutParams.height * f);
            } else {
                layoutParams.height = (int) Math.max(layoutParams.height, layoutParams.width * f);
            }
            setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mClipIconView.getLayoutParams();
            int i = layoutParams2.height;
            int i2 = layoutParams2.width;
            layoutParams2.width = layoutParams.width;
            layoutParams2.height = layoutParams.height;
            this.mClipIconView.setLayoutParams(layoutParams2);
            Drawable drawable2 = this.mBadge;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i2, i);
            }
        }
        invalidate();
    }

    private void checkIconResult(final View originalView) {
        final CancellationSignal cancellationSignal = new CancellationSignal();
        IconLoadResult iconLoadResult = this.mIconLoadResult;
        if (iconLoadResult == null) {
            Log.w(TAG, "No icon load result found in checkIconResult");
            return;
        }
        synchronized (iconLoadResult) {
            if (this.mIconLoadResult.isIconLoaded) {
                setIcon(this.mIconLoadResult.drawable, this.mIconLoadResult.badge, this.mIconLoadResult.iconOffset);
                IconLabelDotView.setIconAndDotVisible(originalView, false);
            } else {
                this.mIconLoadResult.onIconLoaded = new Runnable() { // from class: com.android.launcher3.views.FloatingIconView$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m176xb8d3d01e(cancellationSignal, originalView);
                    }
                };
                this.mLoadIconSignal = cancellationSignal;
            }
        }
    }

    /* JADX INFO: renamed from: lambda$checkIconResult$0$com-android-launcher3-views-FloatingIconView, reason: not valid java name */
    /* synthetic */ void m176xb8d3d01e(CancellationSignal cancellationSignal, View view) {
        if (cancellationSignal.isCanceled()) {
            return;
        }
        setIcon(this.mIconLoadResult.drawable, this.mIconLoadResult.badge, this.mIconLoadResult.iconOffset);
        setVisibility(0);
        IconLabelDotView.setIconAndDotVisible(view, false);
    }

    private static int getOffsetForIconBounds(Launcher l, Drawable drawable, RectF position) {
        if (!(drawable instanceof AdaptiveIconDrawable) || (drawable instanceof FolderAdaptiveIcon)) {
            return 0;
        }
        int dimensionPixelSize = l.getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        Rect rect = new Rect(0, 0, ((int) position.width()) + dimensionPixelSize, ((int) position.height()) + dimensionPixelSize);
        int i = dimensionPixelSize / 2;
        rect.inset(i, i);
        LauncherIcons launcherIconsObtain = LauncherIcons.obtain(l);
        try {
            Utilities.scaleRectAboutCenter(rect, launcherIconsObtain.getNormalizer().getScale(drawable, null, null, null));
            if (launcherIconsObtain != null) {
                launcherIconsObtain.close();
            }
            rect.inset((int) ((-rect.width()) * AdaptiveIconDrawable.getExtraInsetFraction()), (int) ((-rect.height()) * AdaptiveIconDrawable.getExtraInsetFraction()));
            return rect.left;
        } catch (Throwable th) {
            if (launcherIconsObtain != null) {
                try {
                    launcherIconsObtain.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public void fastFinish() {
        Runnable runnable = this.mFastFinishRunnable;
        if (runnable != null) {
            runnable.run();
            this.mFastFinishRunnable = null;
        }
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mLoadIconSignal = null;
        }
        Runnable runnable2 = this.mEndRunnable;
        if (runnable2 != null) {
            runnable2.run();
            this.mEndRunnable = null;
        }
        AnimatorSet animatorSet = this.mFadeAnimatorSet;
        if (animatorSet != null) {
            animatorSet.end();
            this.mFadeAnimatorSet = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        IconLoadResult iconLoadResult = this.mIconLoadResult;
        if (iconLoadResult != null && iconLoadResult.isIconLoaded) {
            setVisibility(0);
        }
        if (this.mIsOpening) {
            return;
        }
        IconLabelDotView.setIconAndDotVisible(this.mOriginalIcon, false);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.mOriginalIcon.isAttachedToWindow() || this.mPositionOut == null) {
            return;
        }
        Launcher launcher = this.mLauncher;
        View view = this.mOriginalIcon;
        boolean z = this.mIsOpening;
        RectF rectF = sTmpRectF;
        getLocationBoundsForView(launcher, view, z, rectF);
        if (rectF.equals(this.mPositionOut)) {
            return;
        }
        updatePosition(rectF, (InsettableFrameLayout.LayoutParams) getLayoutParams());
        Runnable runnable = this.mOnTargetChangeRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    public static IconLoadResult fetchIcon(final Launcher l, final View v, final ItemInfo info, final boolean isOpening) {
        final IconLoadResult iconLoadResult = new IconLoadResult(info);
        Executors.MODEL_EXECUTOR.getHandler().postAtFrontOfQueue(new Runnable() { // from class: com.android.launcher3.views.FloatingIconView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FloatingIconView.lambda$fetchIcon$1(l, v, isOpening, info, iconLoadResult);
            }
        });
        sIconLoadResult = iconLoadResult;
        return iconLoadResult;
    }

    static /* synthetic */ void lambda$fetchIcon$1(Launcher launcher, View view, boolean z, ItemInfo itemInfo, IconLoadResult iconLoadResult) {
        RectF rectF = new RectF();
        getLocationBoundsForView(launcher, view, z, rectF);
        getIconResult(launcher, view, itemInfo, rectF, iconLoadResult);
    }

    public static FloatingIconView getFloatingIconView(Launcher launcher, final View originalView, final boolean hideOriginal, RectF positionOut, final boolean isOpening) {
        final DragLayer dragLayer = launcher.getDragLayer();
        ViewGroup viewGroup = (ViewGroup) dragLayer.getParent();
        final FloatingIconView floatingIconView = (FloatingIconView) launcher.getViewCache().getView(R.layout.floating_icon_view, launcher, viewGroup);
        floatingIconView.recycle();
        boolean z = (originalView.getTag() instanceof ItemInfo) && hideOriginal;
        if (z) {
            IconLoadResult iconLoadResult = sIconLoadResult;
            if (iconLoadResult != null && iconLoadResult.itemInfo == originalView.getTag()) {
                floatingIconView.mIconLoadResult = sIconLoadResult;
            } else {
                floatingIconView.mIconLoadResult = fetchIcon(launcher, originalView, (ItemInfo) originalView.getTag(), isOpening);
            }
        }
        sIconLoadResult = null;
        floatingIconView.mIsVerticalBarLayout = launcher.getDeviceProfile().isVerticalBarLayout();
        floatingIconView.mIsOpening = isOpening;
        floatingIconView.mOriginalIcon = originalView;
        floatingIconView.mPositionOut = positionOut;
        floatingIconView.matchPositionOf(launcher, originalView, isOpening, positionOut);
        floatingIconView.setVisibility(4);
        viewGroup.addView(floatingIconView);
        dragLayer.addView(floatingIconView.mListenerView);
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "getFloatingIconView. listenerView added to dragLayer. listenerView=" + floatingIconView.mListenerView + ", fiv=" + floatingIconView, new Exception());
        }
        ListenerView listenerView = floatingIconView.mListenerView;
        Objects.requireNonNull(floatingIconView);
        listenerView.setListener(new Runnable() { // from class: com.android.launcher3.views.FloatingIconView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.fastFinish();
            }
        });
        floatingIconView.mEndRunnable = new Runnable() { // from class: com.android.launcher3.views.FloatingIconView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FloatingIconView.lambda$getFloatingIconView$2(this.f$0, hideOriginal, isOpening, originalView, dragLayer);
            }
        };
        if (z) {
            floatingIconView.checkIconResult(originalView);
        }
        return floatingIconView;
    }

    static /* synthetic */ void lambda$getFloatingIconView$2(FloatingIconView floatingIconView, boolean z, boolean z2, View view, DragLayer dragLayer) {
        floatingIconView.mEndRunnable = null;
        if (!z) {
            floatingIconView.finish(dragLayer);
            return;
        }
        if (z2) {
            IconLabelDotView.setIconAndDotVisible(view, true);
            floatingIconView.finish(dragLayer);
        } else {
            AnimatorSet animatorSetCreateFadeAnimation = floatingIconView.createFadeAnimation(view, dragLayer);
            floatingIconView.mFadeAnimatorSet = animatorSetCreateFadeAnimation;
            animatorSetCreateFadeAnimation.start();
        }
    }

    private AnimatorSet createFadeAnimation(final View originalView, final DragLayer dragLayer) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(200L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.FloatingIconView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                originalView.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                FloatingIconView.this.finish(dragLayer);
            }
        });
        if (originalView instanceof IconLabelDotView) {
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.FloatingIconView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    IconLabelDotView.setIconAndDotVisible(originalView, true);
                }
            });
        }
        if (originalView instanceof BubbleTextView) {
            final BubbleTextView bubbleTextView = (BubbleTextView) originalView;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.FloatingIconView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    bubbleTextView.setIconVisible(true);
                    bubbleTextView.setForceHideDot(true);
                }
            });
            animatorSet.play(ObjectAnimator.ofInt(bubbleTextView.getIcon(), LauncherAnimUtils.DRAWABLE_ALPHA, 0, 255));
        } else if (!(originalView instanceof FolderIcon)) {
            animatorSet.play(ObjectAnimator.ofFloat(originalView, (Property<View, Float>) ALPHA, 0.0f, 1.0f));
        }
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(DragLayer dragLayer) {
        ((ViewGroup) dragLayer.getParent()).removeView(this);
        dragLayer.removeView(this.mListenerView);
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "listenerView removed from dragLayer. listenerView=" + this.mListenerView + ", fiv=" + this, new Exception());
        }
        recycle();
        this.mLauncher.getViewCache().recycleView(R.layout.floating_icon_view, this);
    }

    private void recycle() {
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.mLoadIconSignal = null;
        this.mEndRunnable = null;
        this.mFinalDrawableBounds.setEmpty();
        AnimatorSet animatorSet = this.mFadeAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.mPositionOut = null;
        this.mFadeAnimatorSet = null;
        this.mListenerView.setListener(null);
        this.mOriginalIcon = null;
        this.mOnTargetChangeRunnable = null;
        this.mBadge = null;
        sTmpObjArray[0] = null;
        this.mIconLoadResult = null;
        this.mClipIconView.recycle();
        this.mFastFinishRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static class IconLoadResult {
        Drawable badge;
        Drawable drawable;
        int iconOffset;
        boolean isIconLoaded;
        final ItemInfo itemInfo;
        Runnable onIconLoaded;

        IconLoadResult(ItemInfo itemInfo) {
            this.itemInfo = itemInfo;
        }
    }
}
