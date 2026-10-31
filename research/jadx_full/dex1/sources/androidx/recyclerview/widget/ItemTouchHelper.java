package androidx.recyclerview.widget;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.recyclerview.R$dimen;
import j1.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper extends RecyclerView$ItemDecoration implements RecyclerView$OnChildAttachStateChangeListener {
    static final int ACTION_MODE_DRAG_MASK = 16711680;
    private static final int ACTION_MODE_IDLE_MASK = 255;
    static final int ACTION_MODE_SWIPE_MASK = 65280;
    public static final int ACTION_STATE_DRAG = 2;
    public static final int ACTION_STATE_IDLE = 0;
    public static final int ACTION_STATE_SWIPE = 1;
    private static final int ACTIVE_POINTER_ID_NONE = -1;
    public static final int ANIMATION_TYPE_DRAG = 8;
    public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
    public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
    private static final boolean DEBUG = false;
    static final int DIRECTION_FLAG_COUNT = 8;
    public static final int DOWN = 2;
    public static final int END = 32;
    public static final int LEFT = 4;
    private static final int PIXELS_PER_SECOND = 1000;
    public static final int RIGHT = 8;
    public static final int START = 16;
    private static final String TAG = "ItemTouchHelper";
    public static final int UP = 1;

    @NonNull
    ItemTouchHelper$Callback mCallback;
    private List<Integer> mDistances;
    private long mDragScrollStartTimeInMs;
    float mDx;
    float mDy;
    GestureDetector mGestureDetector;
    float mInitialTouchX;
    float mInitialTouchY;
    private ItemTouchHelper$ItemTouchHelperGestureListener mItemTouchHelperGestureListener;
    private float mMaxSwipeVelocity;
    RecyclerView mRecyclerView;
    int mSelectedFlags;
    private float mSelectedStartX;
    private float mSelectedStartY;
    private int mSlop;
    private List<RecyclerView$ViewHolder> mSwapTargets;
    private float mSwipeEscapeVelocity;
    private Rect mTmpRect;
    VelocityTracker mVelocityTracker;
    final List<View> mPendingCleanup = new ArrayList();
    private final float[] mTmpPosition = new float[2];
    RecyclerView$ViewHolder mSelected = null;
    int mActivePointerId = -1;
    private int mActionState = 0;

    @VisibleForTesting
    List<ItemTouchHelper$RecoverAnimation> mRecoverAnimations = new ArrayList();
    final Runnable mScrollRunnable = new ItemTouchHelper$1(this);
    private RecyclerView$ChildDrawingOrderCallback mChildDrawingOrderCallback = null;
    View mOverdrawChild = null;
    int mOverdrawChildPosition = -1;
    private final RecyclerView$OnItemTouchListener mOnItemTouchListener = new ItemTouchHelper$2(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper(@NonNull ItemTouchHelper$Callback itemTouchHelper$Callback) {
        this.mCallback = itemTouchHelper$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int checkHorizontalSwipe(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        if ((i9 & 12) == 0) {
            return 0;
        }
        int i10 = this.mDx > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null && this.mActivePointerId > -1) {
            velocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i11 = xVelocity > 0.0f ? 8 : 4;
            float fAbs = Math.abs(xVelocity);
            if ((i11 & i9) != 0 && i10 == i11 && fAbs >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && fAbs > Math.abs(yVelocity)) {
                return i11;
            }
        }
        float swipeThreshold = this.mCallback.getSwipeThreshold(recyclerView$ViewHolder) * this.mRecyclerView.getWidth();
        if ((i9 & i10) == 0 || Math.abs(this.mDx) <= swipeThreshold) {
            return 0;
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int checkVerticalSwipe(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        if ((i9 & 3) == 0) {
            return 0;
        }
        int i10 = this.mDy > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null && this.mActivePointerId > -1) {
            velocityTracker.computeCurrentVelocity(1000, this.mCallback.getSwipeVelocityThreshold(this.mMaxSwipeVelocity));
            float xVelocity = this.mVelocityTracker.getXVelocity(this.mActivePointerId);
            float yVelocity = this.mVelocityTracker.getYVelocity(this.mActivePointerId);
            int i11 = yVelocity > 0.0f ? 2 : 1;
            float fAbs = Math.abs(yVelocity);
            if ((i11 & i9) != 0 && i11 == i10 && fAbs >= this.mCallback.getSwipeEscapeVelocity(this.mSwipeEscapeVelocity) && fAbs > Math.abs(xVelocity)) {
                return i11;
            }
        }
        float swipeThreshold = this.mCallback.getSwipeThreshold(recyclerView$ViewHolder) * this.mRecyclerView.getHeight();
        if ((i9 & i10) == 0 || Math.abs(this.mDy) <= swipeThreshold) {
            return 0;
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x0019 */
    private void destroyCallbacks() {
        this.mRecyclerView.removeItemDecoration(this);
        this.mRecyclerView.removeOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.removeOnChildAttachStateChangeListener(this);
        int size = this.mRecoverAnimations.size();
        while (true) {
            size--;
            List<ItemTouchHelper$RecoverAnimation> list = this.mRecoverAnimations;
            if (size < 0) {
                list.clear();
                this.mOverdrawChild = null;
                this.mOverdrawChildPosition = -1;
                releaseVelocityTracker();
                stopGestureDetection();
                return;
            }
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = list.get(0);
            itemTouchHelper$RecoverAnimation.cancel();
            this.mCallback.clearView(this.mRecyclerView, itemTouchHelper$RecoverAnimation.mViewHolder);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private List<RecyclerView$ViewHolder> findSwapTargets(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = recyclerView$ViewHolder;
        List<RecyclerView$ViewHolder> list = this.mSwapTargets;
        if (list == null) {
            this.mSwapTargets = new ArrayList();
            this.mDistances = new ArrayList();
        } else {
            list.clear();
            this.mDistances.clear();
        }
        int boundingBoxMargin = this.mCallback.getBoundingBoxMargin();
        int iRound = Math.round(this.mSelectedStartX + this.mDx) - boundingBoxMargin;
        int iRound2 = Math.round(this.mSelectedStartY + this.mDy) - boundingBoxMargin;
        int i9 = boundingBoxMargin * 2;
        int width = recyclerView$ViewHolder2.itemView.getWidth() + iRound + i9;
        int height = recyclerView$ViewHolder2.itemView.getHeight() + iRound2 + i9;
        int i10 = (iRound + width) / 2;
        int i11 = (iRound2 + height) / 2;
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = layoutManager.getChildAt(i12);
            if (childAt != recyclerView$ViewHolder2.itemView && childAt.getBottom() >= iRound2 && childAt.getTop() <= height && childAt.getRight() >= iRound && childAt.getLeft() <= width) {
                RecyclerView$ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(childAt);
                if (this.mCallback.canDropOver(this.mRecyclerView, this.mSelected, childViewHolder)) {
                    int iAbs = Math.abs(i10 - ((childAt.getRight() + childAt.getLeft()) / 2));
                    int iAbs2 = Math.abs(i11 - ((childAt.getBottom() + childAt.getTop()) / 2));
                    int i13 = (iAbs2 * iAbs2) + (iAbs * iAbs);
                    int size = this.mSwapTargets.size();
                    int i14 = 0;
                    for (int i15 = 0; i15 < size && i13 > this.mDistances.get(i15).intValue(); i15++) {
                        i14++;
                    }
                    this.mSwapTargets.add(i14, childViewHolder);
                    this.mDistances.add(i14, Integer.valueOf(i13));
                }
            }
            i12++;
            recyclerView$ViewHolder2 = recyclerView$ViewHolder;
        }
        return this.mSwapTargets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RecyclerView$ViewHolder findSwipedView(MotionEvent motionEvent) {
        View viewFindChildView;
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        int i9 = this.mActivePointerId;
        if (i9 == -1) {
            return null;
        }
        int iFindPointerIndex = motionEvent.findPointerIndex(i9);
        float x8 = motionEvent.getX(iFindPointerIndex) - this.mInitialTouchX;
        float y8 = motionEvent.getY(iFindPointerIndex) - this.mInitialTouchY;
        float fAbs = Math.abs(x8);
        float fAbs2 = Math.abs(y8);
        int i10 = this.mSlop;
        if (fAbs < i10 && fAbs2 < i10) {
            return null;
        }
        if (fAbs > fAbs2 && layoutManager.canScrollHorizontally()) {
            return null;
        }
        if ((fAbs2 <= fAbs || !layoutManager.canScrollVertically()) && (viewFindChildView = findChildView(motionEvent)) != null) {
            return this.mRecyclerView.getChildViewHolder(viewFindChildView);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void getSelectedDxDy(float[] fArr) {
        if ((this.mSelectedFlags & 12) != 0) {
            fArr[0] = (this.mSelectedStartX + this.mDx) - this.mSelected.itemView.getLeft();
        } else {
            fArr[0] = this.mSelected.itemView.getTranslationX();
        }
        if ((this.mSelectedFlags & 3) != 0) {
            fArr[1] = (this.mSelectedStartY + this.mDy) - this.mSelected.itemView.getTop();
        } else {
            fArr[1] = this.mSelected.itemView.getTranslationY();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean hitTest(View view, float f8, float f9, float f10, float f11) {
        return f8 >= f10 && f8 <= f10 + ((float) view.getWidth()) && f9 >= f11 && f9 <= f11 + ((float) view.getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void releaseVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupCallbacks() {
        this.mSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
        this.mRecyclerView.addItemDecoration(this);
        this.mRecyclerView.addOnItemTouchListener(this.mOnItemTouchListener);
        this.mRecyclerView.addOnChildAttachStateChangeListener(this);
        startGestureDetection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void startGestureDetection() {
        this.mItemTouchHelperGestureListener = new ItemTouchHelper$ItemTouchHelperGestureListener(this);
        this.mGestureDetector = new GestureDetector(this.mRecyclerView.getContext(), this.mItemTouchHelperGestureListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void stopGestureDetection() {
        ItemTouchHelper$ItemTouchHelperGestureListener itemTouchHelper$ItemTouchHelperGestureListener = this.mItemTouchHelperGestureListener;
        if (itemTouchHelper$ItemTouchHelperGestureListener != null) {
            itemTouchHelper$ItemTouchHelperGestureListener.doNotReactToLongPress();
            this.mItemTouchHelperGestureListener = null;
        }
        if (this.mGestureDetector != null) {
            this.mGestureDetector = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int swipeIfNecessary(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (this.mActionState == 2) {
            return 0;
        }
        int movementFlags = this.mCallback.getMovementFlags(this.mRecyclerView, recyclerView$ViewHolder);
        int iConvertToAbsoluteDirection = (this.mCallback.convertToAbsoluteDirection(movementFlags, this.mRecyclerView.getLayoutDirection()) & 65280) >> 8;
        if (iConvertToAbsoluteDirection == 0) {
            return 0;
        }
        int i9 = (movementFlags & 65280) >> 8;
        if (Math.abs(this.mDx) > Math.abs(this.mDy)) {
            int iCheckHorizontalSwipe = checkHorizontalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckHorizontalSwipe > 0) {
                return (i9 & iCheckHorizontalSwipe) == 0 ? ItemTouchHelper$Callback.convertToRelativeDirection(iCheckHorizontalSwipe, this.mRecyclerView.getLayoutDirection()) : iCheckHorizontalSwipe;
            }
            int iCheckVerticalSwipe = checkVerticalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckVerticalSwipe > 0) {
                return iCheckVerticalSwipe;
            }
        } else {
            int iCheckVerticalSwipe2 = checkVerticalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckVerticalSwipe2 > 0) {
                return iCheckVerticalSwipe2;
            }
            int iCheckHorizontalSwipe2 = checkHorizontalSwipe(recyclerView$ViewHolder, iConvertToAbsoluteDirection);
            if (iCheckHorizontalSwipe2 > 0) {
                return (i9 & iCheckHorizontalSwipe2) == 0 ? ItemTouchHelper$Callback.convertToRelativeDirection(iCheckHorizontalSwipe2, this.mRecyclerView.getLayoutDirection()) : iCheckHorizontalSwipe2;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.mSwipeEscapeVelocity = resources.getDimension(R$dimen.item_touch_helper_swipe_escape_velocity);
            this.mMaxSwipeVelocity = resources.getDimension(R$dimen.item_touch_helper_swipe_escape_max_velocity);
            setupCallbacks();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkSelectForSwipe(int i9, MotionEvent motionEvent, int i10) {
        RecyclerView$ViewHolder recyclerView$ViewHolderFindSwipedView;
        int absoluteMovementFlags;
        if (this.mSelected != null || i9 != 2 || this.mActionState == 2 || !this.mCallback.isItemViewSwipeEnabled() || this.mRecyclerView.getScrollState() == 1 || (recyclerView$ViewHolderFindSwipedView = findSwipedView(motionEvent)) == null || (absoluteMovementFlags = (this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, recyclerView$ViewHolderFindSwipedView) & 65280) >> 8) == 0) {
            return;
        }
        float x8 = motionEvent.getX(i10);
        float y8 = motionEvent.getY(i10);
        float f8 = x8 - this.mInitialTouchX;
        float f9 = y8 - this.mInitialTouchY;
        float fAbs = Math.abs(f8);
        float fAbs2 = Math.abs(f9);
        int i11 = this.mSlop;
        if (fAbs >= i11 || fAbs2 >= i11) {
            if (fAbs > fAbs2) {
                if (f8 < 0.0f && (absoluteMovementFlags & 4) == 0) {
                    return;
                }
                if (f8 > 0.0f && (absoluteMovementFlags & 8) == 0) {
                    return;
                }
            } else {
                if (f9 < 0.0f && (absoluteMovementFlags & 1) == 0) {
                    return;
                }
                if (f9 > 0.0f && (absoluteMovementFlags & 2) == 0) {
                    return;
                }
            }
            this.mDy = 0.0f;
            this.mDx = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(0);
            select(recyclerView$ViewHolderFindSwipedView, 1);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void endRecoverAnimation(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z8) {
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(size);
            if (itemTouchHelper$RecoverAnimation.mViewHolder == recyclerView$ViewHolder) {
                itemTouchHelper$RecoverAnimation.mOverridden |= z8;
                if (!itemTouchHelper$RecoverAnimation.mEnded) {
                    itemTouchHelper$RecoverAnimation.cancel();
                }
                this.mRecoverAnimations.remove(size);
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$RecoverAnimation findAnimation(MotionEvent motionEvent) {
        if (this.mRecoverAnimations.isEmpty()) {
            return null;
        }
        View viewFindChildView = findChildView(motionEvent);
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(size);
            if (itemTouchHelper$RecoverAnimation.mViewHolder.itemView == viewFindChildView) {
                return itemTouchHelper$RecoverAnimation;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findChildView(MotionEvent motionEvent) {
        float x8 = motionEvent.getX();
        float y8 = motionEvent.getY();
        RecyclerView$ViewHolder recyclerView$ViewHolder = this.mSelected;
        if (recyclerView$ViewHolder != null) {
            View view = recyclerView$ViewHolder.itemView;
            if (hitTest(view, x8, y8, this.mSelectedStartX + this.mDx, this.mSelectedStartY + this.mDy)) {
                return view;
            }
        }
        for (int size = this.mRecoverAnimations.size() - 1; size >= 0; size--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = this.mRecoverAnimations.get(size);
            View view2 = itemTouchHelper$RecoverAnimation.mViewHolder.itemView;
            if (hitTest(view2, x8, y8, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY)) {
                return view2;
            }
        }
        return this.mRecyclerView.findChildViewUnder(x8, y8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        rect.setEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasRunningRecoverAnim() {
        int size = this.mRecoverAnimations.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (!this.mRecoverAnimations.get(i9).mEnded) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void moveIfNecessary(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (!this.mRecyclerView.isLayoutRequested() && this.mActionState == 2) {
            float moveThreshold = this.mCallback.getMoveThreshold(recyclerView$ViewHolder);
            int i9 = (int) (this.mSelectedStartX + this.mDx);
            int i10 = (int) (this.mSelectedStartY + this.mDy);
            if (Math.abs(i10 - recyclerView$ViewHolder.itemView.getTop()) >= recyclerView$ViewHolder.itemView.getHeight() * moveThreshold || Math.abs(i9 - recyclerView$ViewHolder.itemView.getLeft()) >= recyclerView$ViewHolder.itemView.getWidth() * moveThreshold) {
                List<RecyclerView$ViewHolder> listFindSwapTargets = findSwapTargets(recyclerView$ViewHolder);
                if (listFindSwapTargets.size() == 0) {
                    return;
                }
                RecyclerView$ViewHolder recyclerView$ViewHolderChooseDropTarget = this.mCallback.chooseDropTarget(recyclerView$ViewHolder, listFindSwapTargets, i9, i10);
                if (recyclerView$ViewHolderChooseDropTarget == null) {
                    this.mSwapTargets.clear();
                    this.mDistances.clear();
                    return;
                }
                int absoluteAdapterPosition = recyclerView$ViewHolderChooseDropTarget.getAbsoluteAdapterPosition();
                int absoluteAdapterPosition2 = recyclerView$ViewHolder.getAbsoluteAdapterPosition();
                if (this.mCallback.onMove(this.mRecyclerView, recyclerView$ViewHolder, recyclerView$ViewHolderChooseDropTarget)) {
                    this.mCallback.onMoved(this.mRecyclerView, recyclerView$ViewHolder, absoluteAdapterPosition2, recyclerView$ViewHolderChooseDropTarget, absoluteAdapterPosition, i9, i10);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void obtainVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.mVelocityTracker = VelocityTracker.obtain();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        removeChildDrawingOrderCallbackIfNecessary(view);
        RecyclerView$ViewHolder childViewHolder = this.mRecyclerView.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView$ViewHolder recyclerView$ViewHolder = this.mSelected;
        if (recyclerView$ViewHolder != null && childViewHolder == recyclerView$ViewHolder) {
            select(null, 0);
            return;
        }
        endRecoverAnimation(childViewHolder, false);
        if (this.mPendingCleanup.remove(childViewHolder.itemView)) {
            this.mCallback.clearView(this.mRecyclerView, childViewHolder);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        float f8;
        float f9;
        this.mOverdrawChildPosition = -1;
        if (this.mSelected != null) {
            getSelectedDxDy(this.mTmpPosition);
            float[] fArr = this.mTmpPosition;
            float f10 = fArr[0];
            f9 = fArr[1];
            f8 = f10;
        } else {
            f8 = 0.0f;
            f9 = 0.0f;
        }
        this.mCallback.onDraw(canvas, recyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemDecoration
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView$State recyclerView$State) {
        float f8;
        float f9;
        if (this.mSelected != null) {
            getSelectedDxDy(this.mTmpPosition);
            float[] fArr = this.mTmpPosition;
            float f10 = fArr[0];
            f9 = fArr[1];
            f8 = f10;
        } else {
            f8 = 0.0f;
            f9 = 0.0f;
        }
        this.mCallback.onDrawOver(canvas, recyclerView, this.mSelected, this.mRecoverAnimations, this.mActionState, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postDispatchSwipe(ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation, int i9) {
        this.mRecyclerView.post(new ItemTouchHelper$4(this, itemTouchHelper$RecoverAnimation, i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeChildDrawingOrderCallbackIfNecessary(View view) {
        if (view == this.mOverdrawChild) {
            this.mOverdrawChild = null;
            if (this.mChildDrawingOrderCallback != null) {
                this.mRecyclerView.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x007c  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c2  */
    public boolean scrollIfNecessary() {
        int iInterpolateOutOfBoundsScroll;
        int iInterpolateOutOfBoundsScroll2;
        if (this.mSelected == null) {
            this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j9 = this.mDragScrollStartTimeInMs;
        long j10 = j9 == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - j9;
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (this.mTmpRect == null) {
            this.mTmpRect = new Rect();
        }
        layoutManager.calculateItemDecorationsForChild(this.mSelected.itemView, this.mTmpRect);
        if (layoutManager.canScrollHorizontally()) {
            int i9 = (int) (this.mSelectedStartX + this.mDx);
            int paddingLeft = (i9 - this.mTmpRect.left) - this.mRecyclerView.getPaddingLeft();
            float f8 = this.mDx;
            if ((f8 >= 0.0f || paddingLeft >= 0) && (f8 <= 0.0f || (paddingLeft = ((this.mSelected.itemView.getWidth() + i9) + this.mTmpRect.right) - (this.mRecyclerView.getWidth() - this.mRecyclerView.getPaddingRight())) <= 0)) {
                iInterpolateOutOfBoundsScroll = 0;
            } else {
                iInterpolateOutOfBoundsScroll = paddingLeft;
            }
        } else {
            iInterpolateOutOfBoundsScroll = 0;
        }
        if (layoutManager.canScrollVertically()) {
            int i10 = (int) (this.mSelectedStartY + this.mDy);
            iInterpolateOutOfBoundsScroll2 = (i10 - this.mTmpRect.top) - this.mRecyclerView.getPaddingTop();
            float f9 = this.mDy;
            if ((f9 >= 0.0f || iInterpolateOutOfBoundsScroll2 >= 0) && (f9 <= 0.0f || (iInterpolateOutOfBoundsScroll2 = ((this.mSelected.itemView.getHeight() + i10) + this.mTmpRect.bottom) - (this.mRecyclerView.getHeight() - this.mRecyclerView.getPaddingBottom())) <= 0)) {
                iInterpolateOutOfBoundsScroll2 = 0;
            }
        } else {
            iInterpolateOutOfBoundsScroll2 = 0;
        }
        if (iInterpolateOutOfBoundsScroll != 0) {
            iInterpolateOutOfBoundsScroll = this.mCallback.interpolateOutOfBoundsScroll(this.mRecyclerView, this.mSelected.itemView.getWidth(), iInterpolateOutOfBoundsScroll, this.mRecyclerView.getWidth(), j10);
        }
        int i11 = iInterpolateOutOfBoundsScroll;
        if (iInterpolateOutOfBoundsScroll2 != 0) {
            iInterpolateOutOfBoundsScroll2 = this.mCallback.interpolateOutOfBoundsScroll(this.mRecyclerView, this.mSelected.itemView.getHeight(), iInterpolateOutOfBoundsScroll2, this.mRecyclerView.getHeight(), j10);
        }
        if (i11 == 0 && iInterpolateOutOfBoundsScroll2 == 0) {
            this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
            return false;
        }
        if (this.mDragScrollStartTimeInMs == Long.MIN_VALUE) {
            this.mDragScrollStartTimeInMs = jCurrentTimeMillis;
        }
        this.mRecyclerView.scrollBy(i11, iInterpolateOutOfBoundsScroll2);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void select(@Nullable RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        boolean z8;
        float fSignum;
        float fSignum2;
        if (recyclerView$ViewHolder == this.mSelected && i9 == this.mActionState) {
            return;
        }
        this.mDragScrollStartTimeInMs = Long.MIN_VALUE;
        int i10 = this.mActionState;
        endRecoverAnimation(recyclerView$ViewHolder, true);
        this.mActionState = i9;
        if (i9 == 2) {
            if (recyclerView$ViewHolder == null) {
                i.k("Must pass a ViewHolder when dragging");
                return;
            } else {
                this.mOverdrawChild = recyclerView$ViewHolder.itemView;
                addChildDrawingOrderCallback();
            }
        }
        int i11 = (1 << ((i9 * 8) + 8)) - 1;
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mSelected;
        boolean z9 = false;
        if (recyclerView$ViewHolder2 != null) {
            if (recyclerView$ViewHolder2.itemView.getParent() != null) {
                int iSwipeIfNecessary = i10 == 2 ? 0 : swipeIfNecessary(recyclerView$ViewHolder2);
                releaseVelocityTracker();
                int i12 = 4;
                if (iSwipeIfNecessary == 1 || iSwipeIfNecessary == 2) {
                    fSignum = 0.0f;
                    fSignum2 = Math.signum(this.mDy) * this.mRecyclerView.getHeight();
                } else if (iSwipeIfNecessary == 4 || iSwipeIfNecessary == 8 || iSwipeIfNecessary == 16 || iSwipeIfNecessary == 32) {
                    fSignum2 = 0.0f;
                    fSignum = Math.signum(this.mDx) * this.mRecyclerView.getWidth();
                } else {
                    fSignum = 0.0f;
                    fSignum2 = 0.0f;
                }
                if (i10 == 2) {
                    i12 = 8;
                } else if (iSwipeIfNecessary > 0) {
                    i12 = 2;
                }
                getSelectedDxDy(this.mTmpPosition);
                float[] fArr = this.mTmpPosition;
                float f8 = fArr[0];
                float f9 = fArr[1];
                z8 = false;
                ItemTouchHelper$3 itemTouchHelper$3 = new ItemTouchHelper$3(this, recyclerView$ViewHolder2, i12, i10, f8, f9, fSignum, fSignum2, iSwipeIfNecessary, recyclerView$ViewHolder2);
                itemTouchHelper$3.setDuration(this.mCallback.getAnimationDuration(this.mRecyclerView, i12, fSignum - f8, fSignum2 - f9));
                this.mRecoverAnimations.add(itemTouchHelper$3);
                itemTouchHelper$3.start();
                z9 = true;
            } else {
                z8 = false;
                removeChildDrawingOrderCallbackIfNecessary(recyclerView$ViewHolder2.itemView);
                this.mCallback.clearView(this.mRecyclerView, recyclerView$ViewHolder2);
                z9 = false;
            }
            this.mSelected = null;
        } else {
            z8 = false;
        }
        if (recyclerView$ViewHolder != null) {
            this.mSelectedFlags = (this.mCallback.getAbsoluteMovementFlags(this.mRecyclerView, recyclerView$ViewHolder) & i11) >> (this.mActionState * 8);
            this.mSelectedStartX = recyclerView$ViewHolder.itemView.getLeft();
            this.mSelectedStartY = recyclerView$ViewHolder.itemView.getTop();
            this.mSelected = recyclerView$ViewHolder;
            if (i9 == 2) {
                recyclerView$ViewHolder.itemView.performHapticFeedback(z8 ? 1 : 0);
            }
        }
        ViewParent parent = this.mRecyclerView.getParent();
        if (parent != null) {
            if (this.mSelected != null) {
                z8 = true;
            }
            parent.requestDisallowInterceptTouchEvent(z8);
        }
        if (!z9) {
            this.mRecyclerView.getLayoutManager().requestSimpleAnimationsInNextLayout();
        }
        this.mCallback.onSelectedChanged(this.mSelected, this.mActionState);
        this.mRecyclerView.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startDrag(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (!this.mCallback.hasDragFlag(this.mRecyclerView, recyclerView$ViewHolder)) {
            Log.e(TAG, "Start drag has been called but dragging is not enabled");
            return;
        }
        if (recyclerView$ViewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e(TAG, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
            return;
        }
        obtainVelocityTracker();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(recyclerView$ViewHolder, 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startSwipe(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (!this.mCallback.hasSwipeFlag(this.mRecyclerView, recyclerView$ViewHolder)) {
            Log.e(TAG, "Start swipe has been called but swiping is not enabled");
            return;
        }
        if (recyclerView$ViewHolder.itemView.getParent() != this.mRecyclerView) {
            Log.e(TAG, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
            return;
        }
        obtainVelocityTracker();
        this.mDy = 0.0f;
        this.mDx = 0.0f;
        select(recyclerView$ViewHolder, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateDxDy(MotionEvent motionEvent, int i9, int i10) {
        float x8 = motionEvent.getX(i10);
        float y8 = motionEvent.getY(i10);
        float f8 = x8 - this.mInitialTouchX;
        this.mDx = f8;
        this.mDy = y8 - this.mInitialTouchY;
        if ((i9 & 4) == 0) {
            this.mDx = Math.max(0.0f, f8);
        }
        if ((i9 & 8) == 0) {
            this.mDx = Math.min(0.0f, this.mDx);
        }
        if ((i9 & 1) == 0) {
            this.mDy = Math.max(0.0f, this.mDy);
        }
        if ((i9 & 2) == 0) {
            this.mDy = Math.min(0.0f, this.mDy);
        }
    }

    private void addChildDrawingOrderCallback() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView$OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
    }
}
