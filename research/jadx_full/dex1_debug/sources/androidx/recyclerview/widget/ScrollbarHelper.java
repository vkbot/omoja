package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ScrollbarHelper {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ScrollbarHelper() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int computeScrollExtent(RecyclerView$State recyclerView$State, OrientationHelper orientationHelper, View view, View view2, RecyclerView$LayoutManager recyclerView$LayoutManager, boolean z8) {
        if (recyclerView$LayoutManager.getChildCount() == 0 || recyclerView$State.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z8) {
            return Math.abs(recyclerView$LayoutManager.getPosition(view) - recyclerView$LayoutManager.getPosition(view2)) + 1;
        }
        return Math.min(orientationHelper.getTotalSpace(), orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int computeScrollOffset(RecyclerView$State recyclerView$State, OrientationHelper orientationHelper, View view, View view2, RecyclerView$LayoutManager recyclerView$LayoutManager, boolean z8, boolean z9) {
        if (recyclerView$LayoutManager.getChildCount() == 0 || recyclerView$State.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z9 ? Math.max(0, (recyclerView$State.getItemCount() - Math.max(recyclerView$LayoutManager.getPosition(view), recyclerView$LayoutManager.getPosition(view2))) - 1) : Math.max(0, Math.min(recyclerView$LayoutManager.getPosition(view), recyclerView$LayoutManager.getPosition(view2)));
        if (z8) {
            return Math.round((iMax * (Math.abs(orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view)) / (Math.abs(recyclerView$LayoutManager.getPosition(view) - recyclerView$LayoutManager.getPosition(view2)) + 1))) + (orientationHelper.getStartAfterPadding() - orientationHelper.getDecoratedStart(view)));
        }
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int computeScrollRange(RecyclerView$State recyclerView$State, OrientationHelper orientationHelper, View view, View view2, RecyclerView$LayoutManager recyclerView$LayoutManager, boolean z8) {
        if (recyclerView$LayoutManager.getChildCount() == 0 || recyclerView$State.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z8) {
            return recyclerView$State.getItemCount();
        }
        return (int) (((orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view)) / (Math.abs(recyclerView$LayoutManager.getPosition(view) - recyclerView$LayoutManager.getPosition(view2)) + 1)) * recyclerView$State.getItemCount());
    }
}
