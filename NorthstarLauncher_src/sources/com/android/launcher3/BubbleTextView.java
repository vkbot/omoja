package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.widget.TextView;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.graphics.IconPalette;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.IconLabelDotView;
import com.mega.chery.utils.CheryCountryArea;
import com.mega.launcher.model.AppUtils;
import java.text.NumberFormat;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class BubbleTextView extends TextView implements IconCache.ItemInfoUpdateReceiver, Launcher.OnResumeCallback, IconLabelDotView, DraggableView, Reorderable, ShakeView {
    private static final int DISPLAY_ALL_APPS = 1;
    private static final int DISPLAY_FOLDER = 2;
    private static final int DISPLAY_WORKSPACE = 0;
    private static final String TAG = "BubbleTextView";
    private final ActivityContext mActivity;
    private OnAlphaChangedListener mAlphaListener;
    private Bitmap mBtHotBitmap;
    private int mBtNum;
    private boolean mCenterVertically;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mDisableRelayout;
    private final int mDisplay;

    @ViewDebug.ExportedProperty(category = "launcher")
    private DotInfo mDotInfo;

    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    private DotRenderer.DrawParams mDotParams;
    private DotRenderer mDotRenderer;
    private Animator mDotScaleAnim;
    private boolean mForceHideDot;
    private Drawable mIcon;
    private IconCache.IconLoadRequest mIconLoadRequest;
    private final int mIconSize;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mIgnorePressedStateChange;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mIsIconVisible;
    private boolean mIsShaking;
    private final boolean mLayoutHorizontal;
    private final CheckLongPressHelper mLongPressHelper;
    private boolean mNotificationDotVisible;
    private boolean mOtaRedHotShow;
    private Bitmap mRedHotBitmap;
    private float mScaleForReorderBounce;
    private int mScheduleNum;
    private ObjectAnimator mShakeAnimator;

    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mStayPressed;

    @ViewDebug.ExportedProperty(category = "launcher")
    private float mTextAlpha;

    @ViewDebug.ExportedProperty(category = "launcher")
    private int mTextColor;
    private final PointF mTranslationForReorderBounce;
    private final PointF mTranslationForReorderPreview;
    private static final int[] STATE_PRESSED = {android.R.attr.state_pressed};
    private static final Property<BubbleTextView, Float> DOT_SCALE_PROPERTY = new Property<BubbleTextView, Float>(Float.TYPE, "dotScale") { // from class: com.android.launcher3.BubbleTextView.1
        @Override // android.util.Property
        public Float get(BubbleTextView bubbleTextView) {
            return Float.valueOf(bubbleTextView.mDotParams.scale);
        }

        @Override // android.util.Property
        public void set(BubbleTextView bubbleTextView, Float value) {
            bubbleTextView.mDotParams.scale = value.floatValue();
            bubbleTextView.invalidate();
        }
    };
    public static final Property<BubbleTextView, Float> TEXT_ALPHA_PROPERTY = new Property<BubbleTextView, Float>(Float.class, "textAlpha") { // from class: com.android.launcher3.BubbleTextView.2
        @Override // android.util.Property
        public Float get(BubbleTextView bubbleTextView) {
            return Float.valueOf(bubbleTextView.mTextAlpha);
        }

        @Override // android.util.Property
        public void set(BubbleTextView bubbleTextView, Float alpha) {
            bubbleTextView.setTextAlpha(alpha.floatValue());
        }
    };

    private boolean hasDot() {
        return this.mDotInfo != null;
    }

    static /* synthetic */ void lambda$prepareDrawDragView$0() {
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public int getIconSize() {
        return this.mIconSize;
    }

    @Override // com.android.launcher3.Reorderable
    public float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    @Override // com.android.launcher3.Reorderable
    public View getView() {
        return this;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public int getViewType() {
        return 0;
    }

    @Override // com.android.launcher3.ShakeView
    public boolean isShaking() {
        return this.mIsShaking;
    }

    public void setAlphaListener(OnAlphaChangedListener alphaListener) {
        this.mAlphaListener = alphaListener;
    }

    public void setNotificationDotVisible(boolean notificationDotVisible) {
        this.mNotificationDotVisible = notificationDotVisible;
    }

    public void setStayPressed(boolean stayPressed) {
    }

    public boolean shouldTextBeVisible() {
        return false;
    }

    public BubbleTextView(Context context) {
        this(context, null, 0);
    }

    public BubbleTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BubbleTextView(Context context, AttributeSet attrs, int defStyle) {
        int i;
        super(context, attrs, defStyle);
        this.mTranslationForReorderBounce = new PointF(0.0f, 0.0f);
        this.mTranslationForReorderPreview = new PointF(0.0f, 0.0f);
        this.mScaleForReorderBounce = 1.0f;
        this.mIsIconVisible = true;
        this.mTextAlpha = 1.0f;
        this.mDisableRelayout = false;
        this.mIsShaking = false;
        this.mOtaRedHotShow = false;
        this.mBtNum = 0;
        this.mScheduleNum = 0;
        ActivityContext activityContextLookupContext = ActivityContext.lookupContext(context);
        this.mActivity = activityContextLookupContext;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.BubbleTextView, defStyle, 0);
        this.mLayoutHorizontal = typedArrayObtainStyledAttributes.getBoolean(3, false);
        DeviceProfile deviceProfile = activityContextLookupContext.getDeviceProfile();
        int integer = typedArrayObtainStyledAttributes.getInteger(1, 0);
        this.mDisplay = integer;
        if (integer == 0) {
            setTextSize(0, deviceProfile.iconTextSizePx);
            setCompoundDrawablePadding(deviceProfile.iconDrawablePaddingPx);
            i = deviceProfile.iconSizePx;
        } else if (integer == 1) {
            setTextSize(0, deviceProfile.allAppsIconTextSizePx);
            setCompoundDrawablePadding(deviceProfile.allAppsIconDrawablePaddingPx);
            i = deviceProfile.allAppsIconSizePx;
        } else if (integer == 2) {
            setTextSize(0, deviceProfile.folderChildTextSizePx);
            setCompoundDrawablePadding(deviceProfile.folderChildDrawablePaddingPx);
            i = deviceProfile.folderChildIconSizePx;
        } else {
            i = deviceProfile.iconSizePx;
        }
        this.mCenterVertically = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.mIconSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, i);
        typedArrayObtainStyledAttributes.recycle();
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mDotParams = new DotRenderer.DrawParams();
        setEllipsize(TextUtils.TruncateAt.END);
        setAccessibilityDelegate(activityContextLookupContext.getAccessibilityDelegate());
        setTextAlpha(1.0f);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean focused, int direction, Rect previouslyFocusedRect) {
        setEllipsize(focused ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
        super.onFocusChanged(focused, direction, previouslyFocusedRect);
    }

    public void reset() {
        this.mDotInfo = null;
        this.mDotParams.color = 0;
        cancelDotScaleAnim();
        this.mDotParams.scale = 0.0f;
        this.mForceHideDot = false;
        setBackground(null);
    }

    private void cancelDotScaleAnim() {
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
    }

    private void animateDotScale(float... dotScales) {
        cancelDotScaleAnim();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, DOT_SCALE_PROPERTY, dotScales);
        this.mDotScaleAnim = objectAnimatorOfFloat;
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.BubbleTextView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                BubbleTextView.this.mDotScaleAnim = null;
            }
        });
        this.mDotScaleAnim.start();
    }

    public void applyFromWorkspaceItem(WorkspaceItemInfo info) {
        applyFromWorkspaceItem(info, false);
    }

    @Override // android.view.View
    public void setAccessibilityDelegate(View.AccessibilityDelegate delegate) {
        if (delegate instanceof LauncherAccessibilityDelegate) {
            super.setAccessibilityDelegate(delegate);
        }
    }

    public void applyFromWorkspaceItem(WorkspaceItemInfo info, boolean promiseStateChanged) {
        this.mOtaRedHotShow = false;
        this.mBtNum = 0;
        applyIconAndLabel(info);
        setTag(info);
        if (promiseStateChanged || info.hasPromiseIconUi()) {
            applyPromiseState(promiseStateChanged);
        }
        applyDotState(info, false);
    }

    public void applyFromApplicationInfo(AppInfo info) {
        applyIconAndLabel(info);
        super.setTag(info);
        verifyHighRes();
        applyDotState(info, false);
    }

    public void applyFromPackageItemInfo(PackageItemInfo info) {
        applyIconAndLabel(info);
        super.setTag(info);
        verifyHighRes();
    }

    public void applyIconAndLabel(ItemInfoWithIcon info) {
        CharSequence string;
        FastBitmapDrawable fastBitmapDrawableNewIcon = FastBitmapDrawable.newIcon(getContext(), info);
        this.mDotParams.color = IconPalette.getMutedColor(info.bitmap.color, 0.54f);
        setIcon(fastBitmapDrawableNewIcon);
        setText(info.title);
        if (info.contentDescription != null) {
            if (info.isDisabled()) {
                string = getContext().getString(R.string.disabled_app_label, info.contentDescription);
            } else {
                string = info.contentDescription;
            }
            setContentDescription(string);
        }
    }

    public void setLongPressTimeoutFactor(float longPressTimeoutFactor) {
        this.mLongPressHelper.setLongPressTimeoutFactor(longPressTimeoutFactor);
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        if (this.mIgnorePressedStateChange) {
            return;
        }
        super.refreshDrawableState();
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int extraSpace) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(extraSpace + 1);
        if (this.mStayPressed) {
            mergeDrawableStates(iArrOnCreateDrawableState, STATE_PRESSED);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 0 && shouldIgnoreTouchDown(event.getX(), event.getY())) {
            return false;
        }
        if (Launcher.getLauncher(getContext()).getStateManager().isInWidgetEditState()) {
            return true;
        }
        if (isLongClickable()) {
            super.onTouchEvent(event);
            this.mLongPressHelper.onTouchEvent(event);
            return true;
        }
        return super.onTouchEvent(event);
    }

    protected boolean shouldIgnoreTouchDown(float x, float y) {
        return y < ((float) getPaddingTop()) || x < ((float) getPaddingLeft()) || y > ((float) (getHeight() - getPaddingBottom())) || x > ((float) (getWidth() - getPaddingRight()));
    }

    @Override // android.widget.TextView, android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        Drawable drawable = this.mIcon;
        if (drawable != null) {
            drawable.setVisible(isVisible, false);
        }
        if (this.mForceHideDot) {
            this.mForceHideDot = false;
            requestLayout();
        }
    }

    @Override // com.android.launcher3.Launcher.OnResumeCallback
    public void onLauncherResume() {
        setStayPressed(false);
    }

    void clearPressedBackground() {
        setPressed(false);
        setStayPressed(false);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        this.mIgnorePressedStateChange = true;
        boolean zOnKeyUp = super.onKeyUp(keyCode, event);
        this.mIgnorePressedStateChange = false;
        refreshDrawableState();
        return zOnKeyUp;
    }

    protected void drawWithoutDot(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        updateCompoundDrawablePadding();
        drawDotIfNecessary(canvas);
        drawWidgetTipsIfNecessary(canvas);
    }

    protected void drawDotIfNecessary(Canvas canvas) {
        if (!this.mNotificationDotVisible || this.mForceHideDot) {
            return;
        }
        if (hasDot() || this.mDotParams.scale > 0.0f) {
            getIconBounds(this.mDotParams.iconBounds);
            Utilities.scaleRectAboutCenter(this.mDotParams.iconBounds, IconShape.getNormalizationScale());
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            canvas.translate(scrollX, scrollY);
            canvas.translate(-scrollX, -scrollY);
        }
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setForceHideDot(boolean forceHideDot) {
        if (this.mForceHideDot == forceHideDot) {
            return;
        }
        this.mForceHideDot = forceHideDot;
        if (forceHideDot) {
            invalidate();
        } else if (hasDot()) {
            animateDotScale(0.0f, 1.0f);
        }
    }

    public void getIconBounds(Rect outBounds) {
        getIconBounds(this, outBounds, this.mIconSize);
    }

    public static void getIconBounds(View iconView, Rect outBounds, int iconSize) {
        outBounds.set(21, 40, 312, 299);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mCenterVertically) {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            setPadding(getPaddingLeft(), (View.MeasureSpec.getSize(heightMeasureSpec) - ((this.mIconSize + getCompoundDrawablePadding()) + ((int) Math.ceil(fontMetrics.bottom - fontMetrics.top)))) / 2, getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        updateCompoundDrawablePadding();
    }

    private void updateCompoundDrawablePadding() {
        if (this.mDisplay == 0) {
            if (getLineCount() > 1) {
                if (getCompoundDrawablePadding() != 48) {
                    setCompoundDrawablePadding(48);
                }
            } else if (getCompoundDrawablePadding() != 60) {
                setCompoundDrawablePadding(60);
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int color) {
        this.mTextColor = color;
        super.setTextColor(getModifiedColor());
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colors) {
        this.mTextColor = colors.getDefaultColor();
        if (Float.compare(this.mTextAlpha, 1.0f) == 0) {
            super.setTextColor(colors);
        } else {
            super.setTextColor(getModifiedColor());
        }
    }

    public void setTextVisibility(boolean visible) {
        setTextAlpha(visible ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextAlpha(float alpha) {
        this.mTextAlpha = alpha;
        super.setTextColor(getModifiedColor());
    }

    private int getModifiedColor() {
        if (this.mTextAlpha == 0.0f) {
            return 0;
        }
        int i = this.mTextColor;
        return GraphicsUtils.setColorAlphaBound(i, Math.round(Color.alpha(i) * this.mTextAlpha));
    }

    public ObjectAnimator createTextAlphaAnimator(boolean fadeIn) {
        return ObjectAnimator.ofFloat(this, TEXT_ALPHA_PROPERTY, (shouldTextBeVisible() && fadeIn) ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView, android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public void applyPromiseState(boolean promiseStateChanged) {
        int installProgress;
        if (getTag() instanceof WorkspaceItemInfo) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) getTag();
            if (workspaceItemInfo.hasPromiseIconUi()) {
                installProgress = workspaceItemInfo.hasStatusFlag(4) ? workspaceItemInfo.getInstallProgress() : 0;
            } else {
                installProgress = 100;
            }
            PreloadIconDrawable preloadIconDrawableApplyProgressLevel = applyProgressLevel(installProgress);
            if (preloadIconDrawableApplyProgressLevel == null || !promiseStateChanged) {
                return;
            }
            preloadIconDrawableApplyProgressLevel.maybePerformFinishedAnimation();
        }
    }

    public PreloadIconDrawable applyProgressLevel(int progressLevel) {
        if (!(getTag() instanceof ItemInfoWithIcon)) {
            return null;
        }
        ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
        if (progressLevel >= 100) {
            setContentDescription(itemInfoWithIcon.contentDescription != null ? itemInfoWithIcon.contentDescription : "");
        } else if (progressLevel > 0) {
            setContentDescription(getContext().getString(R.string.app_downloading_title, itemInfoWithIcon.title, NumberFormat.getPercentInstance().format(((double) progressLevel) * 0.01d)));
        } else {
            setContentDescription(getContext().getString(R.string.app_waiting_download_title, itemInfoWithIcon.title));
        }
        Drawable drawable = this.mIcon;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof PreloadIconDrawable) {
            PreloadIconDrawable preloadIconDrawable = (PreloadIconDrawable) drawable;
            preloadIconDrawable.setLevel(progressLevel);
            return preloadIconDrawable;
        }
        PreloadIconDrawable preloadIconDrawableNewPendingIcon = PreloadIconDrawable.newPendingIcon(getContext(), itemInfoWithIcon);
        preloadIconDrawableNewPendingIcon.setLevel(progressLevel);
        setIcon(preloadIconDrawableNewPendingIcon);
        return preloadIconDrawableNewPendingIcon;
    }

    public void applyDotState(ItemInfo itemInfo, boolean animate) {
        applyMegaDotState(itemInfo);
        if (this.mIcon instanceof FastBitmapDrawable) {
            boolean z = this.mDotInfo != null;
            DotInfo dotInfoForItem = this.mActivity.getDotInfoForItem(itemInfo);
            this.mDotInfo = dotInfoForItem;
            boolean z2 = dotInfoForItem != null;
            float f = z2 ? 1.0f : 0.0f;
            if (z || z2) {
                if (animate && (z ^ z2) && isShown()) {
                    animateDotScale(f);
                } else {
                    cancelDotScaleAnim();
                    this.mDotParams.scale = f;
                    invalidate();
                }
            }
            if (itemInfo.contentDescription != null) {
                if (itemInfo.isDisabled()) {
                    setContentDescription(getContext().getString(R.string.disabled_app_label, itemInfo.contentDescription));
                } else if (hasDot()) {
                    int notificationCount = this.mDotInfo.getNotificationCount();
                    setContentDescription(getContext().getResources().getQuantityString(R.plurals.dotted_app_label, notificationCount, itemInfo.contentDescription, Integer.valueOf(notificationCount)));
                } else {
                    setContentDescription(itemInfo.contentDescription);
                }
            }
        }
    }

    private void setIcon(Drawable icon) {
        if (this.mIsIconVisible) {
            applyCompoundDrawables(icon);
        }
        this.mIcon = icon;
        if (icon != null) {
            icon.setVisible(getWindowVisibility() == 0 && isShown(), false);
        }
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setIconVisible(boolean visible) {
        this.mIsIconVisible = visible;
        if (!visible) {
            resetIconScale();
        }
        applyCompoundDrawables(visible ? this.mIcon : new ColorDrawable(0));
    }

    @Override // android.view.View
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        OnAlphaChangedListener onAlphaChangedListener = this.mAlphaListener;
        if (onAlphaChangedListener != null) {
            onAlphaChangedListener.onAlphaChanged(alpha);
        }
    }

    protected void applyCompoundDrawables(Drawable icon) {
        this.mDisableRelayout = this.mIcon != null;
        int i = this.mDisplay;
        if (i == 2) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.folder_icon_padding_top);
            int i2 = this.mIconSize;
            icon.setBounds(0, dimensionPixelSize, i2, i2 + dimensionPixelSize);
        } else if (i == 0) {
            int i3 = this.mIconSize;
            icon.setBounds(0, 40, i3 - 130, i3 - 90);
            setCompoundDrawablePadding(60);
        } else {
            int i4 = this.mIconSize;
            icon.setBounds(0, 0, i4, i4);
        }
        if (this.mLayoutHorizontal) {
            setCompoundDrawablesRelative(icon, null, null, null);
        } else {
            setCompoundDrawables(null, icon, null, null);
        }
        this.mDisableRelayout = false;
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.mDisableRelayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public void reapplyItemInfo(ItemInfoWithIcon info) {
        if (getTag() == info) {
            this.mIconLoadRequest = null;
            this.mDisableRelayout = true;
            info.bitmap.icon.prepareToDraw();
            if (info instanceof AppInfo) {
                applyFromApplicationInfo((AppInfo) info);
            } else if (info instanceof WorkspaceItemInfo) {
                applyFromWorkspaceItem((WorkspaceItemInfo) info);
                this.mActivity.invalidateParent(info);
            } else if (info instanceof PackageItemInfo) {
                applyFromPackageItemInfo((PackageItemInfo) info);
            }
            this.mDisableRelayout = false;
        }
    }

    public void verifyHighRes() {
        IconCache.IconLoadRequest iconLoadRequest = this.mIconLoadRequest;
        if (iconLoadRequest != null) {
            iconLoadRequest.cancel();
            this.mIconLoadRequest = null;
        }
        if (getTag() instanceof ItemInfoWithIcon) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
            if (itemInfoWithIcon.usingLowResIcon()) {
                this.mIconLoadRequest = LauncherAppState.getInstance(getContext()).getIconCache().updateIconInBackground(this, itemInfoWithIcon);
            }
        }
    }

    private void updateTranslation() {
        super.setTranslationX(this.mTranslationForReorderBounce.x + this.mTranslationForReorderPreview.x);
        super.setTranslationY(this.mTranslationForReorderBounce.y + this.mTranslationForReorderPreview.y);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceOffset(float x, float y) {
        this.mTranslationForReorderBounce.set(x, y);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderBounceOffset(PointF offset) {
        offset.set(this.mTranslationForReorderBounce);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderPreviewOffset(float x, float y) {
        this.mTranslationForReorderPreview.set(x, y);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderPreviewOffset(PointF offset) {
        offset.set(this.mTranslationForReorderPreview);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceScale(float scale) {
        this.mScaleForReorderBounce = scale;
        super.setScaleX(scale);
        super.setScaleY(scale);
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getWorkspaceVisualDragBounds(Rect bounds) {
        getIconBounds(this, bounds, this.mActivity.getDeviceProfile().iconSizePx);
    }

    private int getIconSizeForDisplay(int display) {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (display == 1) {
            return deviceProfile.allAppsIconSizePx;
        }
        return deviceProfile.iconSizePx;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getSourceVisualDragBounds(Rect bounds) {
        getIconBounds(this, bounds, getIconSizeForDisplay(this.mDisplay));
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public SafeCloseable prepareDrawDragView() {
        resetIconScale();
        setForceHideDot(true);
        return new SafeCloseable() { // from class: com.android.launcher3.BubbleTextView$$ExternalSyntheticLambda0
            @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
            public final void close() {
                BubbleTextView.lambda$prepareDrawDragView$0();
            }
        };
    }

    private void resetIconScale() {
        Drawable drawable = this.mIcon;
        if (drawable instanceof FastBitmapDrawable) {
            ((FastBitmapDrawable) drawable).setScale(1.0f);
        }
    }

    @Override // android.view.View
    public String toString() {
        return super.toString() + " " + getTag();
    }

    @Override // com.android.launcher3.ShakeView
    public void startShake() {
        this.mIsShaking = true;
        ObjectAnimator objectAnimator = this.mShakeAnimator;
        if (objectAnimator == null) {
            this.mShakeAnimator = ShakeView.getShakeAnimator(this);
        } else {
            objectAnimator.cancel();
        }
        this.mShakeAnimator.start();
    }

    @Override // com.android.launcher3.ShakeView
    public void stopShake() {
        this.mIsShaking = false;
        ObjectAnimator objectAnimator = this.mShakeAnimator;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
    }

    protected void drawWidgetTipsIfNecessary(Canvas canvas) {
        if (Launcher.getLauncher(getContext()).getStateManager().isInWidgetEditState() || this.mForceHideDot) {
            boolean z = getWidth() >= 300;
            if (this.mOtaRedHotShow && !this.mForceHideDot) {
                if (this.mRedHotBitmap == null) {
                    this.mRedHotBitmap = BitmapFactory.decodeResource(getContext().getResources(), R.mipmap.icon_red_hot);
                }
                Rect rect = new Rect(185, 29, this.mRedHotBitmap.getWidth() + 185, this.mRedHotBitmap.getHeight() + 29);
                if (z) {
                    rect = new Rect((getWidth() - ((int) (this.mRedHotBitmap.getWidth() * 0.76f))) - 50, 22, getWidth() - 50, ((int) (this.mRedHotBitmap.getHeight() * 0.76f)) + 22);
                }
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                canvas.translate(scrollX, scrollY);
                canvas.drawBitmap(this.mRedHotBitmap, (Rect) null, rect, IconEditBadgeView.sBadgePaint);
                canvas.translate(-scrollX, -scrollY);
            }
            int i = this.mBtNum;
            if (i > 0 && !this.mForceHideDot) {
                drawRedNumHot(z, i, canvas);
            }
            int i2 = this.mScheduleNum;
            if (i2 <= 0 || this.mForceHideDot) {
                return;
            }
            drawRedNumHot(z, i2, canvas);
        }
    }

    private void drawRedNumHot(boolean isInFolder, int number, Canvas canvas) {
        String str;
        int i;
        if (this.mBtHotBitmap == null) {
            this.mBtHotBitmap = BitmapFactory.decodeResource(getContext().getResources(), R.mipmap.icon_bt_num_hot);
        }
        Rect rect = new Rect(getWidth() - this.mBtHotBitmap.getWidth(), 27, getWidth(), this.mBtHotBitmap.getHeight() + 27);
        if (isInFolder) {
            rect = new Rect((getWidth() - ((int) (this.mBtHotBitmap.getWidth() * 0.76f))) - 48, 21, getWidth() - 48, ((int) (this.mBtHotBitmap.getHeight() * 0.76f)) + 21);
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        canvas.translate(scrollX, scrollY);
        canvas.drawBitmap(this.mBtHotBitmap, (Rect) null, rect, IconEditBadgeView.sBadgePaint);
        canvas.translate(-scrollX, -scrollY);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        if (isInFolder) {
            paint.setTextSize(18.0f);
        } else {
            paint.setTextSize(24.0f);
        }
        paint.setFakeBoldText(true);
        paint.setColor(Color.parseColor("#ffffffff"));
        if (number <= 0 || number >= 100) {
            str = number >= 100 ? "99+" : "";
            i = 0;
        } else {
            str = number + "";
            i = number / 10 > 0 ? 8 : 11;
        }
        if (isInFolder) {
            canvas.drawText(str, (getWidth() - 95) + i, 46.0f, paint);
        } else {
            canvas.drawText(str, (getWidth() - ((this.mBtHotBitmap.getWidth() * 3) / 4)) + i, 60.0f, paint);
        }
    }

    public void applyMegaDotState(ItemInfo itemInfo) {
        String packageName = itemInfo != null ? itemInfo.getTargetComponent().getPackageName() : "";
        if (packageName.contains(AppUtils.PKG_BT_PHONE)) {
            this.mBtNum = Settings.System.getInt(getContext().getContentResolver(), Utils.BT_PHONE_NUM_URI, -1);
            MLog.d(TAG, "BT_PHONE_NUM_URI " + this.mBtNum);
            invalidate();
        } else if (AppUtils.isUpgradeApp(packageName)) {
            this.mOtaRedHotShow = CheryCountryArea.KEY_CHILE.equals(Settings.Global.getString(getContext().getContentResolver(), Utils.UPGRADE_URI));
            invalidate();
        } else if (packageName.contains(AppUtils.PKG_CALENDER)) {
            this.mScheduleNum = Settings.System.getInt(getContext().getContentResolver(), Utils.CALENDAR_SCHEDULE_URI, -1);
            MLog.d(TAG, "BT_PHONE_SCHEDULE_URI " + this.mScheduleNum);
            invalidate();
        }
    }
}
