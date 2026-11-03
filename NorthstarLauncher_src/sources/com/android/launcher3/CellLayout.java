package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.CellAndSpan;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.ParcelableSparseArray;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.blur.BlurRenderWatcher;
import com.android.launcher3.views.dragableviews.DraggableRecyclerView;
import com.android.launcher3.views.dragableviews.OverScrollHLayout;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Stack;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class CellLayout extends FrameLayout {
    private static final boolean DEBUG_VISUALIZE_OCCUPIED = false;
    private static final boolean DESTRUCTIVE_REORDER = false;
    public static final int FOLDER = 2;
    public static final int HOTSEAT = 1;
    private static final int INVALID_DIRECTION = -100;
    private static final boolean LOGD = false;
    public static final int MODE_ACCEPT_DROP = 4;
    public static final int MODE_DRAG_OVER = 1;
    public static final int MODE_ON_DROP = 2;
    public static final int MODE_ON_DROP_EXTERNAL = 3;
    public static final int MODE_SHOW_REORDER_HINT = 0;
    private static final int REORDER_ANIMATION_DURATION = 150;
    private static final float REORDER_PREVIEW_MAGNITUDE = 0.12f;
    private static final String TAG = "CellLayout";
    private static final boolean VISUALIZE_GRID = false;
    public static final int WORKSPACE = 0;
    private int mActivePointerId;
    protected final ActivityContext mActivity;
    private final Drawable mBackground;

    @ViewDebug.ExportedProperty(category = "launcher")
    int mCellHeight;

    @ViewDebug.ExportedProperty(category = "launcher")
    int mCellWidth;
    private final float mChildScale;
    private final int mContainerType;
    private Runnable mDataUpdater;
    private final ArrayList<DelegatedCellDrawing> mDelegatedCellDrawings;
    private final int[] mDirectionVector;
    private final int[] mDragCell;
    final float[] mDragOutlineAlphas;
    private final InterruptibleInOutAnimator[] mDragOutlineAnims;
    private int mDragOutlineCurrent;
    private final Paint mDragOutlinePaint;
    final Rect[] mDragOutlines;
    private final DraggableRecyclerView mDraggableRecyclerView;
    private boolean mDragging;
    private boolean mDropPending;
    private final TimeInterpolator mEaseOutInterpolator;
    private boolean mFirstReachCancelLongPressThreshold;
    private int mFixedCellHeight;
    private int mFixedCellWidth;
    private int mFixedHeight;
    private int mFixedWidth;
    final PreviewBackground mFolderLeaveBehind;
    private View.OnTouchListener mInterceptTouchListener;
    private final ArrayList<View> mIntersectingViews;
    private boolean mIsDragOverlapping;
    private boolean mIsEditState;
    private boolean mIsMovingDown;
    private boolean mItemPlacementDirty;
    private int mLastMotionX;
    private int mLastMotionY;
    private Bitmap mLocationShadow1;
    private Bitmap mLocationShadow2;
    private HorizontalScrollView.MoveDownListener mMoveDownListener;
    private GridOccupancy mOccupied;
    private final Rect mOccupiedRect;
    final int[] mPreviousReorderDirection;
    final ArrayMap<LayoutParams, Animator> mReorderAnimators;
    final float mReorderPreviewAnimationMagnitude;
    final ArrayMap<Reorderable, ReorderPreviewAnimation> mShakeAnimators;
    private final ShortcutAndWidgetContainer mShortcutsAndWidgets;
    final int[] mTempLocation;
    private final Rect mTempRect;
    private final Stack<Rect> mTempRectStack;
    private GridOccupancy mTmpOccupied;
    final int[] mTmpPoint;
    final PointF mTmpPointF;
    DragAndDropAccessibilityDelegate mTouchHelper;
    private int mTouchSlop;
    private Paint mVisualizeGridPaint;
    private Rect mVisualizeGridRect;
    private static final int[] BACKGROUND_STATE_ACTIVE = {android.R.attr.state_active};
    private static final int[] BACKGROUND_STATE_DEFAULT = EMPTY_STATE_SET;
    private static final Paint sPaint = new Paint();
    private static final Property<ReorderPreviewAnimation, Float> ANIMATION_PROGRESS = new Property<ReorderPreviewAnimation, Float>(Float.TYPE, "animationProgress") { // from class: com.android.launcher3.CellLayout.5
        @Override // android.util.Property
        public Float get(ReorderPreviewAnimation anim) {
            return Float.valueOf(anim.animationProgress);
        }

        @Override // android.util.Property
        public void set(ReorderPreviewAnimation anim, Float progress) {
            anim.setAnimationProgress(progress.floatValue());
        }
    };
    private static final int[] BACKGROUND_STATE_EMPTY = {android.R.attr.state_drag_can_accept};

    @Retention(RetentionPolicy.SOURCE)
    public @interface ContainerType {
    }

    public static abstract class DelegatedCellDrawing {
        public int mDelegateCellX;
        public int mDelegateCellY;

        public abstract void drawOverItem(Canvas canvas);

        public abstract void drawUnderItem(Canvas canvas);
    }

    public boolean acceptsWidget() {
        return this.mContainerType == 0;
    }

    public int getCellHeight() {
        return this.mCellHeight;
    }

    public int getCellWidth() {
        return this.mCellWidth;
    }

    public DraggableRecyclerView getDraggableRecyclerView() {
        return this.mDraggableRecyclerView;
    }

    public boolean getIsDragOverlapping() {
        return this.mIsDragOverlapping;
    }

    public Drawable getScrimBackground() {
        return this.mBackground;
    }

    public ShortcutAndWidgetContainer getShortcutsAndWidgets() {
        return this.mShortcutsAndWidgets;
    }

    public int getUnusedHorizontalSpace() {
        return 0;
    }

    public boolean isDropPending() {
        return this.mDropPending;
    }

    boolean isItemPlacementDirty() {
        return this.mItemPlacementDirty;
    }

    public void setDropPending(boolean pending) {
        this.mDropPending = pending;
    }

    void setItemPlacementDirty(boolean dirty) {
        this.mItemPlacementDirty = dirty;
    }

    public void setMoveDownListener(HorizontalScrollView.MoveDownListener moveDownListener) {
        this.mMoveDownListener = moveDownListener;
    }

    public void setOnInterceptTouchListener(View.OnTouchListener listener) {
        this.mInterceptTouchListener = listener;
    }

    @Override // android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public CellLayout(Context context) {
        this(context, null);
    }

    public CellLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CellLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDropPending = false;
        this.mTmpPoint = new int[2];
        this.mTempLocation = new int[2];
        this.mTmpPointF = new PointF();
        this.mVisualizeGridRect = new Rect();
        this.mVisualizeGridPaint = new Paint();
        this.mDelegatedCellDrawings = new ArrayList<>();
        PreviewBackground previewBackground = new PreviewBackground();
        this.mFolderLeaveBehind = previewBackground;
        this.mFixedWidth = -1;
        this.mFixedHeight = -1;
        this.mIsDragOverlapping = false;
        Rect[] rectArr = new Rect[4];
        this.mDragOutlines = rectArr;
        this.mDragOutlineAlphas = new float[rectArr.length];
        this.mDragOutlineAnims = new InterruptibleInOutAnimator[rectArr.length];
        this.mDragOutlineCurrent = 0;
        this.mDragOutlinePaint = new Paint();
        this.mReorderAnimators = new ArrayMap<>();
        this.mShakeAnimators = new ArrayMap<>();
        this.mItemPlacementDirty = false;
        this.mDragCell = new int[]{-1, -1};
        this.mDragging = false;
        this.mChildScale = 1.0f;
        this.mIntersectingViews = new ArrayList<>();
        this.mOccupiedRect = new Rect();
        this.mDirectionVector = new int[2];
        this.mPreviousReorderDirection = new int[]{-100, -100};
        this.mTempRect = new Rect();
        this.mActivePointerId = -1;
        this.mIsMovingDown = false;
        this.mTempRectStack = new Stack<>();
        this.mIsEditState = false;
        this.mDataUpdater = new Runnable() { // from class: com.android.launcher3.CellLayout.6
            @Override // java.lang.Runnable
            public void run() {
                if (Launcher.cast(CellLayout.this.mActivity).getStateManager().isInWidgetEditState()) {
                    int idForScreen = Launcher.cast(CellLayout.this.mActivity).getWorkspace().getIdForScreen(CellLayout.this);
                    int itemChildCount = CellLayout.this.mDraggableRecyclerView.getItemChildCount();
                    int i = 0;
                    for (int i2 = 0; i2 < itemChildCount; i2++) {
                        View itemViewAt = CellLayout.this.mDraggableRecyclerView.getItemViewAt(i2);
                        LayoutParams layoutParams = (LayoutParams) itemViewAt.getTag(DraggableRecyclerView.LAYOUT_PARAMS_TAG_KEY);
                        ItemInfo itemInfo = (ItemInfo) itemViewAt.getTag();
                        if (itemInfo != null) {
                            itemInfo.cellX = i;
                            itemInfo.cellY = layoutParams.cellY;
                            itemInfo.spanX = layoutParams.cellHSpan;
                            itemInfo.spanY = layoutParams.cellVSpan;
                            Launcher.cast(CellLayout.this.mActivity).getModelWriter().modifyItemInDatabase(itemInfo, -100, idForScreen, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
                        }
                        i += layoutParams.cellHSpan;
                    }
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CellLayout, defStyle, 0);
        this.mContainerType = typedArrayObtainStyledAttributes.getInteger(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        setClipToPadding(false);
        ActivityContext activityContextLookupContext = ActivityContext.lookupContext(context);
        this.mActivity = activityContextLookupContext;
        DeviceProfile deviceProfile = activityContextLookupContext.getDeviceProfile();
        this.mCellHeight = -1;
        this.mCellWidth = -1;
        this.mFixedCellHeight = -1;
        this.mFixedCellWidth = -1;
        this.mOccupied = new GridOccupancy();
        this.mTmpOccupied = new GridOccupancy();
        previewBackground.mDelegateCellX = -1;
        previewBackground.mDelegateCellY = -1;
        setAlwaysDrawnWithCacheEnabled(false);
        Resources resources = getResources();
        Drawable drawable = resources.getDrawable(R.drawable.bg_celllayout);
        this.mBackground = drawable;
        drawable.setCallback(this);
        drawable.setAlpha(0);
        this.mReorderPreviewAnimationMagnitude = deviceProfile.iconSizePx * 0.12f;
        this.mEaseOutInterpolator = Interpolators.DEACCEL_2_5;
        int i = 0;
        while (true) {
            Rect[] rectArr2 = this.mDragOutlines;
            if (i >= rectArr2.length) {
                break;
            }
            rectArr2[i] = new Rect(-1, -1, -1, -1);
            i++;
        }
        this.mDragOutlinePaint.setColor(Themes.getAttrColor(context, R.attr.workspaceTextColor));
        int integer = resources.getInteger(R.integer.config_dragOutlineFadeTime);
        float integer2 = resources.getInteger(R.integer.config_dragOutlineMaxAlpha);
        Arrays.fill(this.mDragOutlineAlphas, 0.0f);
        for (final int i2 = 0; i2 < this.mDragOutlineAnims.length; i2++) {
            final InterruptibleInOutAnimator interruptibleInOutAnimator = new InterruptibleInOutAnimator(integer, 0.0f, integer2);
            interruptibleInOutAnimator.getAnimator().setInterpolator(this.mEaseOutInterpolator);
            interruptibleInOutAnimator.getAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.CellLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    if (((Bitmap) interruptibleInOutAnimator.getTag()) == null) {
                        animation.cancel();
                        return;
                    }
                    CellLayout.this.mDragOutlineAlphas[i2] = ((Float) animation.getAnimatedValue()).floatValue();
                    CellLayout cellLayout = CellLayout.this;
                    cellLayout.invalidate(cellLayout.mDragOutlines[i2]);
                }
            });
            interruptibleInOutAnimator.getAnimator().addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    if (((Float) ((ValueAnimator) animation).getAnimatedValue()).floatValue() == 0.0f) {
                        interruptibleInOutAnimator.setTag(null);
                    }
                }
            });
            this.mDragOutlineAnims[i2] = interruptibleInOutAnimator;
        }
        this.mLocationShadow1 = BitmapFactory.decodeResource(getContext().getResources(), R.mipmap.drop_location_shadow1);
        this.mLocationShadow2 = BitmapFactory.decodeResource(getContext().getResources(), R.mipmap.drop_location_shadow2);
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = new ShortcutAndWidgetContainer(context, this.mContainerType);
        this.mShortcutsAndWidgets = shortcutAndWidgetContainer;
        shortcutAndWidgetContainer.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mOccupied);
        OverScrollHLayout overScrollHLayout = new OverScrollHLayout(context);
        DraggableRecyclerView draggableRecyclerView = new DraggableRecyclerView(context, this.mContainerType);
        this.mDraggableRecyclerView = draggableRecyclerView;
        this.mCellWidth = DeviceProfile.calculateCellWidth(0, 0);
        int iCalculateCellHeight = DeviceProfile.calculateCellHeight(0, 0);
        this.mCellHeight = iCalculateCellHeight;
        draggableRecyclerView.setCellDimensions(this.mCellWidth, iCalculateCellHeight, this.mOccupied);
        draggableRecyclerView.setDataUpdater(this.mDataUpdater);
        draggableRecyclerView.setOverScrollMode(2);
        overScrollHLayout.addView(draggableRecyclerView);
        addView(overScrollHLayout);
        setClipChildren(false);
        setClipToPadding(false);
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public void setDragAndDropAccessibilityDelegate(DragAndDropAccessibilityDelegate delegate) {
        setOnClickListener(delegate);
        ViewCompat.setAccessibilityDelegate(this, delegate);
        this.mTouchHelper = delegate;
        int i = delegate != null ? 1 : 2;
        setImportantForAccessibility(i);
        getShortcutsAndWidgets().setImportantForAccessibility(i);
        if (getParent() != null) {
            getParent().notifySubtreeAccessibilityStateChanged(this, this, 1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent event) {
        DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate = this.mTouchHelper;
        if (dragAndDropAccessibilityDelegate == null || !dragAndDropAccessibilityDelegate.dispatchHoverEvent(event)) {
            return super.dispatchHoverEvent(event);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0099  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        View.OnTouchListener onTouchListener;
        if (!Launcher.getLauncher(getContext()).isInState(LauncherState.WIDGET_SPRING_LOADED)) {
            int action = ev.getAction() & 255;
            if (action == 0) {
                this.mLastMotionX = (int) ev.getX();
                this.mLastMotionY = (int) ev.getY();
                this.mActivePointerId = ev.getPointerId(0);
                this.mFirstReachCancelLongPressThreshold = false;
                this.mIsMovingDown = false;
            } else if (action == 1) {
                this.mIsMovingDown = false;
            } else if (action == 2) {
                int i = this.mActivePointerId;
                if (i != -1) {
                    int iFindPointerIndex = ev.findPointerIndex(i);
                    if (iFindPointerIndex == -1) {
                        Log.e(TAG, "Invalid pointerId=" + i + " in onInterceptTouchEvent");
                    } else {
                        int x = (int) ev.getX(iFindPointerIndex);
                        int y = (int) ev.getY(iFindPointerIndex);
                        int iAbs = Math.abs(x - this.mLastMotionX);
                        int iAbs2 = Math.abs(y - this.mLastMotionY);
                        if (!this.mFirstReachCancelLongPressThreshold) {
                            int i2 = (iAbs * iAbs) + (iAbs2 * iAbs2);
                            int i3 = this.mTouchSlop;
                            if (i2 > i3 * i3) {
                                MLog.d(TAG, "onInterceptTouchEvent: long press cancelled by ItemTouchHelper");
                                this.mFirstReachCancelLongPressThreshold = true;
                            }
                        }
                        int i4 = this.mTouchSlop;
                        if (iAbs2 > i4 * 3 && y > this.mLastMotionY && iAbs2 > iAbs) {
                            notifyMoveDown(iAbs, iAbs2, i4);
                            if (getParent() != null) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            this.mIsMovingDown = true;
                        }
                    }
                }
            } else if (action == 3) {
                this.mIsMovingDown = false;
            }
        }
        if (this.mTouchHelper == null && ((onTouchListener = this.mInterceptTouchListener) == null || !onTouchListener.onTouch(this, ev))) {
            return this.mIsMovingDown;
        }
        TestLogging.noteLauncherTouch(this, "onInterceptTouchEvent", ev, "intercepted. hash=" + hashCode() + " touchHelper=" + this.mTouchHelper + " listener=" + this.mInterceptTouchListener);
        return true;
    }

    public void enableHardwareLayer(boolean hasLayer) {
        this.mDraggableRecyclerView.setLayerType(hasLayer ? 2 : 0, sPaint);
    }

    public boolean isHardwareLayerEnabled() {
        return this.mDraggableRecyclerView.getLayerType() == 2;
    }

    public void setCellDimensions(int width, int height) {
        MLog.d(TAG, "setCellDimensions() called with: width = [" + width + "], height = [" + height + "]");
        this.mCellWidth = width;
        this.mFixedCellWidth = width;
        this.mCellHeight = height;
        this.mFixedCellHeight = height;
        this.mShortcutsAndWidgets.setCellDimensions(width, height, this.mOccupied);
    }

    public void setGridSize(int x, int y) {
        MLog.d(TAG, "setGridSize() called with: x = [" + x + "], y = [" + y + "]");
        GridOccupancy gridOccupancy = new GridOccupancy();
        this.mOccupied = gridOccupancy;
        gridOccupancy.setXY(x, y);
        GridOccupancy gridOccupancy2 = new GridOccupancy();
        this.mTmpOccupied = gridOccupancy2;
        gridOccupancy2.setXY(x, y);
        this.mTempRectStack.clear();
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mOccupied);
        requestLayout();
    }

    public void setInvertIfRtl(boolean invert) {
        this.mShortcutsAndWidgets.setInvertIfRtl(invert);
        this.mDraggableRecyclerView.setInvertIfRtl(invert);
    }

    void setIsDragOverlapping(boolean isDragOverlapping) {
        MLog.d(TAG, "setIsDragOverlapping() called with: isDragOverlapping = [" + isDragOverlapping + "]");
        if (this.mIsDragOverlapping != isDragOverlapping) {
            this.mIsDragOverlapping = isDragOverlapping;
            updateBackground();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        ParcelableSparseArray jailedArray = getJailedArray(container);
        super.dispatchSaveInstanceState(jailedArray);
        container.put(R.id.cell_layout_jail_id, jailedArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        super.dispatchRestoreInstanceState(getJailedArray(container));
    }

    private ParcelableSparseArray getJailedArray(SparseArray<Parcelable> container) {
        Parcelable parcelable = container.get(R.id.cell_layout_jail_id);
        return parcelable instanceof ParcelableSparseArray ? (ParcelableSparseArray) parcelable : new ParcelableSparseArray();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mBackground.getAlpha() > 0) {
            this.mBackground.draw(canvas);
        }
        Paint paint = this.mDragOutlinePaint;
        for (int i = 0; i < this.mDragOutlines.length; i++) {
            float f = this.mDragOutlineAlphas[i];
            if (f > 0.0f) {
                Bitmap bitmap = (Bitmap) this.mDragOutlineAnims[i].getTag();
                paint.setAlpha((int) (f + 0.5f));
                canvas.drawBitmap(bitmap, (Rect) null, this.mDragOutlines[i], paint);
            }
        }
        for (int i2 = 0; i2 < this.mDelegatedCellDrawings.size(); i2++) {
            DelegatedCellDrawing delegatedCellDrawing = this.mDelegatedCellDrawings.get(i2);
            cellToPoint(delegatedCellDrawing.mDelegateCellX, delegatedCellDrawing.mDelegateCellY, this.mTempLocation);
            canvas.save();
            int[] iArr = this.mTempLocation;
            canvas.translate(iArr[0], iArr[1]);
            delegatedCellDrawing.drawUnderItem(canvas);
            canvas.restore();
        }
        if (this.mFolderLeaveBehind.mDelegateCellX < 0 || this.mFolderLeaveBehind.mDelegateCellY < 0) {
            return;
        }
        cellToPoint(this.mFolderLeaveBehind.mDelegateCellX, this.mFolderLeaveBehind.mDelegateCellY, this.mTempLocation);
        canvas.save();
        int[] iArr2 = this.mTempLocation;
        canvas.translate(iArr2[0], iArr2[1]);
        this.mFolderLeaveBehind.drawLeaveBehind(canvas);
        canvas.restore();
    }

    protected void visualizeGrid(Canvas canvas) {
        this.mVisualizeGridRect.set(0, 0, this.mCellWidth, this.mCellHeight);
        this.mVisualizeGridPaint.setStrokeWidth(4.0f);
        for (int i = 0; i < this.mOccupied.mCurrentCountX; i++) {
            for (int i2 = 0; i2 < this.mOccupied.mCountY; i2++) {
                canvas.save();
                canvas.translate(getPaddingLeft() + (this.mCellWidth * i), getPaddingTop() + (this.mCellHeight * i2));
                this.mVisualizeGridPaint.setStyle(Paint.Style.FILL);
                this.mVisualizeGridPaint.setColor(Color.argb(80, 255, 100, 100));
                canvas.drawRect(this.mVisualizeGridRect, this.mVisualizeGridPaint);
                this.mVisualizeGridPaint.setStyle(Paint.Style.STROKE);
                this.mVisualizeGridPaint.setColor(Color.argb(255, 255, 100, 100));
                canvas.drawRect(this.mVisualizeGridRect, this.mVisualizeGridPaint);
                canvas.restore();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        for (int i = 0; i < this.mDelegatedCellDrawings.size(); i++) {
            DelegatedCellDrawing delegatedCellDrawing = this.mDelegatedCellDrawings.get(i);
            cellToPoint(delegatedCellDrawing.mDelegateCellX, delegatedCellDrawing.mDelegateCellY, this.mTempLocation);
            canvas.save();
            int[] iArr = this.mTempLocation;
            canvas.translate(iArr[0], iArr[1]);
            delegatedCellDrawing.drawOverItem(canvas);
            canvas.restore();
        }
    }

    public void addDelegatedCellDrawing(DelegatedCellDrawing bg) {
        this.mDelegatedCellDrawings.add(bg);
    }

    public void removeDelegatedCellDrawing(DelegatedCellDrawing bg) {
        this.mDelegatedCellDrawings.remove(bg);
    }

    public void setFolderLeaveBehindCell(int x, int y) {
        MLog.d(TAG, "setFolderLeaveBehindCell: x = " + x + ", y = " + y);
        View childAt = getChildAt(x, y);
        this.mFolderLeaveBehind.setup(getContext(), this.mActivity, null, childAt.getMeasuredWidth(), childAt.getPaddingTop());
        this.mFolderLeaveBehind.mDelegateCellX = x;
        this.mFolderLeaveBehind.mDelegateCellY = y;
        invalidate();
    }

    public void clearFolderLeaveBehind() {
        MLog.d(TAG, "clearFolderLeaveBehind called");
        this.mFolderLeaveBehind.mDelegateCellX = -1;
        this.mFolderLeaveBehind.mDelegateCellY = -1;
        invalidate();
    }

    public void restoreInstanceState(SparseArray<Parcelable> states) {
        dispatchRestoreInstanceState(states);
        updateBackground();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        MLog.d(TAG, "cancelLongPress called.");
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    public int getCountX() {
        return this.mOccupied.mCurrentCountX;
    }

    public int getCountY() {
        return this.mOccupied.mCountY;
    }

    public boolean addViewToCellLayout(View child, int index, int childId, LayoutParams params, boolean markCells) {
        MLog.d(TAG, "addViewToCellLayout: child = " + child + ", index = " + index + ", childId = " + childId + ", params = " + params + ", markCells = " + markCells);
        if (child instanceof BubbleTextView) {
        }
        child.setScaleX(1.0f);
        child.setScaleY(1.0f);
        if (params.cellX < 0 || params.cellY < 0 || params.cellY > this.mOccupied.mCountY - 1) {
            return false;
        }
        if (params.cellHSpan < 0) {
            params.cellHSpan = this.mOccupied.mCurrentCountX;
        }
        if (params.cellVSpan < 0) {
            params.cellVSpan = this.mOccupied.mCountY;
        }
        child.setId(childId);
        this.mShortcutsAndWidgets.addView(child, index, params);
        int iAddItemView = this.mDraggableRecyclerView.addItemView(child, index, params);
        updateBackground();
        if (!Launcher.cast(this.mActivity).isWorkspaceLoading()) {
            tryScrollToChild(iAddItemView);
        }
        if (markCells) {
            markCellsAsOccupiedForView(child);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        MLog.d(TAG, "removeAllViews called.");
        this.mOccupied.clear();
        this.mShortcutsAndWidgets.removeAllViews();
        this.mDraggableRecyclerView.removeAllItemViews();
        updateBackground();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        MLog.d(TAG, "removeAllViewsInLayout called.");
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            this.mOccupied.clear();
            this.mShortcutsAndWidgets.removeAllViewsInLayout();
            this.mDraggableRecyclerView.removeAllItemViewsInLayout();
            updateBackground();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        MLog.d(TAG, "removeView: view = " + view);
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeView(view);
        this.mDraggableRecyclerView.removeItemView(view);
        updateBackground();
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int index) {
        MLog.d(TAG, "removeViewAt: index = " + index);
        markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(index));
        this.mShortcutsAndWidgets.removeViewAt(index);
        this.mDraggableRecyclerView.removeItemViewAt(index);
        updateBackground();
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        MLog.d(TAG, "removeViewInLayout: view = " + view);
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeViewInLayout(view);
        this.mDraggableRecyclerView.removeItemViewInLayout(view);
        updateBackground();
    }

    @Override // android.view.ViewGroup
    public void removeViews(int start, int count) {
        MLog.d(TAG, "removeViews: start = " + start + ", count = " + count);
        for (int i = start; i < start + count; i++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        }
        this.mShortcutsAndWidgets.removeViews(start, count);
        this.mDraggableRecyclerView.removeItemViews(start, count);
        updateBackground();
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int start, int count) {
        MLog.d(TAG, "removeViewsInLayout: start = " + start + ", count = " + count);
        for (int i = start; i < start + count; i++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        }
        this.mShortcutsAndWidgets.removeViewsInLayout(start, count);
        this.mDraggableRecyclerView.removeItemViewsInLayout(start, count);
        updateBackground();
    }

    public void pointToCellExact(int x, int y, int[] result) {
        MLog.d(TAG, "pointToCellExact: x = " + x + ", y = " + y + ", result = " + result);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        result[0] = (x - paddingLeft) / this.mCellWidth;
        result[1] = (y - paddingTop) / this.mCellHeight;
        int i = this.mOccupied.mCurrentCountX;
        int i2 = this.mOccupied.mCountY;
        if (result[0] < 0) {
            result[0] = 0;
        }
        if (result[0] >= i) {
            result[0] = i - 1;
        }
        if (result[1] < 0) {
            result[1] = 0;
        }
        if (result[1] >= i2) {
            result[1] = i2 - 1;
        }
    }

    void pointToCellRounded(int x, int y, int[] result) {
        pointToCellExact(x + (this.mCellWidth / 2), y + (this.mCellHeight / 2), result);
    }

    void cellToPoint(int cellX, int cellY, int[] result) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        result[0] = paddingLeft + (cellX * this.mCellWidth);
        result[1] = paddingTop + (cellY * this.mCellHeight);
    }

    void cellToCenterPoint(int cellX, int cellY, int[] result) {
        regionToCenterPoint(cellX, cellY, 1, 1, result);
    }

    void regionToCenterPoint(int cellX, int cellY, int spanX, int spanY, int[] result) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i = this.mCellWidth;
        result[0] = paddingLeft + (cellX * i) + ((spanX * i) / 2);
        int i2 = this.mCellHeight;
        result[1] = paddingTop + (cellY * i2) + ((spanY * i2) / 2);
    }

    void regionToRect(int cellX, int cellY, int spanX, int spanY, Rect result) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i = this.mCellWidth;
        int i2 = paddingLeft + (cellX * i);
        int i3 = this.mCellHeight;
        int i4 = paddingTop + (cellY * i3);
        result.set(i2, i4, (spanX * i) + i2, (spanY * i3) + i4);
    }

    public float getDistanceFromCell(float x, float y, int[] cell) {
        cellToCenterPoint(cell[0], cell[1], this.mTmpPoint);
        int[] iArr = this.mTmpPoint;
        return (float) Math.hypot(x - iArr[0], y - iArr[1]);
    }

    public void setFixedSize(int width, int height) {
        MLog.d(TAG, "setFixedSize: width = " + width + ", height = " + height);
        this.mFixedWidth = width;
        this.mFixedHeight = height;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        int paddingLeft = size - (getPaddingLeft() + getPaddingRight());
        int paddingTop = size2 - (getPaddingTop() + getPaddingBottom());
        if (this.mFixedCellWidth < 0 || this.mFixedCellHeight < 0) {
            int iCalculateCellWidth = DeviceProfile.calculateCellWidth(paddingLeft, this.mOccupied.mCurrentCountX);
            int iCalculateCellHeight = DeviceProfile.calculateCellHeight(paddingTop, this.mOccupied.mCountY);
            if (iCalculateCellWidth != this.mCellWidth || iCalculateCellHeight != this.mCellHeight) {
                this.mCellWidth = iCalculateCellWidth;
                this.mCellHeight = iCalculateCellHeight;
                this.mShortcutsAndWidgets.setCellDimensions(iCalculateCellWidth, iCalculateCellHeight, this.mOccupied);
            }
        }
        if ((this.mFixedWidth <= 0 || this.mFixedHeight <= 0) && (mode == 0 || mode2 == 0)) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int paddingLeft = getPaddingLeft() + ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingRight = ((r - l) - getPaddingRight()) - ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingTop = getPaddingTop();
        int paddingBottom = (b - t) - getPaddingBottom();
        this.mBackground.getPadding(this.mTempRect);
        this.mBackground.setBounds((paddingLeft - this.mTempRect.left) - getPaddingLeft(), (paddingTop - this.mTempRect.top) - getPaddingTop(), this.mTempRect.right + paddingRight + getPaddingRight(), this.mTempRect.bottom + paddingBottom + getPaddingBottom());
        super.onLayout(changed, paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable who) {
        return super.verifyDrawable(who) || who == this.mBackground;
    }

    public View getChildAt(int x, int y) {
        return this.mShortcutsAndWidgets.getChildAt(x, y);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean animateChildToPosition(final View child, int cellX, int cellY, int duration, int delay, boolean permanent, boolean adjustOccupied) {
        MLog.d(TAG, "animateChildToPosition: child = " + child + ", cellX = " + cellX + ", cellY = " + cellY + ", duration = " + duration + ", delay = " + delay + ", permanent = " + permanent + ", adjustOccupied = " + adjustOccupied);
        ShortcutAndWidgetContainer shortcutsAndWidgets = getShortcutsAndWidgets();
        if (shortcutsAndWidgets.indexOfChild(child) == -1 || !(child instanceof Reorderable)) {
            return false;
        }
        final LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        ItemInfo itemInfo = (ItemInfo) child.getTag();
        final Reorderable reorderable = (Reorderable) child;
        if (this.mReorderAnimators.containsKey(layoutParams)) {
            this.mReorderAnimators.get(layoutParams).cancel();
            this.mReorderAnimators.remove(layoutParams);
        }
        if (adjustOccupied) {
            GridOccupancy gridOccupancy = permanent ? this.mOccupied : this.mTmpOccupied;
            gridOccupancy.markCells(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, false);
            gridOccupancy.markCells(cellX, cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, true);
        }
        int i = layoutParams.x;
        int i2 = layoutParams.y;
        layoutParams.isLockedToGrid = true;
        if (permanent) {
            itemInfo.cellX = cellX;
            layoutParams.cellX = cellX;
            itemInfo.cellY = cellY;
            layoutParams.cellY = cellY;
        } else {
            layoutParams.tmpCellX = cellX;
            layoutParams.tmpCellY = cellY;
        }
        shortcutsAndWidgets.setupLp(child);
        int i3 = layoutParams.x;
        int i4 = layoutParams.y;
        layoutParams.x = i;
        layoutParams.y = i2;
        layoutParams.isLockedToGrid = false;
        reorderable.getReorderPreviewOffset(this.mTmpPointF);
        final float f = this.mTmpPointF.x;
        final float f2 = this.mTmpPointF.y;
        final float f3 = i3 - i;
        final float f4 = i4 - i2;
        if (f3 == 0.0f && f4 == 0.0f && f == 0.0f && f2 == 0.0f) {
            layoutParams.isLockedToGrid = true;
            return true;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(duration);
        this.mReorderAnimators.put(layoutParams, valueAnimatorOfFloat);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.CellLayout.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float fFloatValue = ((Float) animation.getAnimatedValue()).floatValue();
                float f5 = 1.0f - fFloatValue;
                reorderable.setReorderPreviewOffset((f * f5) + (f3 * fFloatValue), (f5 * f2) + (fFloatValue * f4));
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.4
            boolean cancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (!this.cancelled) {
                    layoutParams.isLockedToGrid = true;
                    reorderable.setReorderPreviewOffset(0.0f, 0.0f);
                    child.requestLayout();
                }
                if (CellLayout.this.mReorderAnimators.containsKey(layoutParams)) {
                    CellLayout.this.mReorderAnimators.remove(layoutParams);
                }
            }
        });
        valueAnimatorOfFloat.setStartDelay(delay);
        valueAnimatorOfFloat.start();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00c0  */
    void visualizeDropLocation(DraggableView v, DragPreviewProvider outlineProvider, int cellX, int cellY, int spanX, int spanY, boolean resize, DropTarget.DragObject dragObject) {
        int iMax;
        int[] iArr = this.mDragCell;
        int i = iArr[0];
        int i2 = iArr[1];
        if (outlineProvider == null || outlineProvider.generatedDragOutline == null) {
            return;
        }
        Bitmap bitmap = spanX == 1 ? this.mLocationShadow1 : this.mLocationShadow2;
        if (cellX != i || cellY != i2) {
            int[] iArr2 = this.mDragCell;
            iArr2[0] = cellX;
            iArr2[1] = cellY;
            int i3 = this.mDragOutlineCurrent;
            this.mDragOutlineAnims[i3].animateOut();
            Rect[] rectArr = this.mDragOutlines;
            int length = (i3 + 1) % rectArr.length;
            this.mDragOutlineCurrent = length;
            Rect rect = rectArr[length];
            cellToRect(cellX, cellY, spanX, spanY, rect);
            int i4 = rect.left;
            int i5 = rect.top;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (resize) {
                width = rect.width();
                height = rect.height();
            }
            int width2 = i4 + (((this.mCellWidth * spanX) - bitmap.getWidth()) / 2);
            if (v != null && v.getViewType() == 1) {
                iMax = ((this.mCellHeight * spanY) - bitmap.getHeight()) / 2;
            } else if (v != null && v.getViewType() == 0) {
                iMax = (int) Math.max(0.0f, (this.mCellHeight - getShortcutsAndWidgets().getCellContentHeight()) / 2.0f);
            } else {
                rect.set(width2, i5, width + width2, height + i5);
                Utilities.scaleRectAboutCenter(rect, 1.0f);
                this.mDragOutlineAnims[this.mDragOutlineCurrent].setTag(bitmap);
                this.mDragOutlineAnims[this.mDragOutlineCurrent].animateIn();
                if (dragObject.stateAnnouncer != null) {
                    dragObject.stateAnnouncer.announce(getItemMoveDescription(cellX, cellY));
                }
            }
            i5 += iMax;
            rect.set(width2, i5, width + width2, height + i5);
            Utilities.scaleRectAboutCenter(rect, 1.0f);
            this.mDragOutlineAnims[this.mDragOutlineCurrent].setTag(bitmap);
            this.mDragOutlineAnims[this.mDragOutlineCurrent].animateIn();
            if (dragObject.stateAnnouncer != null) {
                dragObject.stateAnnouncer.announce(getItemMoveDescription(cellX, cellY));
            }
        }
        DraggableRecyclerView draggableRecyclerView = this.mDraggableRecyclerView;
        if (draggableRecyclerView != null) {
            draggableRecyclerView.visualizeDropLocation(cellX, cellY, spanX, spanY, dragObject);
        }
    }

    public String getItemMoveDescription(int cellX, int cellY) {
        if (this.mContainerType == 1) {
            return getContext().getString(R.string.move_to_hotseat_position, Integer.valueOf(Math.max(cellX, cellY) + 1));
        }
        return getContext().getString(R.string.move_to_empty_cell, Integer.valueOf(cellY + 1), Integer.valueOf(cellX + 1));
    }

    public void clearDragOutlines() {
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
    }

    int[] findNearestVacantArea(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, int[] result, int[] resultSpan) {
        return findNearestArea(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, true, result, resultSpan);
    }

    private void lazyInitTempRectStack() {
        if (this.mTempRectStack.isEmpty()) {
            for (int i = 0; i < this.mOccupied.mCountY * 256; i++) {
                this.mTempRectStack.push(new Rect());
            }
        }
    }

    private void recycleTempRects(Stack<Rect> used) {
        while (!used.isEmpty()) {
            this.mTempRectStack.push(used.pop());
        }
    }

    private int[] findNearestArea(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, boolean ignoreOccupied, int[] result, int[] resultSpan) {
        int i;
        int i2;
        int[] iArr;
        Rect rect;
        boolean z;
        Rect rect2;
        int i3;
        int i4;
        Rect rect3;
        int i5 = minSpanX;
        int i6 = minSpanY;
        int i7 = spanX;
        int i8 = spanY;
        lazyInitTempRectStack();
        int i9 = (int) (pixelX - ((this.mCellWidth * (i7 - 1)) / 2.0f));
        int i10 = (int) (pixelY - ((this.mCellHeight * (i8 - 1)) / 2.0f));
        int[] iArr2 = result != null ? result : new int[2];
        Rect rect4 = new Rect(-1, -1, -1, -1);
        Stack<Rect> stack = new Stack<>();
        int i11 = this.mOccupied.mCurrentCountX;
        int i12 = this.mOccupied.mCountY;
        if (i5 <= 0 || i6 <= 0 || i7 <= 0 || i8 <= 0 || i7 < i5 || i8 < i6) {
            return iArr2;
        }
        int i13 = 0;
        double d = Double.MAX_VALUE;
        while (i13 < i12 - (i6 - 1)) {
            int i14 = 0;
            while (i14 < i11 - (i5 - 1)) {
                if (ignoreOccupied) {
                    int i15 = 0;
                    while (true) {
                        if (i15 < i5) {
                            int i16 = 0;
                            while (true) {
                                if (i16 < i6) {
                                    iArr = iArr2;
                                    if (this.mOccupied.cells[i14 + i15][i13 + i16]) {
                                        i = i9;
                                        i2 = i10;
                                        rect2 = rect4;
                                    } else {
                                        i16++;
                                        iArr2 = iArr;
                                    }
                                } else {
                                    i15++;
                                }
                            }
                        } else {
                            iArr = iArr2;
                            boolean z2 = i5 >= i7;
                            boolean z3 = i6 >= i8;
                            boolean z4 = z2;
                            boolean z5 = true;
                            while (true) {
                                if (z4 && z3) {
                                    break;
                                }
                                if (!z5 || z4) {
                                    i3 = i9;
                                    i4 = i10;
                                    rect3 = rect4;
                                    if (!z3) {
                                        for (int i17 = 0; i17 < i5; i17++) {
                                            int i18 = i13 + i6;
                                            if (i18 > i12 - 1 || this.mOccupied.cells[i14 + i17][i18]) {
                                                z3 = true;
                                            }
                                        }
                                        if (!z3) {
                                            i6++;
                                        }
                                    }
                                } else {
                                    rect3 = rect4;
                                    int i19 = 0;
                                    while (i19 < i6) {
                                        int i20 = i10;
                                        int i21 = i14 + i5;
                                        int i22 = i9;
                                        if (i21 > i11 - 1 || this.mOccupied.cells[i21][i13 + i19]) {
                                            z4 = true;
                                        }
                                        i19++;
                                        i10 = i20;
                                        i9 = i22;
                                    }
                                    i3 = i9;
                                    i4 = i10;
                                    if (!z4) {
                                        i5++;
                                    }
                                }
                                z4 |= i5 >= i7;
                                z3 |= i6 >= i8;
                                z5 = !z5;
                                rect4 = rect3;
                                i10 = i4;
                                i9 = i3;
                            }
                            i = i9;
                            i2 = i10;
                            rect = rect4;
                        }
                        i14++;
                        i5 = minSpanX;
                        i6 = minSpanY;
                        i7 = spanX;
                        i8 = spanY;
                        rect4 = rect2;
                        iArr2 = iArr;
                        i10 = i2;
                        i9 = i;
                    }
                } else {
                    i = i9;
                    i2 = i10;
                    iArr = iArr2;
                    rect = rect4;
                    i5 = -1;
                    i6 = -1;
                }
                int[] iArr3 = this.mTmpPoint;
                cellToCenterPoint(i14, i13, iArr3);
                Rect rectPop = this.mTempRectStack.pop();
                rectPop.set(i14, i13, i14 + i5, i13 + i6);
                Iterator<Rect> it = stack.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (it.next().contains(rectPop)) {
                        z = true;
                        break;
                    }
                }
                stack.push(rectPop);
                double dHypot = Math.hypot(iArr3[0] - i, iArr3[1] - i2);
                if (dHypot > d || z) {
                    rect2 = rect;
                    if (rectPop.contains(rect2)) {
                    }
                    i14++;
                    i5 = minSpanX;
                    i6 = minSpanY;
                    i7 = spanX;
                    i8 = spanY;
                    rect4 = rect2;
                    iArr2 = iArr;
                    i10 = i2;
                    i9 = i;
                } else {
                    rect2 = rect;
                }
                iArr[0] = i14;
                iArr[1] = i13;
                if (resultSpan != null) {
                    resultSpan[0] = i5;
                    resultSpan[1] = i6;
                }
                rect2.set(rectPop);
                d = dHypot;
                i14++;
                i5 = minSpanX;
                i6 = minSpanY;
                i7 = spanX;
                i8 = spanY;
                rect4 = rect2;
                iArr2 = iArr;
                i10 = i2;
                i9 = i;
            }
            i13++;
            i5 = minSpanX;
            i6 = minSpanY;
            i7 = spanX;
            i8 = spanY;
            i9 = i9;
        }
        int[] iArr4 = iArr2;
        if (d == Double.MAX_VALUE) {
            iArr4[0] = -1;
            iArr4[1] = -1;
        }
        recycleTempRects(stack);
        return iArr4;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0079  */
    private int[] findNearestArea(int cellX, int cellY, int spanX, int spanY, int[] direction, boolean[][] occupied, boolean[][] blockOccupied, int[] result) {
        int[] iArr = result != null ? result : new int[2];
        int i = this.mOccupied.mCurrentCountX;
        int i2 = this.mOccupied.mCountY;
        int i3 = Integer.MIN_VALUE;
        float f = Float.MAX_VALUE;
        for (int i4 = 0; i4 < i2 - (spanY - 1); i4++) {
            for (int i5 = 0; i5 < i - (spanX - 1); i5++) {
                int i6 = 0;
                while (true) {
                    if (i6 >= spanX) {
                        int i7 = i5 - cellX;
                        int i8 = i4 - cellY;
                        int i9 = i3;
                        float fHypot = (float) Math.hypot(i7, i8);
                        int[] iArr2 = this.mTmpPoint;
                        computeDirectionVector(i7, i8, iArr2);
                        int i10 = (direction[0] * iArr2[0]) + (direction[1] * iArr2[1]);
                        if (Float.compare(fHypot, f) >= 0) {
                            i3 = i9;
                            if (Float.compare(fHypot, f) == 0 && i10 > i3) {
                                iArr[0] = i5;
                                iArr[1] = i4;
                                f = fHypot;
                                i3 = i10;
                                break;
                            }
                            break;
                        }
                        iArr[0] = i5;
                        iArr[1] = i4;
                        f = fHypot;
                        i3 = i10;
                        break;
                        break;
                    }
                    for (int i11 = 0; i11 < spanY; i11++) {
                        if (occupied[i5 + i6][i4 + i11] && (blockOccupied == null || blockOccupied[i6][i11])) {
                            break;
                        }
                    }
                    i6++;
                }
            }
        }
        if (f == Float.MAX_VALUE) {
            iArr[0] = -1;
            iArr[1] = -1;
        }
        return iArr;
    }

    private boolean addViewToTempLocation(View v, Rect rectOccupiedByPotentialDrop, int[] direction, ItemConfiguration currentState) {
        CellAndSpan cellAndSpan = currentState.map.get(v);
        boolean z = false;
        this.mTmpOccupied.markCells(cellAndSpan, false);
        this.mTmpOccupied.markCells(rectOccupiedByPotentialDrop, true);
        findNearestArea(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY, direction, this.mTmpOccupied.cells, null, this.mTempLocation);
        int[] iArr = this.mTempLocation;
        int i = iArr[0];
        if (i >= 0 && iArr[1] >= 0) {
            cellAndSpan.cellX = i;
            cellAndSpan.cellY = this.mTempLocation[1];
            z = true;
        }
        this.mTmpOccupied.markCells(cellAndSpan, true);
        return z;
    }

    private class ViewCluster {
        static final int BOTTOM = 8;
        static final int LEFT = 1;
        static final int RIGHT = 4;
        static final int TOP = 2;
        final int[] bottomEdge;
        final Rect boundingRect = new Rect();
        boolean boundingRectDirty;
        final PositionComparator comparator;
        final ItemConfiguration config;
        int dirtyEdges;
        final int[] leftEdge;
        final int[] rightEdge;
        final int[] topEdge;
        final ArrayList<View> views;

        public ViewCluster(ArrayList<View> views, ItemConfiguration config) {
            this.leftEdge = new int[CellLayout.this.mOccupied.mCountY];
            this.rightEdge = new int[CellLayout.this.mOccupied.mCountY];
            GridOccupancy unused = CellLayout.this.mOccupied;
            this.topEdge = new int[256];
            GridOccupancy unused2 = CellLayout.this.mOccupied;
            this.bottomEdge = new int[256];
            this.comparator = new PositionComparator();
            this.views = (ArrayList) views.clone();
            this.config = config;
            resetEdges();
        }

        void resetEdges() {
            for (int i = 0; i < CellLayout.this.mOccupied.mCurrentCountX; i++) {
                this.topEdge[i] = -1;
                this.bottomEdge[i] = -1;
            }
            for (int i2 = 0; i2 < CellLayout.this.mOccupied.mCountY; i2++) {
                this.leftEdge[i2] = -1;
                this.rightEdge[i2] = -1;
            }
            this.dirtyEdges = 15;
            this.boundingRectDirty = true;
        }

        void computeEdge(int which) {
            int size = this.views.size();
            for (int i = 0; i < size; i++) {
                CellAndSpan cellAndSpan = this.config.map.get(this.views.get(i));
                if (which == 1) {
                    int i2 = cellAndSpan.cellX;
                    for (int i3 = cellAndSpan.cellY; i3 < cellAndSpan.cellY + cellAndSpan.spanY; i3++) {
                        int[] iArr = this.leftEdge;
                        int i4 = iArr[i3];
                        if (i2 < i4 || i4 < 0) {
                            iArr[i3] = i2;
                        }
                    }
                } else if (which == 2) {
                    int i5 = cellAndSpan.cellY;
                    for (int i6 = cellAndSpan.cellX; i6 < cellAndSpan.cellX + cellAndSpan.spanX; i6++) {
                        int[] iArr2 = this.topEdge;
                        int i7 = iArr2[i6];
                        if (i5 < i7 || i7 < 0) {
                            iArr2[i6] = i5;
                        }
                    }
                } else if (which == 4) {
                    int i8 = cellAndSpan.cellX + cellAndSpan.spanX;
                    for (int i9 = cellAndSpan.cellY; i9 < cellAndSpan.cellY + cellAndSpan.spanY; i9++) {
                        int[] iArr3 = this.rightEdge;
                        if (i8 > iArr3[i9]) {
                            iArr3[i9] = i8;
                        }
                    }
                } else if (which == 8) {
                    int i10 = cellAndSpan.cellY + cellAndSpan.spanY;
                    for (int i11 = cellAndSpan.cellX; i11 < cellAndSpan.cellX + cellAndSpan.spanX; i11++) {
                        int[] iArr4 = this.bottomEdge;
                        if (i10 > iArr4[i11]) {
                            iArr4[i11] = i10;
                        }
                    }
                }
            }
        }

        boolean isViewTouchingEdge(View v, int whichEdge) {
            CellAndSpan cellAndSpan = this.config.map.get(v);
            if ((this.dirtyEdges & whichEdge) == whichEdge) {
                computeEdge(whichEdge);
                this.dirtyEdges &= ~whichEdge;
            }
            if (whichEdge == 1) {
                for (int i = cellAndSpan.cellY; i < cellAndSpan.cellY + cellAndSpan.spanY; i++) {
                    if (this.leftEdge[i] == cellAndSpan.cellX + cellAndSpan.spanX) {
                        return true;
                    }
                }
                return false;
            }
            if (whichEdge == 2) {
                for (int i2 = cellAndSpan.cellX; i2 < cellAndSpan.cellX + cellAndSpan.spanX; i2++) {
                    if (this.topEdge[i2] == cellAndSpan.cellY + cellAndSpan.spanY) {
                        return true;
                    }
                }
                return false;
            }
            if (whichEdge == 4) {
                for (int i3 = cellAndSpan.cellY; i3 < cellAndSpan.cellY + cellAndSpan.spanY; i3++) {
                    if (this.rightEdge[i3] == cellAndSpan.cellX) {
                        return true;
                    }
                }
                return false;
            }
            if (whichEdge != 8) {
                return false;
            }
            for (int i4 = cellAndSpan.cellX; i4 < cellAndSpan.cellX + cellAndSpan.spanX; i4++) {
                if (this.bottomEdge[i4] == cellAndSpan.cellY) {
                    return true;
                }
            }
            return false;
        }

        void shift(int whichEdge, int delta) {
            Iterator<View> it = this.views.iterator();
            while (it.hasNext()) {
                CellAndSpan cellAndSpan = this.config.map.get(it.next());
                if (whichEdge == 1) {
                    cellAndSpan.cellX -= delta;
                } else if (whichEdge == 2) {
                    cellAndSpan.cellY -= delta;
                } else if (whichEdge == 4) {
                    cellAndSpan.cellX += delta;
                } else {
                    cellAndSpan.cellY += delta;
                }
            }
            resetEdges();
        }

        public void addView(View v) {
            this.views.add(v);
            resetEdges();
        }

        public Rect getBoundingRect() {
            if (this.boundingRectDirty) {
                this.config.getBoundingRectForViews(this.views, this.boundingRect);
            }
            return this.boundingRect;
        }

        class PositionComparator implements Comparator<View> {
            int whichEdge = 0;

            PositionComparator() {
            }

            @Override // java.util.Comparator
            public int compare(View left, View right) {
                CellAndSpan cellAndSpan = ViewCluster.this.config.map.get(left);
                CellAndSpan cellAndSpan2 = ViewCluster.this.config.map.get(right);
                int i = this.whichEdge;
                if (i == 1) {
                    return (cellAndSpan2.cellX + cellAndSpan2.spanX) - (cellAndSpan.cellX + cellAndSpan.spanX);
                }
                if (i == 2) {
                    return (cellAndSpan2.cellY + cellAndSpan2.spanY) - (cellAndSpan.cellY + cellAndSpan.spanY);
                }
                if (i == 4) {
                    return cellAndSpan.cellX - cellAndSpan2.cellX;
                }
                return cellAndSpan.cellY - cellAndSpan2.cellY;
            }
        }

        public void sortConfigurationForEdgePush(int edge) {
            this.comparator.whichEdge = edge;
            Collections.sort(this.config.sortedViews, this.comparator);
        }
    }

    private boolean pushViewsToTempLocation(ArrayList<View> views, Rect rectOccupiedByPotentialDrop, int[] direction, View dragView, ItemConfiguration currentState) {
        int i;
        int i2;
        ViewCluster viewCluster = new ViewCluster(views, currentState);
        Rect boundingRect = viewCluster.getBoundingRect();
        boolean z = false;
        int i3 = direction[0];
        if (i3 < 0) {
            i = boundingRect.right - rectOccupiedByPotentialDrop.left;
            i2 = 1;
        } else if (i3 > 0) {
            i = rectOccupiedByPotentialDrop.right - boundingRect.left;
            i2 = 4;
        } else if (direction[1] < 0) {
            i = boundingRect.bottom - rectOccupiedByPotentialDrop.top;
            i2 = 2;
        } else {
            i = rectOccupiedByPotentialDrop.bottom - boundingRect.top;
            i2 = 8;
        }
        if (i <= 0) {
            return false;
        }
        Iterator<View> it = views.iterator();
        while (it.hasNext()) {
            this.mTmpOccupied.markCells(currentState.map.get(it.next()), false);
        }
        currentState.save();
        viewCluster.sortConfigurationForEdgePush(i2);
        boolean z2 = false;
        while (i > 0 && !z2) {
            for (View view : currentState.sortedViews) {
                if (!viewCluster.views.contains(view) && view != dragView && viewCluster.isViewTouchingEdge(view, i2)) {
                    if (!((LayoutParams) view.getLayoutParams()).canReorder) {
                        z2 = true;
                        break;
                    }
                    viewCluster.addView(view);
                    this.mTmpOccupied.markCells(currentState.map.get(view), false);
                }
            }
            i--;
            viewCluster.shift(i2, 1);
        }
        Rect boundingRect2 = viewCluster.getBoundingRect();
        if (z2 || boundingRect2.left < 0 || boundingRect2.right > 256 || boundingRect2.top < 0 || boundingRect2.bottom > this.mOccupied.mCountY) {
            currentState.restore();
        } else {
            z = true;
        }
        Iterator<View> it2 = viewCluster.views.iterator();
        while (it2.hasNext()) {
            this.mTmpOccupied.markCells(currentState.map.get(it2.next()), true);
        }
        return z;
    }

    private boolean addViewsToTempLocation(ArrayList<View> views, Rect rectOccupiedByPotentialDrop, int[] direction, View dragView, ItemConfiguration currentState) {
        boolean z;
        if (views.size() == 0) {
            return true;
        }
        Rect rect = new Rect();
        currentState.getBoundingRectForViews(views, rect);
        Iterator<View> it = views.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            this.mTmpOccupied.markCells(currentState.map.get(it.next()), false);
        }
        GridOccupancy gridOccupancy = new GridOccupancy(rect.width(), rect.height());
        int i = rect.top;
        int i2 = rect.left;
        Iterator<View> it2 = views.iterator();
        while (it2.hasNext()) {
            CellAndSpan cellAndSpan = currentState.map.get(it2.next());
            gridOccupancy.markCells(cellAndSpan.cellX - i2, cellAndSpan.cellY - i, cellAndSpan.spanX, cellAndSpan.spanY, true);
        }
        this.mTmpOccupied.markCells(rectOccupiedByPotentialDrop, true);
        findNearestArea(rect.left, rect.top, rect.width(), rect.height(), direction, this.mTmpOccupied.cells, gridOccupancy.cells, this.mTempLocation);
        int[] iArr = this.mTempLocation;
        int i3 = iArr[0];
        if (i3 >= 0 && iArr[1] >= 0) {
            int i4 = i3 - rect.left;
            int i5 = this.mTempLocation[1] - rect.top;
            Iterator<View> it3 = views.iterator();
            while (it3.hasNext()) {
                CellAndSpan cellAndSpan2 = currentState.map.get(it3.next());
                cellAndSpan2.cellX += i4;
                cellAndSpan2.cellY += i5;
            }
            z = true;
        }
        Iterator<View> it4 = views.iterator();
        while (it4.hasNext()) {
            this.mTmpOccupied.markCells(currentState.map.get(it4.next()), true);
        }
        return z;
    }

    private boolean attemptPushInDirection(ArrayList<View> intersectingViews, Rect occupied, int[] direction, View ignoreView, ItemConfiguration solution) {
        if (Math.abs(direction[0]) + Math.abs(direction[1]) > 1) {
            int i = direction[1];
            direction[1] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[1] = i;
            int i2 = direction[0];
            direction[0] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = i2;
            direction[0] = i2 * (-1);
            int i3 = direction[1] * (-1);
            direction[1] = i3;
            direction[1] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[1] = i3;
            int i4 = direction[0];
            direction[0] = 0;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = i4;
            direction[0] = i4 * (-1);
            direction[1] = direction[1] * (-1);
        } else {
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            int i5 = direction[0] * (-1);
            direction[0] = i5;
            int i6 = direction[1] * (-1);
            direction[1] = i6;
            direction[1] = i5;
            direction[0] = i6;
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            direction[0] = direction[0] * (-1);
            direction[1] = direction[1] * (-1);
            if (pushViewsToTempLocation(intersectingViews, occupied, direction, ignoreView, solution)) {
                return true;
            }
            int i7 = direction[0] * (-1);
            direction[0] = i7;
            int i8 = direction[1] * (-1);
            direction[1] = i8;
            direction[1] = i7;
            direction[0] = i8;
        }
        return false;
    }

    private boolean rearrangementExists(int cellX, int cellY, int spanX, int spanY, int[] direction, View ignoreView, ItemConfiguration solution) {
        CellAndSpan cellAndSpan;
        if (cellX < 0 || cellY < 0) {
            return false;
        }
        this.mIntersectingViews.clear();
        int i = spanX + cellX;
        int i2 = spanY + cellY;
        this.mOccupiedRect.set(cellX, cellY, i, i2);
        if (ignoreView != null && (cellAndSpan = solution.map.get(ignoreView)) != null) {
            cellAndSpan.cellX = cellX;
            cellAndSpan.cellY = cellY;
        }
        Rect rect = new Rect(cellX, cellY, i, i2);
        Rect rect2 = new Rect();
        for (View view : solution.map.keySet()) {
            if (view != ignoreView) {
                CellAndSpan cellAndSpan2 = solution.map.get(view);
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                rect2.set(cellAndSpan2.cellX, cellAndSpan2.cellY, cellAndSpan2.cellX + cellAndSpan2.spanX, cellAndSpan2.cellY + cellAndSpan2.spanY);
                if (!Rect.intersects(rect, rect2)) {
                    continue;
                } else {
                    if (!layoutParams.canReorder) {
                        return false;
                    }
                    this.mIntersectingViews.add(view);
                }
            }
        }
        solution.intersectingViews = new ArrayList<>(this.mIntersectingViews);
        if (attemptPushInDirection(this.mIntersectingViews, this.mOccupiedRect, direction, ignoreView, solution) || addViewsToTempLocation(this.mIntersectingViews, this.mOccupiedRect, direction, ignoreView, solution)) {
            return true;
        }
        Iterator<View> it = this.mIntersectingViews.iterator();
        while (it.hasNext()) {
            if (!addViewToTempLocation(it.next(), this.mOccupiedRect, direction, solution)) {
                return false;
            }
        }
        return true;
    }

    private void computeDirectionVector(float deltaX, float deltaY, int[] result) {
        double dAtan = Math.atan(deltaY / deltaX);
        result[0] = 0;
        result[1] = 0;
        if (Math.abs(Math.cos(dAtan)) > 0.5d) {
            result[0] = (int) Math.signum(deltaX);
        }
        if (Math.abs(Math.sin(dAtan)) > 0.5d) {
            result[1] = (int) Math.signum(deltaY);
        }
    }

    private ItemConfiguration findReorderSolution(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, int[] direction, View dragView, boolean decX, ItemConfiguration solution) {
        copyCurrentStateToSolution(solution, false);
        this.mOccupied.copyTo(this.mTmpOccupied);
        int[] iArrFindNearestArea = findNearestArea(pixelX, pixelY, spanX, spanY, new int[2]);
        if (rearrangementExists(iArrFindNearestArea[0], iArrFindNearestArea[1], spanX, spanY, direction, dragView, solution)) {
            solution.isSolution = true;
            solution.cellX = iArrFindNearestArea[0];
            solution.cellY = iArrFindNearestArea[1];
            solution.spanX = spanX;
            solution.spanY = spanY;
        } else {
            if (spanX > minSpanX && (minSpanY == spanY || decX)) {
                return findReorderSolution(pixelX, pixelY, minSpanX, minSpanY, spanX - 1, spanY, direction, dragView, false, solution);
            }
            if (spanY > minSpanY) {
                return findReorderSolution(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY - 1, direction, dragView, true, solution);
            }
            solution.isSolution = false;
        }
        return solution;
    }

    private void copyCurrentStateToSolution(ItemConfiguration solution, boolean temp) {
        CellAndSpan cellAndSpan;
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (temp) {
                cellAndSpan = new CellAndSpan(layoutParams.tmpCellX, layoutParams.tmpCellY, layoutParams.cellHSpan, layoutParams.cellVSpan);
            } else {
                cellAndSpan = new CellAndSpan(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan);
            }
            solution.add(childAt, cellAndSpan);
        }
    }

    private void copySolutionToTempState(ItemConfiguration solution, View dragView) {
        this.mTmpOccupied.clear();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt != dragView) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                CellAndSpan cellAndSpan = solution.map.get(childAt);
                if (cellAndSpan != null) {
                    layoutParams.tmpCellX = cellAndSpan.cellX;
                    layoutParams.tmpCellY = cellAndSpan.cellY;
                    layoutParams.cellHSpan = cellAndSpan.spanX;
                    layoutParams.cellVSpan = cellAndSpan.spanY;
                    this.mTmpOccupied.markCells(cellAndSpan, true);
                }
            }
        }
        this.mTmpOccupied.markCells((CellAndSpan) solution, true);
    }

    private void animateItemsToSolution(ItemConfiguration solution, View dragView, boolean commitDragView) {
        CellAndSpan cellAndSpan;
        GridOccupancy gridOccupancy = this.mTmpOccupied;
        gridOccupancy.clear();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt != dragView && (cellAndSpan = solution.map.get(childAt)) != null) {
                animateChildToPosition(childAt, cellAndSpan.cellX, cellAndSpan.cellY, 150, 0, false, false);
                gridOccupancy.markCells(cellAndSpan, true);
            }
        }
        if (commitDragView) {
            gridOccupancy.markCells((CellAndSpan) solution, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void beginOrAdjustReorderPreviewAnimations(ItemConfiguration solution, View dragView, int mode) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt != dragView) {
                CellAndSpan cellAndSpan = solution.map.get(childAt);
                boolean z = (mode != 0 || solution.intersectingViews == null || solution.intersectingViews.contains(childAt)) ? false : true;
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (cellAndSpan != null && !z && (childAt instanceof Reorderable)) {
                    new ReorderPreviewAnimation((Reorderable) childAt, mode, layoutParams.cellX, layoutParams.cellY, cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY).animate();
                }
            }
        }
    }

    class ReorderPreviewAnimation {
        private static final float CHILD_DIVIDEND = 4.0f;
        private static final int HINT_DURATION = 650;
        public static final int MODE_HINT = 0;
        public static final int MODE_PREVIEW = 1;
        private static final int PREVIEW_DURATION = 300;
        ValueAnimator a;
        final Reorderable child;
        float finalDeltaX;
        float finalDeltaY;
        final float finalScale;
        float initDeltaX;
        float initDeltaY;
        float initScale;
        final int mode;
        boolean repeating = false;
        float animationProgress = 0.0f;

        void setInitialAnimationValuesToBaseline() {
            this.initScale = 1.0f;
            this.initDeltaX = 0.0f;
            this.initDeltaY = 0.0f;
        }

        public ReorderPreviewAnimation(Reorderable child, int mode, int cellX0, int cellY0, int cellX1, int cellY1, int spanX, int spanY) {
            CellLayout.this.regionToCenterPoint(cellX0, cellY0, spanX, spanY, CellLayout.this.mTmpPoint);
            int i = CellLayout.this.mTmpPoint[0];
            int i2 = CellLayout.this.mTmpPoint[1];
            CellLayout.this.regionToCenterPoint(cellX1, cellY1, spanX, spanY, CellLayout.this.mTmpPoint);
            int i3 = CellLayout.this.mTmpPoint[0] - i;
            int i4 = CellLayout.this.mTmpPoint[1] - i2;
            this.child = child;
            this.mode = mode;
            this.finalDeltaX = 0.0f;
            this.finalDeltaY = 0.0f;
            child.getReorderBounceOffset(CellLayout.this.mTmpPointF);
            this.initDeltaX = CellLayout.this.mTmpPointF.x;
            this.initDeltaY = CellLayout.this.mTmpPointF.y;
            this.initScale = child.getReorderBounceScale();
            this.finalScale = 1.0f - ((CHILD_DIVIDEND / child.getView().getWidth()) * this.initScale);
            int i5 = mode == 0 ? -1 : 1;
            if (i3 == i4 && i3 == 0) {
                return;
            }
            if (i4 == 0) {
                this.finalDeltaX = (-i5) * Math.signum(i3) * CellLayout.this.mReorderPreviewAnimationMagnitude;
                return;
            }
            if (i3 == 0) {
                this.finalDeltaY = (-i5) * Math.signum(i4) * CellLayout.this.mReorderPreviewAnimationMagnitude;
                return;
            }
            float f = i4;
            float f2 = i3;
            double dAtan = Math.atan(f / f2);
            float f3 = -i5;
            this.finalDeltaX = (int) (((double) (Math.signum(f2) * f3)) * Math.abs(Math.cos(dAtan) * ((double) CellLayout.this.mReorderPreviewAnimationMagnitude)));
            this.finalDeltaY = (int) (((double) (f3 * Math.signum(f))) * Math.abs(Math.sin(dAtan) * ((double) CellLayout.this.mReorderPreviewAnimationMagnitude)));
        }

        void animate() {
            boolean z = this.finalDeltaX == 0.0f && this.finalDeltaY == 0.0f;
            if (CellLayout.this.mShakeAnimators.containsKey(this.child)) {
                ReorderPreviewAnimation reorderPreviewAnimation = CellLayout.this.mShakeAnimators.get(this.child);
                CellLayout.this.mShakeAnimators.remove(this.child);
                if (z) {
                    reorderPreviewAnimation.finishAnimation();
                    return;
                }
                reorderPreviewAnimation.cancel();
            }
            if (z) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<ReorderPreviewAnimation, Float>) CellLayout.ANIMATION_PROGRESS, 0.0f, 1.0f);
            this.a = objectAnimatorOfFloat;
            if (Utilities.areAnimationsEnabled(CellLayout.this.getContext())) {
                objectAnimatorOfFloat.setRepeatMode(2);
                objectAnimatorOfFloat.setRepeatCount(-1);
            }
            objectAnimatorOfFloat.setDuration(this.mode == 0 ? 650L : 300L);
            objectAnimatorOfFloat.setStartDelay((int) (Math.random() * 60.0d));
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.ReorderPreviewAnimation.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animation) {
                    ReorderPreviewAnimation.this.setInitialAnimationValuesToBaseline();
                    ReorderPreviewAnimation.this.repeating = true;
                }
            });
            CellLayout.this.mShakeAnimators.put(this.child, this);
            objectAnimatorOfFloat.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAnimationProgress(float progress) {
            this.animationProgress = progress;
            if (this.mode == 0 && this.repeating) {
                progress = 1.0f;
            }
            float f = 1.0f - progress;
            this.child.setReorderBounceOffset((this.finalDeltaX * progress) + (this.initDeltaX * f), (progress * this.finalDeltaY) + (f * this.initDeltaY));
            float f2 = this.animationProgress;
            this.child.setReorderBounceScale((this.finalScale * f2) + ((1.0f - f2) * this.initScale));
        }

        private void cancel() {
            ValueAnimator valueAnimator = this.a;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }

        void finishAnimation() {
            ValueAnimator valueAnimator = this.a;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            setInitialAnimationValuesToBaseline();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<ReorderPreviewAnimation, Float>) CellLayout.ANIMATION_PROGRESS, this.animationProgress, 0.0f);
            this.a = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setInterpolator(Interpolators.DEACCEL_1_5);
            this.a.setDuration(150L);
            this.a.start();
        }
    }

    private void completeAndClearReorderPreviewAnimations() {
        Iterator<ReorderPreviewAnimation> it = this.mShakeAnimators.values().iterator();
        while (it.hasNext()) {
            it.next().finishAnimation();
        }
        this.mShakeAnimators.clear();
    }

    private void commitTempPlacement() {
        int i;
        this.mTmpOccupied.copyTo(this.mOccupied);
        int idForScreen = Launcher.cast(this.mActivity).getWorkspace().getIdForScreen(this);
        if (this.mContainerType == 1) {
            idForScreen = -1;
            i = LauncherSettings.Favorites.CONTAINER_HOTSEAT;
        } else {
            i = -100;
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ItemInfo itemInfo = (ItemInfo) childAt.getTag();
            if (itemInfo != null) {
                boolean z = (itemInfo.cellX == layoutParams.tmpCellX && itemInfo.cellY == layoutParams.tmpCellY && itemInfo.spanX == layoutParams.cellHSpan && itemInfo.spanY == layoutParams.cellVSpan) ? false : true;
                int i3 = layoutParams.tmpCellX;
                layoutParams.cellX = i3;
                itemInfo.cellX = i3;
                int i4 = layoutParams.tmpCellY;
                layoutParams.cellY = i4;
                itemInfo.cellY = i4;
                itemInfo.spanX = layoutParams.cellHSpan;
                itemInfo.spanY = layoutParams.cellVSpan;
                if (z) {
                    Launcher.cast(this.mActivity).getModelWriter().modifyItemInDatabase(itemInfo, i, idForScreen, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
                }
            }
        }
    }

    private void setUseTempCoords(boolean useTempCoords) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) this.mShortcutsAndWidgets.getChildAt(i).getLayoutParams()).useTmpCoords = useTempCoords;
        }
    }

    private ItemConfiguration findConfigurationNoShuffle(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, View dragView, ItemConfiguration solution) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        findNearestVacantArea(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, iArr, iArr2);
        if (iArr[0] >= 0 && iArr[1] >= 0) {
            copyCurrentStateToSolution(solution, false);
            solution.cellX = iArr[0];
            solution.cellY = iArr[1];
            solution.spanX = iArr2[0];
            solution.spanY = iArr2[1];
            solution.isSolution = true;
        } else {
            solution.isSolution = false;
        }
        return solution;
    }

    private void getDirectionVectorForDrop(int dragViewCenterX, int dragViewCenterY, int spanX, int spanY, View dragView, int[] resultDirection) {
        int[] iArr = new int[2];
        findNearestArea(dragViewCenterX, dragViewCenterY, spanX, spanY, iArr);
        Rect rect = new Rect();
        regionToRect(iArr[0], iArr[1], spanX, spanY, rect);
        rect.offset(dragViewCenterX - rect.centerX(), dragViewCenterY - rect.centerY());
        Rect rect2 = new Rect();
        getViewsIntersectingRegion(iArr[0], iArr[1], spanX, spanY, dragView, rect2, this.mIntersectingViews);
        int iWidth = rect2.width();
        int iHeight = rect2.height();
        regionToRect(rect2.left, rect2.top, rect2.width(), rect2.height(), rect2);
        int iCenterX = (rect2.centerX() - dragViewCenterX) / spanX;
        int iCenterY = (rect2.centerY() - dragViewCenterY) / spanY;
        if (iWidth == this.mOccupied.mCurrentCountX || spanX == this.mOccupied.mCurrentCountX) {
            iCenterX = 0;
        }
        if (iHeight == this.mOccupied.mCountY || spanY == this.mOccupied.mCountY) {
            iCenterY = 0;
        }
        if (iCenterX == 0 && iCenterY == 0) {
            resultDirection[0] = 1;
            resultDirection[1] = 0;
        } else {
            computeDirectionVector(iCenterX, iCenterY, resultDirection);
        }
    }

    private void getViewsIntersectingRegion(int cellX, int cellY, int spanX, int spanY, View dragView, Rect boundingRect, ArrayList<View> intersectingViews) {
        if (boundingRect != null) {
            boundingRect.set(cellX, cellY, cellX + spanX, cellY + spanY);
        }
        intersectingViews.clear();
        Rect rect = new Rect(cellX, cellY, spanX + cellX, spanY + cellY);
        Rect rect2 = new Rect();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            if (childAt != dragView) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                rect2.set(layoutParams.cellX, layoutParams.cellY, layoutParams.cellX + layoutParams.cellHSpan, layoutParams.cellY + layoutParams.cellVSpan);
                if (Rect.intersects(rect, rect2)) {
                    this.mIntersectingViews.add(childAt);
                    if (boundingRect != null) {
                        boundingRect.union(rect2);
                    }
                }
            }
        }
    }

    boolean isNearestDropLocationOccupied(int pixelX, int pixelY, int spanX, int spanY, View dragView, int[] result) {
        int[] iArrFindNearestArea = findNearestArea(pixelX, pixelY, spanX, spanY, result);
        getViewsIntersectingRegion(iArrFindNearestArea[0], iArrFindNearestArea[1], spanX, spanY, dragView, null, this.mIntersectingViews);
        return !this.mIntersectingViews.isEmpty();
    }

    void revertTempState() {
        completeAndClearReorderPreviewAnimations();
        if (isItemPlacementDirty()) {
            int childCount = this.mShortcutsAndWidgets.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.mShortcutsAndWidgets.getChildAt(i);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.cellY) {
                    layoutParams.tmpCellX = layoutParams.cellX;
                    layoutParams.tmpCellY = layoutParams.cellY;
                    animateChildToPosition(childAt, layoutParams.cellX, layoutParams.cellY, 150, 0, false, false);
                }
            }
            setItemPlacementDirty(false);
        }
    }

    boolean createAreaForResize(int cellX, int cellY, int spanX, int spanY, View dragView, int[] direction, boolean commit) {
        int[] iArr = new int[2];
        regionToCenterPoint(cellX, cellY, spanX, spanY, iArr);
        ItemConfiguration itemConfigurationFindReorderSolution = findReorderSolution(iArr[0], iArr[1], spanX, spanY, spanX, spanY, direction, dragView, true, new ItemConfiguration());
        setUseTempCoords(true);
        if (itemConfigurationFindReorderSolution != null && itemConfigurationFindReorderSolution.isSolution) {
            copySolutionToTempState(itemConfigurationFindReorderSolution, dragView);
            setItemPlacementDirty(true);
            animateItemsToSolution(itemConfigurationFindReorderSolution, dragView, commit);
            if (commit) {
                commitTempPlacement();
                completeAndClearReorderPreviewAnimations();
                setItemPlacementDirty(false);
            } else {
                beginOrAdjustReorderPreviewAnimations(itemConfigurationFindReorderSolution, dragView, 1);
            }
            this.mShortcutsAndWidgets.requestLayout();
        }
        return itemConfigurationFindReorderSolution.isSolution;
    }

    int[] performReorder(int pixelX, int pixelY, int minSpanX, int minSpanY, int spanX, int spanY, View dragView, int[] result, int[] resultSpan, int mode) {
        int[] iArr;
        int i;
        boolean z;
        int[] iArrFindNearestArea = findNearestArea(pixelX, pixelY, spanX, spanY, result);
        int[] iArr2 = resultSpan == null ? new int[2] : resultSpan;
        if ((mode == 2 || mode == 3 || mode == 4) && (i = (iArr = this.mPreviousReorderDirection)[0]) != -100) {
            int[] iArr3 = this.mDirectionVector;
            iArr3[0] = i;
            iArr3[1] = iArr[1];
            if (mode == 2 || mode == 3) {
                iArr[0] = -100;
                iArr[1] = -100;
            }
        } else {
            getDirectionVectorForDrop(pixelX, pixelY, spanX, spanY, dragView, this.mDirectionVector);
            int[] iArr4 = this.mPreviousReorderDirection;
            int[] iArr5 = this.mDirectionVector;
            iArr4[0] = iArr5[0];
            iArr4[1] = iArr5[1];
        }
        ItemConfiguration itemConfigurationFindReorderSolution = findReorderSolution(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, this.mDirectionVector, dragView, true, new ItemConfiguration());
        ItemConfiguration itemConfigurationFindConfigurationNoShuffle = findConfigurationNoShuffle(pixelX, pixelY, minSpanX, minSpanY, spanX, spanY, dragView, new ItemConfiguration());
        if (itemConfigurationFindReorderSolution.isSolution && itemConfigurationFindReorderSolution.area() >= itemConfigurationFindConfigurationNoShuffle.area()) {
            itemConfigurationFindConfigurationNoShuffle = itemConfigurationFindReorderSolution;
        } else if (!itemConfigurationFindConfigurationNoShuffle.isSolution) {
            itemConfigurationFindConfigurationNoShuffle = null;
        }
        if (mode == 0) {
            if (itemConfigurationFindConfigurationNoShuffle != null) {
                beginOrAdjustReorderPreviewAnimations(itemConfigurationFindConfigurationNoShuffle, dragView, 0);
                iArrFindNearestArea[0] = itemConfigurationFindConfigurationNoShuffle.cellX;
                iArrFindNearestArea[1] = itemConfigurationFindConfigurationNoShuffle.cellY;
                iArr2[0] = itemConfigurationFindConfigurationNoShuffle.spanX;
                iArr2[1] = itemConfigurationFindConfigurationNoShuffle.spanY;
            } else {
                iArr2[1] = -1;
                iArr2[0] = -1;
                iArrFindNearestArea[1] = -1;
                iArrFindNearestArea[0] = -1;
            }
            return iArrFindNearestArea;
        }
        setUseTempCoords(true);
        if (itemConfigurationFindConfigurationNoShuffle != null) {
            iArrFindNearestArea[0] = itemConfigurationFindConfigurationNoShuffle.cellX;
            iArrFindNearestArea[1] = itemConfigurationFindConfigurationNoShuffle.cellY;
            iArr2[0] = itemConfigurationFindConfigurationNoShuffle.spanX;
            iArr2[1] = itemConfigurationFindConfigurationNoShuffle.spanY;
            if (mode == 1 || mode == 2 || mode == 3) {
                copySolutionToTempState(itemConfigurationFindConfigurationNoShuffle, dragView);
                setItemPlacementDirty(true);
                animateItemsToSolution(itemConfigurationFindConfigurationNoShuffle, dragView, mode == 2);
                if (mode == 2 || mode == 3) {
                    commitTempPlacement();
                    completeAndClearReorderPreviewAnimations();
                    setItemPlacementDirty(false);
                } else {
                    beginOrAdjustReorderPreviewAnimations(itemConfigurationFindConfigurationNoShuffle, dragView, 1);
                }
            }
            z = true;
        } else {
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArrFindNearestArea[1] = -1;
            iArrFindNearestArea[0] = -1;
            z = false;
        }
        if (mode == 2 || !z) {
            setUseTempCoords(false);
        }
        this.mShortcutsAndWidgets.requestLayout();
        return iArrFindNearestArea;
    }

    private static class ItemConfiguration extends CellAndSpan {
        ArrayList<View> intersectingViews;
        boolean isSolution;
        final ArrayMap<View, CellAndSpan> map;
        private final ArrayMap<View, CellAndSpan> savedMap;
        final ArrayList<View> sortedViews;

        private ItemConfiguration() {
            this.map = new ArrayMap<>();
            this.savedMap = new ArrayMap<>();
            this.sortedViews = new ArrayList<>();
            this.isSolution = false;
        }

        void save() {
            for (View view : this.map.keySet()) {
                this.savedMap.get(view).copyFrom(this.map.get(view));
            }
        }

        void restore() {
            for (View view : this.savedMap.keySet()) {
                this.map.get(view).copyFrom(this.savedMap.get(view));
            }
        }

        void add(View v, CellAndSpan cs) {
            this.map.put(v, cs);
            this.savedMap.put(v, new CellAndSpan());
            this.sortedViews.add(v);
        }

        int area() {
            return this.spanX * this.spanY;
        }

        void getBoundingRectForViews(ArrayList<View> views, Rect outRect) {
            Iterator<View> it = views.iterator();
            boolean z = true;
            while (it.hasNext()) {
                CellAndSpan cellAndSpan = this.map.get(it.next());
                if (z) {
                    outRect.set(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.cellX + cellAndSpan.spanX, cellAndSpan.cellY + cellAndSpan.spanY);
                    z = false;
                } else {
                    outRect.union(cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.cellX + cellAndSpan.spanX, cellAndSpan.cellY + cellAndSpan.spanY);
                }
            }
        }
    }

    public int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, int[] result) {
        return findNearestArea(pixelX, pixelY, spanX, spanY, spanX, spanY, false, result, null);
    }

    boolean existsEmptyCell() {
        return findCellForSpan(null, 1, 1);
    }

    public boolean findCellForSpan(int[] cellXY, int spanX, int spanY) {
        if (cellXY == null) {
            cellXY = new int[2];
        }
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < this.mDraggableRecyclerView.getItemChildCount(); i3++) {
            LayoutParams layoutParams = (LayoutParams) this.mDraggableRecyclerView.getItemViewAt(i3).getTag(DraggableRecyclerView.LAYOUT_PARAMS_TAG_KEY);
            if (i < layoutParams.cellX) {
                i = layoutParams.cellX;
                i2 = layoutParams.cellHSpan;
            }
        }
        cellXY[0] = i + i2;
        return true;
    }

    void onDragEnter() {
        this.mDragging = true;
        DraggableRecyclerView draggableRecyclerView = this.mDraggableRecyclerView;
        if (draggableRecyclerView != null) {
            draggableRecyclerView.onDragEnter();
        }
    }

    void onDragExit(DropTarget.DragObject d) {
        if (this.mDragging) {
            this.mDragging = false;
        }
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        this.mDragOutlineCurrent = (this.mDragOutlineCurrent + 1) % this.mDragOutlineAnims.length;
        revertTempState();
        setIsDragOverlapping(false);
        DraggableRecyclerView draggableRecyclerView = this.mDraggableRecyclerView;
        if (draggableRecyclerView != null) {
            draggableRecyclerView.onDragExit(d);
        }
    }

    void onDropChild(View child) {
        if (child != null) {
            ((LayoutParams) child.getLayoutParams()).dropped = true;
            child.requestLayout();
            markCellsAsOccupiedForView(child);
        }
        DraggableRecyclerView draggableRecyclerView = this.mDraggableRecyclerView;
        if (draggableRecyclerView != null) {
            draggableRecyclerView.onDropChild(child);
        }
    }

    public void cellToRect(int cellX, int cellY, int cellHSpan, int cellVSpan, Rect resultRect) {
        int i = this.mCellWidth;
        int i2 = this.mCellHeight;
        int paddingLeft = getPaddingLeft() + (cellX * i);
        int paddingTop = getPaddingTop() + (cellY * i2);
        resultRect.set(paddingLeft, paddingTop, (cellHSpan * i) + paddingLeft, (cellVSpan * i2) + paddingTop);
    }

    public void markCellsAsOccupiedForView(View view) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        this.mOccupied.markCells(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, true);
    }

    public void markCellsAsUnoccupiedForView(View view) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        this.mOccupied.markCells(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, false);
    }

    public int getDesiredWidth() {
        return getPaddingLeft() + getPaddingRight() + (this.mOccupied.mCurrentCountX * this.mCellWidth);
    }

    public int getDesiredHeight() {
        return getPaddingTop() + getPaddingBottom() + (this.mOccupied.mCountY * this.mCellHeight);
    }

    public boolean isOccupied(int x, int y) {
        if (x >= this.mOccupied.mCurrentCountX || y >= this.mOccupied.mCountY) {
            return false;
        }
        return this.mOccupied.cells[x][y];
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return new LayoutParams(p);
    }

    public void handleItemInfoRuntimeWhenAnimEnd() {
        int itemChildCount = this.mDraggableRecyclerView.getItemChildCount();
        for (int i = 0; i < itemChildCount; i++) {
            View itemViewAt = this.mDraggableRecyclerView.getItemViewAt(i);
            Object tag = itemViewAt.getTag();
            if (tag instanceof ItemInfo) {
                ItemInfo itemInfo = (ItemInfo) tag;
                if (itemInfo.runtime.containsKey(ItemInfo.RT_SHOW_DELAY)) {
                    itemInfo.runtime.remove(ItemInfo.RT_SHOW_DELAY);
                    itemViewAt.setAlpha(1.0f);
                }
            }
        }
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {
        public boolean canReorder;

        @ViewDebug.ExportedProperty
        public int cellHSpan;

        @ViewDebug.ExportedProperty
        public int cellVSpan;

        @ViewDebug.ExportedProperty
        public int cellX;

        @ViewDebug.ExportedProperty
        public int cellY;
        boolean dropped;
        public boolean isLockedToGrid;
        public int tmpCellX;
        public int tmpCellY;
        public boolean useTmpCoords;

        @ViewDebug.ExportedProperty
        public int x;

        @ViewDebug.ExportedProperty
        public int y;

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(LayoutParams source) {
            super((FrameLayout.LayoutParams) source);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellX = source.cellX;
            this.cellY = source.cellY;
            this.cellHSpan = source.cellHSpan;
            this.cellVSpan = source.cellVSpan;
        }

        public LayoutParams(int cellX, int cellY, int cellHSpan, int cellVSpan) {
            super(-1, -1);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellX = cellX;
            this.cellY = cellY;
            this.cellHSpan = cellHSpan;
            this.cellVSpan = cellVSpan;
        }

        public void setup(int cellWidth, int cellHeight, boolean invertHorizontally, int colCount) {
            setup(cellWidth, cellHeight, invertHorizontally, colCount, 1.0f, 1.0f);
        }

        public void setup(int cellWidth, int cellHeight, boolean invertHorizontally, int colCount, float cellScaleX, float cellScaleY) {
            if (this.isLockedToGrid) {
                int i = this.cellHSpan;
                int i2 = this.cellVSpan;
                boolean z = this.useTmpCoords;
                int i3 = z ? this.tmpCellX : this.cellX;
                int i4 = z ? this.tmpCellY : this.cellY;
                if (invertHorizontally) {
                    i3 = (colCount - i3) - i;
                }
                this.width = (int) ((((i * cellWidth) / cellScaleX) - this.leftMargin) - this.rightMargin);
                this.height = (int) ((((i2 * cellHeight) / cellScaleY) - this.topMargin) - this.bottomMargin);
                this.x = (i3 * cellWidth) + this.leftMargin;
                this.y = (i4 * cellHeight) + this.topMargin;
            }
        }

        public void setXY(Point point) {
            this.cellX = point.x;
            this.cellY = point.y;
        }

        public String toString() {
            return "(" + this.cellX + ", " + this.cellY + ")";
        }
    }

    public static final class CellInfo extends CellAndSpan {
        public final View cell;
        final int container;
        final int screenId;

        public CellInfo(View v, ItemInfo info) {
            this.cellX = info.cellX;
            this.cellY = info.cellY;
            this.spanX = info.spanX;
            this.spanY = info.spanY;
            this.cell = v;
            this.screenId = info.screenId;
            this.container = info.container;
        }

        @Override // com.android.launcher3.util.CellAndSpan
        public String toString() {
            StringBuilder sb = new StringBuilder("Cell[view=");
            View view = this.cell;
            return sb.append(view == null ? "null" : view.getClass()).append(", x=").append(this.cellX).append(", y=").append(this.cellY).append("]").toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasReorderSolution(ItemInfo itemInfo) {
        int[] iArr = new int[2];
        int i = 0;
        int i2 = 0;
        while (i2 < getCountX()) {
            int i3 = i;
            while (i3 < getCountY()) {
                cellToPoint(i2, i3, iArr);
                int i4 = i3;
                if (findReorderSolution(iArr[i], iArr[1], itemInfo.minSpanX, itemInfo.minSpanY, itemInfo.spanX, itemInfo.spanY, this.mDirectionVector, null, true, new ItemConfiguration()).isSolution) {
                    return true;
                }
                i3 = i4 + 1;
                i = 0;
            }
            i2++;
            i = 0;
        }
        return i;
    }

    public boolean makeSpaceForHotseatMigration(boolean commitConfig) {
        int[] iArr = new int[2];
        cellToPoint(0, this.mOccupied.mCountY, iArr);
        ItemConfiguration itemConfiguration = new ItemConfiguration();
        if (!findReorderSolution(iArr[0], iArr[1], this.mOccupied.mCurrentCountX, 1, this.mOccupied.mCurrentCountX, 1, new int[]{0, -1}, null, false, itemConfiguration).isSolution) {
            return false;
        }
        if (commitConfig) {
            copySolutionToTempState(itemConfiguration, null);
            commitTempPlacement();
            GridOccupancy gridOccupancy = this.mOccupied;
            gridOccupancy.markCells(0, gridOccupancy.mCountY - 1, this.mOccupied.mCurrentCountX, 1, false);
        }
        return true;
    }

    public GridOccupancy cloneGridOccupancy() {
        GridOccupancy gridOccupancy = new GridOccupancy();
        this.mOccupied.copyTo(gridOccupancy);
        return gridOccupancy;
    }

    public boolean isRegionVacant(int x, int y, int spanX, int spanY) {
        return this.mOccupied.isRegionVacant(x, y, spanX, spanY);
    }

    public void applyChildState(LauncherState state) {
        MLog.d(TAG, "applyChildState: " + state);
        this.mDraggableRecyclerView.applyChildState();
    }

    public void applyEditState(LauncherState state) {
        boolean z = state == LauncherState.WIDGET_SPRING_LOADED;
        if (this.mIsEditState != z) {
            setOnClickListener(z ? new View.OnClickListener() { // from class: com.android.launcher3.CellLayout$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.onClick(view);
                }
            } : null);
            this.mIsEditState = z;
            BlurRenderWatcher.getInstance().setBlurEnabled(!z);
            updateBackground();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(View view) {
        if (this.mIsEditState && this.mDraggableRecyclerView.getChildCount() == 0) {
            ViewParent parent = getParent();
            if (parent instanceof Workspace) {
                ((Workspace) parent).removeCurrentScreen();
            }
        }
    }

    private void updateBackground() {
        int[] iArr;
        if (this.mIsDragOverlapping) {
            iArr = BACKGROUND_STATE_ACTIVE;
        } else {
            iArr = (this.mIsEditState && this.mDraggableRecyclerView.getChildCount() == 0) ? BACKGROUND_STATE_EMPTY : BACKGROUND_STATE_DEFAULT;
        }
        if (this.mBackground.getState() != iArr) {
            this.mBackground.setState(iArr);
            invalidate();
        }
    }

    public void appendCell(int spanX) {
        this.mOccupied.mCurrentCountX += spanX;
        this.mOccupied.increaseCountX(spanX);
        this.mTmpOccupied.increaseCountX(spanX);
        this.mTempRectStack.clear();
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mOccupied);
        requestLayout();
    }

    private void tryScrollToChild(final int position) {
        ActivityContext activityContext = this.mActivity;
        if ((activityContext instanceof Launcher) && Launcher.cast(activityContext).getStateManager().isInWidgetEditState()) {
            post(new Runnable() { // from class: com.android.launcher3.CellLayout$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m17lambda$tryScrollToChild$0$comandroidlauncher3CellLayout(position);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$tryScrollToChild$0$com-android-launcher3-CellLayout, reason: not valid java name */
    /* synthetic */ void m17lambda$tryScrollToChild$0$comandroidlauncher3CellLayout(int i) {
        this.mDraggableRecyclerView.smoothScrollToPosition(i);
        MLog.d(TAG, "tryScrollToChild: " + i);
    }

    private void notifyMoveDown(int dx, int dy, int touchSlop) {
        MLog.d(TAG, "notifyMoveDown: diff=" + dx + "/" + dy + " touchSlop=" + touchSlop);
        HorizontalScrollView.MoveDownListener moveDownListener = this.mMoveDownListener;
        if (moveDownListener != null) {
            moveDownListener.onMoveDown();
        }
    }

    public void scrollToStart() {
        this.mDraggableRecyclerView.scrollToPosition(0);
    }

    public boolean canScrollToLeft() {
        return this.mDraggableRecyclerView.canScrollHorizontally(isLayoutRtl() ? 1 : -1);
    }

    public boolean hasViewInRecyclerView(View view) {
        return this.mDraggableRecyclerView.getItemViewIndex(view) != -1;
    }

    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }
}
