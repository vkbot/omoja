package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class GridLayoutManager$DefaultSpanSizeLookup extends GridLayoutManager$SpanSizeLookup {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.GridLayoutManager$SpanSizeLookup
    public int getSpanIndex(int i9, int i10) {
        return i9 % i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.GridLayoutManager$SpanSizeLookup
    public int getSpanSize(int i9) {
        return 1;
    }
}
