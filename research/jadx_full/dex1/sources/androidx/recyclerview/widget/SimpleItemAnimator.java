package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class SimpleItemAnimator extends RecyclerView$ItemAnimator {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView$ViewHolder recyclerView$ViewHolder);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean animateAppearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        int i9;
        int i10;
        return (recyclerView$ItemAnimator$ItemHolderInfo == null || ((i9 = recyclerView$ItemAnimator$ItemHolderInfo.left) == (i10 = recyclerView$ItemAnimator$ItemHolderInfo2.left) && recyclerView$ItemAnimator$ItemHolderInfo.top == recyclerView$ItemAnimator$ItemHolderInfo2.top)) ? animateAdd(recyclerView$ViewHolder) : animateMove(recyclerView$ViewHolder, i9, recyclerView$ItemAnimator$ItemHolderInfo.top, i10, recyclerView$ItemAnimator$ItemHolderInfo2.top);
    }

    public abstract boolean animateChange(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2, int i9, int i10, int i11, int i12);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean animateChange(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        int i9;
        int i10 = recyclerView$ItemAnimator$ItemHolderInfo.left;
        int i11 = recyclerView$ItemAnimator$ItemHolderInfo.top;
        if (recyclerView$ViewHolder2.shouldIgnore()) {
            i9 = recyclerView$ItemAnimator$ItemHolderInfo.left;
        } else {
            i9 = recyclerView$ItemAnimator$ItemHolderInfo2.left;
            recyclerView$ItemAnimator$ItemHolderInfo = recyclerView$ItemAnimator$ItemHolderInfo2;
        }
        return animateChange(recyclerView$ViewHolder, recyclerView$ViewHolder2, i10, i11, i9, recyclerView$ItemAnimator$ItemHolderInfo.top);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean animateDisappearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        int i9 = recyclerView$ItemAnimator$ItemHolderInfo.left;
        int i10 = recyclerView$ItemAnimator$ItemHolderInfo.top;
        View view = recyclerView$ViewHolder.itemView;
        int left = recyclerView$ItemAnimator$ItemHolderInfo2 == null ? view.getLeft() : recyclerView$ItemAnimator$ItemHolderInfo2.left;
        int top = recyclerView$ItemAnimator$ItemHolderInfo2 == null ? view.getTop() : recyclerView$ItemAnimator$ItemHolderInfo2.top;
        if (recyclerView$ViewHolder.isRemoved() || (i9 == left && i10 == top)) {
            return animateRemove(recyclerView$ViewHolder);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return animateMove(recyclerView$ViewHolder, i9, i10, left, top);
    }

    public abstract boolean animateMove(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, int i10, int i11, int i12);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean animatePersistence(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        int i9 = recyclerView$ItemAnimator$ItemHolderInfo.left;
        int i10 = recyclerView$ItemAnimator$ItemHolderInfo2.left;
        if (i9 != i10 || recyclerView$ItemAnimator$ItemHolderInfo.top != recyclerView$ItemAnimator$ItemHolderInfo2.top) {
            return animateMove(recyclerView$ViewHolder, i9, recyclerView$ItemAnimator$ItemHolderInfo.top, i10, recyclerView$ItemAnimator$ItemHolderInfo2.top);
        }
        dispatchMoveFinished(recyclerView$ViewHolder);
        return false;
    }

    public abstract boolean animateRemove(RecyclerView$ViewHolder recyclerView$ViewHolder);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return !this.mSupportsChangeAnimations || recyclerView$ViewHolder.isInvalid();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchAddFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAddFinished(recyclerView$ViewHolder);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchAddStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAddStarting(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchChangeFinished(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z8) {
        onChangeFinished(recyclerView$ViewHolder, z8);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchChangeStarting(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z8) {
        onChangeStarting(recyclerView$ViewHolder, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchMoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onMoveFinished(recyclerView$ViewHolder);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchMoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onMoveStarting(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchRemoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onRemoveFinished(recyclerView$ViewHolder);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchRemoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onRemoveStarting(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSupportsChangeAnimations(boolean z8) {
        this.mSupportsChangeAnimations = z8;
    }

    public void onAddFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onAddStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onMoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onMoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onRemoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onRemoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onChangeFinished(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z8) {
    }

    public void onChangeStarting(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z8) {
    }
}
