package com.android.launcher3.views.dragableviews;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Size;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.OnAlphaChangedListener;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace$$ExternalSyntheticLambda15;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.ViewExKt;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.DragShadowView;
import com.android.launcher3.views.blur.BlurRenderWatcher;
import com.android.launcher3.views.blur.BlurView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class DraggableRecyclerView extends RecyclerView implements LocationNotifier {
    private static final long CLICK_INTERVAL = 500;
    private static final boolean DEBUG = true;
    public static final int LAYOUT_PARAMS_TAG_KEY = 2131824913;
    private static final String TAG = "DraggableRecyclerView";
    private ActivityContext mActivity;
    private ItemTouchListener mCallback;
    private int mCellHeight;
    private int mCellWidth;
    private final int mContainerType;
    private Runnable mDataUpdater;
    private Handler mHandler;
    private boolean mInvertIfRtl;
    private int mItemInset;
    protected long mLastClickTime;
    private LinearLayoutManager mLayoutManager;
    private final List<OnLocationChangedListener> mLocationChangedListeners;
    private boolean mMoreThanOneScreen;
    private GridOccupancy mOccupied;
    private List<View> mOrderedViews;
    private int mPaddingWhenFilled;
    private final Runnable mRemoveDragShadowViewDefer;
    private boolean mScrollWhenIdle;
    private AppsAdapter mSelectedAdapter;
    private final int[] mTmp;
    private final float[] mTmpPoint;

    public boolean moreThanOneScreen() {
        return this.mMoreThanOneScreen;
    }

    public void setDataUpdater(Runnable runnable) {
        this.mDataUpdater = runnable;
    }

    public void setInvertIfRtl(boolean invert) {
        this.mInvertIfRtl = invert;
    }

    public DraggableRecyclerView(Context context, int containerType) {
        super(context);
        this.mTmp = new int[2];
        this.mTmpPoint = new float[2];
        this.mOrderedViews = new LinkedList();
        this.mInvertIfRtl = false;
        this.mMoreThanOneScreen = false;
        this.mLocationChangedListeners = new ArrayList();
        this.mScrollWhenIdle = false;
        this.mRemoveDragShadowViewDefer = new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView.4
            @Override // java.lang.Runnable
            public void run() {
                DraggableRecyclerView.this.removeDragShadowView();
            }
        };
        this.mActivity = ActivityContext.lookupContext(context);
        this.mContainerType = containerType;
        init(context);
    }

    public void init(Context context) {
        this.mPaddingWhenFilled = (int) context.getResources().getDimension(R.dimen.margin_launcher_workspace_start);
        this.mItemInset = getContext().getResources().getDimensionPixelSize(R.dimen.dimen_12dp);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mCallback = new ItemTouchListener(context);
        new ItemTouchHelper(this.mCallback).attachToRecyclerView(this);
        DraggableLayoutManager draggableLayoutManager = new DraggableLayoutManager(context);
        this.mLayoutManager = draggableLayoutManager;
        setLayoutManager(draggableLayoutManager);
        AppsAdapter appsAdapter = new AppsAdapter(context);
        this.mSelectedAdapter = appsAdapter;
        setAdapter(appsAdapter);
        this.mSelectedAdapter.setItems(this.mOrderedViews);
        setClipToPadding(false);
        ItemViewMovementController.getInstance().setDraggableRecyclerView(this);
        addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    BlurRenderWatcher.getInstance().blur();
                }
            }
        });
        setItemAnimator(new MyItemAnimator());
        m191x54649feb(false);
    }

    public void applyChildState() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView.ViewHolder childViewHolder = getChildViewHolder(getChildAt(i));
            if (childViewHolder instanceof BaseViewHolder) {
                ((BaseViewHolder) childViewHolder).updateDeleteViewVisibility();
            }
        }
        int iFindFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = this.mLayoutManager.findLastVisibleItemPosition();
        int itemCount = this.mSelectedAdapter.getItemCount();
        this.mSelectedAdapter.notifyItemRangeChanged(0, iFindFirstVisibleItemPosition);
        if (iFindLastVisibleItemPosition < itemCount) {
            this.mSelectedAdapter.notifyItemRangeChanged(iFindLastVisibleItemPosition + 1, itemCount);
        }
    }

    private static class MyItemAnimator extends DefaultItemAnimator {
        private final Choreographer.FrameCallback mCallback;

        private MyItemAnimator() {
            this.mCallback = new Choreographer.FrameCallback() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView.MyItemAnimator.1
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long frameTimeNanos) {
                    BlurRenderWatcher.getInstance().blur();
                    if (MyItemAnimator.this.isRunning()) {
                        Choreographer.getInstance().postFrameCallback(this);
                    }
                }
            };
        }

        @Override // androidx.recyclerview.widget.SimpleItemAnimator
        public void onMoveStarting(RecyclerView.ViewHolder item) {
            super.onMoveStarting(item);
            Choreographer.getInstance().postFrameCallback(this.mCallback);
        }
    }

    public void setCellDimensions(int cellWidth, int cellHeight, GridOccupancy occupied) {
        MLog.d(TAG, "setCellDimensions: cellWidth=" + cellWidth + " cellHeight=" + cellHeight + " occupied=" + occupied);
        this.mCellWidth = cellWidth;
        this.mCellHeight = cellHeight;
        this.mOccupied = occupied;
        m191x54649feb(false);
    }

    private void modifyOccupiedCountX(int count) {
        GridOccupancy gridOccupancy = this.mOccupied;
        if (gridOccupancy == null) {
            return;
        }
        gridOccupancy.mCurrentCountX += count;
    }

    private void clearOccupiedCountX() {
        GridOccupancy gridOccupancy = this.mOccupied;
        if (gridOccupancy == null) {
            return;
        }
        gridOccupancy.mCurrentCountX = 0;
    }

    public void addItemView(View child) {
        this.mOrderedViews.add(child);
        updateAdapterInserted(this.mOrderedViews.size() - 1);
    }

    public void addItemView(View child, int index) {
        this.mOrderedViews.add(index, child);
        updateAdapterInserted(index);
    }

    public int addItemView(View child, int index, CellLayout.LayoutParams lp) {
        return addItemView(child, index, lp, false);
    }

    public int addItemView(View child, int index, CellLayout.LayoutParams lp, boolean scrollTo) {
        MLog.d(TAG, "addItemView: child=" + child + " index=" + index + " lp=" + lp + " " + Utilities.getStackTraceSingleLine(new Throwable()));
        child.setTag(LAYOUT_PARAMS_TAG_KEY, lp);
        modifyOccupiedCountX(lp.cellHSpan);
        DragShadowView dragShadowView = getDragShadowView();
        if (dragShadowView != null) {
            int iIndexOf = this.mOrderedViews.indexOf(dragShadowView);
            this.mOrderedViews.remove(iIndexOf);
            this.mOrderedViews.add(iIndexOf, child);
            updateAdapterChanged(iIndexOf);
            return iIndexOf;
        }
        int i = 0;
        if (this.mOrderedViews.isEmpty()) {
            this.mOrderedViews.add(0, child);
        } else {
            while (i < this.mOrderedViews.size() && lp.cellX > getIndexOfCellLayoutView(this.mOrderedViews.get(i))) {
                i++;
            }
            this.mOrderedViews.add(i, child);
        }
        updateAdapterInserted(i);
        if (scrollTo) {
            scrollToPosition(i);
        }
        return i;
    }

    private void handleAddedView(final View child) {
        Launcher launcher = Launcher.getLauncher(getContext());
        if (launcher.isInState(LauncherState.NORMAL)) {
            post(new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m189x4a021669(child);
                }
            });
        } else if (launcher.isInState(LauncherState.WIDGET_SPRING_LOADED)) {
            child.setVisibility(4);
            child.postDelayed(new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    child.setVisibility(0);
                }
            }, 200L);
        }
    }

    /* JADX INFO: renamed from: lambda$handleAddedView$0$com-android-launcher3-views-dragableviews-DraggableRecyclerView, reason: not valid java name */
    /* synthetic */ void m189x4a021669(View view) {
        int iIndexOf = this.mOrderedViews.indexOf(view);
        if (iIndexOf < this.mLayoutManager.findFirstVisibleItemPosition() || iIndexOf > this.mLayoutManager.findLastVisibleItemPosition() || !Launcher.getLauncher(getContext()).isInState(LauncherState.NORMAL)) {
            return;
        }
        View view2 = (View) view.getParent().getParent();
        final AnimatorSet animatorSet = new AnimatorSet();
        view2.setPivotX(view2.getWidth() * 0.9f);
        view2.setPivotY(view2.getHeight() * 0.7f);
        animatorSet.playTogether(getAnimator(view2, "scaleX", 0.0f, 1.0f), getAnimator(view2, "scaleY", 0.0f, 1.0f), getAnimator(view2, "alpha", 0.3f, 1.0f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation, boolean isReverse) {
                super.onAnimationEnd(animation, isReverse);
                BlurRenderWatcher.getInstance().blur();
                animatorSet.removeAllListeners();
            }
        });
        animatorSet.start();
    }

    public void showLastAddedView() {
        List<View> list = this.mOrderedViews;
        list.get(list.size() - 1).setVisibility(0);
    }

    private ObjectAnimator getAnimator(View view, String propertyName, float... args) {
        return ObjectAnimator.ofFloat(view, propertyName, args[0], args[1]).setDuration(350L);
    }

    private int getIndexOfCellLayoutView(View view) {
        return ((CellLayout.LayoutParams) view.getTag(LAYOUT_PARAMS_TAG_KEY)).cellX;
    }

    private void updateAdapterInserted(int position) {
        this.mSelectedAdapter.notifyItemInserted(position);
        post(new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m190x49cc7eec();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateAdapterInserted$2$com-android-launcher3-views-dragableviews-DraggableRecyclerView, reason: not valid java name */
    /* synthetic */ void m190x49cc7eec() {
        m191x54649feb(true);
    }

    private void updateAdapterChanged(int position) {
        this.mSelectedAdapter.notifyItemChanged(position);
        updatePaddingWhenItemChanged(false);
    }

    public int getItemChildCount() {
        return this.mOrderedViews.size();
    }

    public View getItemViewAt(int index) {
        return this.mOrderedViews.get(index);
    }

    public int getItemViewIndex(View view) {
        return this.mOrderedViews.indexOf(view);
    }

    public void removeAllItemViews() {
        doRemoveAllItemViews(false);
    }

    public void removeAllItemViewsInLayout() {
        doRemoveAllItemViews(true);
    }

    private void doRemoveAllItemViews(boolean delay) {
        final int size = this.mOrderedViews.size();
        this.mOrderedViews.clear();
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m186xfa324b12(size);
            }
        };
        if (delay) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
        clearOccupiedCountX();
    }

    /* JADX INFO: renamed from: lambda$doRemoveAllItemViews$3$com-android-launcher3-views-dragableviews-DraggableRecyclerView, reason: not valid java name */
    /* synthetic */ void m186xfa324b12(int i) {
        this.mSelectedAdapter.notifyItemRangeRemoved(0, i);
        updatePaddingWhenItemChanged(true);
    }

    public void removeItemViewAt(int index) {
        MLog.d(TAG, "removeItemViewAt: index=" + index);
        doRemoveItemViewAt(index, false);
    }

    public void removeItemView(View view) {
        int iIndexOf = this.mOrderedViews.indexOf(view);
        MLog.d(TAG, "removeItemView: index=" + iIndexOf + " child=" + view);
        doRemoveItemViewAt(iIndexOf, false);
    }

    public void removeItemViewByItemInfo(ItemInfo itemInfo) {
        if (itemInfo == null) {
            MLog.w(TAG, "removeItemViewByItemInfo: itemInfo is null");
            return;
        }
        MLog.d(TAG, "removeItemViewByItemInfo: itemInfo=" + itemInfo);
        View viewFindItemViewByItemInfo = findItemViewByItemInfo(itemInfo);
        if (viewFindItemViewByItemInfo != null) {
            removeItemView(viewFindItemViewByItemInfo);
        }
    }

    private View findItemViewByItemInfo(ItemInfo itemInfo) {
        if (itemInfo instanceof WorkspaceItemInfo) {
            return getItemView((WorkspaceItemInfo) itemInfo);
        }
        if (itemInfo instanceof LauncherAppWidgetInfo) {
            return getItemView((LauncherAppWidgetInfo) itemInfo);
        }
        return null;
    }

    private View getItemView(WorkspaceItemInfo info) {
        for (View view : this.mOrderedViews) {
            Object tag = view.getTag();
            if (tag instanceof WorkspaceItemInfo) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) tag;
                if (info.itemType == workspaceItemInfo.itemType && Objects.equals(info.getTargetComponent(), workspaceItemInfo.getTargetComponent())) {
                    return view;
                }
            }
        }
        return null;
    }

    private View getItemView(LauncherAppWidgetInfo info) {
        for (View view : this.mOrderedViews) {
            Object tag = view.getTag();
            if (tag instanceof LauncherAppWidgetInfo) {
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) tag;
                if (info.itemType == launcherAppWidgetInfo.itemType && Objects.equals(info.providerName, launcherAppWidgetInfo.providerName)) {
                    return view;
                }
            }
        }
        return null;
    }

    public void removeItemViewInLayout(View view) {
        int iIndexOf = this.mOrderedViews.indexOf(view);
        MLog.d(TAG, "removeItemViewInLayout: index=" + iIndexOf + " child=" + view);
        doRemoveItemViewAt(iIndexOf, true);
    }

    private void doRemoveItemViewAt(final int index, boolean delay) {
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m187x2e564204(index);
            }
        };
        if (delay) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: lambda$doRemoveItemViewAt$4$com-android-launcher3-views-dragableviews-DraggableRecyclerView, reason: not valid java name */
    /* synthetic */ void m187x2e564204(int i) {
        View viewRemove = this.mOrderedViews.remove(i);
        this.mSelectedAdapter.notifyItemRemoved(i);
        modifyOccupiedCountX(-((CellLayout.LayoutParams) viewRemove.getTag(LAYOUT_PARAMS_TAG_KEY)).cellHSpan);
        updatePaddingWhenItemChanged(true);
        MLog.d(TAG, "doRemoveItemViewAt: index=" + i + " removedView=" + viewRemove + " adapterSize=" + this.mSelectedAdapter.getItemCount());
    }

    public void removeItemViews(int start, int count) {
        MLog.d(TAG, "removeItemViews: start=" + start + " count=" + count);
        doRemoveItemViews(start, count, false);
    }

    public void removeItemViewsInLayout(int start, int count) {
        MLog.d(TAG, "removeItemViewsInLayout: start=" + start + " count=" + count);
        doRemoveItemViews(start, count, true);
    }

    private void doRemoveItemViews(final int start, final int count, boolean delay) {
        for (int i = 0; i < count; i++) {
            this.mOrderedViews.remove(start);
        }
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m188xf61a1e5d(start, count);
            }
        };
        if (delay) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: lambda$doRemoveItemViews$5$com-android-launcher3-views-dragableviews-DraggableRecyclerView, reason: not valid java name */
    /* synthetic */ void m188xf61a1e5d(int i, int i2) {
        this.mSelectedAdapter.notifyItemRangeRemoved(i, i2);
        updatePaddingWhenItemChanged(true);
    }

    public void updateDataBaseAfterSwitch() {
        this.mDataUpdater.run();
    }

    public int getCellContentHeight() {
        return Math.min(getMeasuredHeight(), this.mActivity.getDeviceProfile().getCellHeight(this.mContainerType));
    }

    public void updatePaddingWhenItemChanged(final boolean animate) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m191x54649feb(animate);
        } else {
            post(new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m191x54649feb(animate);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        MLog.d(TAG, "onSizeChanged: width=" + oldw + " -> " + w);
        m191x54649feb(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updatePadding, reason: merged with bridge method [inline-methods] */
    public void m191x54649feb(boolean animate) {
        Iterator<View> it = this.mOrderedViews.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((CellLayout.LayoutParams) it.next().getTag(LAYOUT_PARAMS_TAG_KEY)).cellHSpan;
        }
        int i2 = i * this.mCellWidth;
        cancelPaddingStartAnimator();
        cancelPaddingEndAnimator();
        int width = getWidth();
        int i3 = this.mPaddingWhenFilled;
        if (i2 >= width - (i3 * 2)) {
            if (animate) {
                setPaddingRelativeAnimated(i3, i3);
            } else {
                setPaddingRelative(i3, 0, i3, 0);
            }
            this.mMoreThanOneScreen = true;
            return;
        }
        if (animate) {
            setPaddingRelativeAnimated((getWidth() - i2) / 2, 0);
        } else {
            setPaddingRelative((getWidth() - i2) / 2, 0, 0, 0);
        }
        this.mMoreThanOneScreen = false;
    }

    private void setPaddingRelativeAnimated(int paddingStart, int paddingEnd) {
        if (paddingStart != getPaddingStart()) {
            cancelPaddingStartAnimator();
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, ViewExKt.PADDING_START, getPaddingStart(), paddingStart);
            objectAnimatorOfInt.setDuration(250L);
            objectAnimatorOfInt.start();
            setPaddingStartAnimator(objectAnimatorOfInt);
        }
        if (paddingEnd != getPaddingEnd()) {
            cancelPaddingEndAnimator();
            ObjectAnimator objectAnimatorOfInt2 = ObjectAnimator.ofInt(this, ViewExKt.PADDING_END, getPaddingEnd(), paddingEnd);
            objectAnimatorOfInt2.setDuration(250L);
            objectAnimatorOfInt2.start();
            setPaddingEndAnimator(objectAnimatorOfInt2);
        }
    }

    private void cancelPaddingStartAnimator() {
        Animator animator = getpaddingStartAnimator();
        if (animator != null) {
            animator.cancel();
            setPaddingStartAnimator(null);
        }
    }

    private void cancelPaddingEndAnimator() {
        Animator animator = getpaddingEndAnimator();
        if (animator != null) {
            animator.cancel();
            setPaddingEndAnimator(null);
        }
    }

    private Animator getpaddingStartAnimator() {
        Object tag = getTag(R.id.padding_start_animator);
        if (tag instanceof Animator) {
            return (Animator) tag;
        }
        return null;
    }

    private Animator getpaddingEndAnimator() {
        Object tag = getTag(R.id.padding_end_animator);
        if (tag instanceof Animator) {
            return (Animator) tag;
        }
        return null;
    }

    private void setPaddingStartAnimator(Animator animator) {
        setTag(R.id.padding_start_animator, animator);
    }

    private void setPaddingEndAnimator(Animator animator) {
        setTag(R.id.padding_end_animator, animator);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int position) {
        super.scrollToPosition(position);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                DraggableRecyclerView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                BlurRenderWatcher.getInstance().blur();
                return true;
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent e) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(e);
        TestLogging.noteLauncherTouch(this, "onInterceptTouchEvent", e, "handled=" + zOnInterceptTouchEvent + " scrollState=" + getScrollState() + " layoutSuppressed=" + isLayoutSuppressed());
        return zOnInterceptTouchEvent;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent e) {
        boolean zOnTouchEvent = super.onTouchEvent(e);
        int action = e.getAction();
        if (action == 1 || action == 3) {
            if (getScrollState() == 0) {
                scrollToNearest();
            } else {
                this.mScrollWhenIdle = true;
            }
        }
        TestLogging.noteLauncherTouch(this, "onTouchEvent", e, "handled=" + zOnTouchEvent);
        return zOnTouchEvent;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int state) {
        super.onScrollStateChanged(state);
        if (this.mScrollWhenIdle && state == 0) {
            this.mScrollWhenIdle = false;
            scrollToNearest();
        }
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    private void scrollToNearest() {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            if (linearLayoutManager.findLastCompletelyVisibleItemPosition() == getItemChildCount() - 1) {
                MLog.d(TAG, "scrollToNearest: to the end");
                return;
            }
            if (linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) {
                MLog.d(TAG, "scrollToNearest: to the start");
                return;
            }
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(linearLayoutManager.findFirstVisibleItemPosition());
            if (viewHolderFindViewHolderForAdapterPosition == null) {
                return;
            }
            if (isLayoutRTL()) {
                int right = viewHolderFindViewHolderForAdapterPosition.itemView.getRight();
                int width = viewHolderFindViewHolderForAdapterPosition.itemView.getWidth();
                int width2 = getWidth();
                MLog.d(TAG, "scrollToNearest: itemRight=" + right + " itemWidth=" + width + " " + getDebugString() + " " + getItemViewComponent(viewHolderFindViewHolderForAdapterPosition.itemView));
                if (right <= width2) {
                    smoothScrollBy(right - width2, 0);
                    return;
                }
                int i = right - width2;
                if (i < width / 2.0f) {
                    smoothScrollBy(i, 0);
                    return;
                } else {
                    smoothScrollBy(-(width - i), 0);
                    return;
                }
            }
            int left = viewHolderFindViewHolderForAdapterPosition.itemView.getLeft();
            int width3 = viewHolderFindViewHolderForAdapterPosition.itemView.getWidth();
            MLog.d(TAG, "scrollToNearest: itemLeft=" + left + " itemWidth=" + width3 + " " + getDebugString() + " " + getItemViewComponent(viewHolderFindViewHolderForAdapterPosition.itemView));
            if (left >= 0) {
                smoothScrollBy(left, 0);
            } else if ((-left) < width3 / 2.0f) {
                smoothScrollBy(left, 0);
            } else {
                smoothScrollBy(width3 + left, 0);
            }
        }
    }

    private String getDebugString() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Integer numValueOf = layoutParams instanceof ViewGroup.MarginLayoutParams ? Integer.valueOf(((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart()) : null;
        getLocationInWindow(this.mTmp);
        return "width=" + getWidth() + " ps=" + getPaddingStart() + " le=" + getLeft() + " tx=" + getTranslationX() + " ms=" + numValueOf + " lo=" + this.mTmp[0];
    }

    private int fixPosition(int position) {
        return Math.max(0, Math.min(position, getItemChildCount()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int dx, int dy) {
        notifyLocationChanged();
    }

    @Override // android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        notifyLocationChanged();
    }

    @Override // com.android.launcher3.views.dragableviews.LocationNotifier
    public void addOnLocationChangedListener(OnLocationChangedListener listener) {
        this.mLocationChangedListeners.add(listener);
        notifyLocationChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLocationChanged() {
        this.mLocationChangedListeners.forEach(new Workspace$$ExternalSyntheticLambda15());
    }

    @Override // com.android.launcher3.views.dragableviews.LocationNotifier
    public void removeOnLocationChangedListener(OnLocationChangedListener listener) {
        this.mLocationChangedListeners.remove(listener);
    }

    public int getItemCellXByPosition(int position, boolean ignoreDragShadowView) {
        int i = 0;
        for (int i2 = 0; i2 < this.mOrderedViews.size() && i2 != position; i2++) {
            View view = this.mOrderedViews.get(i2);
            if (!ignoreDragShadowView || !(view instanceof DragShadowView)) {
                i += ((CellLayout.LayoutParams) view.getTag(LAYOUT_PARAMS_TAG_KEY)).cellHSpan;
            }
        }
        return i;
    }

    public void updateItemCellX(boolean removeDragShadowView) {
        if (removeDragShadowView) {
            removeDragShadowView();
        }
        int i = 0;
        for (int i2 = 0; i2 < this.mOrderedViews.size(); i2++) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) this.mOrderedViews.get(i2).getTag(LAYOUT_PARAMS_TAG_KEY);
            layoutParams.cellX = i;
            i += layoutParams.cellHSpan;
        }
    }

    public View findItemViewGroupClosest(float centerX) {
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            if (childAt.getLeft() < centerX && childAt.getRight() > centerX) {
                return childAt;
            }
        }
        if (childCount > 0) {
            return getChildAt(0);
        }
        return null;
    }

    public View findItemView(View container) {
        ViewGroup viewGroup;
        if (!(container instanceof TouchListenerFrameLayout) || (viewGroup = (ViewGroup) ((TouchListenerFrameLayout) container).findViewById(R.id.widget_container)) == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getTag(LAYOUT_PARAMS_TAG_KEY) instanceof CellLayout.LayoutParams) {
                return childAt;
            }
        }
        return null;
    }

    public ComponentName getItemViewComponent(View container) {
        View viewFindItemView = findItemView(container);
        if (viewFindItemView == null) {
            return null;
        }
        Object tag = viewFindItemView.getTag();
        if (tag instanceof ItemInfo) {
            return ((ItemInfo) tag).getTargetComponent();
        }
        return null;
    }

    public ViewGroup getContainerView(View itemView) {
        while (true) {
            Object parent = itemView.getParent();
            if (parent instanceof TouchListenerFrameLayout) {
                return (ViewGroup) parent;
            }
            if (!(parent instanceof View)) {
                return null;
            }
            itemView = (View) parent;
        }
    }

    public void removeDragShadowView() {
        for (int size = this.mOrderedViews.size() - 1; size >= 0; size--) {
            View view = this.mOrderedViews.get(size);
            if (view instanceof DragShadowView) {
                removeItemView(view);
            }
        }
    }

    private int findTargetPosition(int cellX) {
        if (this.mOrderedViews.isEmpty()) {
            return 0;
        }
        for (int i = 0; i < this.mOrderedViews.size(); i++) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) this.mOrderedViews.get(i).getTag(LAYOUT_PARAMS_TAG_KEY);
            if (cellX >= layoutParams.cellX && cellX < layoutParams.cellX + layoutParams.cellHSpan) {
                return i;
            }
        }
        return -1;
    }

    public DragShadowView getDragShadowView() {
        for (int size = this.mOrderedViews.size() - 1; size >= 0; size--) {
            View view = this.mOrderedViews.get(size);
            if (view instanceof DragShadowView) {
                return (DragShadowView) view;
            }
        }
        return null;
    }

    public void onDragEnter() {
        MLog.d(TAG, "onDragEnter: ");
        updateItemCellX(true);
    }

    public void onDragExit(DropTarget.DragObject d) {
        MLog.d(TAG, "onDragExit: deferRemoveShadowView=" + d.deferRemoveShadowView);
        if (d.deferRemoveShadowView) {
            updateItemCellX(false);
            postDelayed(this.mRemoveDragShadowViewDefer, 350L);
        } else {
            updateItemCellX(true);
        }
    }

    public void visualizeDropLocation(int cellX, int cellY, int spanX, int spanY, DropTarget.DragObject dragObject) {
        int childAdapterPosition;
        MLog.d(TAG, "visualizeDropLocation: x=" + dragObject.x + " y=" + dragObject.y + " scrollX=" + getScrollX());
        this.mTmpPoint[0] = dragObject.x;
        this.mTmpPoint[1] = dragObject.y;
        Utilities.mapCoordInSelfToDescendant(this, (View) dragObject.dropTarget, this.mTmpPoint);
        float[] fArr = this.mTmpPoint;
        View viewFindChildViewUnder = findChildViewUnder(fArr[0], fArr[1]);
        if (viewFindChildViewUnder == null) {
            MLog.d(TAG, "visualizeDropLocation: container not found.");
            return;
        }
        int childAdapterPosition2 = getChildAdapterPosition(viewFindChildViewUnder);
        View viewFindItemView = findItemView(viewFindChildViewUnder);
        RecyclerView.ItemAnimator itemAnimator = getItemAnimator();
        if (viewFindItemView == null || (viewFindItemView instanceof DragShadowView) || (itemAnimator != null && itemAnimator.isRunning())) {
            MLog.d(TAG, "visualizeDropLocation: ignore.");
            return;
        }
        updateItemCellX(false);
        DragShadowView dragShadowView = getDragShadowView();
        if (dragShadowView == null) {
            MLog.d(TAG, "visualizeDropLocation: add shadow view");
            if ((!isLayoutRTL() && this.mTmpPoint[0] > viewFindChildViewUnder.getLeft() + (viewFindChildViewUnder.getWidth() / 2.0f)) || (isLayoutRTL() && this.mTmpPoint[0] < viewFindChildViewUnder.getLeft() + (viewFindChildViewUnder.getWidth() / 2.0f))) {
                childAdapterPosition2++;
            }
            CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(getItemCellXByPosition(childAdapterPosition2, true), cellY, spanX, spanY);
            DragShadowView dragShadowView2 = new DragShadowView(getContext());
            dragShadowView2.setTag(dragObject.dragInfo);
            addItemView(dragShadowView2, childAdapterPosition2, layoutParams, false);
            updateItemCellX(false);
            return;
        }
        ViewGroup containerView = getContainerView(dragShadowView);
        if (containerView == null || (childAdapterPosition = getChildAdapterPosition(containerView)) == childAdapterPosition2) {
            return;
        }
        if (isLayoutRTL()) {
            if (childAdapterPosition == childAdapterPosition2 - 1 && this.mTmpPoint[0] >= viewFindChildViewUnder.getLeft() + (viewFindChildViewUnder.getWidth() / 2.0f)) {
                return;
            }
            if (childAdapterPosition == childAdapterPosition2 + 1 && this.mTmpPoint[0] <= viewFindChildViewUnder.getLeft() + (viewFindChildViewUnder.getWidth() / 2.0f)) {
                return;
            }
        } else {
            if (childAdapterPosition == childAdapterPosition2 - 1 && this.mTmpPoint[0] < viewFindChildViewUnder.getLeft() + (viewFindChildViewUnder.getWidth() / 2.0f)) {
                return;
            }
            if (childAdapterPosition == childAdapterPosition2 + 1 && this.mTmpPoint[0] > viewFindChildViewUnder.getLeft() + (viewFindChildViewUnder.getWidth() / 2.0f)) {
                return;
            }
        }
        List<View> list = this.mOrderedViews;
        list.add(childAdapterPosition2, list.remove(childAdapterPosition));
        this.mSelectedAdapter.notifyItemMoved(childAdapterPosition, childAdapterPosition2);
        updateItemCellX(false);
    }

    public void onDropChild(View child) {
        tryUpdateCellXToDatabase();
    }

    public void tryUpdateCellXToDatabase() {
        int itemChildCount = getItemChildCount();
        int i = 0;
        for (int i2 = 0; i2 < itemChildCount; i2++) {
            View itemViewAt = getItemViewAt(i2);
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) itemViewAt.getTag(LAYOUT_PARAMS_TAG_KEY);
            ItemInfo itemInfo = (ItemInfo) itemViewAt.getTag();
            if (itemInfo != null && itemInfo.cellX != i) {
                itemInfo.cellX = i;
                itemInfo.cellY = layoutParams.cellY;
                itemInfo.spanX = layoutParams.cellHSpan;
                itemInfo.spanY = layoutParams.cellVSpan;
                Launcher.cast(this.mActivity).getModelWriter().modifyItemInDatabase(itemInfo, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
            }
            i += layoutParams.cellHSpan;
        }
    }

    public Rect getLastViewLocation() {
        Rect rect = new Rect();
        getLastViewLocation(rect);
        return rect;
    }

    public void getLastViewLocation(Rect outRect) {
        if (getItemChildCount() == 0) {
            return;
        }
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        Iterator<View> it = this.mOrderedViews.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((CellLayout.LayoutParams) it.next().getTag(LAYOUT_PARAMS_TAG_KEY)).cellHSpan;
        }
        int width = (getWidth() - (i * this.mCellWidth)) / 2;
        int i2 = ((CellLayout.LayoutParams) getItemViewAt(getItemChildCount() - 1).getTag(LAYOUT_PARAMS_TAG_KEY)).cellHSpan * this.mCellWidth;
        int i3 = this.mCellHeight;
        int width2 = (getWidth() - width) - this.mItemInset;
        int i4 = width2 - i2;
        int i5 = iArr[1];
        outRect.set(i4, i5, width2, i3 + i5);
    }

    public static class DraggableLayoutManager extends LinearLayoutManager {
        private boolean mIsInDropping;

        public DraggableLayoutManager(Context context) {
            super(context, 0, false);
            this.mIsInDropping = false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void scrollToPositionWithOffset(int position, int offset) {
            super.scrollToPositionWithOffset(position, offset + (this.mIsInDropping ? -getPaddingStart() : 0));
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
        public void prepareForDrop(View view, View target, int x, int y) {
            this.mIsInDropping = true;
            super.prepareForDrop(view, target, x, y);
            this.mIsInDropping = false;
        }
    }

    public class AppsAdapter extends DraggableAdapter<BaseViewHolder, View> {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return 0;
        }

        public AppsAdapter(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return DraggableRecyclerView.this.new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.draggable_recyclerview_item_layout, parent, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(BaseViewHolder holder, int position) {
            holder.render((View) this.mAdapterItems.get(position), position);
        }

        @Override // com.android.launcher3.views.dragableviews.DraggableAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mAdapterItems.size();
        }
    }

    public class BaseViewHolder extends RecyclerView.ViewHolder {
        private final BlurView mBlurView;
        private final Size mBubbleTextViewSize;
        private View mCurrentView;
        private final View mDeleteView;
        private boolean mDragging;
        private final int[] mLocation;
        private final TouchListenerFrameLayout mViewGroup;
        private final ViewGroup mWidgetContainer;
        private final Size mWidgetSize;

        public BaseViewHolder(View itemView) {
            super(itemView);
            this.mBubbleTextViewSize = new Size(193, 171);
            this.mWidgetSize = new Size(419, 171);
            this.mLocation = new int[2];
            TouchListenerFrameLayout touchListenerFrameLayout = (TouchListenerFrameLayout) itemView.findViewById(R.id.draggable_content_view);
            this.mViewGroup = touchListenerFrameLayout;
            this.mWidgetContainer = (ViewGroup) itemView.findViewById(R.id.widget_container);
            this.mBlurView = (BlurView) itemView.findViewById(R.id.blur_view);
            this.mDeleteView = itemView.findViewById(R.id.iv_delete);
            touchListenerFrameLayout.setTouchEventListener(new Consumer() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$BaseViewHolder$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.m193x863578da((MotionEvent) obj);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-views-dragableviews-DraggableRecyclerView$BaseViewHolder, reason: not valid java name */
        /* synthetic */ void m193x863578da(MotionEvent motionEvent) {
            this.mCurrentView.getLocationOnScreen(this.mLocation);
            boolean z = false;
            if (((int) motionEvent.getRawX()) >= this.mLocation[0] && ((int) motionEvent.getRawX()) <= this.mLocation[0] + this.mCurrentView.getWidth() && ((int) motionEvent.getRawY()) >= this.mLocation[1] && ((int) motionEvent.getRawY()) <= this.mLocation[1] + this.mCurrentView.getHeight()) {
                z = true;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                if (z && !Launcher.getLauncher(DraggableRecyclerView.this.getContext()).getStateManager().isInWidgetEditState()) {
                    startScaleAnimation(0.95f);
                    return;
                }
                return;
            }
            if (action == 1 || action == 3 || action == 4) {
                startScaleAnimation(1.0f);
            }
        }

        public void render(final View view, int position) {
            MLog.d(DraggableRecyclerView.TAG, "render: position=" + position + " info=" + view.getTag());
            this.mCurrentView = view;
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getTag(DraggableRecyclerView.LAYOUT_PARAMS_TAG_KEY);
            boolean z = view instanceof BubbleTextView;
            Size size = z ? this.mBubbleTextViewSize : this.mWidgetSize;
            if (view instanceof DragShadowView) {
                size = layoutParams.cellHSpan == 1 ? this.mBubbleTextViewSize : this.mWidgetSize;
            }
            int iDp2px = Utilities.dp2px(this.mBlurView.getContext(), size.getWidth());
            int iDp2px2 = Utilities.dp2px(this.mBlurView.getContext(), size.getHeight());
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iDp2px, iDp2px2);
            layoutParams2.gravity = 17;
            this.mBlurView.setLayoutParams(layoutParams2);
            ViewGroup.LayoutParams layoutParams3 = this.mViewGroup.getLayoutParams();
            layoutParams3.width = DraggableRecyclerView.this.mCellWidth * layoutParams.cellHSpan;
            layoutParams3.height = DraggableRecyclerView.this.mCellHeight;
            this.mViewGroup.setLayoutParams(layoutParams3);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(iDp2px, iDp2px2);
            layoutParams4.gravity = 17;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeAllViews();
            }
            this.mWidgetContainer.removeAllViews();
            this.mWidgetContainer.addView(view, layoutParams4);
            final Launcher launcher = Launcher.getLauncher(DraggableRecyclerView.this.getContext());
            this.mDeleteView.setVisibility(getDeleteViewVisibility(view));
            this.mDeleteView.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$BaseViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m195x2d09dea7(view, launcher, view2);
                }
            });
            this.mDeleteView.setAlpha(view.getAlpha());
            if (z) {
                final View view2 = this.mDeleteView;
                Objects.requireNonNull(view2);
                ((BubbleTextView) view).setAlphaListener(new OnAlphaChangedListener() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$BaseViewHolder$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.OnAlphaChangedListener
                    public final void onAlphaChanged(float f) {
                        view2.setAlpha(f);
                    }
                });
            } else if (view instanceof LauncherAppWidgetHostView) {
                final View view3 = this.mDeleteView;
                Objects.requireNonNull(view3);
                ((LauncherAppWidgetHostView) view).setAlphaListener(new OnAlphaChangedListener() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$BaseViewHolder$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.OnAlphaChangedListener
                    public final void onAlphaChanged(float f) {
                        view3.setAlpha(f);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$render$3$com-android-launcher3-views-dragableviews-DraggableRecyclerView$BaseViewHolder, reason: not valid java name */
        /* synthetic */ void m195x2d09dea7(final View view, final Launcher launcher, View view2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - DraggableRecyclerView.this.mLastClickTime < DraggableRecyclerView.CLICK_INTERVAL) {
                return;
            }
            DraggableRecyclerView.this.mLastClickTime = jElapsedRealtime;
            this.mDeleteView.animate().scaleX(0.8f).scaleY(0.8f).setDuration(100L).withEndAction(new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$BaseViewHolder$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m194x4f1678c8(view, launcher);
                }
            }).start();
        }

        /* JADX INFO: renamed from: lambda$render$2$com-android-launcher3-views-dragableviews-DraggableRecyclerView$BaseViewHolder, reason: not valid java name */
        /* synthetic */ void m194x4f1678c8(final View view, final Launcher launcher) {
            this.mDeleteView.setScaleX(1.0f);
            this.mDeleteView.setScaleY(1.0f);
            ItemViewMovementController.getInstance().handleViewMovement(view, true, new Runnable() { // from class: com.android.launcher3.views.dragableviews.DraggableRecyclerView$BaseViewHolder$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Launcher launcher2 = launcher;
                    View view2 = view;
                    ItemClickHandler.removeItem(launcher2, view2, (ItemInfo) view2.getTag());
                }
            });
        }

        private int getDeleteViewVisibility(View view) {
            ComponentName targetComponent;
            if ((view instanceof DragShadowView) || this.mDragging) {
                return 8;
            }
            Object tag = view.getTag();
            return (!((tag instanceof ItemInfo) && (targetComponent = ((ItemInfo) tag).getTargetComponent()) != null && Const.isCantRemoveWidget(targetComponent)) && Launcher.getLauncher(DraggableRecyclerView.this.getContext()).getStateManager().isInWidgetEditState()) ? 0 : 8;
        }

        public void enterDragState() {
            this.mDragging = true;
            updateDeleteViewVisibility();
            startScaleAnimation(1.1f);
        }

        public void exitDragState() {
            this.mDragging = false;
            updateDeleteViewVisibility();
            DraggableRecyclerView.this.notifyLocationChanged();
            startScaleAnimation(1.0f);
        }

        private void startScaleAnimation(float to) {
            this.mViewGroup.animate().scaleX(to).scaleY(to).setDuration(100L).start();
        }

        public void updateDeleteViewVisibility() {
            View view = this.mCurrentView;
            if (view != null) {
                this.mDeleteView.setVisibility(getDeleteViewVisibility(view));
            }
        }
    }
}
