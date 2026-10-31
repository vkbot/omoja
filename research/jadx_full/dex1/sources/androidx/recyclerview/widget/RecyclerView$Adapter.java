package androidx.recyclerview.widget;

import ai.onnxruntime.b;
import android.os.Trace;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import j1.i;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class RecyclerView$Adapter<VH extends RecyclerView$ViewHolder> {
    private final RecyclerView$AdapterDataObservable mObservable = new RecyclerView$AdapterDataObservable();
    private boolean mHasStableIds = false;
    private RecyclerView$Adapter$StateRestorationPolicy mStateRestorationPolicy = RecyclerView$Adapter$StateRestorationPolicy.ALLOW;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: androidx.recyclerview.widget.RecyclerView$Adapter<VH extends androidx.recyclerview.widget.RecyclerView$ViewHolder> */
    /* JADX WARN: Multi-variable type inference failed */
    public final void bindViewHolder(@NonNull VH vh, int i9) {
        boolean z8 = vh.mBindingAdapter == null;
        if (z8) {
            vh.mPosition = i9;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i9);
            }
            vh.setFlags(1, 519);
            if (TraceCompat.isEnabled()) {
                Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(vh.mItemViewType)));
            }
        }
        vh.mBindingAdapter = this;
        if (RecyclerView.sDebugAssertionsEnabled) {
            if (vh.itemView.getParent() == null && vh.itemView.isAttachedToWindow() != vh.isTmpDetached()) {
                throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + vh.isTmpDetached() + ", attached to window: " + vh.itemView.isAttachedToWindow() + ", holder: " + vh);
            }
            if (vh.itemView.getParent() == null && vh.itemView.isAttachedToWindow()) {
                b.q(vh, "Attempting to bind attached holder with no parent (AKA temp detached): ");
                return;
            }
        }
        onBindViewHolder(vh, i9, vh.getUnmodifiedPayloads());
        if (z8) {
            vh.clearPayload();
            ViewGroup$LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof RecyclerView$LayoutParams) {
                ((RecyclerView$LayoutParams) layoutParams).mInsetsDirty = true;
            }
            Trace.endSection();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canRestoreState() {
        int iOrdinal = this.mStateRestorationPolicy.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                return false;
            }
        } else if (getItemCount() <= 0) {
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final VH createViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        try {
            if (TraceCompat.isEnabled()) {
                Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(i9)));
            }
            VH vh = (VH) onCreateViewHolder(viewGroup, i9);
            if (vh.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            vh.mItemViewType = i9;
            Trace.endSection();
            return vh;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findRelativeAdapterPositionIn(@NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder> recyclerView$Adapter, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        if (recyclerView$Adapter == this) {
            return i9;
        }
        return -1;
    }

    public abstract int getItemCount();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getItemId(int i9) {
        return -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemViewType(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final RecyclerView$Adapter$StateRestorationPolicy getStateRestorationPolicy() {
        return this.mStateRestorationPolicy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean hasObservers() {
        return this.mObservable.hasObservers();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyDataSetChanged() {
        this.mObservable.notifyChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemChanged(int i9) {
        this.mObservable.notifyItemRangeChanged(i9, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemInserted(int i9) {
        this.mObservable.notifyItemRangeInserted(i9, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemMoved(int i9, int i10) {
        this.mObservable.notifyItemMoved(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemRangeChanged(int i9, int i10) {
        this.mObservable.notifyItemRangeChanged(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemRangeInserted(int i9, int i10) {
        this.mObservable.notifyItemRangeInserted(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemRangeRemoved(int i9, int i10) {
        this.mObservable.notifyItemRangeRemoved(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void notifyItemRemoved(int i9) {
        this.mObservable.notifyItemRangeRemoved(i9, 1);
    }

    public abstract void onBindViewHolder(@NonNull VH vh, int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onBindViewHolder(@NonNull VH vh, int i9, @NonNull List<Object> list) {
        onBindViewHolder(vh, i9);
    }

    @NonNull
    public abstract VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onFailedToRecycleView(@NonNull VH vh) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerAdapterDataObserver(@NonNull RecyclerView$AdapterDataObserver recyclerView$AdapterDataObserver) {
        this.mObservable.registerObserver(recyclerView$AdapterDataObserver);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHasStableIds(boolean z8) {
        if (hasObservers()) {
            i.l("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        } else {
            this.mHasStableIds = z8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStateRestorationPolicy(@NonNull RecyclerView$Adapter$StateRestorationPolicy recyclerView$Adapter$StateRestorationPolicy) {
        this.mStateRestorationPolicy = recyclerView$Adapter$StateRestorationPolicy;
        this.mObservable.notifyStateRestorationPolicyChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterAdapterDataObserver(@NonNull RecyclerView$AdapterDataObserver recyclerView$AdapterDataObserver) {
        this.mObservable.unregisterObserver(recyclerView$AdapterDataObserver);
    }

    public final void notifyItemRangeChanged(int i9, int i10, @Nullable Object obj) {
        this.mObservable.notifyItemRangeChanged(i9, i10, obj);
    }

    public final void notifyItemChanged(int i9, @Nullable Object obj) {
        this.mObservable.notifyItemRangeChanged(i9, 1, obj);
    }

    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
    }

    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
    }

    public void onViewAttachedToWindow(@NonNull VH vh) {
    }

    public void onViewDetachedFromWindow(@NonNull VH vh) {
    }

    public void onViewRecycled(@NonNull VH vh) {
    }
}
