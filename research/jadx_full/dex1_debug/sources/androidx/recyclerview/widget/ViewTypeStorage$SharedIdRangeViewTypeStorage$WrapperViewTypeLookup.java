package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup implements ViewTypeStorage$ViewTypeLookup {
    final NestedAdapterWrapper mWrapper;
    final /* synthetic */ ViewTypeStorage$SharedIdRangeViewTypeStorage this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup(ViewTypeStorage$SharedIdRangeViewTypeStorage viewTypeStorage$SharedIdRangeViewTypeStorage, NestedAdapterWrapper nestedAdapterWrapper) {
        this.this$0 = viewTypeStorage$SharedIdRangeViewTypeStorage;
        this.mWrapper = nestedAdapterWrapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage$ViewTypeLookup
    public void dispose() {
        this.this$0.removeWrapper(this.mWrapper);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewTypeStorage$ViewTypeLookup
    public int localToGlobal(int i9) {
        List<NestedAdapterWrapper> arrayList = this.this$0.mGlobalTypeToWrapper.get(i9);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.this$0.mGlobalTypeToWrapper.put(i9, arrayList);
        }
        if (!arrayList.contains(this.mWrapper)) {
            arrayList.add(this.mWrapper);
        }
        return i9;
    }

    @Override // androidx.recyclerview.widget.ViewTypeStorage$ViewTypeLookup
    public int globalToLocal(int i9) {
        return i9;
    }
}
