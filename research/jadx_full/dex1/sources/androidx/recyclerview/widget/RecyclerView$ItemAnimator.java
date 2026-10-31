package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class RecyclerView$ItemAnimator {
    public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    public static final int FLAG_CHANGED = 2;
    public static final int FLAG_INVALIDATED = 4;
    public static final int FLAG_MOVED = 2048;
    public static final int FLAG_REMOVED = 8;
    private RecyclerView$ItemAnimator$ItemAnimatorListener mListener = null;
    private ArrayList<RecyclerView$ItemAnimator$ItemAnimatorFinishedListener> mFinishedListeners = new ArrayList<>();
    private long mAddDuration = 120;
    private long mRemoveDuration = 120;
    private long mMoveDuration = 250;
    private long mChangeDuration = 250;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int buildAdapterChangeFlagsForAnimations(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        int i9 = recyclerView$ViewHolder.mFlags;
        int i10 = i9 & 14;
        if (recyclerView$ViewHolder.isInvalid()) {
            return 4;
        }
        if ((i9 & 4) == 0) {
            int oldPosition = recyclerView$ViewHolder.getOldPosition();
            int absoluteAdapterPosition = recyclerView$ViewHolder.getAbsoluteAdapterPosition();
            if (oldPosition != -1 && absoluteAdapterPosition != -1 && oldPosition != absoluteAdapterPosition) {
                return i10 | 2048;
            }
        }
        return i10;
    }

    public abstract boolean animateAppearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public abstract boolean animateChange(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public abstract boolean animateDisappearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    public abstract boolean animatePersistence(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull List<Object> list) {
        return canReuseUpdatedViewHolder(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchAnimationFinished(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAnimationFinished(recyclerView$ViewHolder);
        RecyclerView$ItemAnimator$ItemAnimatorListener recyclerView$ItemAnimator$ItemAnimatorListener = this.mListener;
        if (recyclerView$ItemAnimator$ItemAnimatorListener != null) {
            recyclerView$ItemAnimator$ItemAnimatorListener.onAnimationFinished(recyclerView$ViewHolder);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchAnimationStarted(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAnimationStarted(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void dispatchAnimationsFinished() {
        int size = this.mFinishedListeners.size();
        int i9 = 0;
        while (true) {
            ArrayList<RecyclerView$ItemAnimator$ItemAnimatorFinishedListener> arrayList = this.mFinishedListeners;
            if (i9 >= size) {
                arrayList.clear();
                return;
            } else {
                arrayList.get(i9).onAnimationsFinished();
                i9++;
            }
        }
    }

    public abstract void endAnimation(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder);

    public abstract void endAnimations();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getAddDuration() {
        return this.mAddDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getChangeDuration() {
        return this.mChangeDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getMoveDuration() {
        return this.mMoveDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getRemoveDuration() {
        return this.mRemoveDuration;
    }

    public abstract boolean isRunning();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isRunning(@Nullable RecyclerView$ItemAnimator$ItemAnimatorFinishedListener recyclerView$ItemAnimator$ItemAnimatorFinishedListener) {
        boolean zIsRunning = isRunning();
        if (recyclerView$ItemAnimator$ItemAnimatorFinishedListener != null) {
            if (!zIsRunning) {
                recyclerView$ItemAnimator$ItemAnimatorFinishedListener.onAnimationsFinished();
                return zIsRunning;
            }
            this.mFinishedListeners.add(recyclerView$ItemAnimator$ItemAnimatorFinishedListener);
        }
        return zIsRunning;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo obtainHolderInfo() {
        return new RecyclerView$ItemAnimator$ItemHolderInfo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo recordPostLayoutInformation(@NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return obtainHolderInfo().setFrom(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public RecyclerView$ItemAnimator$ItemHolderInfo recordPreLayoutInformation(@NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, @NonNull List<Object> list) {
        return obtainHolderInfo().setFrom(recyclerView$ViewHolder);
    }

    public abstract void runPendingAnimations();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAddDuration(long j9) {
        this.mAddDuration = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setChangeDuration(long j9) {
        this.mChangeDuration = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setListener(RecyclerView$ItemAnimator$ItemAnimatorListener recyclerView$ItemAnimator$ItemAnimatorListener) {
        this.mListener = recyclerView$ItemAnimator$ItemAnimatorListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMoveDuration(long j9) {
        this.mMoveDuration = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRemoveDuration(long j9) {
        this.mRemoveDuration = j9;
    }

    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return true;
    }

    public void onAnimationFinished(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onAnimationStarted(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }
}
