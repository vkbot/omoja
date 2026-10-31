package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NestedAdapterWrapper$1 extends RecyclerView$AdapterDataObserver {
    final /* synthetic */ NestedAdapterWrapper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NestedAdapterWrapper$1(NestedAdapterWrapper nestedAdapterWrapper) {
        this.this$0 = nestedAdapterWrapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCachedItemCount = nestedAdapterWrapper.adapter.getItemCount();
        NestedAdapterWrapper nestedAdapterWrapper2 = this.this$0;
        nestedAdapterWrapper2.mCallback.onChanged(nestedAdapterWrapper2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeChanged(int i9, int i10) {
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCallback.onItemRangeChanged(nestedAdapterWrapper, i9, i10, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeInserted(int i9, int i10) {
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCachedItemCount += i10;
        nestedAdapterWrapper.mCallback.onItemRangeInserted(nestedAdapterWrapper, i9, i10);
        NestedAdapterWrapper nestedAdapterWrapper2 = this.this$0;
        if (nestedAdapterWrapper2.mCachedItemCount <= 0 || nestedAdapterWrapper2.adapter.getStateRestorationPolicy() != RecyclerView$Adapter$StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
            return;
        }
        NestedAdapterWrapper nestedAdapterWrapper3 = this.this$0;
        nestedAdapterWrapper3.mCallback.onStateRestorationPolicyChanged(nestedAdapterWrapper3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeMoved(int i9, int i10, int i11) {
        Preconditions.checkArgument(i11 == 1, "moving more than 1 item is not supported in RecyclerView");
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCallback.onItemRangeMoved(nestedAdapterWrapper, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeRemoved(int i9, int i10) {
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCachedItemCount -= i10;
        nestedAdapterWrapper.mCallback.onItemRangeRemoved(nestedAdapterWrapper, i9, i10);
        NestedAdapterWrapper nestedAdapterWrapper2 = this.this$0;
        if (nestedAdapterWrapper2.mCachedItemCount >= 1 || nestedAdapterWrapper2.adapter.getStateRestorationPolicy() != RecyclerView$Adapter$StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
            return;
        }
        NestedAdapterWrapper nestedAdapterWrapper3 = this.this$0;
        nestedAdapterWrapper3.mCallback.onStateRestorationPolicyChanged(nestedAdapterWrapper3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onStateRestorationPolicyChanged() {
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCallback.onStateRestorationPolicyChanged(nestedAdapterWrapper);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onItemRangeChanged(int i9, int i10, @Nullable Object obj) {
        NestedAdapterWrapper nestedAdapterWrapper = this.this$0;
        nestedAdapterWrapper.mCallback.onItemRangeChanged(nestedAdapterWrapper, i9, i10, obj);
    }
}
