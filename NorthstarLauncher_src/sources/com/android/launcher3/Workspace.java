package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.accessibility.AccessibleDragListenerAdapter;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.WorkspacePageIndicatorDots;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.LaunchHistory;
import com.android.launcher3.touch.WorkspaceTouchListener;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.dragableviews.DraggableRecyclerView;
import com.android.launcher3.views.dragableviews.LocationNotifier;
import com.android.launcher3.views.dragableviews.OnLocationChangedListener;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.systemui.plugins.shared.LauncherOverlayManager;
import com.mega.chery.utils.ToastViewUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class Workspace extends PagedView<WorkspacePageIndicatorDots> implements DropTarget, DragSource, View.OnTouchListener, DragController.DragListener, Insettable, StateManager.StateHandler<LauncherState>, WorkspaceLayoutManager, LocationNotifier {
    private static final int ADJACENT_SCREEN_DROP_DURATION = 300;
    private static final float ALLOW_DROP_TRANSITION_PROGRESS = 0.25f;
    public static final int ANIMATE_INTO_POSITION_AND_DISAPPEAR = 0;
    public static final int ANIMATE_INTO_POSITION_AND_REMAIN = 1;
    public static final int ANIMATE_INTO_POSITION_AND_RESIZE = 2;
    public static final int CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION = 4;
    public static final int COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION = 3;
    public static final int DEFAULT_PAGE = 0;
    private static final int DRAG_MODE_ADD_TO_FOLDER = 2;
    private static final int DRAG_MODE_CREATE_FOLDER = 1;
    private static final int DRAG_MODE_NONE = 0;
    private static final int DRAG_MODE_REORDER = 3;
    private static final boolean ENFORCE_DRAG_EVENT_ORDER = false;
    public static final int EXTRA_EMPTY_ADD_SCREEN_ID = -202;
    private static final float FINISHED_SWITCHING_STATE_TRANSITION_PROGRESS = 0.5f;
    static final float MAX_SWIPE_ANGLE = 1.0471976f;
    public static final int REORDER_TIMEOUT = 650;
    static final float START_DAMPING_TOUCH_SLOP_ANGLE = 0.5235988f;
    private static final String TAG = "Workspace";
    static final float TOUCH_SLOP_DAMPING_FACTOR = 4.0f;
    private boolean mAddToExistingFolderOnDrop;
    boolean mChildrenLayersEnabled;
    private boolean mCreateUserFolderOnDrop;
    private float mCurrentScale;
    boolean mDeferRemoveExtraEmptyScreen;
    DragController mDragController;
    private CellLayout.CellInfo mDragInfo;
    private int mDragMode;
    private FolderIcon mDragOverFolderIcon;
    private int mDragOverX;
    private int mDragOverY;
    private CellLayout mDragOverlappingLayout;
    private ShortcutAndWidgetContainer mDragSourceInternal;
    CellLayout mDragTargetLayout;
    float[] mDragViewVisualCenter;
    private CellLayout mDropToLayout;
    private PreviewBackground mFolderCreateBg;
    private boolean mForceDrawAdjacentPages;
    private boolean mIsSwitchingState;
    float mLastOverlayScroll;
    int mLastReorderX;
    int mLastReorderY;
    final Launcher mLauncher;
    LauncherOverlayManager.LauncherOverlay mLauncherOverlay;
    private LayoutTransition mLayoutTransition;
    private final List<OnLocationChangedListener> mLocationChangedListeners;
    private float mMaxDistanceForFolderCreation;
    private int mMaxScreenSize;
    private Runnable mOnOverlayHiddenCallback;
    private DragPreviewProvider mOutlineProvider;
    boolean mOverlayShown;
    private float mOverlayTranslation;
    private final Alarm mReorderAlarm;
    private final IntArray mRestoredPages;
    private SparseArray<Parcelable> mSavedStates;
    final IntArray mScreenOrder;
    boolean mScrollInteractionBegan;
    private SpringLoadedDragController mSpringLoadedDragController;
    boolean mStartedSendingScrollEvents;
    private final WorkspaceStateTransitionAnimation mStateTransitionAnimation;
    private final StatsLogManager mStatsLogManager;
    private boolean mStripScreensOnPageStopMoving;
    int[] mTargetCell;
    private final float[] mTempFXY;
    private final Rect mTempRect;
    private final float[] mTempTouchCoordinates;
    private final int[] mTempXY;
    private float mTransitionProgress;
    private boolean mUnlockWallpaperFromDefaultPageOnLayout;
    final WallpaperManager mWallpaperManager;
    private boolean mWorkspaceFadeInAdjacentScreens;
    final IntSparseArrayMap<CellLayout> mWorkspaceScreens;
    private float mXDown;
    private float mYDown;

    public interface ItemOperator {
        boolean evaluate(ItemInfo info, View view);
    }

    private void manageFolderFeedback(float distance, DropTarget.DragObject dragObject) {
    }

    public void addExtraEmptyScreenOnDrag() {
    }

    boolean addToExistingFolderIfNecessary(View newView, CellLayout target, int[] targetCell, float distance, DropTarget.DragObject d, boolean external) {
        return false;
    }

    @Override // android.view.View
    public void announceForAccessibility(CharSequence text) {
    }

    boolean createUserFolderIfNecessary(View newView, int container, CellLayout target, int[] targetCell, float distance, boolean external, DropTarget.DragObject d) {
        return false;
    }

    public void deferRemoveExtraEmptyScreen() {
        this.mDeferRemoveExtraEmptyScreen = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        this.mSavedStates = container;
    }

    public CellLayout getCurrentDragOverlappingLayout() {
        return this.mDragOverlappingLayout;
    }

    public CellLayout.CellInfo getDragInfo() {
        return this.mDragInfo;
    }

    public IntArray getScreenOrder() {
        return this.mScreenOrder;
    }

    public WorkspaceStateTransitionAnimation getStateTransitionAnimation() {
        return this.mStateTransitionAnimation;
    }

    public boolean hasOverlay() {
        return this.mLauncherOverlay != null;
    }

    @Override // com.android.launcher3.DropTarget
    public boolean isDropEnabled() {
        return true;
    }

    public boolean isFinishedSwitchingState() {
        return !this.mIsSwitchingState || this.mTransitionProgress > 0.5f;
    }

    public boolean isOverlayShown() {
        return this.mOverlayShown;
    }

    public boolean isSwitchingState() {
        return this.mIsSwitchingState;
    }

    @Override // com.android.launcher3.DropTarget
    public void prepareAccessibilityDrop() {
    }

    public void prepareDragWithProvider(DragPreviewProvider outlineProvider) {
        this.mOutlineProvider = outlineProvider;
    }

    boolean willAddToExistingUserFolder(ItemInfo dragInfo, View dropOverView) {
        return false;
    }

    public Workspace(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Workspace(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mWorkspaceScreens = new IntSparseArrayMap<>();
        this.mScreenOrder = new IntArray();
        this.mDeferRemoveExtraEmptyScreen = false;
        this.mTargetCell = new int[2];
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        this.mDragTargetLayout = null;
        this.mDragOverlappingLayout = null;
        this.mDropToLayout = null;
        this.mTempRect = new Rect();
        this.mTempXY = new int[2];
        this.mTempFXY = new float[2];
        this.mDragViewVisualCenter = new float[2];
        this.mTempTouchCoordinates = new float[2];
        this.mIsSwitchingState = false;
        this.mChildrenLayersEnabled = true;
        this.mStripScreensOnPageStopMoving = false;
        this.mOutlineProvider = null;
        this.mReorderAlarm = new Alarm();
        this.mDragOverFolderIcon = null;
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDragMode = 0;
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
        this.mRestoredPages = new IntArray();
        this.mLocationChangedListeners = new ArrayList();
        this.mLastOverlayScroll = 0.0f;
        this.mOverlayShown = false;
        this.mForceDrawAdjacentPages = false;
        this.mMaxScreenSize = 10;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        this.mStateTransitionAnimation = new WorkspaceStateTransitionAnimation(launcher, this);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        setHapticFeedbackEnabled(false);
        initWorkspace();
        setMotionEventSplittingEnabled(true);
        setOnTouchListener(new WorkspaceTouchListener(launcher, this));
        this.mStatsLogManager = StatsLogManager.newInstance(context);
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
        float f;
        float f2;
        MLog.d(TAG, "setInsets() called with: insets = [" + insets + "]");
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        if (deviceProfile.isTablet) {
            f = deviceProfile.iconSizePx;
            f2 = 0.75f;
        } else {
            f = deviceProfile.iconSizePx;
            f2 = 0.55f;
        }
        this.mMaxDistanceForFolderCreation = f * f2;
        this.mWorkspaceFadeInAdjacentScreens = deviceProfile.shouldFadeAdjacentWorkspaceScreens();
        Rect rect = deviceProfile.workspacePadding;
        setPadding(rect.left, rect.top, rect.right, rect.bottom);
        this.mInsets.set(insets);
        if (this.mWorkspaceFadeInAdjacentScreens) {
            setPageSpacing(deviceProfile.edgeMarginPx);
        } else {
            setPageSpacing(Math.max(Math.max(insets.left, insets.right), Math.max(deviceProfile.edgeMarginPx, rect.left + 1)));
        }
        int i = deviceProfile.cellLayoutPaddingLeftRightPx;
        int i2 = deviceProfile.cellLayoutBottomPaddingPx;
        for (int size = this.mWorkspaceScreens.size() - 1; size >= 0; size--) {
            this.mWorkspaceScreens.valueAt(size).setPadding(i, 0, i, i2);
        }
    }

    public int[] estimateItemSize(ItemInfo itemInfo) {
        float fShrinkRect;
        MLog.d(TAG, "estimateItemSize() called with: itemInfo = [" + itemInfo + "]");
        int[] iArr = new int[2];
        if (getChildCount() <= 0) {
            iArr[0] = Integer.MAX_VALUE;
            iArr[1] = Integer.MAX_VALUE;
            return iArr;
        }
        CellLayout cellLayout = (CellLayout) getChildAt(0);
        boolean z = itemInfo.itemType == 4;
        Rect rectEstimateItemPosition = estimateItemPosition(cellLayout, 0, 0, itemInfo.spanX, itemInfo.spanY);
        if (z) {
            DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            fShrinkRect = Utilities.shrinkRect(rectEstimateItemPosition, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
        } else {
            fShrinkRect = 1.0f;
        }
        iArr[0] = rectEstimateItemPosition.width();
        int iHeight = rectEstimateItemPosition.height();
        iArr[1] = iHeight;
        if (z) {
            iArr[0] = (int) (iArr[0] / fShrinkRect);
            iArr[1] = (int) (iHeight / fShrinkRect);
        }
        return iArr;
    }

    public Rect estimateItemPosition(CellLayout cl, int hCell, int vCell, int hSpan, int vSpan) {
        Rect rect = new Rect();
        cl.cellToRect(hCell, vCell, hSpan, vSpan, rect);
        return rect;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
        MLog.d(TAG, "onDragStart() called with: dragObject = [" + dragObject + "], options = [" + options + "]");
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null && cellInfo.cell != null) {
            ((CellLayout) this.mDragInfo.cell.getParent().getParent()).markCellsAsUnoccupiedForView(this.mDragInfo.cell);
        }
        if (this.mOutlineProvider != null && dragObject.dragView != null) {
            this.mOutlineProvider.generateDragOutline(dragObject.dragView.getPreviewBitmap());
        }
        updateChildrenLayersEnabled();
        if (!options.isAccessibleDrag || dragObject.dragSource == this) {
            this.mDeferRemoveExtraEmptyScreen = false;
            addExtraEmptyScreenOnDrag();
            if (dragObject.dragInfo.itemType == 4 && dragObject.dragSource != this) {
                for (int pageNearestToCenterOfScreen = getPageNearestToCenterOfScreen(); pageNearestToCenterOfScreen < getPageCount(); pageNearestToCenterOfScreen++) {
                    if (((CellLayout) getPageAt(pageNearestToCenterOfScreen)).hasReorderSolution(dragObject.dragInfo)) {
                        setCurrentPage(pageNearestToCenterOfScreen);
                        break;
                    }
                }
            }
        }
        if (!this.mLauncher.getStateManager().isInWidgetEditState()) {
            this.mLauncher.getStateManager().goToState(LauncherState.SPRING_LOADED);
        }
        this.mStatsLogManager.logger().withItemInfo(dragObject.dragInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DRAG_STARTED);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (!this.mDeferRemoveExtraEmptyScreen) {
            removeExtraEmptyScreen(this.mDragSourceInternal != null);
        }
        updateChildrenLayersEnabled();
        this.mDragInfo = null;
        this.mOutlineProvider = null;
        this.mDragSourceInternal = null;
    }

    protected void initWorkspace() {
        MLog.d(TAG, "initWorkspace() called");
        this.mCurrentPage = 0;
        setClipToPadding(false);
        setupLayoutTransition();
        setWallpaperDimension();
        this.mMaxScreenSize = getContext().getResources().getInteger(R.integer.config_maxCellSizeInHomeWorkspace);
    }

    private void setupLayoutTransition() {
        LayoutTransition layoutTransition = new LayoutTransition();
        this.mLayoutTransition = layoutTransition;
        layoutTransition.enableTransitionType(3);
        this.mLayoutTransition.enableTransitionType(1);
        this.mLayoutTransition.setInterpolator(3, Interpolators.clampToProgress(Interpolators.ACCEL_DEACCEL, 0.0f, 0.5f));
        this.mLayoutTransition.setInterpolator(1, Interpolators.clampToProgress(Interpolators.ACCEL_DEACCEL, 0.5f, 1.0f));
        this.mLayoutTransition.disableTransitionType(2);
        this.mLayoutTransition.disableTransitionType(0);
        setLayoutTransition(this.mLayoutTransition);
    }

    void enableLayoutTransitions() {
        setLayoutTransition(this.mLayoutTransition);
    }

    void disableLayoutTransitions() {
        setLayoutTransition(null);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public void onViewAdded(View child) {
        MLog.d(TAG, "onViewAdded() called with: child = [" + child + "]");
        if (!(child instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        ((CellLayout) child).setImportantForAccessibility(2);
        super.onViewAdded(child);
    }

    public void bindAndInitFirstWorkspaceScreen(View qsb) {
        MLog.d(TAG, "bindAndInitFirstWorkspaceScreen() called with: qsb = [" + qsb + "]");
    }

    public void removeAllWorkspaceScreens() {
        MLog.d(TAG, "removeAllWorkspaceScreens() called");
        disableLayoutTransitions();
        View viewFindViewById = findViewById(R.id.search_container_workspace);
        if (viewFindViewById != null) {
            ((ViewGroup) viewFindViewById.getParent()).removeView(viewFindViewById);
        }
        removeFolderListeners();
        removeAllViews();
        this.mScreenOrder.clear();
        this.mWorkspaceScreens.clear();
        this.mLauncher.mHandler.removeCallbacksAndMessages(DeferredWidgetRefresh.class);
        bindAndInitFirstWorkspaceScreen(viewFindViewById);
        enableLayoutTransitions();
    }

    public void insertNewWorkspaceScreenBeforeEmptyScreen(int screenId) {
        MLog.d(TAG, "insertNewWorkspaceScreenBeforeEmptyScreen() called with: screenId = [" + screenId + "]");
        int iIndexOf = this.mScreenOrder.indexOf(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
        if (iIndexOf < 0) {
            iIndexOf = this.mScreenOrder.size();
        }
        insertNewWorkspaceScreen(screenId, iIndexOf);
    }

    public void insertNewWorkspaceScreen(int screenId) {
        insertNewWorkspaceScreen(screenId, getChildCount());
    }

    public CellLayout insertNewWorkspaceScreen(int screenId, int insertIndex) {
        MLog.d(TAG, "insertNewWorkspaceScreen() called with: screenId = [" + screenId + "], insertIndex = [" + insertIndex + "]");
        if (this.mWorkspaceScreens.containsKey(screenId)) {
            throw new RuntimeException("Screen id " + screenId + " already exists!");
        }
        if (!checkCanAddNewScreen()) {
            return null;
        }
        CellLayout cellLayout = (CellLayout) LayoutInflater.from(getContext()).inflate(R.layout.workspace_screen, (ViewGroup) this, false);
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int i = deviceProfile.cellLayoutPaddingLeftRightPx;
        cellLayout.setPadding(i, 0, i, deviceProfile.cellLayoutBottomPaddingPx);
        if (cellLayout instanceof CellLayout) {
            cellLayout.setMoveDownListener(new HorizontalScrollView.MoveDownListener() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda18
                @Override // com.android.launcher3.HorizontalScrollView.MoveDownListener
                public final void onMoveDown() {
                    this.f$0.m49x2d5103b0();
                }
            });
        }
        this.mWorkspaceScreens.put(screenId, cellLayout);
        this.mScreenOrder.add(insertIndex, screenId);
        addView(cellLayout, insertIndex);
        this.mStateTransitionAnimation.applyChildState((LauncherState) this.mLauncher.getStateManager().getState(), cellLayout, insertIndex);
        return cellLayout;
    }

    /* JADX INFO: renamed from: lambda$insertNewWorkspaceScreen$0$com-android-launcher3-Workspace, reason: not valid java name */
    /* synthetic */ void m49x2d5103b0() {
        Launcher launcher = this.mLauncher;
        if (launcher != null) {
            launcher.getStateManager().goToState(LauncherState.WORKSPACE_HIDE_STATE, true);
        }
    }

    public boolean addExtraEmptyScreen() {
        MLog.d(TAG, "addExtraEmptyScreen() called");
        if (!checkCanAddNewScreen() || this.mWorkspaceScreens.containsKey(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID)) {
            return false;
        }
        insertNewWorkspaceScreen(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
        return true;
    }

    private void convertFinalScreenToEmptyScreenIfNecessary() {
        if (this.mLauncher.isWorkspaceLoading() || hasExtraEmptyScreen() || this.mScreenOrder.size() == 0) {
            return;
        }
        IntArray intArray = this.mScreenOrder;
        this.mWorkspaceScreens.get(intArray.get(intArray.size() - 1));
    }

    public void removeExtraEmptyScreen(boolean stripEmptyScreens) {
        removeExtraEmptyScreenDelayed(0, stripEmptyScreens, null);
    }

    public void removeExtraEmptyScreenDelayed(int delay, final boolean stripEmptyScreens, final Runnable onComplete) {
        MLog.d(TAG, "removeExtraEmptyScreenDelayed: delay=" + delay + ", stripEmptyScreens=" + stripEmptyScreens + ", onComplete=" + onComplete);
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        if (delay > 0) {
            postDelayed(new Runnable() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m51x717dccf2(stripEmptyScreens, onComplete);
                }
            }, delay);
            return;
        }
        convertFinalScreenToEmptyScreenIfNecessary();
        if (hasExtraEmptyScreen()) {
            removeView(this.mWorkspaceScreens.get(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID));
            this.mWorkspaceScreens.remove(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
            this.mScreenOrder.removeValue(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
            showPageIndicatorAtCurrentScroll();
        }
        if (stripEmptyScreens) {
            stripEmptyScreens();
        }
        if (onComplete != null) {
            onComplete.run();
        }
    }

    /* JADX INFO: renamed from: lambda$removeExtraEmptyScreenDelayed$1$com-android-launcher3-Workspace, reason: not valid java name */
    /* synthetic */ void m51x717dccf2(boolean z, Runnable runnable) {
        removeExtraEmptyScreenDelayed(0, z, runnable);
    }

    public boolean hasExtraEmptyScreen() {
        return this.mWorkspaceScreens.containsKey(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID) && getChildCount() > 1;
    }

    public int commitExtraEmptyScreen() {
        MLog.d(TAG, "commitExtraEmptyScreen() called");
        if (this.mLauncher.isWorkspaceLoading()) {
            return -1;
        }
        CellLayout cellLayout = this.mWorkspaceScreens.get(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
        this.mWorkspaceScreens.remove(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
        this.mScreenOrder.removeValue(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
        int i = LauncherSettings.Settings.call(getContext().getContentResolver(), LauncherSettings.Settings.METHOD_NEW_SCREEN_ID).getInt(LauncherSettings.Settings.EXTRA_VALUE);
        this.mWorkspaceScreens.put(i, cellLayout);
        this.mScreenOrder.add(i);
        return i;
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public Hotseat getHotseat() {
        return this.mLauncher.getHotseat();
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public void onAddDropTarget(DropTarget target) {
        this.mDragController.addDropTarget(target);
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public CellLayout getScreenWithId(int screenId) {
        return this.mWorkspaceScreens.get(screenId);
    }

    public int getIdForScreen(CellLayout layout) {
        int iIndexOfValue = this.mWorkspaceScreens.indexOfValue(layout);
        if (iIndexOfValue != -1) {
            return this.mWorkspaceScreens.keyAt(iIndexOfValue);
        }
        return -1;
    }

    public int getPageIndexForScreenId(int screenId) {
        return indexOfChild(this.mWorkspaceScreens.get(screenId));
    }

    public int getScreenIdForPageIndex(int index) {
        if (index < 0 || index >= this.mScreenOrder.size()) {
            return -1;
        }
        return this.mScreenOrder.get(index);
    }

    public void stripEmptyScreens() {
        MLog.d(TAG, "stripEmptyScreens() called");
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        if (isPageInTransition()) {
            this.mStripScreensOnPageStopMoving = true;
            return;
        }
        int nextPage = getNextPage();
        IntArray intArray = new IntArray();
        int size = this.mWorkspaceScreens.size();
        for (int i = 0; i < size; i++) {
            this.mWorkspaceScreens.keyAt(i);
            this.mWorkspaceScreens.valueAt(i);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < intArray.size(); i3++) {
            int i4 = intArray.get(i3);
            CellLayout cellLayout = this.mWorkspaceScreens.get(i4);
            this.mWorkspaceScreens.remove(i4);
            this.mScreenOrder.removeValue(i4);
            if (getChildCount() > 1) {
                if (indexOfChild(cellLayout) < nextPage) {
                    i2++;
                }
                removeView(cellLayout);
            } else {
                this.mWorkspaceScreens.put(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID, cellLayout);
                this.mScreenOrder.add(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
            }
        }
        if (i2 >= 0) {
            setCurrentPage(nextPage - i2);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        return shouldConsumeTouch(v);
    }

    private boolean shouldConsumeTouch(View v) {
        return (workspaceIconsCanBeDragged() && (workspaceInModalState() || indexOfChild(v) == this.mCurrentPage)) ? false : true;
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View focused, int direction) {
        if (workspaceInModalState() || !isFinishedSwitchingState()) {
            return false;
        }
        return super.dispatchUnhandledMove(focused, direction);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getActionMasked() != 0) {
            return false;
        }
        this.mXDown = ev.getX();
        this.mYDown = ev.getY();
        return false;
    }

    @Override // com.android.launcher3.PagedView
    protected void determineScrollingStart(MotionEvent ev) {
        if (isFinishedSwitchingState()) {
            float fAbs = Math.abs(ev.getX() - this.mXDown);
            float fAbs2 = Math.abs(ev.getY() - this.mYDown);
            if (Float.compare(fAbs, 0.0f) == 0) {
                return;
            }
            float fAtan = (float) Math.atan(fAbs2 / fAbs);
            if (fAbs > this.mTouchSlop || fAbs2 > this.mTouchSlop) {
                cancelCurrentPageLongPress();
            }
            if (fAtan > MAX_SWIPE_ANGLE) {
                return;
            }
            if (fAtan > START_DAMPING_TOUCH_SLOP_ANGLE) {
                super.determineScrollingStart(ev, (((float) Math.sqrt((fAtan - START_DAMPING_TOUCH_SLOP_ANGLE) / START_DAMPING_TOUCH_SLOP_ANGLE)) * TOUCH_SLOP_DAMPING_FACTOR) + 1.0f);
            } else {
                super.determineScrollingStart(ev);
            }
        }
    }

    @Override // com.android.launcher3.PagedView
    protected void onPageBeginTransition() {
        super.onPageBeginTransition();
        updateChildrenLayersEnabled();
    }

    @Override // com.android.launcher3.PagedView
    protected void onPageEndTransition() {
        super.onPageEndTransition();
        updateChildrenLayersEnabled();
        if (this.mDragController.isDragging() && workspaceInModalState()) {
            this.mDragController.forceTouchMove();
        }
        if (this.mStripScreensOnPageStopMoving) {
            stripEmptyScreens();
            this.mStripScreensOnPageStopMoving = false;
        }
    }

    @Override // com.android.launcher3.PagedView
    protected void onScrollInteractionBegin() {
        super.onScrollInteractionBegin();
        this.mScrollInteractionBegan = true;
    }

    @Override // com.android.launcher3.PagedView
    protected void onScrollInteractionEnd() {
        super.onScrollInteractionEnd();
        this.mScrollInteractionBegan = false;
        if (this.mStartedSendingScrollEvents) {
            this.mStartedSendingScrollEvents = false;
            this.mLauncherOverlay.onScrollInteractionEnd();
        }
    }

    public void setLauncherOverlay(LauncherOverlayManager.LauncherOverlay overlay) {
        this.mLauncherOverlay = overlay;
        this.mStartedSendingScrollEvents = false;
        onOverlayScrollChanged(0.0f);
    }

    private boolean isScrollingOverlay() {
        return this.mLauncherOverlay != null && ((this.mIsRtl && getUnboundedScroll() > this.mMaxScroll) || (!this.mIsRtl && getUnboundedScroll() < this.mMinScroll));
    }

    @Override // com.android.launcher3.PagedView
    protected void snapToDestination() {
        if (isScrollingOverlay()) {
            this.mWasInOverscroll = false;
            snapToPageImmediately(0);
        } else {
            super.snapToDestination();
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (!this.mIsSwitchingState && (getLayoutTransition() == null || !getLayoutTransition().isRunning())) {
            showPageIndicatorAtCurrentScroll();
        }
        updatePageAlphaValues();
        enableHwLayersOnVisiblePages();
    }

    public void showPageIndicatorAtCurrentScroll() {
        if (this.mPageIndicator != 0) {
            ((WorkspacePageIndicatorDots) this.mPageIndicator).setScroll(getScrollX(), computeMaxScroll());
        }
    }

    @Override // com.android.launcher3.PagedView
    protected void overScroll(int amount) {
        boolean z = false;
        boolean z2 = (this.mLauncherOverlay == null || this.mScroller.isSpringing() || ((amount > 0 || this.mIsRtl) && (amount < 0 || !this.mIsRtl))) ? false : true;
        if (this.mLauncherOverlay != null && this.mLastOverlayScroll != 0.0f && ((amount >= 0 && !this.mIsRtl) || (amount <= 0 && this.mIsRtl))) {
            z = true;
        }
        if (z2) {
            if (!this.mStartedSendingScrollEvents && this.mScrollInteractionBegan) {
                this.mStartedSendingScrollEvents = true;
                this.mLauncherOverlay.onScrollInteractionBegin();
            }
            float fAbs = Math.abs(amount / getMeasuredWidth());
            this.mLastOverlayScroll = fAbs;
            this.mLauncherOverlay.onScrollChange(fAbs, this.mIsRtl);
        } else {
            dampedOverScroll(amount);
        }
        if (z) {
            this.mLauncherOverlay.onScrollChange(0.0f, this.mIsRtl);
        }
    }

    @Override // com.android.launcher3.PagedView
    protected boolean onOverscroll(int amount) {
        if (amount > 0 && !this.mIsRtl) {
            return false;
        }
        if (amount >= 0 || !this.mIsRtl) {
            return super.onOverscroll(amount);
        }
        return false;
    }

    @Override // com.android.launcher3.PagedView
    protected boolean shouldFlingForVelocity(int velocityX) {
        return Float.compare(Math.abs(this.mOverlayTranslation), 0.0f) == 0 && super.shouldFlingForVelocity(velocityX);
    }

    public void onOverlayScrollChanged(float scroll) {
        if (Float.compare(scroll, 1.0f) == 0) {
            if (!this.mOverlayShown) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, 3, 1, 0);
            }
            this.mOverlayShown = true;
        } else if (Float.compare(scroll, 0.0f) == 0) {
            if (this.mOverlayShown) {
                if (!this.mLauncher.getUserEventDispatcher().isPreviousHomeGesture()) {
                    this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, 4, 1, -1);
                }
            } else if (Float.compare(this.mOverlayTranslation, 0.0f) != 0) {
                announcePageForAccessibility();
            }
            this.mOverlayShown = false;
            tryRunOverlayCallback();
        }
        float fMin = Math.min(1.0f, Math.max(scroll - 0.0f, 0.0f) / 1.0f);
        float interpolation = 1.0f - Interpolators.DEACCEL_3.getInterpolation(fMin);
        float measuredWidth = this.mLauncher.getDragLayer().getMeasuredWidth() * fMin;
        if (this.mIsRtl) {
            measuredWidth = -measuredWidth;
        }
        this.mOverlayTranslation = measuredWidth;
        this.mLauncher.getDragLayer().setTranslationX(measuredWidth);
        this.mLauncher.getDragLayer().getAlphaProperty(0).setValue(interpolation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean tryRunOverlayCallback() {
        if (this.mOnOverlayHiddenCallback == null) {
            return true;
        }
        if (this.mOverlayShown || !hasWindowFocus()) {
            return false;
        }
        this.mOnOverlayHiddenCallback.run();
        this.mOnOverlayHiddenCallback = null;
        return true;
    }

    public boolean runOnOverlayHidden(final Runnable callback) {
        final Runnable runnable = this.mOnOverlayHiddenCallback;
        if (runnable == null) {
            this.mOnOverlayHiddenCallback = callback;
        } else {
            this.mOnOverlayHiddenCallback = new Runnable() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    Workspace.lambda$runOnOverlayHidden$2(runnable, callback);
                }
            };
        }
        if (tryRunOverlayCallback()) {
            return false;
        }
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.android.launcher3.Workspace.1
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public void onWindowFocusChanged(boolean hasFocus) {
                if (Workspace.this.tryRunOverlayCallback() && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnWindowFocusChangeListener(this);
                }
            }
        });
        return true;
    }

    static /* synthetic */ void lambda$runOnOverlayHidden$2(Runnable runnable, Runnable runnable2) {
        runnable.run();
        runnable2.run();
    }

    @Override // com.android.launcher3.PagedView
    protected void notifyPageSwitchListener(int prevPage) {
        super.notifyPageSwitchListener(prevPage);
        if (prevPage != this.mCurrentPage) {
            int i = prevPage < this.mCurrentPage ? 4 : 3;
            if (prevPage < this.mCurrentPage) {
                StatsLogManager.LauncherEvent launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_SWIPERIGHT;
            } else {
                StatsLogManager.LauncherEvent launcherEvent2 = StatsLogManager.LauncherEvent.LAUNCHER_SWIPELEFT;
            }
            this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, i, 1, prevPage);
        }
    }

    protected void setWallpaperDimension() {
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.Workspace.2
            @Override // java.lang.Runnable
            public void run() {
                Point point = LauncherAppState.getIDP(Workspace.this.getContext()).defaultWallpaperSize;
                if (point.x == Workspace.this.mWallpaperManager.getDesiredMinimumWidth() && point.y == Workspace.this.mWallpaperManager.getDesiredMinimumHeight()) {
                    return;
                }
                Workspace.this.mWallpaperManager.suggestDesiredDimensions(point.x, point.y);
            }
        });
    }

    @Override // com.android.launcher3.PagedView
    protected void determineScrollingStart(MotionEvent ev, float touchSlopScale) {
        if (isSwitchingState()) {
            return;
        }
        super.determineScrollingStart(ev, touchSlopScale);
    }

    private void updatePageAlphaValues() {
        if (workspaceInModalState() || this.mIsSwitchingState || this.mDragController.isDragging()) {
            return;
        }
        int scrollX = getScrollX() + (getMeasuredWidth() / 2);
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            if (cellLayout != null) {
                float fAbs = 1.0f - Math.abs(getScrollProgress(scrollX, cellLayout, i));
                if (this.mWorkspaceFadeInAdjacentScreens) {
                    cellLayout.getShortcutsAndWidgets().setAlpha(fAbs);
                } else {
                    cellLayout.getShortcutsAndWidgets().setImportantForAccessibility(fAbs > 0.0f ? 0 : 4);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        computeScroll();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (this.mUnlockWallpaperFromDefaultPageOnLayout) {
            this.mUnlockWallpaperFromDefaultPageOnLayout = false;
        }
        super.onLayout(changed, left, top, right, bottom);
        updatePageAlphaValues();
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (workspaceInModalState()) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    private boolean workspaceInModalState() {
        return !this.mLauncher.isInState(LauncherState.NORMAL);
    }

    private boolean workspaceInScrollableState() {
        return this.mLauncher.isInState(LauncherState.SPRING_LOADED) || !workspaceInModalState() || this.mLauncher.isInState(LauncherState.WIDGET_SPRING_LOADED);
    }

    public boolean workspaceIconsCanBeDragged() {
        return ((LauncherState) this.mLauncher.getStateManager().getState()).hasFlag(LauncherState.FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED);
    }

    private void updateChildrenLayersEnabled() {
        boolean z = this.mIsSwitchingState || isPageInTransition();
        if (z != this.mChildrenLayersEnabled) {
            this.mChildrenLayersEnabled = z;
            if (z) {
                enableHwLayersOnVisiblePages();
                return;
            }
            for (int i = 0; i < getPageCount(); i++) {
                ((CellLayout) getChildAt(i)).enableHardwareLayer(false);
            }
        }
    }

    private void enableHwLayersOnVisiblePages() {
        if (this.mChildrenLayersEnabled) {
            int childCount = getChildCount();
            int[] visibleChildrenRange = getVisibleChildrenRange();
            int iBoundToRange = visibleChildrenRange[0];
            int iBoundToRange2 = visibleChildrenRange[1];
            if (this.mForceDrawAdjacentPages) {
                iBoundToRange = Utilities.boundToRange(getCurrentPage() - 1, 0, iBoundToRange2);
                iBoundToRange2 = Utilities.boundToRange(getCurrentPage() + 1, iBoundToRange, getPageCount() - 1);
            }
            if (iBoundToRange == iBoundToRange2) {
                if (iBoundToRange2 < childCount - 1) {
                    iBoundToRange2++;
                } else if (iBoundToRange > 0) {
                    iBoundToRange--;
                }
            }
            int i = 0;
            while (i < childCount) {
                ((CellLayout) getPageAt(i)).enableHardwareLayer(iBoundToRange <= i && i <= iBoundToRange2);
                i++;
            }
        }
    }

    public void onWallpaperTap(MotionEvent ev) {
        int[] iArr = this.mTempXY;
        getLocationOnScreen(iArr);
        int actionIndex = ev.getActionIndex();
        iArr[0] = iArr[0] + ((int) ev.getX(actionIndex));
        iArr[1] = iArr[1] + ((int) ev.getY(actionIndex));
        this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), ev.getAction() == 1 ? "android.wallpaper.tap" : "android.wallpaper.secondaryTap", iArr[0], iArr[1], 0, null);
    }

    public void snapToPageFromOverView(int whichPage) {
        snapToPage(whichPage, LauncherState.OVERVIEW.getTransitionDuration(this.mLauncher), Interpolators.ZOOM_IN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStartStateTransition(LauncherState state) {
        this.mIsSwitchingState = true;
        this.mTransitionProgress = 0.0f;
        updateChildrenLayersEnabled();
        if (state == LauncherState.NORMAL) {
            setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEndStateTransition() {
        this.mIsSwitchingState = false;
        this.mForceDrawAdjacentPages = false;
        this.mTransitionProgress = 1.0f;
        MLog.d(TAG, "onEndStateTransition: inWorkspaceHideState=" + this.mLauncher.getStateManager().isInWorkspaceHideState());
        updateChildrenLayersEnabled();
        updateAccessibilityFlags();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(LauncherState toState) {
        MLog.d(TAG, "setState() called with: toState = [" + toState + "]");
        onStartStateTransition(toState);
        this.mStateTransitionAnimation.setState(toState);
        onEndStateTransition();
        updateAllCellLayoutState(toState);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(LauncherState toState, StateAnimationConfig config, PendingAnimation animation) {
        MLog.d(TAG, "setStateWithAnimation() called with: toState = [" + toState + "], config = [" + config + "], animation = [" + animation + "]");
        StateTransitionListener stateTransitionListener = new StateTransitionListener(toState);
        this.mStateTransitionAnimation.setStateWithAnimation(toState, config, animation);
        if (toState.hasFlag(LauncherState.FLAG_MULTI_PAGE)) {
            this.mForceDrawAdjacentPages = true;
        }
        invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(stateTransitionListener);
        valueAnimatorOfFloat.addListener(stateTransitionListener);
        animation.add(valueAnimatorOfFloat);
        updateAllCellLayoutState(toState);
    }

    public void updateAccessibilityFlags() {
        int i = ((LauncherState) this.mLauncher.getStateManager().getState()).hasFlag(LauncherState.FLAG_WORKSPACE_INACCESSIBLE) ? 4 : 0;
        if (this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag()) {
            return;
        }
        int pageCount = getPageCount();
        for (int i2 = 0; i2 < pageCount; i2++) {
            updateAccessibilityFlags(i, (CellLayout) getPageAt(i2));
        }
        setImportantForAccessibility(i);
    }

    @Override // android.view.View
    public AccessibilityNodeInfo createAccessibilityNodeInfo() {
        if (getImportantForAccessibility() == 4) {
            return null;
        }
        return super.createAccessibilityNodeInfo();
    }

    private void updateAccessibilityFlags(int accessibilityFlag, CellLayout page) {
        page.setImportantForAccessibility(2);
        page.getShortcutsAndWidgets().setImportantForAccessibility(accessibilityFlag);
        page.setContentDescription(null);
        page.setAccessibilityDelegate(null);
    }

    public void startDrag(CellLayout.CellInfo cellInfo, DragOptions options) {
        View view = cellInfo.cell;
        this.mDragInfo = cellInfo;
        view.setVisibility(4);
        if (options.isAccessibleDrag) {
            this.mDragController.addDragListener(new AccessibleDragListenerAdapter(this, new Function() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new WorkspaceAccessibilityHelper((CellLayout) obj);
                }
            }) { // from class: com.android.launcher3.Workspace.3
                @Override // com.android.launcher3.accessibility.AccessibleDragListenerAdapter
                protected void enableAccessibleDrag(boolean enable) {
                    super.enableAccessibleDrag(enable);
                    setEnableForLayout(Workspace.this.mLauncher.getHotseat(), enable);
                }
            });
        }
        beginDragShared(view, this, options);
    }

    public void beginDragShared(View child, DragSource source, DragOptions options) {
        Object tag = child.getTag();
        if (!(tag instanceof ItemInfo)) {
            throw new IllegalStateException("Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + child + "  tag: " + child.getTag());
        }
        beginDragShared(child, null, source, (ItemInfo) tag, new DragPreviewProvider(child), options);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0070  */
    /* JADX WARN: Multi-variable type inference failed */
    public DragView beginDragShared(View child, DraggableView draggableView, DragSource source, ItemInfo dragObject, DragPreviewProvider previewProvider, DragOptions dragOptions) {
        float animatedScale;
        Point point;
        PopupContainerWithArrow popupContainerWithArrowShowForIcon;
        DraggableView draggableView2 = draggableView;
        MLog.d(TAG, "beginDragShared() called with: child = [" + child + "], draggableView = [" + draggableView2 + "], source = [" + source + "], dragObject = [" + dragObject + "], previewProvider = [" + previewProvider + "], dragOptions = [" + dragOptions + "]");
        boolean z = child instanceof BubbleTextView;
        if (z) {
            Drawable icon = ((BubbleTextView) child).getIcon();
            if (icon instanceof FastBitmapDrawable) {
                animatedScale = ((FastBitmapDrawable) icon).getAnimatedScale();
            } else {
                animatedScale = 1.0f;
            }
        } else {
            animatedScale = 1.0f;
        }
        child.clearFocus();
        child.setPressed(false);
        if (z) {
            ((BubbleTextView) child).clearPressedBackground();
        }
        this.mOutlineProvider = previewProvider;
        if (draggableView2 == null && (child instanceof DraggableView)) {
            draggableView2 = (DraggableView) child;
        }
        Bitmap bitmapCreateDragBitmap = previewProvider.createDragBitmap();
        int i = previewProvider.previewPadding / 2;
        float scaleAndPosition = previewProvider.getScaleAndPosition(bitmapCreateDragBitmap, this.mTempXY);
        int[] iArr = this.mTempXY;
        int i2 = iArr[0];
        int i3 = iArr[1];
        Rect rect = new Rect();
        if (draggableView2 != null) {
            draggableView2.getSourceVisualDragBounds(rect);
            i3 += rect.top;
            point = new Point(-i, i);
        } else {
            point = null;
        }
        int i4 = i3;
        if (child.getParent() instanceof ShortcutAndWidgetContainer) {
            this.mDragSourceInternal = (ShortcutAndWidgetContainer) child.getParent();
        }
        if (z && !dragOptions.isAccessibleDrag && (popupContainerWithArrowShowForIcon = PopupContainerWithArrow.showForIcon((BubbleTextView) child)) != null) {
            dragOptions.preDragCondition = popupContainerWithArrowShowForIcon.createPreDragCondition();
            this.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis("dragging started");
        }
        DragView dragViewStartDrag = this.mDragController.startDrag(bitmapCreateDragBitmap, draggableView2, i2, i4, source, dragObject, point, rect, scaleAndPosition * animatedScale, scaleAndPosition, dragOptions);
        dragViewStartDrag.setIntrinsicIconScaleFactor(dragOptions.intrinsicIconScaleFactor);
        return dragViewStartDrag;
    }

    private boolean transitionStateShouldAllowDrop() {
        return (!isSwitchingState() || this.mTransitionProgress > ALLOW_DROP_TRANSITION_PROGRESS) && workspaceIconsCanBeDragged();
    }

    @Override // com.android.launcher3.DropTarget
    public boolean acceptDrop(DropTarget.DragObject d) {
        CellLayout cellLayout;
        int i;
        int i2;
        int i3;
        int i4;
        MLog.d(TAG, "acceptDrop: d = [" + d + "]");
        CellLayout cellLayout2 = this.mDropToLayout;
        if (d.dragSource == this) {
            cellLayout = cellLayout2;
        } else {
            if (cellLayout2 == null || !transitionStateShouldAllowDrop()) {
                return false;
            }
            float[] visualCenter = d.getVisualCenter(this.mDragViewVisualCenter);
            this.mDragViewVisualCenter = visualCenter;
            mapPointFromDropLayout(cellLayout2, visualCenter);
            CellLayout.CellInfo cellInfo = this.mDragInfo;
            if (cellInfo != null) {
                int i5 = cellInfo.spanX;
                i2 = cellInfo.spanY;
                i = i5;
            } else {
                i = d.dragInfo.spanX;
                i2 = d.dragInfo.spanY;
            }
            if (d.dragInfo instanceof PendingAddWidgetInfo) {
                i3 = ((PendingAddWidgetInfo) d.dragInfo).minSpanX;
                i4 = ((PendingAddWidgetInfo) d.dragInfo).minSpanY;
            } else {
                i3 = i;
                i4 = i2;
            }
            float[] fArr = this.mDragViewVisualCenter;
            int[] iArrFindNearestArea = findNearestArea((int) fArr[0], (int) fArr[1], i3, i4, cellLayout2, this.mTargetCell);
            this.mTargetCell = iArrFindNearestArea;
            float[] fArr2 = this.mDragViewVisualCenter;
            float distanceFromCell = cellLayout2.getDistanceFromCell(fArr2[0], fArr2[1], iArrFindNearestArea);
            if (this.mCreateUserFolderOnDrop && willCreateUserFolder(d.dragInfo, cellLayout2, this.mTargetCell, distanceFromCell, true)) {
                return true;
            }
            if (this.mAddToExistingFolderOnDrop && willAddToExistingUserFolder(d.dragInfo, cellLayout2, this.mTargetCell, distanceFromCell)) {
                return true;
            }
            float[] fArr3 = this.mDragViewVisualCenter;
            cellLayout = cellLayout2;
            int[] iArrPerformReorder = cellLayout2.performReorder((int) fArr3[0], (int) fArr3[1], i3, i4, i, i2, null, this.mTargetCell, new int[2], 4);
            this.mTargetCell = iArrPerformReorder;
            if (iArrPerformReorder[0] < 0 || iArrPerformReorder[1] < 0) {
                onNoCellFound(cellLayout);
                return false;
            }
        }
        if (getIdForScreen(cellLayout) == -201) {
            commitExtraEmptyScreen();
        }
        return true;
    }

    boolean willCreateUserFolder(ItemInfo info, CellLayout target, int[] targetCell, float distance, boolean considerTimeout) {
        if (distance > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        return willCreateUserFolder(info, target.getChildAt(targetCell[0], targetCell[1]), considerTimeout);
    }

    boolean willCreateUserFolder(ItemInfo info, View dropOverView, boolean considerTimeout) {
        if (this.mLauncher.getStateManager().isInWidgetEditState()) {
            return false;
        }
        if (dropOverView != null) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) dropOverView.getLayoutParams();
            if (layoutParams.useTmpCoords && (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.cellY)) {
                return false;
            }
        }
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        boolean z = cellInfo != null && dropOverView == cellInfo.cell;
        if (dropOverView == null || z) {
            return false;
        }
        if (!considerTimeout || this.mCreateUserFolderOnDrop) {
            return ((dropOverView.getTag() instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) dropOverView.getTag()).container != -103) && (info.itemType == 0 || info.itemType == 1 || info.itemType == 6);
        }
        return false;
    }

    boolean willAddToExistingUserFolder(ItemInfo dragInfo, CellLayout target, int[] targetCell, float distance) {
        if (distance > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        return willAddToExistingUserFolder(dragInfo, target.getChildAt(targetCell[0], targetCell[1]));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0213  */
    /* JADX WARN: Code duplicated, block: B:104:0x0242  */
    /* JADX WARN: Code duplicated, block: B:114:0x0281  */
    /* JADX WARN: Code duplicated, block: B:116:0x0284  */
    /* JADX WARN: Code duplicated, block: B:59:0x011a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0135  */
    /* JADX WARN: Code duplicated, block: B:70:0x013e  */
    /* JADX WARN: Code duplicated, block: B:71:0x0153  */
    /* JADX WARN: Code duplicated, block: B:74:0x018d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0193  */
    /* JADX WARN: Code duplicated, block: B:80:0x0198  */
    /* JADX WARN: Code duplicated, block: B:87:0x01be  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:91:0x01cb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:93:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:96:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:99:0x020b  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.launcher3.DropTarget
    public void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        boolean z;
        CellLayout.CellInfo cellInfo;
        View view;
        char c;
        long j;
        char c2;
        char c3;
        boolean z2;
        boolean z3;
        int i;
        Runnable runnable;
        int i2;
        int i3;
        char c4;
        Object[] objArr;
        int[] iArr;
        View view2;
        int[] iArr2;
        char c5;
        int[] iArr3;
        char c6;
        ItemInfo itemInfo;
        int i4;
        final LauncherAppWidgetHostView launcherAppWidgetHostView;
        AppWidgetProviderInfo appWidgetInfo;
        CellLayout parentCellLayoutForView;
        DropTarget.DragObject dragObject2 = dragObject;
        MLog.d(TAG, "onDrop: d = [" + dragObject2 + "], options = [" + dragOptions + "]");
        float[] visualCenter = dragObject2.getVisualCenter(this.mDragViewVisualCenter);
        this.mDragViewVisualCenter = visualCenter;
        final CellLayout cellLayout = this.mDropToLayout;
        if (cellLayout != null) {
            mapPointFromDropLayout(cellLayout, visualCenter);
        }
        if (dragObject2.dragSource != this || (cellInfo = this.mDragInfo) == null) {
            float[] fArr = this.mDragViewVisualCenter;
            onDropExternal(new int[]{(int) fArr[0], (int) fArr[1]}, cellLayout, dragObject2);
            z = false;
        } else {
            View view3 = cellInfo.cell;
            Runnable runnable2 = null;
            if (cellLayout == null || dragObject2.cancelled) {
                view = view3;
                c = 0;
                j = 500;
                c2 = 2;
                c3 = 0;
                z2 = false;
                z3 = false;
                i = -1;
                runnable = null;
            } else {
                Object[] objArr2 = getParentCellLayoutForView(view3) != cellLayout;
                boolean zIsHotseatLayout = this.mLauncher.isHotseatLayout(cellLayout);
                int i5 = zIsHotseatLayout ? LauncherSettings.Favorites.CONTAINER_HOTSEAT : -100;
                int idForScreen = this.mTargetCell[0] < 0 ? this.mDragInfo.screenId : getIdForScreen(cellLayout);
                CellLayout.CellInfo cellInfo2 = this.mDragInfo;
                int i6 = cellInfo2 != null ? cellInfo2.spanX : 1;
                CellLayout.CellInfo cellInfo3 = this.mDragInfo;
                int i7 = cellInfo3 != null ? cellInfo3.spanY : 1;
                float[] fArr2 = this.mDragViewVisualCenter;
                int i8 = i7;
                int i9 = i6;
                int i10 = i5;
                int[] iArrFindNearestArea = findNearestArea((int) fArr2[0], (int) fArr2[1], i9, i8, cellLayout, this.mTargetCell);
                this.mTargetCell = iArrFindNearestArea;
                float[] fArr3 = this.mDragViewVisualCenter;
                float distanceFromCell = cellLayout.getDistanceFromCell(fArr3[0], fArr3[1], iArrFindNearestArea);
                if (createUserFolderIfNecessary(view3, i10, cellLayout, this.mTargetCell, distanceFromCell, false, dragObject) || addToExistingFolderIfNecessary(view3, cellLayout, this.mTargetCell, distanceFromCell, dragObject, false)) {
                    this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, 500L);
                    return;
                }
                ItemInfo itemInfo2 = dragObject2.dragInfo;
                int i11 = itemInfo2.spanX;
                int i12 = itemInfo2.spanY;
                if (itemInfo2.minSpanX > 0 && itemInfo2.minSpanY > 0) {
                    i11 = itemInfo2.minSpanX;
                    i12 = itemInfo2.minSpanY;
                }
                if (itemInfo2.screenId == idForScreen) {
                    i2 = i10;
                    if (itemInfo2.container == i2 && itemInfo2.cellX == this.mTargetCell[0] && itemInfo2.cellY == this.mTargetCell[1]) {
                        z2 = true;
                    }
                    if (z2 || !this.mIsSwitchingState) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (!isFinishedSwitchingState() || z3) {
                        i3 = i8;
                        c4 = 1;
                    } else {
                        int[] iArr4 = this.mTargetCell;
                        c4 = 1;
                        i3 = i8;
                        if (!cellLayout.isRegionVacant(iArr4[0], iArr4[1], i9, i3)) {
                            objArr = true;
                        }
                        iArr = new int[2];
                        if (objArr != false) {
                            int[] iArr5 = this.mTargetCell;
                            iArr5[c4] = -1;
                            iArr5[0] = -1;
                            c2 = 2;
                            c5 = c4;
                            view2 = view3;
                            iArr2 = iArr;
                            c = 0;
                        } else {
                            float[] fArr4 = this.mDragViewVisualCenter;
                            c2 = 2;
                            view2 = view3;
                            iArr2 = iArr;
                            c = 0;
                            c5 = 1;
                            this.mTargetCell = cellLayout.performReorder((int) fArr4[0], (int) fArr4[c4], i11, i12, i9, i3, view2, this.mTargetCell, iArr2, 2);
                        }
                        iArr3 = this.mTargetCell;
                        if (iArr3[c] >= 0 || iArr3[c5] < 0) {
                            c6 = c;
                        } else {
                            c6 = c5;
                        }
                        view = view2;
                        if (c6 == 0 && (view instanceof AppWidgetHostView) && (iArr2[c] != itemInfo2.spanX || iArr2[c5] != itemInfo2.spanY)) {
                            itemInfo2.spanX = iArr2[c];
                            itemInfo2.spanY = iArr2[c5];
                            AppWidgetResizeFrame.updateWidgetSizeRanges((AppWidgetHostView) view, this.mLauncher, iArr2[c], iArr2[c5]);
                            c3 = c5;
                        } else {
                            c3 = c;
                        }
                        if (c6 != 0) {
                            if (getScreenIdForPageIndex(this.mCurrentPage) != idForScreen || zIsHotseatLayout) {
                                i = -1;
                            } else {
                                int pageIndexForScreenId = getPageIndexForScreenId(idForScreen);
                                snapToPage(pageIndexForScreenId);
                                i = pageIndexForScreenId;
                            }
                            itemInfo = (ItemInfo) view.getTag();
                            if (objArr2 != false) {
                                parentCellLayoutForView = getParentCellLayoutForView(view);
                                if (parentCellLayoutForView != null) {
                                    parentCellLayoutForView.removeView(view);
                                    int[] iArr6 = this.mTargetCell;
                                    addInScreen(view, i2, idForScreen, iArr6[c], iArr6[c5], itemInfo.spanX, itemInfo.spanY);
                                } else {
                                    throw new NullPointerException("mDragInfo.cell has null parent");
                                }
                            }
                            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
                            int i13 = this.mTargetCell[c];
                            layoutParams.tmpCellX = i13;
                            layoutParams.cellX = i13;
                            int i14 = this.mTargetCell[1];
                            layoutParams.tmpCellY = i14;
                            layoutParams.cellY = i14;
                            layoutParams.cellHSpan = itemInfo2.spanX;
                            layoutParams.cellVSpan = itemInfo2.spanY;
                            layoutParams.isLockedToGrid = true;
                            i4 = i2;
                            if (i4 != -101 && (view instanceof LauncherAppWidgetHostView) && (appWidgetInfo = (launcherAppWidgetHostView = (LauncherAppWidgetHostView) view).getAppWidgetInfo()) != null && appWidgetInfo.resizeMode != 0 && !dragOptions.isAccessibleDrag) {
                                runnable2 = new Runnable() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda13
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.m50lambda$onDrop$3$comandroidlauncher3Workspace(launcherAppWidgetHostView, cellLayout);
                                    }
                                };
                            }
                            this.mLauncher.getModelWriter().modifyItemInDatabase(itemInfo, i4, idForScreen, layoutParams.cellX, layoutParams.cellY, itemInfo2.spanX, itemInfo2.spanY);
                        } else {
                            if (objArr == false) {
                                onNoCellFound(cellLayout);
                            }
                            CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view.getLayoutParams();
                            this.mTargetCell[c] = layoutParams2.cellX;
                            this.mTargetCell[c5] = layoutParams2.cellY;
                            ((CellLayout) view.getParent().getParent()).markCellsAsOccupiedForView(view);
                            i = -1;
                        }
                        runnable = runnable2;
                        j = 500;
                    }
                    objArr = false;
                    iArr = new int[2];
                    if (objArr != false) {
                        int[] iArr7 = this.mTargetCell;
                        iArr7[c4] = -1;
                        iArr7[0] = -1;
                        c2 = 2;
                        c5 = c4;
                        view2 = view3;
                        iArr2 = iArr;
                        c = 0;
                    } else {
                        float[] fArr5 = this.mDragViewVisualCenter;
                        c2 = 2;
                        view2 = view3;
                        iArr2 = iArr;
                        c = 0;
                        c5 = 1;
                        this.mTargetCell = cellLayout.performReorder((int) fArr5[0], (int) fArr5[c4], i11, i12, i9, i3, view2, this.mTargetCell, iArr2, 2);
                    }
                    iArr3 = this.mTargetCell;
                    if (iArr3[c] >= 0) {
                        c6 = c;
                    } else {
                        c6 = c;
                    }
                    view = view2;
                    if (c6 == 0) {
                        c3 = c;
                    } else {
                        c3 = c;
                    }
                    if (c6 != 0) {
                        if (getScreenIdForPageIndex(this.mCurrentPage) != idForScreen) {
                            i = -1;
                        } else {
                            i = -1;
                        }
                        itemInfo = (ItemInfo) view.getTag();
                        if (objArr2 != false) {
                            parentCellLayoutForView = getParentCellLayoutForView(view);
                            if (parentCellLayoutForView != null) {
                                parentCellLayoutForView.removeView(view);
                                int[] iArr8 = this.mTargetCell;
                                addInScreen(view, i2, idForScreen, iArr8[c], iArr8[c5], itemInfo.spanX, itemInfo.spanY);
                            } else {
                                throw new NullPointerException("mDragInfo.cell has null parent");
                            }
                        }
                        CellLayout.LayoutParams layoutParams3 = (CellLayout.LayoutParams) view.getLayoutParams();
                        int i15 = this.mTargetCell[c];
                        layoutParams3.tmpCellX = i15;
                        layoutParams3.cellX = i15;
                        int i16 = this.mTargetCell[1];
                        layoutParams3.tmpCellY = i16;
                        layoutParams3.cellY = i16;
                        layoutParams3.cellHSpan = itemInfo2.spanX;
                        layoutParams3.cellVSpan = itemInfo2.spanY;
                        layoutParams3.isLockedToGrid = true;
                        i4 = i2;
                        if (i4 != -101) {
                            runnable2 = new Runnable() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda13
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m50lambda$onDrop$3$comandroidlauncher3Workspace(launcherAppWidgetHostView, cellLayout);
                                }
                            };
                        }
                        this.mLauncher.getModelWriter().modifyItemInDatabase(itemInfo, i4, idForScreen, layoutParams3.cellX, layoutParams3.cellY, itemInfo2.spanX, itemInfo2.spanY);
                    } else {
                        if (objArr == false) {
                            onNoCellFound(cellLayout);
                        }
                        CellLayout.LayoutParams layoutParams4 = (CellLayout.LayoutParams) view.getLayoutParams();
                        this.mTargetCell[c] = layoutParams4.cellX;
                        this.mTargetCell[c5] = layoutParams4.cellY;
                        ((CellLayout) view.getParent().getParent()).markCellsAsOccupiedForView(view);
                        i = -1;
                    }
                    runnable = runnable2;
                    j = 500;
                } else {
                    i2 = i10;
                }
                z2 = false;
                if (z2) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                if (isFinishedSwitchingState()) {
                    i3 = i8;
                    c4 = 1;
                    objArr = false;
                } else {
                    i3 = i8;
                    c4 = 1;
                    objArr = false;
                }
                iArr = new int[2];
                if (objArr != false) {
                    int[] iArr9 = this.mTargetCell;
                    iArr9[c4] = -1;
                    iArr9[0] = -1;
                    c2 = 2;
                    c5 = c4;
                    view2 = view3;
                    iArr2 = iArr;
                    c = 0;
                } else {
                    float[] fArr6 = this.mDragViewVisualCenter;
                    c2 = 2;
                    view2 = view3;
                    iArr2 = iArr;
                    c = 0;
                    c5 = 1;
                    this.mTargetCell = cellLayout.performReorder((int) fArr6[0], (int) fArr6[c4], i11, i12, i9, i3, view2, this.mTargetCell, iArr2, 2);
                }
                iArr3 = this.mTargetCell;
                if (iArr3[c] >= 0) {
                    c6 = c;
                } else {
                    c6 = c;
                }
                view = view2;
                if (c6 == 0) {
                    c3 = c;
                } else {
                    c3 = c;
                }
                if (c6 != 0) {
                    if (getScreenIdForPageIndex(this.mCurrentPage) != idForScreen) {
                        i = -1;
                    } else {
                        i = -1;
                    }
                    itemInfo = (ItemInfo) view.getTag();
                    if (objArr2 != false) {
                        parentCellLayoutForView = getParentCellLayoutForView(view);
                        if (parentCellLayoutForView != null) {
                            parentCellLayoutForView.removeView(view);
                            int[] iArr10 = this.mTargetCell;
                            addInScreen(view, i2, idForScreen, iArr10[c], iArr10[c5], itemInfo.spanX, itemInfo.spanY);
                        } else {
                            throw new NullPointerException("mDragInfo.cell has null parent");
                        }
                    }
                    CellLayout.LayoutParams layoutParams5 = (CellLayout.LayoutParams) view.getLayoutParams();
                    int i17 = this.mTargetCell[c];
                    layoutParams5.tmpCellX = i17;
                    layoutParams5.cellX = i17;
                    int i18 = this.mTargetCell[1];
                    layoutParams5.tmpCellY = i18;
                    layoutParams5.cellY = i18;
                    layoutParams5.cellHSpan = itemInfo2.spanX;
                    layoutParams5.cellVSpan = itemInfo2.spanY;
                    layoutParams5.isLockedToGrid = true;
                    i4 = i2;
                    if (i4 != -101) {
                        runnable2 = new Runnable() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda13
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.m50lambda$onDrop$3$comandroidlauncher3Workspace(launcherAppWidgetHostView, cellLayout);
                            }
                        };
                    }
                    this.mLauncher.getModelWriter().modifyItemInDatabase(itemInfo, i4, idForScreen, layoutParams5.cellX, layoutParams5.cellY, itemInfo2.spanX, itemInfo2.spanY);
                } else {
                    if (objArr == false) {
                        onNoCellFound(cellLayout);
                    }
                    CellLayout.LayoutParams layoutParams6 = (CellLayout.LayoutParams) view.getLayoutParams();
                    this.mTargetCell[c] = layoutParams6.cellX;
                    this.mTargetCell[c5] = layoutParams6.cellY;
                    ((CellLayout) view.getParent().getParent()).markCellsAsOccupiedForView(view);
                    i = -1;
                }
                runnable = runnable2;
                j = 500;
            }
            CellLayout cellLayout2 = (CellLayout) view.getParent().getParent();
            boolean z4 = c;
            dragObject2 = dragObject;
            if (!dragObject2.dragView.hasDrawn()) {
                dragObject2.deferDragViewCleanupPostAnimation = z4;
                view.setVisibility(z4 ? 1 : 0);
            } else {
                if (z3) {
                    this.mLauncher.getDragController().animateDragViewToOriginalPosition(runnable, view, LauncherState.SPRING_LOADED.getTransitionDuration(this.mLauncher));
                    this.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
                    if (this.mLauncher.getDropTargetBar() != null) {
                        this.mLauncher.getDropTargetBar().onDragEnd();
                    }
                    cellLayout2.onDropChild(view);
                    return;
                }
                ItemInfo itemInfo3 = (ItemInfo) view.getTag();
                if (itemInfo3.itemType == 4 || itemInfo3.itemType == 5) {
                    animateWidgetDrop(itemInfo3, cellLayout2, dragObject2.dragView, null, c3 != 0 ? c2 : z4 ? 1 : 0, view, false);
                } else {
                    this.mLauncher.getDragLayer().animateViewIntoPosition(dragObject2.dragView, view, i >= 0 ? 300 : -1, this);
                }
            }
            cellLayout2.onDropChild(view);
            if (!this.mLauncher.getStateManager().isInWidgetEditState()) {
                this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, j, runnable);
            }
            this.mStatsLogManager.logger().withItemInfo(dragObject2.dragInfo).withInstanceId(dragObject2.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED);
            z = z2;
        }
        if (dragObject2.stateAnnouncer == null || z) {
            return;
        }
        dragObject2.stateAnnouncer.completeAction(R.string.item_moved);
    }

    /* JADX INFO: renamed from: lambda$onDrop$3$com-android-launcher3-Workspace, reason: not valid java name */
    /* synthetic */ void m50lambda$onDrop$3$comandroidlauncher3Workspace(LauncherAppWidgetHostView launcherAppWidgetHostView, CellLayout cellLayout) {
        if (isPageInTransition()) {
            return;
        }
        AppWidgetResizeFrame.showForWidget(launcherAppWidgetHostView, cellLayout);
    }

    public void onNoCellFound(View dropTargetLayout) {
        Launcher launcher = this.mLauncher;
        ToastViewUtils.makeText(launcher, launcher.getString(R.string.txt_cant_add_new_screen_tips), 3000L).show();
    }

    public void getPageAreaRelativeToDragLayer(Rect outArea) {
        CellLayout cellLayout = (CellLayout) getChildAt(getNextPage());
        if (cellLayout == null) {
            return;
        }
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(cellLayout.getShortcutsAndWidgets(), outArea);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragEnter(DropTarget.DragObject d) {
        MLog.d(TAG, "onDragEnter() called with: d = [" + d + "]");
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDropToLayout = null;
        float[] visualCenter = d.getVisualCenter(this.mDragViewVisualCenter);
        this.mDragViewVisualCenter = visualCenter;
        setDropLayoutForDragObject(d, visualCenter[0], visualCenter[1]);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragExit(DropTarget.DragObject d) {
        MLog.d(TAG, "onDragExit() called with: d = [" + d + "]");
        this.mDropToLayout = this.mDragTargetLayout;
        int i = this.mDragMode;
        if (i == 1) {
            this.mCreateUserFolderOnDrop = true;
        } else if (i == 2) {
            this.mAddToExistingFolderOnDrop = true;
        }
        setCurrentDropLayout(null, d);
        setCurrentDragOverlappingLayout(null);
        this.mSpringLoadedDragController.cancel();
    }

    private void enforceDragParity(String event, int update, int expectedValue) {
        enforceDragParity(this, event, update, expectedValue);
        for (int i = 0; i < getChildCount(); i++) {
            enforceDragParity(getChildAt(i), event, update, expectedValue);
        }
    }

    private void enforceDragParity(View v, String event, int update, int expectedValue) {
        Object tag = v.getTag(R.id.drag_event_parity);
        int iIntValue = (tag == null ? 0 : ((Integer) tag).intValue()) + update;
        v.setTag(R.id.drag_event_parity, Integer.valueOf(iIntValue));
        if (iIntValue != expectedValue) {
            Log.e(TAG, event + ": Drag contract violated: " + iIntValue);
        }
    }

    void setCurrentDropLayout(CellLayout layout, DropTarget.DragObject d) {
        CellLayout cellLayout = this.mDragTargetLayout;
        if (cellLayout != null) {
            cellLayout.revertTempState();
            this.mDragTargetLayout.onDragExit(d);
        }
        this.mDragTargetLayout = layout;
        if (layout != null) {
            layout.onDragEnter();
        }
        cleanupReorder(true);
        cleanupFolderCreation();
        setCurrentDropOverCell(-1, -1);
    }

    void setCurrentDragOverlappingLayout(CellLayout layout) {
        CellLayout cellLayout = this.mDragOverlappingLayout;
        if (cellLayout != null) {
            cellLayout.setIsDragOverlapping(false);
        }
        this.mDragOverlappingLayout = layout;
        if (layout != null) {
            layout.setIsDragOverlapping(true);
        }
    }

    void setCurrentDropOverCell(int x, int y) {
        if (x == this.mDragOverX && y == this.mDragOverY) {
            return;
        }
        this.mDragOverX = x;
        this.mDragOverY = y;
        setDragMode(0);
    }

    void setDragMode(int dragMode) {
        if (dragMode != this.mDragMode) {
            if (dragMode == 0) {
                cleanupAddToFolder();
                cleanupReorder(false);
                cleanupFolderCreation();
            } else if (dragMode == 2) {
                cleanupReorder(true);
                cleanupFolderCreation();
            } else if (dragMode == 1) {
                cleanupAddToFolder();
                cleanupReorder(true);
            } else if (dragMode == 3) {
                cleanupAddToFolder();
                cleanupFolderCreation();
            }
            this.mDragMode = dragMode;
        }
    }

    private void cleanupFolderCreation() {
        PreviewBackground previewBackground = this.mFolderCreateBg;
        if (previewBackground != null) {
            previewBackground.animateToRest();
        }
    }

    private void cleanupAddToFolder() {
        FolderIcon folderIcon = this.mDragOverFolderIcon;
        if (folderIcon != null) {
            folderIcon.onDragExit();
            this.mDragOverFolderIcon = null;
        }
    }

    private void cleanupReorder(boolean cancelAlarm) {
        if (cancelAlarm) {
            this.mReorderAlarm.cancelAlarm();
        }
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
    }

    private void mapPointFromSelfToChild(View v, float[] xy) {
        xy[0] = xy[0] - v.getLeft();
        xy[1] = xy[1] - v.getTop();
    }

    boolean isPointInSelfOverHotseat(int x, int y) {
        float[] fArr = this.mTempFXY;
        fArr[0] = x;
        fArr[1] = y;
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(this, this.mTempFXY, true);
        Hotseat hotseat = this.mLauncher.getHotseat();
        return this.mTempFXY[0] >= ((float) hotseat.getLeft()) && this.mTempFXY[0] <= ((float) hotseat.getRight()) && this.mTempFXY[1] >= ((float) hotseat.getTop()) && this.mTempFXY[1] <= ((float) hotseat.getBottom());
    }

    private void mapPointFromDropLayout(CellLayout layout, float[] xy) {
        if (this.mLauncher.isHotseatLayout(layout)) {
            this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(this, xy, true);
            this.mLauncher.getDragLayer().mapCoordInSelfToDescendant(layout, xy);
        } else {
            mapPointFromSelfToChild(layout, xy);
        }
    }

    private boolean isDragWidget(DropTarget.DragObject d) {
        return (d.dragInfo instanceof LauncherAppWidgetInfo) || (d.dragInfo instanceof PendingAddWidgetInfo);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragOver(DropTarget.DragObject d) {
        int i;
        int i2;
        int i3;
        int i4;
        CellLayout cellLayout;
        MLog.d(TAG, "onDragOver: d = " + d);
        if (transitionStateShouldAllowDrop()) {
            ItemInfo itemInfo = d.dragInfo;
            if (itemInfo == null) {
                throw new NullPointerException("DragObject has null info");
            }
            if (itemInfo.spanX < 0 || itemInfo.spanY < 0) {
                throw new RuntimeException("Improper spans found");
            }
            this.mDragViewVisualCenter = d.getVisualCenter(this.mDragViewVisualCenter);
            CellLayout.CellInfo cellInfo = this.mDragInfo;
            View view = cellInfo == null ? null : cellInfo.cell;
            float[] fArr = this.mDragViewVisualCenter;
            if (setDropLayoutForDragObject(d, fArr[0], fArr[1])) {
                if (this.mLauncher.isHotseatLayout(this.mDragTargetLayout)) {
                    this.mSpringLoadedDragController.cancel();
                } else {
                    this.mSpringLoadedDragController.setAlarm(this.mDragTargetLayout);
                }
            }
            MLog.d(TAG, "onDragOver: mDragTargetLayout = " + this.mDragTargetLayout);
            CellLayout cellLayout2 = this.mDragTargetLayout;
            if (cellLayout2 != null) {
                mapPointFromDropLayout(cellLayout2, this.mDragViewVisualCenter);
                int i5 = itemInfo.spanX;
                int i6 = itemInfo.spanY;
                if (itemInfo.minSpanX > 0 && itemInfo.minSpanY > 0) {
                    i5 = itemInfo.minSpanX;
                    i6 = itemInfo.minSpanY;
                }
                int i7 = i5;
                int i8 = i6;
                float[] fArr2 = this.mDragViewVisualCenter;
                this.mTargetCell = findNearestArea((int) fArr2[0], (int) fArr2[1], i7, i8, this.mDragTargetLayout, this.mTargetCell);
                MLog.d(TAG, "onDragOver: mTargetCell = " + Arrays.toString(this.mTargetCell));
                int[] iArr = this.mTargetCell;
                int i9 = iArr[0];
                int i10 = iArr[1];
                setCurrentDropOverCell(i9, i10);
                CellLayout cellLayout3 = this.mDragTargetLayout;
                float[] fArr3 = this.mDragViewVisualCenter;
                manageFolderFeedback(cellLayout3.getDistanceFromCell(fArr3[0], fArr3[1], this.mTargetCell), d);
                CellLayout cellLayout4 = this.mDragTargetLayout;
                float[] fArr4 = this.mDragViewVisualCenter;
                boolean zIsNearestDropLocationOccupied = cellLayout4.isNearestDropLocationOccupied((int) fArr4[0], (int) fArr4[1], itemInfo.spanX, itemInfo.spanY, view, this.mTargetCell);
                if (!zIsNearestDropLocationOccupied) {
                    CellLayout cellLayout5 = this.mDragTargetLayout;
                    DraggableView draggableView = d.originalView;
                    DragPreviewProvider dragPreviewProvider = this.mOutlineProvider;
                    int[] iArr2 = this.mTargetCell;
                    i = 1;
                    cellLayout5.visualizeDropLocation(draggableView, dragPreviewProvider, iArr2[0], iArr2[1], itemInfo.spanX, itemInfo.spanY, false, d);
                } else {
                    i = 1;
                    int i11 = this.mDragMode;
                    if ((i11 == 0 || i11 == 3) && !this.mReorderAlarm.alarmPending() && (this.mLastReorderX != i9 || this.mLastReorderY != i10)) {
                        CellLayout cellLayout6 = this.mDragTargetLayout;
                        float[] fArr5 = this.mDragViewVisualCenter;
                        cellLayout6.performReorder((int) fArr5[0], (int) fArr5[1], i7, i8, itemInfo.spanX, itemInfo.spanY, view, this.mTargetCell, new int[2], 0);
                        float[] fArr6 = this.mDragViewVisualCenter;
                        int i12 = itemInfo.spanX;
                        int i13 = itemInfo.spanY;
                        i2 = 2;
                        i3 = 1;
                        this.mReorderAlarm.setOnAlarmListener(new ReorderAlarmListener(fArr6, i7, i8, i12, i13, d, view));
                        this.mReorderAlarm.setAlarm(650L);
                    }
                    i4 = this.mDragMode;
                    if ((i4 == i3 && i4 != i2 && zIsNearestDropLocationOccupied) || (cellLayout = this.mDragTargetLayout) == null) {
                        return;
                    }
                    cellLayout.revertTempState();
                }
                i3 = i;
                i2 = 2;
                i4 = this.mDragMode;
                if (i4 == i3) {
                }
                cellLayout.revertTempState();
            }
        }
    }

    private boolean setDropLayoutForDragObject(DropTarget.DragObject d, float centerX, float centerY) {
        CellLayout hotseat = (this.mLauncher.getHotseat() == null || isDragWidget(d) || !isPointInSelfOverHotseat(d.x, d.y)) ? null : this.mLauncher.getHotseat();
        int nextPage = getNextPage();
        if (hotseat == null && !isPageInTransition()) {
            this.mTempTouchCoordinates[0] = Math.min(centerX, d.x);
            this.mTempTouchCoordinates[1] = d.y;
            hotseat = verifyInsidePage((this.mIsRtl ? 1 : -1) + nextPage, this.mTempTouchCoordinates);
        }
        if (hotseat == null && !isPageInTransition()) {
            this.mTempTouchCoordinates[0] = Math.max(centerX, d.x);
            this.mTempTouchCoordinates[1] = d.y;
            hotseat = verifyInsidePage((this.mIsRtl ? -1 : 1) + nextPage, this.mTempTouchCoordinates);
        }
        if (hotseat == null && nextPage >= 0 && nextPage < getPageCount()) {
            hotseat = (CellLayout) getChildAt(nextPage);
        }
        if (hotseat == this.mDragTargetLayout) {
            return false;
        }
        setCurrentDropLayout(hotseat, d);
        setCurrentDragOverlappingLayout(hotseat);
        return true;
    }

    private CellLayout verifyInsidePage(int pageNo, float[] touchXy) {
        if (pageNo < 0 || pageNo >= getPageCount()) {
            return null;
        }
        CellLayout cellLayout = (CellLayout) getChildAt(pageNo);
        mapPointFromSelfToChild(cellLayout, touchXy);
        if (touchXy[0] < ((double) (-cellLayout.getWidth())) * 0.03d || touchXy[0] > ((double) cellLayout.getWidth()) * 1.03d) {
            return null;
        }
        return cellLayout;
    }

    public View findItemView(ComponentName taskComponent, int flags) {
        if (taskComponent == null) {
            return null;
        }
        ItemInfo lastLaunched = LaunchHistory.get().getLastLaunched(taskComponent);
        MLog.d(TAG, "findItemView: taskComponent=" + taskComponent + " histItemInfo=" + lastLaunched);
        if (lastLaunched == null) {
            return null;
        }
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            DraggableRecyclerView draggableRecyclerView = cellLayout.getDraggableRecyclerView();
            if (draggableRecyclerView != null) {
                int itemChildCount = draggableRecyclerView.getItemChildCount();
                for (int i = 0; i < itemChildCount; i++) {
                    View itemViewAt = draggableRecyclerView.getItemViewAt(i);
                    Object tag = itemViewAt.getTag();
                    if ((tag instanceof WorkspaceItemInfo) && (lastLaunched instanceof WorkspaceItemInfo)) {
                        ComponentName targetComponent = ((WorkspaceItemInfo) tag).getTargetComponent();
                        if (targetComponent != null && Objects.equals(targetComponent, lastLaunched.getTargetComponent())) {
                            return itemViewAt;
                        }
                    } else if ((tag instanceof LauncherAppWidgetInfo) && (lastLaunched instanceof LauncherAppWidgetInfo) && Objects.equals(((LauncherAppWidgetInfo) tag).providerName, ((LauncherAppWidgetInfo) lastLaunched).providerName)) {
                        return itemViewAt;
                    }
                }
            }
        }
        return null;
    }

    public void applyEditState() {
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().getState();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((CellLayout) getChildAt(i)).applyChildState(launcherState);
        }
    }

    public void handleItemInfoRuntimeWhenAnimEnd() {
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            cellLayout.handleItemInfoRuntimeWhenAnimEnd();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float translationX) {
        super.setTranslationX(translationX);
        notifyLocationChanged();
    }

    @Override // android.view.View
    public void setTranslationY(float translationY) {
        super.setTranslationY(translationY);
        notifyLocationChanged();
    }

    @Override // com.android.launcher3.views.dragableviews.LocationNotifier
    public void addOnLocationChangedListener(OnLocationChangedListener listener) {
        this.mLocationChangedListeners.add(listener);
        notifyLocationChanged();
    }

    @Override // com.android.launcher3.views.dragableviews.LocationNotifier
    public void removeOnLocationChangedListener(OnLocationChangedListener listener) {
        this.mLocationChangedListeners.remove(listener);
    }

    private void notifyLocationChanged() {
        this.mLocationChangedListeners.forEach(new Workspace$$ExternalSyntheticLambda15());
    }

    class ReorderAlarmListener implements OnAlarmListener {
        final View child;
        final DropTarget.DragObject dragObject;
        final float[] dragViewCenter;
        final int minSpanX;
        final int minSpanY;
        final int spanX;
        final int spanY;

        public ReorderAlarmListener(float[] dragViewCenter, int minSpanX, int minSpanY, int spanX, int spanY, DropTarget.DragObject dragObject, View child) {
            this.dragViewCenter = dragViewCenter;
            this.minSpanX = minSpanX;
            this.minSpanY = minSpanY;
            this.spanX = spanX;
            this.spanY = spanY;
            this.child = child;
            this.dragObject = dragObject;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            int[] iArr = new int[2];
            Workspace workspace = Workspace.this;
            workspace.mTargetCell = workspace.findNearestArea((int) workspace.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], this.minSpanX, this.minSpanY, Workspace.this.mDragTargetLayout, Workspace.this.mTargetCell);
            Workspace workspace2 = Workspace.this;
            workspace2.mLastReorderX = workspace2.mTargetCell[0];
            Workspace workspace3 = Workspace.this;
            workspace3.mLastReorderY = workspace3.mTargetCell[1];
            Workspace workspace4 = Workspace.this;
            workspace4.mTargetCell = workspace4.mDragTargetLayout.performReorder((int) Workspace.this.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], this.minSpanX, this.minSpanY, this.spanX, this.spanY, this.child, Workspace.this.mTargetCell, iArr, 1);
            if (Workspace.this.mTargetCell[0] < 0 || Workspace.this.mTargetCell[1] < 0) {
                Workspace.this.mDragTargetLayout.revertTempState();
            } else {
                Workspace.this.setDragMode(3);
            }
            Workspace.this.mDragTargetLayout.visualizeDropLocation(this.dragObject.originalView, Workspace.this.mOutlineProvider, Workspace.this.mTargetCell[0], Workspace.this.mTargetCell[1], iArr[0], iArr[1], (iArr[0] == this.spanX && iArr[1] == this.spanY) ? false : true, this.dragObject);
        }
    }

    @Override // com.android.launcher3.DropTarget
    public void getHitRectRelativeToDragLayer(Rect outRect) {
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(this, outRect);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x0173  */
    /* JADX WARN: Code duplicated, block: B:88:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c9  */
    private void onDropExternal(final int[] touchXY, final CellLayout cellLayout, final DropTarget.DragObject d) {
        ItemInfo itemInfoMakeWorkspaceItem;
        ItemInfo itemInfo;
        View viewCreateShortcut;
        CellLayout cellLayout2;
        char c;
        boolean z;
        int i;
        boolean z2;
        int i2;
        if (d.dragInfo instanceof PendingAddShortcutInfo) {
            PendingAddShortcutInfo pendingAddShortcutInfo = (PendingAddShortcutInfo) d.dragInfo;
            if (pendingAddShortcutInfo.activityInfo != null) {
                WorkspaceItemInfo workspaceItemInfoCreateWorkspaceItemInfo = pendingAddShortcutInfo.activityInfo.createWorkspaceItemInfo();
                if (workspaceItemInfoCreateWorkspaceItemInfo != null) {
                    d.dragInfo = workspaceItemInfoCreateWorkspaceItemInfo;
                }
            } else if (pendingAddShortcutInfo.appInfo != null) {
                d.dragInfo = pendingAddShortcutInfo.appInfo;
            }
        }
        ItemInfo itemInfo2 = d.dragInfo;
        int i3 = itemInfo2.spanX;
        int i4 = itemInfo2.spanY;
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null) {
            i3 = cellInfo.spanX;
            i4 = this.mDragInfo.spanY;
        }
        int i5 = i3;
        int i6 = i4;
        final int i7 = this.mLauncher.isHotseatLayout(cellLayout) ? LauncherSettings.Favorites.CONTAINER_HOTSEAT : -100;
        final int idForScreen = getIdForScreen(cellLayout);
        if (!this.mLauncher.isHotseatLayout(cellLayout) && idForScreen != getScreenIdForPageIndex(this.mCurrentPage) && !this.mLauncher.isInState(LauncherState.SPRING_LOADED) && !this.mLauncher.isInState(LauncherState.WIDGET_SPRING_LOADED)) {
            snapToPage(getPageIndexForScreenId(idForScreen));
        }
        if (itemInfo2 instanceof PendingAddItemInfo) {
            final PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo) itemInfo2;
            if (pendingAddItemInfo.itemType == 1) {
                int[] iArrFindNearestArea = findNearestArea(touchXY[0], touchXY[1], i5, i6, cellLayout, this.mTargetCell);
                this.mTargetCell = iArrFindNearestArea;
                float[] fArr = this.mDragViewVisualCenter;
                float distanceFromCell = cellLayout.getDistanceFromCell(fArr[0], fArr[1], iArrFindNearestArea);
                if (willCreateUserFolder(d.dragInfo, cellLayout, this.mTargetCell, distanceFromCell, true) || willAddToExistingUserFolder(d.dragInfo, cellLayout, this.mTargetCell, distanceFromCell)) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = true;
            }
            final ItemInfo itemInfo3 = d.dragInfo;
            if (z) {
                int i8 = itemInfo3.spanX;
                int i9 = itemInfo3.spanY;
                if (itemInfo3.minSpanX > 0 && itemInfo3.minSpanY > 0) {
                    i8 = itemInfo3.minSpanX;
                    i9 = itemInfo3.minSpanY;
                }
                int[] iArr = new int[2];
                float[] fArr2 = this.mDragViewVisualCenter;
                i = 1;
                this.mTargetCell = cellLayout.performReorder((int) fArr2[0], (int) fArr2[1], i8, i9, itemInfo2.spanX, itemInfo2.spanY, null, this.mTargetCell, iArr, 3);
                z2 = (iArr[0] == itemInfo3.spanX && iArr[1] == itemInfo3.spanY) ? false : true;
                itemInfo3.spanX = iArr[0];
                itemInfo3.spanY = iArr[1];
            } else {
                i = 1;
                z2 = false;
            }
            int i10 = i;
            Runnable runnable = new Runnable() { // from class: com.android.launcher3.Workspace.4
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.deferRemoveExtraEmptyScreen();
                    Workspace.this.mLauncher.addPendingItem(pendingAddItemInfo, i7, idForScreen, Workspace.this.mTargetCell, itemInfo3.spanX, itemInfo3.spanY);
                    Workspace.this.mStatsLogManager.logger().withItemInfo(d.dragInfo).withInstanceId(d.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED);
                }
            };
            int i11 = (pendingAddItemInfo.itemType == 4 || pendingAddItemInfo.itemType == 5) ? i10 : 0;
            AppWidgetHostView appWidgetHostView = i11 != 0 ? ((PendingAddWidgetInfo) pendingAddItemInfo).boundWidget : null;
            if (appWidgetHostView != null && z2) {
                AppWidgetResizeFrame.updateWidgetSizeRanges(appWidgetHostView, this.mLauncher, itemInfo3.spanX, itemInfo3.spanY);
            }
            if (i11 != 0) {
                PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) pendingAddItemInfo;
                if (pendingAddWidgetInfo.info == null || !pendingAddWidgetInfo.getHandler().needsConfigure()) {
                    i2 = 0;
                } else {
                    i2 = i10;
                }
            } else {
                i2 = 0;
            }
            animateWidgetDrop(itemInfo2, cellLayout, d.dragView, runnable, i2, appWidgetHostView, true);
            return;
        }
        int i12 = itemInfo2.itemType;
        if (i12 == 0 || i12 == 1) {
            if (itemInfo2 instanceof AppInfo) {
                itemInfoMakeWorkspaceItem = ((AppInfo) itemInfo2).makeWorkspaceItem();
                d.dragInfo = itemInfoMakeWorkspaceItem;
            } else {
                itemInfoMakeWorkspaceItem = itemInfo2;
            }
            itemInfo = itemInfoMakeWorkspaceItem;
            viewCreateShortcut = this.mLauncher.createShortcut(cellLayout, (WorkspaceItemInfo) itemInfoMakeWorkspaceItem);
        } else if (i12 != 2) {
            if (i12 != 6) {
                throw new IllegalStateException("Unknown item type: " + itemInfo2.itemType);
            }
            if (itemInfo2 instanceof AppInfo) {
                itemInfoMakeWorkspaceItem = ((AppInfo) itemInfo2).makeWorkspaceItem();
                d.dragInfo = itemInfoMakeWorkspaceItem;
            } else {
                itemInfoMakeWorkspaceItem = itemInfo2;
            }
            itemInfo = itemInfoMakeWorkspaceItem;
            viewCreateShortcut = this.mLauncher.createShortcut(cellLayout, (WorkspaceItemInfo) itemInfoMakeWorkspaceItem);
        } else {
            viewCreateShortcut = FolderIcon.inflateFolderAndIcon(R.layout.folder_icon, this.mLauncher, cellLayout, (FolderInfo) itemInfo2);
            itemInfo = itemInfo2;
        }
        if (touchXY != null) {
            int[] iArrFindNearestArea2 = findNearestArea(touchXY[0], touchXY[1], i5, i6, cellLayout, this.mTargetCell);
            this.mTargetCell = iArrFindNearestArea2;
            float[] fArr3 = this.mDragViewVisualCenter;
            float distanceFromCell2 = cellLayout.getDistanceFromCell(fArr3[0], fArr3[1], iArrFindNearestArea2);
            if (createUserFolderIfNecessary(viewCreateShortcut, i7, cellLayout, this.mTargetCell, distanceFromCell2, true, d)) {
                return;
            }
            if (addToExistingFolderIfNecessary(viewCreateShortcut, cellLayout, this.mTargetCell, distanceFromCell2, d, true)) {
                return;
            }
        }
        if (touchXY != null) {
            float[] fArr4 = this.mDragViewVisualCenter;
            cellLayout2 = cellLayout;
            c = 1;
            this.mTargetCell = cellLayout.performReorder((int) fArr4[0], (int) fArr4[1], 1, 1, 1, 1, null, this.mTargetCell, null, 3);
        } else {
            cellLayout2 = r7;
            c = 1;
            cellLayout2.findCellForSpan(this.mTargetCell, 1, 1);
        }
        ModelWriter modelWriter = this.mLauncher.getModelWriter();
        int[] iArr2 = this.mTargetCell;
        modelWriter.addOrMoveItemInDatabase(itemInfo, i7, idForScreen, iArr2[0], iArr2[c]);
        int[] iArr3 = this.mTargetCell;
        int i13 = iArr3[0];
        int i14 = iArr3[c];
        int i15 = itemInfo.spanX;
        int i16 = itemInfo.spanY;
        View view = viewCreateShortcut;
        addInScreen(viewCreateShortcut, i7, idForScreen, i13, i14, i15, i16);
        cellLayout2.onDropChild(view);
        cellLayout.getShortcutsAndWidgets().measureChild(view);
        if (d.dragView != null) {
            setFinalTransitionTransform();
            this.mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, view, this);
            resetTransitionTransform();
        }
        this.mStatsLogManager.logger().withItemInfo(d.dragInfo).withInstanceId(d.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED);
    }

    public Bitmap createWidgetBitmap(ItemInfo widgetInfo, final View layout) {
        int[] iArrEstimateItemSize = estimateItemSize(widgetInfo);
        int visibility = layout.getVisibility();
        layout.setVisibility(0);
        layout.measure(View.MeasureSpec.makeMeasureSpec(iArrEstimateItemSize[0], BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(iArrEstimateItemSize[1], BasicMeasure.EXACTLY));
        layout.layout(0, 0, iArrEstimateItemSize[0], iArrEstimateItemSize[1]);
        int i = iArrEstimateItemSize[0];
        int i2 = iArrEstimateItemSize[1];
        Objects.requireNonNull(layout);
        Bitmap bitmapCreateHardwareBitmap = BitmapRenderer.createHardwareBitmap(i, i2, new BitmapRenderer() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda2
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                layout.draw(canvas);
            }
        });
        layout.setVisibility(visibility);
        return bitmapCreateHardwareBitmap;
    }

    private void getFinalPositionForDropAnimation(int[] loc, float[] scaleXY, DragView dragView, CellLayout layout, ItemInfo info, int[] targetCell, boolean scale) {
        Rect rectEstimateItemPosition = estimateItemPosition(layout, targetCell[0], targetCell[1], info.spanX, info.spanY);
        if (info.itemType == 4) {
            DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            Utilities.shrinkRect(rectEstimateItemPosition, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
        }
        this.mTempFXY[0] = rectEstimateItemPosition.left;
        this.mTempFXY[1] = rectEstimateItemPosition.top;
        setFinalTransitionTransform();
        float descendantCoordRelativeToSelf = this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(layout, this.mTempFXY, true);
        resetTransitionTransform();
        Utilities.roundArray(this.mTempFXY, loc);
        if (scale) {
            float fWidth = (rectEstimateItemPosition.width() * 1.0f) / dragView.getMeasuredWidth();
            float fHeight = (rectEstimateItemPosition.height() * 1.0f) / dragView.getMeasuredHeight();
            loc[0] = (int) (((double) loc[0]) - (((double) ((dragView.getMeasuredWidth() - (rectEstimateItemPosition.width() * descendantCoordRelativeToSelf)) / 2.0f)) - Math.ceil(layout.getUnusedHorizontalSpace() / 2.0f)));
            loc[1] = (int) (loc[1] - ((dragView.getMeasuredHeight() - (rectEstimateItemPosition.height() * descendantCoordRelativeToSelf)) / 2.0f));
            scaleXY[0] = fWidth * descendantCoordRelativeToSelf;
            scaleXY[1] = fHeight * descendantCoordRelativeToSelf;
            return;
        }
        float initialScale = dragView.getInitialScale() * descendantCoordRelativeToSelf;
        float f = initialScale - 1.0f;
        loc[0] = (int) (loc[0] + ((dragView.getWidth() * f) / 2.0f));
        loc[1] = (int) (loc[1] + ((f * dragView.getHeight()) / 2.0f));
        scaleXY[1] = initialScale;
        scaleXY[0] = initialScale;
        Rect dragRegion = dragView.getDragRegion();
        if (dragRegion != null) {
            loc[0] = (int) (loc[0] + (dragRegion.left * descendantCoordRelativeToSelf));
            loc[1] = (int) (loc[1] + (descendantCoordRelativeToSelf * dragRegion.top));
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0089  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:23:0x00a9  */
    public void animateWidgetDrop(ItemInfo info, CellLayout cellLayout, final DragView dragView, final Runnable onCompleteRunnable, int animationType, final View finalView, boolean external) {
        int i;
        DragLayer dragLayer;
        Rect rect = new Rect();
        this.mLauncher.getDragLayer().getViewRectRelativeToSelf(dragView, rect);
        int[] iArr = new int[2];
        float[] fArr = new float[2];
        getFinalPositionForDropAnimation(iArr, fArr, dragView, cellLayout, info, this.mTargetCell, !(info instanceof PendingAddShortcutInfo));
        int integer = this.mLauncher.getResources().getInteger(R.integer.config_dropAnimMaxDuration) - 200;
        boolean z = info.itemType == 4 || info.itemType == 5;
        if ((animationType == 2 || external) && finalView != null) {
            dragView.setCrossFadeBitmap(createWidgetBitmap(info, finalView));
            dragView.crossFade((int) (integer * 0.8f));
        } else {
            if (z && external) {
                i = 1;
                float fMin = Math.min(fArr[0], fArr[1]);
                fArr[1] = fMin;
                fArr[0] = fMin;
            }
            dragLayer = this.mLauncher.getDragLayer();
            if (animationType == 4) {
                this.mLauncher.getDragLayer().animateViewIntoPosition(dragView, iArr, 0.0f, 0.1f, 0.1f, 0, onCompleteRunnable, integer);
            } else {
                dragLayer.animateViewIntoPosition(dragView, rect.left, rect.top, iArr[0], iArr[i], 1.0f, 1.0f, 1.0f, fArr[0], fArr[i], new Runnable() { // from class: com.android.launcher3.Workspace.5
                    @Override // java.lang.Runnable
                    public void run() {
                        View view = finalView;
                        if (view != null) {
                            view.setVisibility(0);
                        }
                        Runnable runnable = onCompleteRunnable;
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                }, animationType != i ? 0 : 2, integer, this);
            }
        }
        i = 1;
        dragLayer = this.mLauncher.getDragLayer();
        if (animationType == 4) {
            this.mLauncher.getDragLayer().animateViewIntoPosition(dragView, iArr, 0.0f, 0.1f, 0.1f, 0, onCompleteRunnable, integer);
        } else {
            if (animationType != i) {
            }
            dragLayer.animateViewIntoPosition(dragView, rect.left, rect.top, iArr[0], iArr[i], 1.0f, 1.0f, 1.0f, fArr[0], fArr[i], new Runnable() { // from class: com.android.launcher3.Workspace.5
                @Override // java.lang.Runnable
                public void run() {
                    View view = finalView;
                    if (view != null) {
                        view.setVisibility(0);
                    }
                    Runnable runnable = onCompleteRunnable;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            }, animationType != i ? 0 : 2, integer, this);
        }
    }

    public void setFinalTransitionTransform() {
        if (isSwitchingState()) {
            this.mCurrentScale = getScaleX();
            setScaleX(this.mStateTransitionAnimation.getFinalScale());
            setScaleY(this.mStateTransitionAnimation.getFinalScale());
        }
    }

    public void resetTransitionTransform() {
        if (isSwitchingState()) {
            setScaleX(this.mCurrentScale);
            setScaleY(this.mCurrentScale);
        }
    }

    int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, CellLayout layout, int[] recycle) {
        return layout.findNearestArea(pixelX, pixelY, spanX, spanY, recycle);
    }

    void setup(DragController dragController) {
        this.mSpringLoadedDragController = new SpringLoadedDragController(this.mLauncher);
        this.mDragController = dragController;
        updateChildrenLayersEnabled();
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(final View target, final DropTarget.DragObject d, final boolean success) {
        CellLayout.CellInfo cellInfo;
        MLog.d(TAG, "onDropCompleted: target = " + target + ", d = " + d + ", success = " + success);
        if (!success) {
            CellLayout.CellInfo cellInfo2 = this.mDragInfo;
            if (cellInfo2 != null) {
                CellLayout cellLayout = this.mLauncher.getCellLayout(cellInfo2.container, this.mDragInfo.screenId);
                if (cellLayout != null) {
                    cellLayout.onDropChild(this.mDragInfo.cell);
                } else {
                    throw new RuntimeException("Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. ");
                }
            }
        } else if (target != this && (cellInfo = this.mDragInfo) != null) {
            removeWorkspaceItem(cellInfo.cell);
        }
        View homescreenIconByItemId = getHomescreenIconByItemId(d.originalDragInfo.id);
        if (d.cancelled && homescreenIconByItemId != null) {
            homescreenIconByItemId.setVisibility(0);
        }
        this.mDragInfo = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeWorkspaceItem(View v) {
        CellLayout parentCellLayoutForView = getParentCellLayoutForView(v);
        if (parentCellLayoutForView != null) {
            parentCellLayoutForView.removeView(v);
        } else {
            Log.e(TAG, "mDragInfo.cell has null parent");
            DraggableRecyclerView draggableRecyclerView = getDraggableRecyclerView();
            if (draggableRecyclerView != null) {
                Object tag = v.getTag();
                if (tag instanceof ItemInfo) {
                    draggableRecyclerView.removeItemViewByItemInfo((ItemInfo) tag);
                }
            }
        }
        if (v instanceof DropTarget) {
            this.mDragController.removeDropTarget((DropTarget) v);
        }
    }

    public void removeWidget(final int appWidgetId) {
        mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda12
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return this.f$0.m52lambda$removeWidget$4$comandroidlauncher3Workspace(appWidgetId, itemInfo, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$removeWidget$4$com-android-launcher3-Workspace, reason: not valid java name */
    /* synthetic */ boolean m52lambda$removeWidget$4$comandroidlauncher3Workspace(int i, ItemInfo itemInfo, View view) {
        if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
            return false;
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
        if (launcherAppWidgetInfo.appWidgetId != i) {
            return false;
        }
        this.mLauncher.removeItem(view, launcherAppWidgetInfo, true);
        return true;
    }

    public void removeFolderListeners() {
        mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace.6
            @Override // com.android.launcher3.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View view) {
                if (!(view instanceof FolderIcon)) {
                    return false;
                }
                ((FolderIcon) view).removeListeners();
                return false;
            }
        });
    }

    public void restoreInstanceStateForChild(int child) {
        if (this.mSavedStates != null) {
            this.mRestoredPages.add(child);
            CellLayout cellLayout = (CellLayout) getChildAt(child);
            if (cellLayout != null) {
                cellLayout.restoreInstanceState(this.mSavedStates);
            }
        }
    }

    public void restoreInstanceStateForRemainingPages() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (!this.mRestoredPages.contains(i)) {
                restoreInstanceStateForChild(i);
            }
        }
        this.mRestoredPages.clear();
        this.mSavedStates = null;
    }

    @Override // com.android.launcher3.PagedView
    public boolean scrollLeft() {
        boolean zScrollLeft = (this.mIsSwitchingState || !workspaceInScrollableState()) ? false : super.scrollLeft();
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
        return zScrollLeft;
    }

    @Override // com.android.launcher3.PagedView
    public boolean scrollRight() {
        boolean zScrollRight = (this.mIsSwitchingState || !workspaceInScrollableState()) ? false : super.scrollRight();
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
        return zScrollRight;
    }

    CellLayout getParentCellLayoutForView(View v) {
        CellLayout[] workspaceAndHotseatCellLayouts = getWorkspaceAndHotseatCellLayouts();
        int length = workspaceAndHotseatCellLayouts.length;
        for (int i = 0; i < length; i++) {
            CellLayout cellLayout = workspaceAndHotseatCellLayouts[i];
            if (cellLayout.getShortcutsAndWidgets().indexOfChild(v) > -1 || cellLayout.hasViewInRecyclerView(v)) {
                return cellLayout;
            }
        }
        return null;
    }

    private DraggableRecyclerView getDraggableRecyclerView() {
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            DraggableRecyclerView draggableRecyclerView = cellLayout.getDraggableRecyclerView();
            if (draggableRecyclerView != null) {
                return draggableRecyclerView;
            }
        }
        return null;
    }

    private CellLayout[] getWorkspaceAndHotseatCellLayouts() {
        CellLayout[] cellLayoutArr;
        int childCount = getChildCount();
        if (this.mLauncher.getHotseat() != null) {
            cellLayoutArr = new CellLayout[childCount + 1];
            cellLayoutArr[childCount] = this.mLauncher.getHotseat();
        } else {
            cellLayoutArr = new CellLayout[childCount];
        }
        for (int i = 0; i < childCount; i++) {
            cellLayoutArr[i] = (CellLayout) getChildAt(i);
        }
        return cellLayoutArr;
    }

    public View getFirstMatchForAppClose(final String packageName, final UserHandle user) {
        CellLayout cellLayout = (CellLayout) getPageAt(getCurrentPage());
        final ItemOperator itemOperator = new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda7
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$getFirstMatchForAppClose$5(packageName, user, itemInfo, view);
            }
        };
        final ItemOperator itemOperator2 = new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda8
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$getFirstMatchForAppClose$6(itemOperator, itemInfo, view);
            }
        };
        return FeatureFlags.ADAPTIVE_ICON_WINDOW_ANIM.get() ? getFirstMatch(new CellLayout[]{getHotseat(), cellLayout}, itemOperator2, new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda9
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$getFirstMatchForAppClose$7(itemOperator2, itemInfo, view);
            }
        }) : getFirstMatch(new CellLayout[]{getHotseat(), cellLayout}, itemOperator2);
    }

    static /* synthetic */ boolean lambda$getFirstMatchForAppClose$5(String str, UserHandle userHandle, ItemInfo itemInfo, View view) {
        return itemInfo != null && itemInfo.getTargetComponent() != null && TextUtils.equals(itemInfo.getTargetComponent().getPackageName(), str) && itemInfo.user.equals(userHandle);
    }

    static /* synthetic */ boolean lambda$getFirstMatchForAppClose$6(ItemOperator itemOperator, ItemInfo itemInfo, View view) {
        return itemOperator.evaluate(itemInfo, view) && itemInfo.itemType == 0;
    }

    static /* synthetic */ boolean lambda$getFirstMatchForAppClose$7(ItemOperator itemOperator, ItemInfo itemInfo, View view) {
        if (!(itemInfo instanceof FolderInfo)) {
            return false;
        }
        Iterator<WorkspaceItemInfo> it = ((FolderInfo) itemInfo).contents.iterator();
        while (it.hasNext()) {
            if (itemOperator.evaluate(it.next(), view)) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean lambda$getHomescreenIconByItemId$8(int i, ItemInfo itemInfo, View view) {
        return itemInfo != null && itemInfo.id == i;
    }

    public View getHomescreenIconByItemId(final int id) {
        return getFirstMatch(new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda16
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$getHomescreenIconByItemId$8(id, itemInfo, view);
            }
        });
    }

    public LauncherAppWidgetHostView getWidgetForAppWidgetId(final int appWidgetId) {
        return (LauncherAppWidgetHostView) getFirstMatch(new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda4
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$getWidgetForAppWidgetId$9(appWidgetId, itemInfo, view);
            }
        });
    }

    static /* synthetic */ boolean lambda$getWidgetForAppWidgetId$9(int i, ItemInfo itemInfo, View view) {
        return (itemInfo instanceof LauncherAppWidgetInfo) && ((LauncherAppWidgetInfo) itemInfo).appWidgetId == i;
    }

    public View getFirstMatch(final ItemOperator operator) {
        final View[] viewArr = new View[1];
        mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace.7
            @Override // com.android.launcher3.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v) {
                if (!operator.evaluate(info, v)) {
                    return false;
                }
                viewArr[0] = v;
                return true;
            }
        });
        return viewArr[0];
    }

    private View getFirstMatch(CellLayout[] cellLayouts, final ItemOperator... operators) {
        int length = operators.length;
        final View[] viewArr = new View[length];
        for (CellLayout cellLayout : cellLayouts) {
            mapOverCellLayout(cellLayout, new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda6
                @Override // com.android.launcher3.Workspace.ItemOperator
                public final boolean evaluate(ItemInfo itemInfo, View view) {
                    return Workspace.lambda$getFirstMatch$10(operators, viewArr, itemInfo, view);
                }
            });
            if (viewArr[0] != null) {
                break;
            }
        }
        for (int i = 0; i < length; i++) {
            View view = viewArr[i];
            if (view != null) {
                return view;
            }
        }
        return null;
    }

    static /* synthetic */ boolean lambda$getFirstMatch$10(ItemOperator[] itemOperatorArr, View[] viewArr, ItemInfo itemInfo, View view) {
        for (int i = 0; i < itemOperatorArr.length; i++) {
            if (viewArr[i] == null && itemOperatorArr[i].evaluate(itemInfo, view)) {
                viewArr[i] = view;
                if (i == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    void clearDropTargets() {
        mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace.8
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.android.launcher3.Workspace.ItemOperator
            public boolean evaluate(ItemInfo info, View v) {
                if (!(v instanceof DropTarget)) {
                    return false;
                }
                Workspace.this.mDragController.removeDropTarget((DropTarget) v);
                return false;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeItemsByMatcher(final ItemInfoMatcher matcher) {
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
            IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < shortcutsAndWidgets.getChildCount(); i++) {
                View childAt = shortcutsAndWidgets.getChildAt(i);
                if (childAt.getTag() instanceof ItemInfo) {
                    ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                    arrayList.add(itemInfo);
                    intSparseArrayMap.put(itemInfo.id, childAt);
                }
            }
            DraggableRecyclerView draggableRecyclerView = cellLayout.getDraggableRecyclerView();
            if (draggableRecyclerView != null) {
                int itemChildCount = draggableRecyclerView.getItemChildCount();
                for (int i2 = 0; i2 < itemChildCount; i2++) {
                    View itemViewAt = draggableRecyclerView.getItemViewAt(i2);
                    if (itemViewAt.getTag() instanceof ItemInfo) {
                        ItemInfo itemInfo2 = (ItemInfo) itemViewAt.getTag();
                        arrayList.add(itemInfo2);
                        intSparseArrayMap.put(itemInfo2.id, itemViewAt);
                    }
                }
            }
            for (ItemInfo itemInfo3 : matcher.filterItemInfos(arrayList)) {
                View view = (View) intSparseArrayMap.get(itemInfo3.id);
                if (view != 0) {
                    cellLayout.removeViewInLayout(view);
                    if (view instanceof DropTarget) {
                        this.mDragController.removeDropTarget((DropTarget) view);
                    }
                } else if (itemInfo3.container >= 0) {
                    View view2 = (View) intSparseArrayMap.get(itemInfo3.container);
                    if (view2 instanceof FolderIcon) {
                        ((FolderInfo) view2.getTag()).remove((WorkspaceItemInfo) itemInfo3, false);
                        FolderIcon folderIcon = (FolderIcon) view2;
                        if (folderIcon.getFolder().isOpen()) {
                            folderIcon.getFolder().close(false);
                        }
                    }
                }
            }
        }
        stripEmptyScreens();
    }

    public void mapOverItems(ItemOperator op) {
        CellLayout[] workspaceAndHotseatCellLayouts = getWorkspaceAndHotseatCellLayouts();
        int length = workspaceAndHotseatCellLayouts.length;
        for (int i = 0; i < length && !mapOverCellLayout(workspaceAndHotseatCellLayouts[i], op); i++) {
        }
    }

    private boolean mapOverCellLayout(CellLayout layout, ItemOperator op) {
        if (layout == null) {
            return false;
        }
        ShortcutAndWidgetContainer shortcutsAndWidgets = layout.getShortcutsAndWidgets();
        int childCount = shortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = shortcutsAndWidgets.getChildAt(i);
            if (op.evaluate((ItemInfo) childAt.getTag(), childAt)) {
                return true;
            }
        }
        DraggableRecyclerView draggableRecyclerView = layout.getDraggableRecyclerView();
        if (draggableRecyclerView != null) {
            int itemChildCount = draggableRecyclerView.getItemChildCount();
            for (int i2 = 0; i2 < itemChildCount; i2++) {
                View itemViewAt = draggableRecyclerView.getItemViewAt(i2);
                if (op.evaluate((ItemInfo) itemViewAt.getTag(), itemViewAt)) {
                    return true;
                }
            }
        }
        return false;
    }

    void updateShortcuts(ArrayList<WorkspaceItemInfo> shortcuts) {
        final HashSet hashSet = new HashSet(shortcuts);
        ItemOperator itemOperator = new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda10
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$updateShortcuts$11(hashSet, itemInfo, view);
            }
        };
        mapOverItems(itemOperator);
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.iterateOverItems(itemOperator);
        }
    }

    static /* synthetic */ boolean lambda$updateShortcuts$11(HashSet hashSet, ItemInfo itemInfo, View view) {
        if ((view instanceof BubbleTextView) && hashSet.contains(itemInfo)) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            Drawable icon = bubbleTextView.getIcon();
            bubbleTextView.applyFromWorkspaceItem(workspaceItemInfo, workspaceItemInfo.isPromise() != ((icon instanceof PreloadIconDrawable) && ((PreloadIconDrawable) icon).hasNotCompleted()));
        } else if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
            Objects.requireNonNull(hashSet);
            ((FolderIcon) view).updatePreviewItems(new Workspace$$ExternalSyntheticLambda11(hashSet));
        }
        return false;
    }

    public void updateNotificationDots(Predicate<PackageUserKey> updatedDots) {
        mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda17
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$updateNotificationDots$12(itemInfo, view);
            }
        });
    }

    static /* synthetic */ boolean lambda$updateNotificationDots$12(ItemInfo itemInfo, View view) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView)) {
            ((BubbleTextView) view).applyDotState(itemInfo, true);
        }
        if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
            ((FolderIcon) view).onItemsChanged(false);
        }
        return false;
    }

    private static /* synthetic */ boolean lambda$updateNotificationDots$13(PackageUserKey packageUserKey, Predicate predicate, ItemInfo itemInfo) {
        return !packageUserKey.updateFromItemInfo(itemInfo) || predicate.test(packageUserKey);
    }

    private /* synthetic */ boolean lambda$updateNotificationDots$14(Predicate predicate, ItemInfo itemInfo, View view) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView)) {
            if (!predicate.test(itemInfo)) {
                return false;
            }
            ((BubbleTextView) view).applyDotState(itemInfo, true);
            return false;
        }
        if (!(itemInfo instanceof FolderInfo) || !(view instanceof FolderIcon)) {
            return false;
        }
        FolderInfo folderInfo = (FolderInfo) itemInfo;
        if (!folderInfo.contents.stream().anyMatch(predicate)) {
            return false;
        }
        FolderDotInfo folderDotInfo = new FolderDotInfo();
        Iterator<WorkspaceItemInfo> it = folderInfo.contents.iterator();
        while (it.hasNext()) {
            folderDotInfo.addDotInfo(this.mLauncher.getDotInfoForItem(it.next()));
        }
        ((FolderIcon) view).setDotInfo(folderDotInfo);
        return false;
    }

    public void removeAbandonedPromise(String packageName, UserHandle user) {
        HashSet hashSet = new HashSet(1);
        hashSet.add(packageName);
        ItemInfoMatcher itemInfoMatcherOfPackages = ItemInfoMatcher.ofPackages(hashSet, user);
        this.mLauncher.getModelWriter().deleteItemsFromDatabase(itemInfoMatcherOfPackages);
        removeItemsByMatcher(itemInfoMatcherOfPackages);
    }

    public void updateRestoreItems(final HashSet<ItemInfo> updates) {
        ItemOperator itemOperator = new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda3
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$updateRestoreItems$15(updates, itemInfo, view);
            }
        };
        mapOverItems(itemOperator);
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.iterateOverItems(itemOperator);
        }
    }

    static /* synthetic */ boolean lambda$updateRestoreItems$15(HashSet hashSet, ItemInfo itemInfo, View view) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView) && hashSet.contains(itemInfo)) {
            ((BubbleTextView) view).applyPromiseState(false);
        } else if ((view instanceof PendingAppWidgetHostView) && (itemInfo instanceof LauncherAppWidgetInfo) && hashSet.contains(itemInfo)) {
            ((PendingAppWidgetHostView) view).applyState();
        } else if ((view instanceof FolderIcon) && (itemInfo instanceof FolderInfo)) {
            Objects.requireNonNull(hashSet);
            ((FolderIcon) view).updatePreviewItems(new Workspace$$ExternalSyntheticLambda11(hashSet));
        }
        return false;
    }

    public void widgetsRestored(final ArrayList<LauncherAppWidgetInfo> changedInfo) {
        LauncherAppWidgetProviderInfo launcherAppWidgetInfo;
        if (changedInfo.isEmpty()) {
            return;
        }
        DeferredWidgetRefresh deferredWidgetRefresh = new DeferredWidgetRefresh(changedInfo, this.mLauncher.getAppWidgetHost());
        LauncherAppWidgetInfo launcherAppWidgetInfo2 = changedInfo.get(0);
        WidgetManagerHelper widgetManagerHelper = new WidgetManagerHelper(getContext());
        if (launcherAppWidgetInfo2.hasRestoreFlag(1)) {
            launcherAppWidgetInfo = widgetManagerHelper.findProvider(launcherAppWidgetInfo2.providerName, launcherAppWidgetInfo2.user);
        } else {
            launcherAppWidgetInfo = widgetManagerHelper.getLauncherAppWidgetInfo(launcherAppWidgetInfo2.appWidgetId);
        }
        if (launcherAppWidgetInfo != null) {
            deferredWidgetRefresh.run();
        } else {
            mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace.9
                @Override // com.android.launcher3.Workspace.ItemOperator
                public boolean evaluate(ItemInfo info, View view) {
                    if (!(view instanceof PendingAppWidgetHostView) || !changedInfo.contains(info)) {
                        return false;
                    }
                    ((LauncherAppWidgetInfo) info).installProgress = 100;
                    ((PendingAppWidgetHostView) view).applyState();
                    return false;
                }
            });
        }
    }

    public void moveToDefaultScreen() {
        if (!workspaceInModalState() && getNextPage() != 0) {
            snapToPage(0);
        }
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.requestFocus();
        }
    }

    @Override // com.android.launcher3.PagedView
    public int getExpectedHeight() {
        return (getMeasuredHeight() <= 0 || !this.mIsLayoutValid) ? this.mLauncher.getDeviceProfile().heightPx : getMeasuredHeight();
    }

    @Override // com.android.launcher3.PagedView
    public int getExpectedWidth() {
        return (getMeasuredWidth() <= 0 || !this.mIsLayoutValid) ? this.mLauncher.getDeviceProfile().widthPx : getMeasuredWidth();
    }

    @Override // com.android.launcher3.PagedView
    protected boolean canAnnouncePageDescription() {
        return Float.compare(this.mOverlayTranslation, 0.0f) == 0;
    }

    @Override // com.android.launcher3.PagedView
    protected String getCurrentPageDescription() {
        return getPageDescription(this.mNextPage != -1 ? this.mNextPage : this.mCurrentPage);
    }

    private String getPageDescription(int page) {
        int childCount = getChildCount();
        int iIndexOf = this.mScreenOrder.indexOf(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
        if (iIndexOf >= 0 && childCount > 1) {
            if (page == iIndexOf) {
                return getContext().getString(R.string.workspace_new_page);
            }
            childCount--;
        }
        if (childCount == 0) {
            return getContext().getString(R.string.all_apps_home_button_label);
        }
        return getContext().getString(R.string.workspace_scroll_format, Integer.valueOf(page + 1), Integer.valueOf(childCount));
    }

    @Override // com.android.launcher3.logging.StatsLogUtils.LogContainerProvider
    public void fillInLogContainerData(ItemInfo childInfo, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> parents) {
        if (childInfo.container == -101 || childInfo.container == -103) {
            getHotseat().fillInLogContainerData(childInfo, child, parents);
            return;
        }
        if (childInfo.container >= 0) {
            ((FolderIcon) getHomescreenIconByItemId(childInfo.container)).getFolder().fillInLogContainerData(childInfo, child, parents);
            return;
        }
        child.gridX = childInfo.cellX;
        child.gridY = childInfo.cellY;
        child.pageIndex = getCurrentPage();
        parents.add(LoggerUtils.newContainerTarget(1));
    }

    @Override // android.view.View
    public String toString() {
        return "Workspace{mDragInfo=" + this.mDragInfo + ", mDragTargetLayout=" + this.mDragTargetLayout + ", mDropToLayout=" + this.mDropToLayout + '}';
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DeferredWidgetRefresh implements Runnable, LauncherAppWidgetHost.ProviderChangedListener {
        private final Handler mHandler;
        private final LauncherAppWidgetHost mHost;
        private final ArrayList<LauncherAppWidgetInfo> mInfos;
        private boolean mRefreshPending;

        DeferredWidgetRefresh(ArrayList<LauncherAppWidgetInfo> infos, LauncherAppWidgetHost host) {
            this.mInfos = infos;
            this.mHost = host;
            Handler handler = Workspace.this.mLauncher.mHandler;
            this.mHandler = handler;
            this.mRefreshPending = true;
            host.addProviderChangeListener(this);
            Message messageObtain = Message.obtain(handler, this);
            messageObtain.obj = DeferredWidgetRefresh.class;
            handler.sendMessageDelayed(messageObtain, 10000L);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mHost.removeProviderChangeListener(this);
            this.mHandler.removeCallbacks(this);
            if (this.mRefreshPending) {
                this.mRefreshPending = false;
                final ArrayList arrayList = new ArrayList(this.mInfos.size());
                Workspace.this.mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace$DeferredWidgetRefresh$$ExternalSyntheticLambda0
                    @Override // com.android.launcher3.Workspace.ItemOperator
                    public final boolean evaluate(ItemInfo itemInfo, View view) {
                        return this.f$0.m53x8ca322fb(arrayList, itemInfo, view);
                    }
                });
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PendingAppWidgetHostView) it.next()).reInflate();
                }
            }
        }

        /* JADX INFO: renamed from: lambda$run$0$com-android-launcher3-Workspace$DeferredWidgetRefresh, reason: not valid java name */
        /* synthetic */ boolean m53x8ca322fb(ArrayList arrayList, ItemInfo itemInfo, View view) {
            if (!(view instanceof PendingAppWidgetHostView) || !this.mInfos.contains(itemInfo)) {
                return false;
            }
            arrayList.add((PendingAppWidgetHostView) view);
            return false;
        }

        @Override // com.android.launcher3.LauncherAppWidgetHost.ProviderChangedListener
        public void notifyWidgetProvidersChanged() {
            run();
        }
    }

    private class StateTransitionListener extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        private final LauncherState mToState;

        StateTransitionListener(LauncherState toState) {
            this.mToState = toState;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator anim) {
            Workspace.this.mTransitionProgress = anim.getAnimatedFraction();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            Workspace.this.onStartStateTransition(this.mToState);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Workspace.this.onEndStateTransition();
        }
    }

    private boolean checkCanAddNewScreen() {
        return getChildCount() < this.mMaxScreenSize;
    }

    @Override // com.android.launcher3.PagedView
    protected boolean snapToPage(int whichPage, int delta, int duration, boolean immediate, TimeInterpolator interpolator, float velocity, boolean spring) {
        boolean zSnapToPage = super.snapToPage(whichPage, delta, duration, immediate, interpolator, velocity, spring);
        updateAllCellLayoutState((LauncherState) this.mLauncher.getStateManager().getState());
        return zSnapToPage;
    }

    private void updateAllCellLayoutState(LauncherState toState) {
        int size = this.mWorkspaceScreens.size();
        for (int i = 0; i < size; i++) {
            this.mWorkspaceScreens.valueAt(i).applyEditState(toState);
        }
    }

    public void removeCurrentScreen() {
        MLog.d(TAG, "removeEmptyScreens() called");
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        if (isPageInTransition()) {
            this.mStripScreensOnPageStopMoving = true;
            return;
        }
        int currentPage = getCurrentPage();
        IntArray intArray = new IntArray();
        if (this.mWorkspaceScreens.size() == 1) {
            MLog.e(TAG, "do not remove first empty screen.");
            return;
        }
        intArray.add(this.mWorkspaceScreens.keyAt(currentPage));
        int i = 0;
        for (int i2 = 0; i2 < intArray.size(); i2++) {
            int i3 = intArray.get(i2);
            CellLayout cellLayout = this.mWorkspaceScreens.get(i3);
            this.mWorkspaceScreens.remove(i3);
            this.mScreenOrder.removeValue(i3);
            if (getChildCount() > 1) {
                if (indexOfChild(cellLayout) < currentPage) {
                    i++;
                }
                removeView(cellLayout);
            } else {
                this.mWorkspaceScreens.put(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID, cellLayout);
                this.mScreenOrder.add(WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_ID);
            }
        }
        if (i >= 0) {
            setCurrentPage(currentPage - i);
        }
    }

    public boolean isInLeftEdge() {
        CellLayout cellLayoutValueAt;
        return (this.mLauncher.isWorkspaceLoading() || (cellLayoutValueAt = this.mWorkspaceScreens.valueAt(0)) == null || cellLayoutValueAt.canScrollToLeft()) ? false : true;
    }

    public void toStartEdge() {
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        MLog.d(TAG, "toStartEdge");
        this.mWorkspaceScreens.valueAt(0).scrollToStart();
    }

    public void updateCustomIcon() {
        MLog.i("updateCustomIcon");
        mapOverItems(new ItemOperator() { // from class: com.android.launcher3.Workspace$$ExternalSyntheticLambda5
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.lambda$updateCustomIcon$16(itemInfo, view);
            }
        });
    }

    static /* synthetic */ boolean lambda$updateCustomIcon$16(ItemInfo itemInfo, View view) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView) && E0xCustomFastBitmapDrawable.isCustomDrawIcon(itemInfo)) {
            ((BubbleTextView) view).applyIconAndLabel((ItemInfoWithIcon) itemInfo);
        }
        if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
            ((FolderIcon) view).onItemsChanged(false);
        }
        return false;
    }
}
