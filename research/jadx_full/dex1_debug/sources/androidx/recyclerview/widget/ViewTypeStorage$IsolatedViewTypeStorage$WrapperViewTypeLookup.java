package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.util.SparseIntArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup implements ViewTypeStorage$ViewTypeLookup {
    final NestedAdapterWrapper mWrapper;
    final /* synthetic */ ViewTypeStorage$IsolatedViewTypeStorage this$0;
    private SparseIntArray mLocalToGlobalMapping = new SparseIntArray(1);
    private SparseIntArray mGlobalToLocalMapping = new SparseIntArray(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup(ViewTypeStorage$IsolatedViewTypeStorage viewTypeStorage$IsolatedViewTypeStorage, NestedAdapterWrapper nestedAdapterWrapper) {
        this.this$0 = viewTypeStorage$IsolatedViewTypeStorage;
        this.mWrapper = nestedAdapterWrapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage$ViewTypeLookup
    public void dispose() {
        this.this$0.removeWrapper(this.mWrapper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage$ViewTypeLookup
    public int globalToLocal(int i9) {
        int iIndexOfKey = this.mGlobalToLocalMapping.indexOfKey(i9);
        if (iIndexOfKey >= 0) {
            return this.mGlobalToLocalMapping.valueAt(iIndexOfKey);
        }
        StringBuilder sbQ = a.q(i9, "requested global type ", " does not belong to the adapter:");
        sbQ.append(this.mWrapper.adapter);
        throw new IllegalStateException(sbQ.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage$ViewTypeLookup
    public int localToGlobal(int i9) {
        int iIndexOfKey = this.mLocalToGlobalMapping.indexOfKey(i9);
        if (iIndexOfKey > -1) {
            return this.mLocalToGlobalMapping.valueAt(iIndexOfKey);
        }
        int iObtainViewType = this.this$0.obtainViewType(this.mWrapper);
        this.mLocalToGlobalMapping.put(i9, iObtainViewType);
        this.mGlobalToLocalMapping.put(iObtainViewType, i9);
        return iObtainViewType;
    }
}
