package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.R$dimen;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ItemTouchHelper$Callback {
    private static final int ABS_HORIZONTAL_DIR_FLAGS = 789516;
    public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
    public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;
    private static final long DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS = 2000;
    static final int RELATIVE_DIR_FLAGS = 3158064;
    private static final Interpolator sDragScrollInterpolator = new ItemTouchHelper$Callback$1();
    private static final Interpolator sDragViewScrollCapInterpolator = new ItemTouchHelper$Callback$2();
    private int mCachedMaxScrollSpeed = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int convertToRelativeDirection(int i9, int i10) {
        int i11;
        int i12 = i9 & ABS_HORIZONTAL_DIR_FLAGS;
        if (i12 == 0) {
            return i9;
        }
        int i13 = i9 & (~i12);
        if (i10 == 0) {
            i11 = i12 << 2;
        } else {
            int i14 = i12 << 1;
            i13 |= (-789517) & i14;
            i11 = (i14 & ABS_HORIZONTAL_DIR_FLAGS) << 2;
        }
        return i13 | i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static ItemTouchUIUtil getDefaultUIUtil() {
        return ItemTouchUIUtilImpl.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getMaxDragScroll(RecyclerView recyclerView) {
        if (this.mCachedMaxScrollSpeed == -1) {
            this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R$dimen.item_touch_helper_max_drag_scroll_per_frame);
        }
        return this.mCachedMaxScrollSpeed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int makeFlag(int i9, int i10) {
        return i10 << (i9 * 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int makeMovementFlags(int i9, int i10) {
        return makeFlag(2, i9) | makeFlag(1, i10) | makeFlag(0, i10 | i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canDropOver(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$ViewHolder chooseDropTarget(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull List<RecyclerView$ViewHolder> list, int i9, int i10) {
        int bottom;
        int iAbs;
        int top;
        int iAbs2;
        int left;
        int iAbs3;
        int right;
        int iAbs4;
        int width = recyclerView$ViewHolder.itemView.getWidth() + i9;
        int height = recyclerView$ViewHolder.itemView.getHeight() + i10;
        int left2 = i9 - recyclerView$ViewHolder.itemView.getLeft();
        int top2 = i10 - recyclerView$ViewHolder.itemView.getTop();
        int size = list.size();
        RecyclerView$ViewHolder recyclerView$ViewHolder2 = null;
        int i11 = -1;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder3 = list.get(i12);
            if (left2 > 0 && (right = recyclerView$ViewHolder3.itemView.getRight() - width) < 0 && recyclerView$ViewHolder3.itemView.getRight() > recyclerView$ViewHolder.itemView.getRight() && (iAbs4 = Math.abs(right)) > i11) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i11 = iAbs4;
            }
            if (left2 < 0 && (left = recyclerView$ViewHolder3.itemView.getLeft() - i9) > 0 && recyclerView$ViewHolder3.itemView.getLeft() < recyclerView$ViewHolder.itemView.getLeft() && (iAbs3 = Math.abs(left)) > i11) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i11 = iAbs3;
            }
            if (top2 < 0 && (top = recyclerView$ViewHolder3.itemView.getTop() - i10) > 0 && recyclerView$ViewHolder3.itemView.getTop() < recyclerView$ViewHolder.itemView.getTop() && (iAbs2 = Math.abs(top)) > i11) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i11 = iAbs2;
            }
            if (top2 > 0 && (bottom = recyclerView$ViewHolder3.itemView.getBottom() - height) < 0 && recyclerView$ViewHolder3.itemView.getBottom() > recyclerView$ViewHolder.itemView.getBottom() && (iAbs = Math.abs(bottom)) > i11) {
                recyclerView$ViewHolder2 = recyclerView$ViewHolder3;
                i11 = iAbs;
            }
        }
        return recyclerView$ViewHolder2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ItemTouchUIUtilImpl.INSTANCE.clearView(recyclerView$ViewHolder.itemView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertToAbsoluteDirection(int i9, int i10) {
        int i11;
        int i12 = i9 & RELATIVE_DIR_FLAGS;
        if (i12 == 0) {
            return i9;
        }
        int i13 = i9 & (~i12);
        if (i10 == 0) {
            i11 = i12 >> 2;
        } else {
            int i14 = i12 >> 1;
            i13 |= (-3158065) & i14;
            i11 = (i14 & RELATIVE_DIR_FLAGS) >> 2;
        }
        return i13 | i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getAbsoluteMovementFlags(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return convertToAbsoluteDirection(getMovementFlags(recyclerView, recyclerView$ViewHolder), recyclerView.getLayoutDirection());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getAnimationDuration(@NonNull RecyclerView recyclerView, int i9, float f8, float f9) {
        RecyclerView$ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator == null) {
            return i9 == 8 ? 200L : 250L;
        }
        return i9 == 8 ? itemAnimator.getMoveDuration() : itemAnimator.getRemoveDuration();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBoundingBoxMargin() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMoveThreshold(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return 0.5f;
    }

    public abstract int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSwipeThreshold(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return 0.5f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasDragFlag(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return (getAbsoluteMovementFlags(recyclerView, recyclerView$ViewHolder) & 16711680) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasSwipeFlag(RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return (getAbsoluteMovementFlags(recyclerView, recyclerView$ViewHolder) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int interpolateOutOfBoundsScroll(@NonNull RecyclerView recyclerView, int i9, int i10, int i11, long j9) {
        int interpolation = (int) (sDragScrollInterpolator.getInterpolation(j9 <= DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS ? j9 / 2000.0f : 1.0f) * ((int) (sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i10) * 1.0f) / i9)) * ((int) Math.signum(i10)) * getMaxDragScroll(recyclerView))));
        if (interpolation == 0) {
            return i10 > 0 ? 1 : -1;
        }
        return interpolation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isItemViewSwipeEnabled() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLongPressDragEnabled() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onChildDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, float f8, float f9, int i9, boolean z8) {
        ItemTouchUIUtilImpl.INSTANCE.onDraw(canvas, recyclerView, recyclerView$ViewHolder.itemView, f8, f9, i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, float f8, float f9, int i9, boolean z8) {
        ItemTouchUIUtilImpl.INSTANCE.onDrawOver(canvas, recyclerView, recyclerView$ViewHolder.itemView, f8, f9, i9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, List<ItemTouchHelper$RecoverAnimation> list, int i9, float f8, float f9) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = list.get(i10);
            itemTouchHelper$RecoverAnimation.update();
            int iSave = canvas.save();
            onChildDraw(canvas, recyclerView, itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY, itemTouchHelper$RecoverAnimation.mActionState, false);
            canvas.restoreToCount(iSave);
        }
        if (recyclerView$ViewHolder != null) {
            int iSave2 = canvas.save();
            onChildDraw(canvas, recyclerView, recyclerView$ViewHolder, f8, f9, i9, true);
            canvas.restoreToCount(iSave2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView$ViewHolder recyclerView$ViewHolder, List<ItemTouchHelper$RecoverAnimation> list, int i9, float f8, float f9) {
        int size = list.size();
        boolean z8 = false;
        for (int i10 = 0; i10 < size; i10++) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation = list.get(i10);
            int iSave = canvas.save();
            onChildDrawOver(canvas, recyclerView, itemTouchHelper$RecoverAnimation.mViewHolder, itemTouchHelper$RecoverAnimation.mX, itemTouchHelper$RecoverAnimation.mY, itemTouchHelper$RecoverAnimation.mActionState, false);
            canvas.restoreToCount(iSave);
        }
        if (recyclerView$ViewHolder != null) {
            int iSave2 = canvas.save();
            onChildDrawOver(canvas, recyclerView, recyclerView$ViewHolder, f8, f9, i9, true);
            canvas.restoreToCount(iSave2);
        }
        for (int i11 = size - 1; i11 >= 0; i11--) {
            ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation2 = list.get(i11);
            boolean z9 = itemTouchHelper$RecoverAnimation2.mEnded;
            if (z9 && !itemTouchHelper$RecoverAnimation2.mIsPendingCleanup) {
                list.remove(i11);
            } else if (!z9) {
                z8 = true;
            }
        }
        if (z8) {
            recyclerView.invalidate();
        }
    }

    public abstract boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v1, resolved type: androidx.recyclerview.widget.RecyclerView$LayoutManager */
    /* JADX WARN: Multi-variable type inference failed */
    public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, int i10, int i11, int i12) {
        RecyclerView$LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof ItemTouchHelper$ViewDropHandler) {
            ((ItemTouchHelper$ViewDropHandler) layoutManager).prepareForDrop(recyclerView$ViewHolder.itemView, recyclerView$ViewHolder2.itemView, i11, i12);
            return;
        }
        if (layoutManager.canScrollHorizontally()) {
            if (layoutManager.getDecoratedLeft(recyclerView$ViewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                recyclerView.scrollToPosition(i10);
            }
            if (layoutManager.getDecoratedRight(recyclerView$ViewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                recyclerView.scrollToPosition(i10);
            }
        }
        if (layoutManager.canScrollVertically()) {
            if (layoutManager.getDecoratedTop(recyclerView$ViewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                recyclerView.scrollToPosition(i10);
            }
            if (layoutManager.getDecoratedBottom(recyclerView$ViewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                recyclerView.scrollToPosition(i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onSelectedChanged(@Nullable RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        if (recyclerView$ViewHolder != null) {
            ItemTouchUIUtilImpl.INSTANCE.onSelected(recyclerView$ViewHolder.itemView);
        }
    }

    public abstract void onSwiped(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9);

    public float getSwipeEscapeVelocity(float f8) {
        return f8;
    }

    public float getSwipeVelocityThreshold(float f8) {
        return f8;
    }
}
