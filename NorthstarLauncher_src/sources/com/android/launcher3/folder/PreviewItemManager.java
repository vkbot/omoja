package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.mega.launcher.model.AppIcon;
import com.mega.sdk.linkmanager.MegaLinkManager;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class PreviewItemManager {
    private static final FloatProperty<PreviewItemManager> CURRENT_PAGE_ITEMS_TRANS_X = new FloatProperty<PreviewItemManager>("currentPageItemsTransX") { // from class: com.android.launcher3.folder.PreviewItemManager.1
        @Override // android.util.FloatProperty
        public void setValue(PreviewItemManager manager, float v) {
            manager.mCurrentPageItemsTransX = v;
            manager.onParamsChanged();
        }

        @Override // android.util.Property
        public Float get(PreviewItemManager manager) {
            return Float.valueOf(manager.mCurrentPageItemsTransX);
        }
    };
    private static final int FINAL_ITEM_ANIMATION_DURATION = 200;
    static final int INITIAL_ITEM_ANIMATION_DURATION = 350;
    private static final int ITEM_SLIDE_IN_OUT_DISTANCE_PX = 200;
    private static final int SLIDE_IN_FIRST_PAGE_ANIMATION_DURATION = 300;
    private static final int SLIDE_IN_FIRST_PAGE_ANIMATION_DURATION_DELAY = 100;
    private final Context mContext;
    private final FolderIcon mIcon;
    private final int mIconSize;
    private boolean mShouldSlideInFirstPage;
    private float mIntrinsicIconSize = -1.0f;
    private int mTotalWidth = -1;
    private int mPrevTopPadding = -1;
    private Drawable mReferenceDrawable = null;
    private ArrayList<PreviewItemDrawingParams> mFirstPageParams = new ArrayList<>();
    private ArrayList<PreviewItemDrawingParams> mCurrentPageParams = new ArrayList<>();
    private float mCurrentPageItemsTransX = 0.0f;

    float getIntrinsicIconSize() {
        return this.mIntrinsicIconSize;
    }

    public PreviewItemManager(FolderIcon icon) {
        Context context = icon.getContext();
        this.mContext = context;
        this.mIcon = icon;
        this.mIconSize = ActivityContext.lookupContext(context).getDeviceProfile().folderChildIconSizePx;
    }

    public FolderPreviewItemAnim createFirstItemAnimation(final boolean reverse, final Runnable onCompleteRunnable) {
        if (reverse) {
            return new FolderPreviewItemAnim(this, this.mFirstPageParams.get(0), 0, 2, -1, -1, 200, onCompleteRunnable);
        }
        return new FolderPreviewItemAnim(this, this.mFirstPageParams.get(0), -1, -1, 0, 2, INITIAL_ITEM_ANIMATION_DURATION, onCompleteRunnable);
    }

    Drawable prepareCreateAnimation(final View destView) {
        Drawable drawable = ((TextView) destView).getCompoundDrawables()[1];
        computePreviewDrawingParams(drawable.getIntrinsicWidth(), destView.getMeasuredWidth());
        this.mReferenceDrawable = drawable;
        return drawable;
    }

    public void recomputePreviewDrawingParams() {
        Drawable drawable = this.mReferenceDrawable;
        if (drawable != null) {
            computePreviewDrawingParams(drawable.getIntrinsicWidth(), this.mIcon.getMeasuredWidth());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void computePreviewDrawingParams(int drawableSize, int totalSize) {
        float f = drawableSize;
        if (this.mIntrinsicIconSize == f && this.mTotalWidth == totalSize && this.mPrevTopPadding == this.mIcon.getPaddingTop()) {
            return;
        }
        this.mIntrinsicIconSize = f;
        this.mTotalWidth = totalSize;
        this.mPrevTopPadding = this.mIcon.getPaddingTop();
        PreviewBackground previewBackground = this.mIcon.mBackground;
        Context context = this.mIcon.getContext();
        ActivityContext activityContext = this.mIcon.mActivity;
        FolderIcon folderIcon = this.mIcon;
        previewBackground.setup(context, activityContext, folderIcon, this.mTotalWidth, folderIcon.getPaddingTop());
        this.mIcon.mPreviewLayoutRule.init(this.mIcon.mBackground.previewSize, this.mIntrinsicIconSize, Utilities.isRtl(this.mIcon.getResources()));
        updatePreviewItems(false);
    }

    PreviewItemDrawingParams computePreviewItemDrawingParams(int index, int curNumItems, PreviewItemDrawingParams params) {
        if (index == -1) {
            return getFinalIconParams(params);
        }
        return this.mIcon.mPreviewLayoutRule.computePreviewItemDrawingParams(index, curNumItems, params);
    }

    private PreviewItemDrawingParams getFinalIconParams(PreviewItemDrawingParams params) {
        float f = this.mIcon.mActivity.getDeviceProfile().iconSizePx;
        float intrinsicWidth = f / this.mReferenceDrawable.getIntrinsicWidth();
        float f2 = (this.mIcon.mBackground.previewSize - f) / 2.0f;
        params.update(f2, f2, intrinsicWidth);
        return params;
    }

    public void drawParams(Canvas canvas, ArrayList<PreviewItemDrawingParams> params, float transX) {
        canvas.translate(transX, 0.0f);
        MLog.d("FOLDER", "drawParams() called: params size " + params.size());
        for (int size = params.size() - 1; size >= 0; size--) {
            PreviewItemDrawingParams previewItemDrawingParams = params.get(size);
            if (!previewItemDrawingParams.hidden) {
                drawPreviewItem(canvas, previewItemDrawingParams);
            }
        }
        canvas.translate(-transX, 0.0f);
    }

    public void draw(Canvas canvas) {
        float f;
        PreviewBackground folderBackground = this.mIcon.getFolderBackground();
        canvas.translate(folderBackground.basePreviewOffsetX, folderBackground.basePreviewOffsetY);
        if (this.mShouldSlideInFirstPage) {
            drawParams(canvas, this.mCurrentPageParams, this.mCurrentPageItemsTransX);
            f = this.mCurrentPageItemsTransX - 200.0f;
        } else {
            f = 0.0f;
        }
        drawParams(canvas, this.mFirstPageParams, f);
        canvas.translate(-folderBackground.basePreviewOffsetX, -folderBackground.basePreviewOffsetY);
    }

    public void onParamsChanged() {
        this.mIcon.invalidate();
    }

    private void drawPreviewItem(Canvas canvas, PreviewItemDrawingParams params) {
        canvas.save();
        canvas.translate(params.transX, params.transY);
        canvas.scale(params.scale, params.scale);
        Drawable drawable = params.drawable;
        MLog.d("FOLDER", "drawPreviewItem() called:" + params.transX + " " + params.transY + " " + params.scale);
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            canvas.save();
            canvas.translate(-bounds.left, -bounds.top);
            canvas.scale(this.mIntrinsicIconSize / bounds.width(), this.mIntrinsicIconSize / bounds.height());
            drawable.draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }

    public void hidePreviewItem(int index, boolean hidden) {
        int iMax = index + Math.max(this.mFirstPageParams.size() - 9, 0);
        PreviewItemDrawingParams previewItemDrawingParams = iMax < this.mFirstPageParams.size() ? this.mFirstPageParams.get(iMax) : null;
        if (previewItemDrawingParams != null) {
            previewItemDrawingParams.hidden = hidden;
        }
    }

    void buildParamsForPage(int page, ArrayList<PreviewItemDrawingParams> params, boolean animate) {
        PreviewItemManager previewItemManager = this;
        List<WorkspaceItemInfo> previewItemsOnPage = previewItemManager.mIcon.getPreviewItemsOnPage(page);
        int size = params.size();
        while (previewItemsOnPage.size() < params.size()) {
            params.remove(params.size() - 1);
        }
        while (previewItemsOnPage.size() > params.size()) {
            params.add(new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f));
        }
        int size2 = page == 0 ? previewItemsOnPage.size() : 9;
        int i = 0;
        while (i < params.size()) {
            PreviewItemDrawingParams previewItemDrawingParams = params.get(i);
            previewItemManager.setDrawable(previewItemDrawingParams, previewItemsOnPage.get(i));
            if (!animate) {
                previewItemManager.computePreviewItemDrawingParams(i, size2, previewItemDrawingParams);
                if (previewItemManager.mReferenceDrawable == null) {
                    previewItemManager.mReferenceDrawable = previewItemDrawingParams.drawable;
                }
            } else {
                FolderPreviewItemAnim folderPreviewItemAnim = new FolderPreviewItemAnim(this, previewItemDrawingParams, i, size, i, size2, 400, null);
                if (previewItemDrawingParams.anim != null) {
                    if (!previewItemDrawingParams.anim.hasEqualFinalState(folderPreviewItemAnim)) {
                        previewItemDrawingParams.anim.cancel();
                        previewItemDrawingParams.anim = folderPreviewItemAnim;
                        previewItemDrawingParams.anim.start();
                    }
                } else {
                    previewItemDrawingParams.anim = folderPreviewItemAnim;
                    previewItemDrawingParams.anim.start();
                }
            }
            i++;
            previewItemManager = this;
        }
    }

    void onFolderClose(int currentPage) {
        boolean z = currentPage != 0;
        this.mShouldSlideInFirstPage = z;
        if (z) {
            this.mCurrentPageItemsTransX = 0.0f;
            buildParamsForPage(currentPage, this.mCurrentPageParams, false);
            onParamsChanged();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, CURRENT_PAGE_ITEMS_TRANS_X, 0.0f, 200.0f);
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewItemManager.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    PreviewItemManager.this.mCurrentPageParams.clear();
                }
            });
            objectAnimatorOfFloat.setStartDelay(100L);
            objectAnimatorOfFloat.setDuration(300L);
            objectAnimatorOfFloat.start();
        }
    }

    void updatePreviewItems(boolean animate) {
        buildParamsForPage(0, this.mFirstPageParams, animate);
    }

    void updatePreviewItems(Predicate<WorkspaceItemInfo> itemCheck) {
        boolean z = false;
        for (PreviewItemDrawingParams previewItemDrawingParams : this.mFirstPageParams) {
            if (itemCheck.test(previewItemDrawingParams.item)) {
                setDrawable(previewItemDrawingParams, previewItemDrawingParams.item);
                z = true;
            }
        }
        for (PreviewItemDrawingParams previewItemDrawingParams2 : this.mCurrentPageParams) {
            if (itemCheck.test(previewItemDrawingParams2.item)) {
                setDrawable(previewItemDrawingParams2, previewItemDrawingParams2.item);
                z = true;
            }
        }
        if (z) {
            this.mIcon.invalidate();
        }
    }

    boolean verifyDrawable(Drawable who) {
        for (int i = 0; i < this.mFirstPageParams.size(); i++) {
            if (this.mFirstPageParams.get(i).drawable == who) {
                return true;
            }
        }
        return false;
    }

    public void onDrop(List<WorkspaceItemInfo> oldItems, List<WorkspaceItemInfo> newItems, WorkspaceItemInfo dropped) {
        int size = newItems.size();
        ArrayList<PreviewItemDrawingParams> arrayList = this.mFirstPageParams;
        buildParamsForPage(0, arrayList, false);
        ArrayList arrayList2 = new ArrayList();
        for (WorkspaceItemInfo workspaceItemInfo : newItems) {
            if (!oldItems.contains(workspaceItemInfo) && !workspaceItemInfo.equals(dropped)) {
                arrayList2.add(workspaceItemInfo);
            }
        }
        for (int i = 0; i < arrayList2.size(); i++) {
            int iIndexOf = newItems.indexOf(arrayList2.get(i));
            PreviewItemDrawingParams previewItemDrawingParams = arrayList.get(iIndexOf);
            computePreviewItemDrawingParams(iIndexOf, size, previewItemDrawingParams);
            updateTransitionParam(previewItemDrawingParams, (WorkspaceItemInfo) arrayList2.get(i), -3, newItems.indexOf(arrayList2.get(i)), size);
        }
        for (int i2 = 0; i2 < newItems.size(); i2++) {
            int iIndexOf2 = oldItems.indexOf(newItems.get(i2));
            if (iIndexOf2 >= 0 && i2 != iIndexOf2) {
                updateTransitionParam(arrayList.get(i2), newItems.get(i2), iIndexOf2, i2, size);
            }
        }
        ArrayList arrayList3 = new ArrayList(oldItems);
        arrayList3.removeAll(newItems);
        for (int i3 = 0; i3 < arrayList3.size(); i3++) {
            WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) arrayList3.get(i3);
            int iIndexOf3 = oldItems.indexOf(workspaceItemInfo2);
            PreviewItemDrawingParams previewItemDrawingParamsComputePreviewItemDrawingParams = computePreviewItemDrawingParams(iIndexOf3, size, null);
            updateTransitionParam(previewItemDrawingParamsComputePreviewItemDrawingParams, workspaceItemInfo2, iIndexOf3, -2, size);
            arrayList.add(0, previewItemDrawingParamsComputePreviewItemDrawingParams);
        }
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            if (arrayList.get(i4).anim != null) {
                arrayList.get(i4).anim.start();
            }
        }
    }

    private void updateTransitionParam(final PreviewItemDrawingParams p, WorkspaceItemInfo item, int prevIndex, int newIndex, int numItems) {
        setDrawable(p, item);
        FolderPreviewItemAnim folderPreviewItemAnim = new FolderPreviewItemAnim(this, p, prevIndex, numItems, newIndex, numItems, 400, null);
        if (p.anim != null && !p.anim.hasEqualFinalState(folderPreviewItemAnim)) {
            p.anim.cancel();
        }
        p.anim = folderPreviewItemAnim;
    }

    private void setDrawable(PreviewItemDrawingParams p, WorkspaceItemInfo item) {
        if (item.getTargetComponent().getPackageName().contains("com.mega.carplay")) {
            boolean zIsCarPlayConnected = MegaLinkManager.getInstance().isCarPlayConnected();
            MLog.d("isCarPlayConnect " + zIsCarPlayConnected);
            p.drawable = AppIcon.getInstance().getCarPlayIcon(this.mContext, zIsCarPlayConnected);
        } else {
            p.drawable = FastBitmapDrawable.newIcon(this.mContext, item);
        }
        Drawable drawable = p.drawable;
        int i = this.mIconSize;
        drawable.setBounds(0, 0, i, i);
        p.item = item;
        p.drawable.setCallback(this.mIcon);
    }
}
