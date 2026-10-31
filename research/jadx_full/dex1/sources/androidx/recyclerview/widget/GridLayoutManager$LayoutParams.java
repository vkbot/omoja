package androidx.recyclerview.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GridLayoutManager$LayoutParams extends RecyclerView$LayoutParams {
    public static final int INVALID_SPAN_ID = -1;
    int mSpanIndex;
    int mSpanSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GridLayoutManager$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSpanIndex = -1;
        this.mSpanSize = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpanIndex() {
        return this.mSpanIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpanSize() {
        return this.mSpanSize;
    }

    public GridLayoutManager$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.mSpanIndex = -1;
        this.mSpanSize = 0;
    }

    public GridLayoutManager$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mSpanIndex = -1;
        this.mSpanSize = 0;
    }

    public GridLayoutManager$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mSpanIndex = -1;
        this.mSpanSize = 0;
    }

    public GridLayoutManager$LayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        super(recyclerView$LayoutParams);
        this.mSpanIndex = -1;
        this.mSpanSize = 0;
    }
}
