package androidx.recyclerview.widget;

import android.util.Pair;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ConcatAdapter extends RecyclerView$Adapter<RecyclerView$ViewHolder> {
    static final String TAG = "ConcatAdapter";
    private final ConcatAdapterController mController;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConcatAdapter(@NonNull ConcatAdapter$Config concatAdapter$Config, @NonNull List<? extends RecyclerView$Adapter<? extends RecyclerView$ViewHolder>> list) {
        this.mController = new ConcatAdapterController(this, concatAdapter$Config);
        Iterator<? extends RecyclerView$Adapter<? extends RecyclerView$ViewHolder>> it = list.iterator();
        while (it.hasNext()) {
            addAdapter(it.next());
        }
        super.setHasStableIds(this.mController.hasStableIds());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean addAdapter(@NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder> recyclerView$Adapter) {
        return this.mController.addAdapter(recyclerView$Adapter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public int findRelativeAdapterPositionIn(@NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder> recyclerView$Adapter, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        return this.mController.getLocalAdapterPosition(recyclerView$Adapter, recyclerView$ViewHolder, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public List<? extends RecyclerView$Adapter<? extends RecyclerView$ViewHolder>> getAdapters() {
        return Collections.unmodifiableList(this.mController.getCopyOfAdapters());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public int getItemCount() {
        return this.mController.getTotalCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public long getItemId(int i9) {
        return this.mController.getItemId(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public int getItemViewType(int i9) {
        return this.mController.getItemViewType(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Pair<RecyclerView$Adapter<? extends RecyclerView$ViewHolder>, Integer> getWrappedAdapterAndPosition(int i9) {
        return this.mController.getWrappedAdapterAndPosition(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void internalSetStateRestorationPolicy(@NonNull RecyclerView$Adapter$StateRestorationPolicy recyclerView$Adapter$StateRestorationPolicy) {
        super.setStateRestorationPolicy(recyclerView$Adapter$StateRestorationPolicy);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mController.onAttachedToRecyclerView(recyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void onBindViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i9) {
        this.mController.onBindViewHolder(recyclerView$ViewHolder, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    @NonNull
    public RecyclerView$ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return this.mController.onCreateViewHolder(viewGroup, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mController.onDetachedFromRecyclerView(recyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public boolean onFailedToRecycleView(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return this.mController.onFailedToRecycleView(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void onViewAttachedToWindow(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        this.mController.onViewAttachedToWindow(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void onViewDetachedFromWindow(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        this.mController.onViewDetachedFromWindow(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void onViewRecycled(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        this.mController.onViewRecycled(recyclerView$ViewHolder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeAdapter(@NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder> recyclerView$Adapter) {
        return this.mController.removeAdapter(recyclerView$Adapter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void setHasStableIds(boolean z8) {
        throw new UnsupportedOperationException("Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$Adapter
    public void setStateRestorationPolicy(@NonNull RecyclerView$Adapter$StateRestorationPolicy recyclerView$Adapter$StateRestorationPolicy) {
        throw new UnsupportedOperationException("Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters");
    }

    public boolean addAdapter(int i9, @NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder> recyclerView$Adapter) {
        return this.mController.addAdapter(i9, recyclerView$Adapter);
    }

    @SafeVarargs
    public ConcatAdapter(@NonNull ConcatAdapter$Config concatAdapter$Config, @NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder>... recyclerView$AdapterArr) {
        this(concatAdapter$Config, (List<? extends RecyclerView$Adapter<? extends RecyclerView$ViewHolder>>) Arrays.asList(recyclerView$AdapterArr));
    }

    public ConcatAdapter(@NonNull List<? extends RecyclerView$Adapter<? extends RecyclerView$ViewHolder>> list) {
        this(ConcatAdapter$Config.DEFAULT, list);
    }

    @SafeVarargs
    public ConcatAdapter(@NonNull RecyclerView$Adapter<? extends RecyclerView$ViewHolder>... recyclerView$AdapterArr) {
        this(ConcatAdapter$Config.DEFAULT, recyclerView$AdapterArr);
    }
}
