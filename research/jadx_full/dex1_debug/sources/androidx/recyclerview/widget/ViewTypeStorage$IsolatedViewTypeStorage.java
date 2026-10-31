package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTypeStorage$IsolatedViewTypeStorage implements ViewTypeStorage {
    SparseArray<NestedAdapterWrapper> mGlobalTypeToWrapper = new SparseArray<>();
    int mNextViewType = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage
    @NonNull
    public ViewTypeStorage$ViewTypeLookup createViewTypeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        return new ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup(this, nestedAdapterWrapper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage
    @NonNull
    public NestedAdapterWrapper getWrapperForGlobalType(int i9) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mGlobalTypeToWrapper.get(i9);
        if (nestedAdapterWrapper != null) {
            return nestedAdapterWrapper;
        }
        i.k(a.e(i9, "Cannot find the wrapper for global view type "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int obtainViewType(NestedAdapterWrapper nestedAdapterWrapper) {
        int i9 = this.mNextViewType;
        this.mNextViewType = i9 + 1;
        this.mGlobalTypeToWrapper.put(i9, nestedAdapterWrapper);
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeWrapper(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        for (int size = this.mGlobalTypeToWrapper.size() - 1; size >= 0; size--) {
            if (this.mGlobalTypeToWrapper.valueAt(size) == nestedAdapterWrapper) {
                this.mGlobalTypeToWrapper.removeAt(size);
            }
        }
    }
}
