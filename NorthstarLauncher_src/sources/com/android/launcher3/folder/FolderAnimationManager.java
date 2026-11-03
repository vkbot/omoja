package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.Property;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.core.graphics.ColorUtils;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.R;
import com.android.launcher3.ResourceUtils;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PropertyResetListener;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import java.util.Iterator;
import java.util.List;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class FolderAnimationManager {
    private static final int FOLDER_NAME_ALPHA_DURATION = 32;
    private FolderPagedView mContent;
    private Context mContext;
    private final int mDelay;
    private final int mDuration;
    private Folder mFolder;
    private Drawable mFolderBackground;
    private FolderIcon mFolderIcon;
    private final TimeInterpolator mFolderInterpolator;
    private final boolean mIsOpening;
    private final TimeInterpolator mLargeFolderPreviewItemCloseInterpolator;
    private final TimeInterpolator mLargeFolderPreviewItemOpenInterpolator;
    private Launcher mLauncher;
    private PreviewBackground mPreviewBackground;
    private final FolderGridOrganizer mPreviewVerifier;
    private final PreviewItemDrawingParams mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);

    private TimeInterpolator getPreviewItemInterpolator() {
        return this.mFolderInterpolator;
    }

    public FolderAnimationManager(Folder folder, boolean isOpening) {
        this.mFolder = folder;
        this.mContent = folder.mContent;
        this.mFolderBackground = this.mFolder.getBackground();
        FolderIcon folderIcon = folder.mFolderIcon;
        this.mFolderIcon = folderIcon;
        this.mPreviewBackground = folderIcon.mBackground;
        this.mContext = folder.getContext();
        this.mLauncher = folder.mLauncher;
        this.mPreviewVerifier = new FolderGridOrganizer(this.mLauncher.getDeviceProfile().inv);
        this.mIsOpening = isOpening;
        Resources resources = this.mContent.getResources();
        this.mDuration = resources.getInteger(R.integer.config_materialFolderExpandDuration_mega);
        this.mDelay = resources.getInteger(R.integer.config_folderDelay);
        this.mFolderInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.folder_interpolator);
        this.mLargeFolderPreviewItemOpenInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.large_folder_preview_item_open_interpolator);
        this.mLargeFolderPreviewItemCloseInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.large_folder_preview_item_close_interpolator);
    }

    public AnimatorSet getAnimator() {
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) this.mFolder.getLayoutParams();
        this.mFolderIcon.getPreviewItemManager().recomputePreviewDrawingParams();
        ClippedFolderIconLayoutRule layoutRule = this.mFolderIcon.getLayoutRule();
        List<BubbleTextView> previewIconsOnPage = getPreviewIconsOnPage(0);
        Rect rect = new Rect();
        float descendantRectRelativeToSelf = this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(this.mFolderIcon, rect);
        int scaledRadius = this.mPreviewBackground.getScaledRadius();
        float f = scaledRadius * 2 * descendantRectRelativeToSelf;
        float iconSize = layoutRule.getIconSize() * layoutRule.scaleForItem(previewIconsOnPage.size());
        float iconSize2 = (iconSize / previewIconsOnPage.get(0).getIconSize()) * descendantRectRelativeToSelf;
        float f2 = this.mIsOpening ? iconSize2 : 1.0f;
        this.mFolder.setPivotX(0.0f);
        this.mFolder.setPivotY(0.0f);
        this.mFolder.mContent.setScaleX(f2);
        this.mFolder.mContent.setScaleY(f2);
        this.mFolder.mContent.setPivotX(0.0f);
        this.mFolder.mContent.setPivotY(0.0f);
        this.mFolder.mFooter.setScaleX(f2);
        this.mFolder.mFooter.setScaleY(f2);
        this.mFolder.mFooter.setPivotX(0.0f);
        this.mFolder.mFooter.setPivotY(0.0f);
        int i = (int) (iconSize / 2.0f);
        if (Utilities.isRtl(this.mContext.getResources())) {
            i = (int) (((layoutParams.width * iconSize2) - f) - i);
        }
        int i2 = i;
        int paddingLeft = (int) (this.mContent.getPaddingLeft() * iconSize2);
        int paddingTop = (int) (this.mContent.getPaddingTop() * iconSize2);
        int paddingLeft2 = (((rect.left + this.mFolder.getPaddingLeft()) + this.mPreviewBackground.getOffsetX()) - paddingLeft) - i2;
        int paddingTop2 = ((rect.top + this.mFolder.getPaddingTop()) + this.mPreviewBackground.getOffsetY()) - paddingTop;
        float f3 = paddingLeft2 - layoutParams.x;
        float f4 = paddingTop2 - layoutParams.y;
        GraphicsUtils.setColorAlphaBound(ColorUtils.setAlphaComponent(Themes.getAttrColor(this.mContext, R.attr.folderFillColor), 255), this.mPreviewBackground.getBackgroundAlpha());
        int i3 = paddingLeft + i2;
        Rect rect2 = new Rect(i3, paddingTop, Math.round(i3 + f), Math.round(paddingTop + f));
        Rect rect3 = new Rect(0, 0, layoutParams.width, layoutParams.height);
        float fPxFromDp = ResourceUtils.pxFromDp(2.0f, this.mContext.getResources().getDisplayMetrics());
        AnimatorSet animatorSet = new AnimatorSet();
        PropertyResetListener propertyResetListener = new PropertyResetListener(BubbleTextView.TEXT_ALPHA_PROPERTY, Float.valueOf(1.0f));
        Folder folder = this.mFolder;
        for (BubbleTextView bubbleTextView : folder.getItemsOnPage(folder.mContent.getCurrentPage())) {
            if (this.mIsOpening) {
                bubbleTextView.setTextVisibility(false);
            }
            ObjectAnimator objectAnimatorCreateTextAlphaAnimator = bubbleTextView.createTextAlphaAnimator(this.mIsOpening);
            objectAnimatorCreateTextAlphaAnimator.addListener(propertyResetListener);
            play(animatorSet, objectAnimatorCreateTextAlphaAnimator);
        }
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_X, f3, 0.0f));
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_Y, f4, 0.0f));
        play(animatorSet, getAnimator(this.mFolder.mContent, LauncherAnimUtils.SCALE_PROPERTY, iconSize2, 1.0f));
        play(animatorSet, getAnimator(this.mFolder.mFooter, LauncherAnimUtils.SCALE_PROPERTY, iconSize2, 1.0f));
        this.mFolderBackground.setAlpha(this.mIsOpening ? 0 : 255);
        play(animatorSet, getAnimator(this.mFolderBackground, "alpha", 0, 255));
        play(animatorSet, this.mFolderIcon.mFolderName.createTextAlphaAnimator(!this.mIsOpening));
        play(animatorSet, IconShape.getShape().createRevealAnimator(this.mFolder, rect2, rect3, fPxFromDp, !this.mIsOpening));
        this.mFolder.mFolderName.setAlpha(this.mIsOpening ? 0.0f : 1.0f);
        Animator animator = getAnimator(this.mFolder.mFolderName, View.ALPHA, 0.0f, 1.0f);
        boolean z = this.mIsOpening;
        play(animatorSet, animator, z ? 32L : 0L, z ? this.mDuration - 32 : 32);
        float contentAreaHeight = this.mFolder.getContentAreaHeight();
        play(animatorSet, getAnimator(this.mFolder.mFooter, View.TRANSLATION_Y, -(contentAreaHeight - (contentAreaHeight * iconSize2)), 0.0f));
        int i4 = this.mDuration / 2;
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_Z, -this.mFolder.getElevation(), 0.0f), this.mIsOpening ? i4 : 0L, i4);
        final CellLayout currentCellLayout = this.mContent.getCurrentCellLayout();
        final boolean clipChildren = this.mFolder.getClipChildren();
        final boolean clipToPadding = this.mFolder.getClipToPadding();
        final boolean clipChildren2 = this.mContent.getClipChildren();
        final boolean clipToPadding2 = this.mContent.getClipToPadding();
        final boolean clipChildren3 = currentCellLayout.getClipChildren();
        final boolean clipToPadding3 = currentCellLayout.getClipToPadding();
        this.mFolder.setClipChildren(false);
        this.mFolder.setClipToPadding(false);
        this.mContent.setClipChildren(false);
        this.mContent.setClipToPadding(false);
        currentCellLayout.setClipChildren(false);
        currentCellLayout.setClipToPadding(false);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderAnimationManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                FolderAnimationManager.this.mFolder.setTranslationX(0.0f);
                FolderAnimationManager.this.mFolder.setTranslationY(0.0f);
                FolderAnimationManager.this.mFolder.setTranslationZ(0.0f);
                FolderAnimationManager.this.mFolder.mContent.setScaleX(1.0f);
                FolderAnimationManager.this.mFolder.mContent.setScaleY(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setScaleX(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setScaleY(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setTranslationX(0.0f);
                FolderAnimationManager.this.mFolder.mFolderName.setAlpha(1.0f);
                FolderAnimationManager.this.mFolder.setClipChildren(clipChildren);
                FolderAnimationManager.this.mFolder.setClipToPadding(clipToPadding);
                FolderAnimationManager.this.mContent.setClipChildren(clipChildren2);
                FolderAnimationManager.this.mContent.setClipToPadding(clipToPadding2);
                currentCellLayout.setClipChildren(clipChildren3);
                currentCellLayout.setClipToPadding(clipToPadding3);
            }
        });
        Iterator<Animator> it = animatorSet.getChildAnimations().iterator();
        while (it.hasNext()) {
            it.next().setInterpolator(this.mFolderInterpolator);
        }
        int radius = scaledRadius - this.mPreviewBackground.getRadius();
        addPreviewItemAnimators(animatorSet, iconSize2 / descendantRectRelativeToSelf, i2 + radius, radius);
        return animatorSet;
    }

    private List<BubbleTextView> getPreviewIconsOnPage(int page) {
        return this.mPreviewVerifier.setFolderInfo(this.mFolder.mInfo).previewItemsForPage(page, this.mFolder.getIconsInReadingOrder());
    }

    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v6 */
    private void addPreviewItemAnimators(AnimatorSet animatorSet, final float folderScale, int previewItemOffsetX, int previewItemOffsetY) {
        ClippedFolderIconLayoutRule layoutRule = this.mFolderIcon.getLayoutRule();
        ?? r4 = 1;
        char c = 0;
        boolean z = this.mFolder.mContent.getCurrentPage() == 0;
        List<BubbleTextView> previewIconsOnPage = getPreviewIconsOnPage(z ? 0 : this.mFolder.mContent.getCurrentPage());
        int size = previewIconsOnPage.size();
        int i = z ? size : 9;
        if (size > 9) {
            size = 9;
        }
        TimeInterpolator previewItemInterpolator = getPreviewItemInterpolator();
        ShortcutAndWidgetContainer shortcutsAndWidgets = this.mContent.getPageAt(0).getShortcutsAndWidgets();
        int i2 = 0;
        while (i2 < size) {
            final BubbleTextView bubbleTextView = previewIconsOnPage.get(i2);
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) bubbleTextView.getLayoutParams();
            layoutParams.isLockedToGrid = r4;
            shortcutsAndWidgets.setupLp(bubbleTextView);
            float iconSize = (layoutRule.getIconSize() * layoutRule.scaleForItem(i)) / previewIconsOnPage.get(i2).getIconSize();
            float f = this.mIsOpening ? 0.4f : 1.0f;
            bubbleTextView.setScaleX(f);
            bubbleTextView.setScaleY(f);
            layoutRule.computePreviewItemDrawingParams(i2, i, this.mTmpParams);
            int iconSize2 = ((int) ((layoutParams.width - bubbleTextView.getIconSize()) * iconSize)) / 2;
            float f2 = this.mTmpParams.transX;
            float f3 = this.mTmpParams.transY;
            final float f4 = getInitialTranslationValue(i2)[c];
            final float f5 = getInitialTranslationValue(i2)[r4];
            Animator animator = getAnimator(bubbleTextView, View.TRANSLATION_X, f4, 0.0f);
            animator.setInterpolator(previewItemInterpolator);
            play(animatorSet, animator);
            Animator animator2 = getAnimator(bubbleTextView, View.TRANSLATION_Y, f5, 0.0f);
            animator2.setInterpolator(previewItemInterpolator);
            play(animatorSet, animator2);
            ClippedFolderIconLayoutRule clippedFolderIconLayoutRule = layoutRule;
            Animator animator3 = getAnimator(bubbleTextView, LauncherAnimUtils.SCALE_PROPERTY, 0.4f, 1.0f);
            animator3.setInterpolator(previewItemInterpolator);
            play(animatorSet, animator3);
            int i3 = i;
            Animator animator4 = getAnimator(bubbleTextView, LauncherAnimUtils.VIEW_ALPHA, 0.0f, 255.0f);
            animator4.setInterpolator(previewItemInterpolator);
            play(animatorSet, animator4);
            if (this.mFolder.getItemCount() > 9) {
                boolean z2 = this.mIsOpening;
                int i4 = this.mDelay;
                if (!z2) {
                    i4 *= 2;
                }
                if (z2) {
                    long j = i4;
                    animator.setStartDelay(j);
                    animator2.setStartDelay(j);
                    animator3.setStartDelay(j);
                }
                long j2 = i4;
                animator.setDuration(animator.getDuration() - j2);
                animator2.setDuration(animator2.getDuration() - j2);
                animator3.setDuration(animator3.getDuration() - j2);
            }
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderAnimationManager.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    super.onAnimationStart(animation);
                    if (FolderAnimationManager.this.mIsOpening) {
                        bubbleTextView.setTranslationX(f4);
                        bubbleTextView.setTranslationY(f5);
                        bubbleTextView.setScaleX(0.4f);
                        bubbleTextView.setScaleY(0.4f);
                        bubbleTextView.setAlpha(0.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    bubbleTextView.setTranslationX(0.0f);
                    bubbleTextView.setTranslationY(0.0f);
                    bubbleTextView.setScaleX(1.0f);
                    bubbleTextView.setScaleY(1.0f);
                    bubbleTextView.setAlpha(1.0f);
                }
            });
            i2++;
            i = i3;
            previewIconsOnPage = previewIconsOnPage;
            layoutRule = clippedFolderIconLayoutRule;
            size = size;
            r4 = 1;
            c = 0;
        }
    }

    private void play(AnimatorSet as, Animator a) {
        play(as, a, a.getStartDelay(), this.mDuration);
    }

    private void play(AnimatorSet as, Animator a, long startDelay, int duration) {
        a.setStartDelay(startDelay);
        a.setDuration(duration);
        as.play(a);
    }

    private Animator getAnimator(View view, Property property, float v1, float v2) {
        if (this.mIsOpening) {
            return ObjectAnimator.ofFloat(view, (Property<View, Float>) property, v1, v2);
        }
        return ObjectAnimator.ofFloat(view, (Property<View, Float>) property, v2, v1);
    }

    private Animator getAnimator(GradientDrawable drawable, String property, int v1, int v2) {
        if (this.mIsOpening) {
            return ObjectAnimator.ofArgb(drawable, property, v1, v2);
        }
        return ObjectAnimator.ofArgb(drawable, property, v2, v1);
    }

    private Animator getAnimator(Drawable drawable, String property, int v1, int v2) {
        if (this.mIsOpening) {
            return ObjectAnimator.ofArgb(drawable, property, v1, v2);
        }
        return ObjectAnimator.ofArgb(drawable, property, v2, v1);
    }

    private float[] getInitialTranslationValue(int index) {
        MLog.d("setInitialTranslationValue " + index);
        float[] fArr = new float[2];
        if (index == 0) {
            fArr[0] = 22.0f;
            fArr[1] = -144.0f;
        } else if (index == 1) {
            fArr[0] = -198.0f;
            fArr[1] = -144.0f;
        } else if (index == 2) {
            fArr[0] = -420.0f;
            fArr[1] = -144.0f;
        } else if (index == 3) {
            fArr[0] = 22.0f;
            fArr[1] = -284.0f;
        } else if (index == 4) {
            fArr[0] = -198.0f;
            fArr[1] = -284.0f;
        } else if (index == 5) {
            fArr[0] = -420.0f;
            fArr[1] = -284.0f;
        } else if (index == 6) {
            fArr[0] = 22.0f;
            fArr[1] = -425.0f;
        } else if (index == 7) {
            fArr[0] = -198.0f;
            fArr[1] = -425.0f;
        } else if (index == 8) {
            fArr[0] = -420.0f;
            fArr[1] = -425.0f;
        }
        return fArr;
    }
}
