package androidx.customview.widget;

import androidx.collection.SparseArrayCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExploreByTouchHelper$2 implements FocusStrategy$CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.customview.widget.FocusStrategy$CollectionAdapter
    public /* bridge */ /* synthetic */ AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i9) {
        return get2(sparseArrayCompat, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.customview.widget.FocusStrategy$CollectionAdapter
    public /* bridge */ /* synthetic */ int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
        return size2(sparseArrayCompat);
    }

    /* JADX INFO: renamed from: get, reason: avoid collision after fix types in other method */
    public AccessibilityNodeInfoCompat get2(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i9) {
        return sparseArrayCompat.valueAt(i9);
    }

    /* JADX INFO: renamed from: size, reason: avoid collision after fix types in other method */
    public int size2(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
        return sparseArrayCompat.size();
    }
}
