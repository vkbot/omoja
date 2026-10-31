package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface NestedAdapterWrapper$Callback {
    void onChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper);

    void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10);

    void onItemRangeChanged(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10, @Nullable Object obj);

    void onItemRangeInserted(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10);

    void onItemRangeMoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10);

    void onItemRangeRemoved(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i9, int i10);

    void onStateRestorationPolicyChanged(NestedAdapterWrapper nestedAdapterWrapper);
}
