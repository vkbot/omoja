package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.launcher3.Alarm;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DropTarget;
import com.android.launcher3.IconEditBadgeView;
import com.android.launcher3.Launcher;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.R;
import com.android.launcher3.Reorderable;
import com.android.launcher3.ShakeView;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.logger.LauncherAtom;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.IconLabelDotView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.mega.chery.utils.CheryCountryArea;
import com.mega.launcher.model.AppUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class FolderIcon extends FrameLayout implements FolderInfo.FolderListener, IconLabelDotView, DraggableView, Reorderable, ShakeView {
    private static final Property<FolderIcon, Float> DOT_SCALE_PROPERTY = new Property<FolderIcon, Float>(Float.TYPE, "dotScale") { // from class: com.android.launcher3.folder.FolderIcon.1
        @Override // android.util.Property
        public Float get(FolderIcon folderIcon) {
            return Float.valueOf(folderIcon.mDotScale);
        }

        @Override // android.util.Property
        public void set(FolderIcon folderIcon, Float value) {
            folderIcon.mDotScale = value.floatValue();
            folderIcon.invalidate();
        }
    };
    static final int DROP_IN_ANIMATION_DURATION = 400;
    private static final int ON_OPEN_DELAY = 800;
    public static final boolean SPRING_LOADING_ENABLED = true;
    private static final String TAG = "FolderIcon";
    ActivityContext mActivity;
    boolean mAnimating;
    PreviewBackground mBackground;
    private boolean mBackgroundIsVisible;
    private Bitmap mBtHotBitmap;
    private List<WorkspaceItemInfo> mCurrentPreviewItems;

    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    private FolderDotInfo mDotInfo;

    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    private DotRenderer.DrawParams mDotParams;
    private DotRenderer mDotRenderer;
    private float mDotScale;
    private Animator mDotScaleAnim;
    Folder mFolder;
    BubbleTextView mFolderName;
    private boolean mForceHideDot;
    public FolderInfo mInfo;
    private boolean mIsShaking;
    private CheckLongPressHelper mLongPressHelper;
    OnAlarmListener mOnOpenListener;
    private Alarm mOpenAlarm;
    private PreviewItemManager mPreviewItemManager;
    ClippedFolderIconLayoutRule mPreviewLayoutRule;
    FolderGridOrganizer mPreviewVerifier;
    private float mScaleForReorderBounce;
    private ObjectAnimator mShakeAnimator;
    private PreviewItemDrawingParams mTmpParams;
    private Rect mTouchArea;
    private final PointF mTranslationForReorderBounce;
    private final PointF mTranslationForReorderPreview;

    private void setFolder(Folder folder) {
        this.mFolder = folder;
    }

    public Folder getFolder() {
        return this.mFolder;
    }

    public PreviewBackground getFolderBackground() {
        return this.mBackground;
    }

    public BubbleTextView getFolderName() {
        return this.mFolderName;
    }

    public boolean getIconVisible() {
        return this.mBackgroundIsVisible;
    }

    public ClippedFolderIconLayoutRule getLayoutRule() {
        return this.mPreviewLayoutRule;
    }

    public PreviewItemManager getPreviewItemManager() {
        return this.mPreviewItemManager;
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

    public FolderIcon(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mCurrentPreviewItems = new ArrayList();
        this.mAnimating = false;
        this.mOpenAlarm = new Alarm();
        this.mDotInfo = new FolderDotInfo();
        this.mTouchArea = new Rect();
        this.mTranslationForReorderBounce = new PointF(0.0f, 0.0f);
        this.mTranslationForReorderPreview = new PointF(0.0f, 0.0f);
        this.mScaleForReorderBounce = 1.0f;
        this.mOnOpenListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.FolderIcon.2
            @Override // com.android.launcher3.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                FolderIcon.this.mFolder.beginExternalDrag();
            }
        };
        this.mIsShaking = false;
        init();
    }

    public FolderIcon(Context context) {
        super(context);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mCurrentPreviewItems = new ArrayList();
        this.mAnimating = false;
        this.mOpenAlarm = new Alarm();
        this.mDotInfo = new FolderDotInfo();
        this.mTouchArea = new Rect();
        this.mTranslationForReorderBounce = new PointF(0.0f, 0.0f);
        this.mTranslationForReorderPreview = new PointF(0.0f, 0.0f);
        this.mScaleForReorderBounce = 1.0f;
        this.mOnOpenListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.FolderIcon.2
            @Override // com.android.launcher3.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                FolderIcon.this.mFolder.beginExternalDrag();
            }
        };
        this.mIsShaking = false;
        init();
    }

    private void init() {
        this.mLongPressHelper = new CheckLongPressHelper(this);
        this.mPreviewLayoutRule = new ClippedFolderIconLayoutRule();
        this.mPreviewItemManager = new PreviewItemManager(this);
        this.mDotParams = new DotRenderer.DrawParams();
    }

    public static FolderIcon inflateFolderAndIcon(int resId, Launcher launcher, ViewGroup group, FolderInfo folderInfo) {
        Folder folderFromXml = Folder.fromXml(launcher);
        folderFromXml.setDragController(launcher.getDragController());
        FolderIcon folderIconInflateIcon = inflateIcon(resId, launcher, group, folderInfo);
        folderFromXml.setFolderIcon(folderIconInflateIcon);
        folderFromXml.bind(folderInfo);
        folderIconInflateIcon.setFolder(folderFromXml);
        return folderIconInflateIcon;
    }

    public static FolderIcon inflateIcon(int resId, ActivityContext activity, ViewGroup group, FolderInfo folderInfo) {
        DeviceProfile deviceProfile = activity.getDeviceProfile();
        FolderIcon folderIcon = (FolderIcon) LayoutInflater.from(group.getContext()).inflate(resId, group, false);
        folderIcon.setClipToPadding(false);
        BubbleTextView bubbleTextView = (BubbleTextView) folderIcon.findViewById(R.id.folder_icon_name);
        folderIcon.mFolderName = bubbleTextView;
        bubbleTextView.setText(folderInfo.title);
        folderIcon.mFolderName.setCompoundDrawablePadding(0);
        ((FrameLayout.LayoutParams) folderIcon.mFolderName.getLayoutParams()).topMargin = deviceProfile.iconSizePx + deviceProfile.iconDrawablePaddingPx;
        folderIcon.setTag(folderInfo);
        folderIcon.setOnClickListener(ItemClickHandler.INSTANCE);
        folderIcon.mInfo = folderInfo;
        folderIcon.mActivity = activity;
        folderIcon.setContentDescription(folderIcon.getAccessiblityTitle(folderInfo.title));
        FolderDotInfo folderDotInfo = new FolderDotInfo();
        Iterator<WorkspaceItemInfo> it = folderInfo.contents.iterator();
        while (it.hasNext()) {
            folderDotInfo.addDotInfo(activity.getDotInfoForItem(it.next()));
        }
        folderIcon.setDotInfo(folderDotInfo);
        folderIcon.setAccessibilityDelegate(activity.getAccessibilityDelegate());
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(activity.getDeviceProfile().inv);
        folderIcon.mPreviewVerifier = folderGridOrganizer;
        folderGridOrganizer.setFolderInfo(folderInfo);
        folderIcon.updatePreviewItems(false);
        folderInfo.addListener(folderIcon);
        return folderIcon;
    }

    public void animateBgShadowAndStroke() {
        this.mBackground.fadeInBackgroundShadow();
        this.mBackground.animateBackgroundStroke();
    }

    public void getPreviewBounds(Rect outBounds) {
        this.mPreviewItemManager.recomputePreviewDrawingParams();
        this.mBackground.getBounds(outBounds);
    }

    public float getBackgroundStrokeWidth() {
        return this.mBackground.getStrokeWidth();
    }

    private boolean willAcceptItem(ItemInfo item) {
        int i = item.itemType;
        return ((i != 0 && i != 1 && i != 6) || item == this.mInfo || this.mFolder.isOpen()) ? false : true;
    }

    public boolean acceptDrop(ItemInfo dragInfo) {
        return !this.mFolder.isDestroyed() && willAcceptItem(dragInfo);
    }

    public void addItem(WorkspaceItemInfo item) {
        MLog.d(TAG, "addItem() called with: item = [" + item + "]");
        this.mInfo.add(item, true);
    }

    public void removeItem(WorkspaceItemInfo item, boolean animate) {
        MLog.d(TAG, "removeItem() called: item = [" + item + "], animate = [" + animate + "]");
        this.mInfo.remove(item, animate);
    }

    public void onDragEnter(ItemInfo dragInfo) {
        MLog.d(TAG, "onDragEnter() called: dragInfo = [" + dragInfo + "]");
        if (this.mFolder.isDestroyed() || !willAcceptItem(dragInfo)) {
            return;
        }
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) getLayoutParams();
        this.mBackground.animateToAccept((CellLayout) getParent().getParent(), layoutParams.cellX, layoutParams.cellY);
        this.mOpenAlarm.setOnAlarmListener(this.mOnOpenListener);
        if ((dragInfo instanceof AppInfo) || (dragInfo instanceof WorkspaceItemInfo) || (dragInfo instanceof PendingAddShortcutInfo)) {
            this.mOpenAlarm.setAlarm(800L);
        }
    }

    public Drawable prepareCreateAnimation(final View destView) {
        return this.mPreviewItemManager.prepareCreateAnimation(destView);
    }

    public void performCreateAnimation(final WorkspaceItemInfo destInfo, final View destView, final WorkspaceItemInfo srcInfo, final DropTarget.DragObject d, Rect dstRect, float scaleRelativeToDragLayer) {
        DragView dragView = d.dragView;
        prepareCreateAnimation(destView);
        addItem(destInfo);
        this.mPreviewItemManager.createFirstItemAnimation(false, null).start();
        onDrop(srcInfo, d, dstRect, scaleRelativeToDragLayer, 1, false);
    }

    public void performDestroyAnimation(Runnable onCompleteRunnable) {
        this.mPreviewItemManager.createFirstItemAnimation(true, onCompleteRunnable).start();
    }

    public void onDragExit() {
        MLog.d(TAG, "onDragExit() called");
        this.mBackground.animateToRest();
        this.mOpenAlarm.cancelAlarm();
    }

    private void onDrop(final WorkspaceItemInfo item, final DropTarget.DragObject d, Rect finalRect, float scaleRelativeToDragLayer, int index, boolean itemReturnedOnFailedDrop) {
        Rect rect;
        float descendantRectRelativeToSelf;
        boolean z;
        int i = index;
        item.cellX = -1;
        item.cellY = -1;
        DragView dragView = d.dragView;
        if (dragView != null) {
            ActivityContext activityContext = this.mActivity;
            if (activityContext instanceof Launcher) {
                Launcher launcher = (Launcher) activityContext;
                DragLayer dragLayer = launcher.getDragLayer();
                Rect rect2 = new Rect();
                dragLayer.getViewRectRelativeToSelf(dragView, rect2);
                if (finalRect == null) {
                    Rect rect3 = new Rect();
                    Workspace workspace = launcher.getWorkspace();
                    workspace.setFinalTransitionTransform();
                    float scaleX = getScaleX();
                    float scaleY = getScaleY();
                    setScaleX(1.0f);
                    setScaleY(1.0f);
                    descendantRectRelativeToSelf = dragLayer.getDescendantRectRelativeToSelf(this, rect3);
                    setScaleX(scaleX);
                    setScaleY(scaleY);
                    workspace.resetTransitionTransform();
                    rect = rect3;
                } else {
                    rect = finalRect;
                    descendantRectRelativeToSelf = scaleRelativeToDragLayer;
                }
                int iMin = Math.min(9, i + 1);
                if (itemReturnedOnFailedDrop || i >= 9) {
                    ArrayList arrayList = new ArrayList(this.mCurrentPreviewItems);
                    this.mInfo.add(item, i, false);
                    this.mCurrentPreviewItems.clear();
                    this.mCurrentPreviewItems.addAll(getPreviewItemsOnPage(0));
                    if (!arrayList.equals(this.mCurrentPreviewItems)) {
                        int iIndexOf = this.mCurrentPreviewItems.indexOf(item);
                        if (iIndexOf < 0) {
                            iIndexOf = i;
                        }
                        this.mPreviewItemManager.hidePreviewItem(iIndexOf, true);
                        this.mPreviewItemManager.onDrop(arrayList, this.mCurrentPreviewItems, item);
                        i = iIndexOf;
                        z = true;
                    } else {
                        removeItem(item, false);
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    this.mInfo.add(item, i, true);
                }
                int[] iArr = new int[2];
                float localCenterForIndex = getLocalCenterForIndex(i, iMin, iArr);
                iArr[0] = Math.round(iArr[0] * descendantRectRelativeToSelf);
                iArr[1] = Math.round(iArr[1] * descendantRectRelativeToSelf);
                rect.offset(iArr[0] - (dragView.getMeasuredWidth() / 2), iArr[1] - (dragView.getMeasuredHeight() / 2));
                float f = localCenterForIndex * descendantRectRelativeToSelf;
                dragLayer.animateView(dragView, rect2, rect, i < 9 ? 0.5f : 0.0f, 1.0f, 1.0f, f, f, 400, Interpolators.DEACCEL_2, Interpolators.ACCEL_2, null, 0, null);
                this.mFolder.hideItem(item);
                if (!z) {
                    this.mPreviewItemManager.hidePreviewItem(i, true);
                }
                final FolderNameInfos folderNameInfos = new FolderNameInfos();
                if (FeatureFlags.FOLDER_NAME_SUGGEST.get()) {
                    final int i2 = i;
                    Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.folder.FolderIcon$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m91lambda$onDrop$0$comandroidlauncher3folderFolderIcon(d, folderNameInfos, i2, item);
                        }
                    });
                    return;
                } else {
                    showFinalView(i, item, folderNameInfos, d.logInstanceId);
                    return;
                }
            }
        }
        addItem(item);
    }

    /* JADX INFO: renamed from: lambda$onDrop$0$com-android-launcher3-folder-FolderIcon, reason: not valid java name */
    /* synthetic */ void m91lambda$onDrop$0$comandroidlauncher3folderFolderIcon(DropTarget.DragObject dragObject, FolderNameInfos folderNameInfos, int i, WorkspaceItemInfo workspaceItemInfo) {
        dragObject.folderNameProvider.getSuggestedFolderName(getContext(), this.mInfo.contents, folderNameInfos);
        showFinalView(i, workspaceItemInfo, folderNameInfos, dragObject.logInstanceId);
    }

    private void showFinalView(final int finalIndex, final WorkspaceItemInfo item, final FolderNameInfos nameInfos, final InstanceId instanceId) {
        postDelayed(new Runnable() { // from class: com.android.launcher3.folder.FolderIcon$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m92lambda$showFinalView$1$comandroidlauncher3folderFolderIcon(finalIndex, item, nameInfos, instanceId);
            }
        }, 400L);
    }

    /* JADX INFO: renamed from: lambda$showFinalView$1$com-android-launcher3-folder-FolderIcon, reason: not valid java name */
    /* synthetic */ void m92lambda$showFinalView$1$comandroidlauncher3folderFolderIcon(int i, WorkspaceItemInfo workspaceItemInfo, FolderNameInfos folderNameInfos, InstanceId instanceId) {
        this.mPreviewItemManager.hidePreviewItem(i, false);
        this.mFolder.showItem(workspaceItemInfo);
        setLabelSuggestion(folderNameInfos, instanceId);
        invalidate();
    }

    public void setLabelSuggestion(FolderNameInfos nameInfos, InstanceId instanceId) {
        if (FeatureFlags.FOLDER_NAME_SUGGEST.get() && this.mInfo.getLabelState().equals(FolderInfo.LabelState.UNLABELED)) {
            if (nameInfos == null || !nameInfos.hasSuggestions()) {
                StatsLogManager.newInstance(getContext()).logger().withInstanceId(instanceId).withItemInfo(this.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS);
                return;
            }
            if (!nameInfos.hasPrimary()) {
                StatsLogManager.newInstance(getContext()).logger().withInstanceId(instanceId).withItemInfo(this.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY);
                return;
            }
            CharSequence charSequence = nameInfos.getLabels()[0];
            LauncherAtom.FromState fromLabelState = this.mInfo.getFromLabelState();
            this.mInfo.setTitle(charSequence, this.mFolder.mLauncher.getModelWriter());
            onTitleChanged(this.mInfo.title);
            this.mFolder.mFolderName.setText(this.mInfo.title);
            StatsLogManager.newInstance(getContext()).logger().withInstanceId(instanceId).withItemInfo(this.mInfo).withFromState(fromLabelState).withToState(LauncherAtom.ToState.TO_SUGGESTION0).withEditText(charSequence.toString()).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELED);
            this.mFolder.logFolderLabelState(fromLabelState, LauncherAtom.ToState.TO_SUGGESTION0);
        }
    }

    public void onDrop(DropTarget.DragObject d, boolean itemReturnedOnFailedDrop) {
        WorkspaceItemInfo workspaceItemInfo;
        MLog.d(TAG, "onDrop() called: d = [" + d + "], itemReturnedOnFailedDrop = [" + itemReturnedOnFailedDrop + "]");
        if (d.dragInfo instanceof AppInfo) {
            workspaceItemInfo = ((AppInfo) d.dragInfo).makeWorkspaceItem();
        } else if (d.dragSource instanceof BaseItemDragListener) {
            workspaceItemInfo = new WorkspaceItemInfo((WorkspaceItemInfo) d.dragInfo);
        } else {
            workspaceItemInfo = (WorkspaceItemInfo) d.dragInfo;
        }
        WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
        this.mFolder.notifyDrop();
        onDrop(workspaceItemInfo2, d, null, 1.0f, itemReturnedOnFailedDrop ? workspaceItemInfo2.rank : this.mInfo.contents.size(), itemReturnedOnFailedDrop);
    }

    public void setDotInfo(FolderDotInfo dotInfo) {
        updateDotScale(this.mDotInfo.hasDot(), dotInfo.hasDot());
        this.mDotInfo = dotInfo;
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

    private void updateDotScale(boolean wasDotted, boolean isDotted) {
        float f = isDotted ? 1.0f : 0.0f;
        if ((wasDotted ^ isDotted) && isShown()) {
            animateDotScale(f);
            return;
        }
        cancelDotScaleAnim();
        this.mDotScale = f;
        invalidate();
    }

    private void cancelDotScaleAnim() {
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void animateDotScale(float... dotScales) {
        cancelDotScaleAnim();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, DOT_SCALE_PROPERTY, dotScales);
        this.mDotScaleAnim = objectAnimatorOfFloat;
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderIcon.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                FolderIcon.this.mDotScaleAnim = null;
            }
        });
        this.mDotScaleAnim.start();
    }

    public boolean hasDot() {
        FolderDotInfo folderDotInfo = this.mDotInfo;
        return folderDotInfo != null && folderDotInfo.hasDot();
    }

    private float getLocalCenterForIndex(int index, int curNumItems, int[] center) {
        PreviewItemDrawingParams previewItemDrawingParamsComputePreviewItemDrawingParams = this.mPreviewItemManager.computePreviewItemDrawingParams(Math.min(9, index), curNumItems, this.mTmpParams);
        this.mTmpParams = previewItemDrawingParamsComputePreviewItemDrawingParams;
        previewItemDrawingParamsComputePreviewItemDrawingParams.transX += this.mBackground.basePreviewOffsetX;
        this.mTmpParams.transY += this.mBackground.basePreviewOffsetY;
        float intrinsicIconSize = this.mPreviewItemManager.getIntrinsicIconSize();
        float f = this.mTmpParams.transX + ((this.mTmpParams.scale * intrinsicIconSize) / 2.0f);
        float f2 = this.mTmpParams.transY + ((this.mTmpParams.scale * intrinsicIconSize) / 2.0f);
        center[0] = Math.round(f);
        center[1] = Math.round(f2);
        return this.mTmpParams.scale;
    }

    public void setFolderBackground(PreviewBackground bg) {
        this.mBackground = bg;
        bg.setInvalidateDelegate(this);
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setIconVisible(boolean visible) {
        this.mBackgroundIsVisible = visible;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mBackgroundIsVisible) {
            this.mPreviewItemManager.recomputePreviewDrawingParams();
            if (!this.mBackground.drawingDelegated()) {
                this.mBackground.drawBackground(canvas);
            }
            if (!this.mCurrentPreviewItems.isEmpty() || this.mAnimating) {
                int iSave = canvas.save();
                canvas.clipPath(this.mBackground.getClipPath());
                this.mPreviewItemManager.draw(canvas);
                canvas.restoreToCount(iSave);
                if (!this.mBackground.drawingDelegated()) {
                    this.mBackground.drawBackgroundStroke(canvas);
                }
                drawDot(canvas);
                drawRedNumHot(computeFolderNumber(), canvas);
            }
        }
    }

    public void drawDot(Canvas canvas) {
        if (this.mForceHideDot) {
            return;
        }
        FolderDotInfo folderDotInfo = this.mDotInfo;
        if ((folderDotInfo == null || !folderDotInfo.hasDot()) && this.mDotScale <= 0.0f) {
            return;
        }
        Rect rect = this.mDotParams.iconBounds;
        BubbleTextView.getIconBounds(this, rect, this.mActivity.getDeviceProfile().iconSizePx);
        Utilities.scaleRectAboutCenter(rect, this.mBackground.previewSize / rect.width());
        this.mDotParams.scale = Math.max(0.0f, this.mDotScale - this.mBackground.getScaleProgress());
        this.mDotParams.color = this.mBackground.getDotColor();
    }

    public void setTextVisible(boolean visible) {
        if (visible) {
            this.mFolderName.setVisibility(0);
        } else {
            this.mFolderName.setVisibility(4);
        }
    }

    public boolean getTextVisible() {
        return this.mFolderName.getVisibility() == 0;
    }

    public List<WorkspaceItemInfo> getPreviewItemsOnPage(int page) {
        return this.mPreviewVerifier.setFolderInfo(this.mInfo).previewItemsForPage(page, this.mInfo.contents);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return this.mPreviewItemManager.verifyDrawable(who) || super.verifyDrawable(who);
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onItemsChanged(boolean animate) {
        updatePreviewItems(animate);
        invalidate();
        requestLayout();
    }

    private void updatePreviewItems(boolean animate) {
        this.mPreviewItemManager.updatePreviewItems(animate);
        this.mCurrentPreviewItems.clear();
        this.mCurrentPreviewItems.addAll(getPreviewItemsOnPage(0));
    }

    public void updatePreviewItems(Predicate<WorkspaceItemInfo> itemCheck) {
        this.mPreviewItemManager.updatePreviewItems(itemCheck);
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onAdd(WorkspaceItemInfo item, int rank) {
        MLog.d(TAG, "onAdd() called: item = [" + item + "], rank = [" + rank + "]");
        boolean zHasDot = this.mDotInfo.hasDot();
        this.mDotInfo.addDotInfo(this.mActivity.getDotInfoForItem(item));
        updateDotScale(zHasDot, this.mDotInfo.hasDot());
        setContentDescription(getAccessiblityTitle(this.mInfo.title));
        invalidate();
        requestLayout();
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onRemove(WorkspaceItemInfo item) {
        MLog.d(TAG, "onRemove() called: item = [" + item + "]");
        boolean zHasDot = this.mDotInfo.hasDot();
        this.mDotInfo.subtractDotInfo(this.mActivity.getDotInfoForItem(item));
        updateDotScale(zHasDot, this.mDotInfo.hasDot());
        setContentDescription(getAccessiblityTitle(this.mInfo.title));
        invalidate();
        requestLayout();
    }

    public void onTitleChanged(CharSequence title) {
        this.mFolderName.setText(title);
        setContentDescription(getAccessiblityTitle(title));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 0 && shouldIgnoreTouchDown(event.getX(), event.getY())) {
            return false;
        }
        super.onTouchEvent(event);
        this.mLongPressHelper.onTouchEvent(event);
        return true;
    }

    protected boolean shouldIgnoreTouchDown(float x, float y) {
        this.mTouchArea.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        return !this.mTouchArea.contains((int) x, (int) y);
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public void removeListeners() {
        this.mInfo.removeListener(this);
        this.mInfo.removeListener(this.mFolder);
    }

    public void clearLeaveBehindIfExists() {
        ((CellLayout.LayoutParams) getLayoutParams()).canReorder = true;
        if (this.mInfo.container == -101) {
            ((CellLayout) getParent().getParent()).clearFolderLeaveBehind();
        }
    }

    public void drawLeaveBehindIfExists() {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) getLayoutParams();
        layoutParams.canReorder = false;
        if (this.mInfo.container == -101) {
            ((CellLayout) getParent().getParent()).setFolderLeaveBehindCell(layoutParams.cellX, layoutParams.cellY);
        }
    }

    public void onFolderClose(int currentPage) {
        this.mPreviewItemManager.onFolderClose(currentPage);
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
        getPreviewBounds(bounds);
    }

    public String getAccessiblityTitle(CharSequence title) {
        int size = this.mInfo.contents.size();
        if (size < 9) {
            return getContext().getString(R.string.folder_name_format_exact, title, Integer.valueOf(size));
        }
        return getContext().getString(R.string.folder_name_format_overflow, title, 9);
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

    private int computeFolderNumber() {
        int i;
        ArrayList<WorkspaceItemInfo> arrayList = this.mInfo.contents;
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            String packageName = arrayList.get(i3).getTargetComponent().getPackageName();
            if (packageName.equals(AppUtils.PKG_BT_PHONE)) {
                i = Settings.System.getInt(getContext().getContentResolver(), Utils.BT_PHONE_NUM_URI, 0);
            } else {
                if (packageName.equals(AppUtils.PKG_CALENDER)) {
                    i = Settings.System.getInt(getContext().getContentResolver(), Utils.CALENDAR_SCHEDULE_URI, 0);
                } else if (AppUtils.isUpgradeApp(packageName) && CheryCountryArea.KEY_CHILE.equals(Settings.Global.getString(getContext().getContentResolver(), Utils.UPGRADE_URI))) {
                    i2++;
                }
            }
            i2 += i;
        }
        MLog.i("computeFolderNumber " + i2);
        return i2;
    }

    private void drawRedNumHot(int number, Canvas canvas) {
        String str;
        int i;
        if (number <= 0) {
            return;
        }
        if (this.mBtHotBitmap == null) {
            this.mBtHotBitmap = BitmapFactory.decodeResource(getContext().getResources(), R.mipmap.icon_bt_num_hot);
        }
        Rect rect = new Rect(getWidth() - this.mBtHotBitmap.getWidth(), 27, getWidth(), this.mBtHotBitmap.getHeight() + 27);
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        canvas.translate(scrollX, scrollY);
        canvas.drawBitmap(this.mBtHotBitmap, (Rect) null, rect, IconEditBadgeView.sBadgePaint);
        canvas.translate(-scrollX, -scrollY);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setTextSize(24.0f);
        paint.setFakeBoldText(true);
        paint.setColor(Color.parseColor("#ffffffff"));
        if (number <= 0 || number >= 100) {
            str = number >= 100 ? "99+" : "";
            i = 0;
        } else {
            str = number + "";
            i = number / 10 > 0 ? 8 : 11;
        }
        canvas.drawText(str, (getWidth() - ((this.mBtHotBitmap.getWidth() * 3) / 4)) + i, 60.0f, paint);
    }
}
