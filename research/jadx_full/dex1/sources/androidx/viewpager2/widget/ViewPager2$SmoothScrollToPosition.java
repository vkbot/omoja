package androidx.viewpager2.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$SmoothScrollToPosition implements Runnable {
    private final int mPosition;
    private final RecyclerView mRecyclerView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$SmoothScrollToPosition(int i9, RecyclerView recyclerView) {
        this.mPosition = i9;
        this.mRecyclerView = recyclerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.mRecyclerView.smoothScrollToPosition(this.mPosition);
    }
}
