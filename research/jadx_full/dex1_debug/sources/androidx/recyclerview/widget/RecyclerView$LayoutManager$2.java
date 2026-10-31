package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$LayoutManager$2 implements ViewBoundsCheck$Callback {
    final /* synthetic */ RecyclerView$LayoutManager this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$LayoutManager$2(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        this.this$0 = recyclerView$LayoutManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewBoundsCheck$Callback
    public View getChildAt(int i9) {
        return this.this$0.getChildAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewBoundsCheck$Callback
    public int getChildEnd(View view) {
        return this.this$0.getDecoratedBottom(view) + ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewBoundsCheck$Callback
    public int getChildStart(View view) {
        return this.this$0.getDecoratedTop(view) - ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) view.getLayoutParams())).topMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewBoundsCheck$Callback
    public int getParentEnd() {
        return this.this$0.getHeight() - this.this$0.getPaddingBottom();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ViewBoundsCheck$Callback
    public int getParentStart() {
        return this.this$0.getPaddingTop();
    }
}
