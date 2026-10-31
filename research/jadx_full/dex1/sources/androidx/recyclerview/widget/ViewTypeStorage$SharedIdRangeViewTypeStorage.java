package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import j1.i;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTypeStorage$SharedIdRangeViewTypeStorage implements ViewTypeStorage {
    SparseArray<List<NestedAdapterWrapper>> mGlobalTypeToWrapper = new SparseArray<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage
    @NonNull
    public ViewTypeStorage$ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        return new ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup(this, nestedAdapterWrapper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage
    @NonNull
    public NestedAdapterWrapper getWrapperForGlobalType(int i9) {
        List<NestedAdapterWrapper> list = this.mGlobalTypeToWrapper.get(i9);
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        i.k(a.e(i9, "Cannot find the wrapper for global view type "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        for (int size = this.mGlobalTypeToWrapper.size() - 1; size >= 0; size--) {
            List<NestedAdapterWrapper> listValueAt = this.mGlobalTypeToWrapper.valueAt(size);
            if (listValueAt.remove(nestedAdapterWrapper) && listValueAt.isEmpty()) {
                this.mGlobalTypeToWrapper.removeAt(size);
            }
        }
    }
}
