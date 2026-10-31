package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class OrientationHelper {
    public static final int HORIZONTAL = 0;
    private static final int INVALID_SIZE = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    private int mLastTotalSpace;
    protected final RecyclerView$LayoutManager mLayoutManager;
    final Rect mTmpRect;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OrientationHelper(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        this.mLastTotalSpace = Integer.MIN_VALUE;
        this.mTmpRect = new Rect();
        this.mLayoutManager = recyclerView$LayoutManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrientationHelper createHorizontalHelper(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        return new OrientationHelper$1(recyclerView$LayoutManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrientationHelper createOrientationHelper(RecyclerView$LayoutManager recyclerView$LayoutManager, int i9) {
        if (i9 == 0) {
            return createHorizontalHelper(recyclerView$LayoutManager);
        }
        if (i9 == 1) {
            return createVerticalHelper(recyclerView$LayoutManager);
        }
        i.k("invalid orientation");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrientationHelper createVerticalHelper(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        return new OrientationHelper$2(recyclerView$LayoutManager);
    }

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$LayoutManager getLayoutManager() {
        return this.mLayoutManager;
    }

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.mLastTotalSpace) {
            return 0;
        }
        return getTotalSpace() - this.mLastTotalSpace;
    }

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChild(View view, int i9);

    public abstract void offsetChildren(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onLayoutComplete() {
        this.mLastTotalSpace = getTotalSpace();
    }

    public /* synthetic */ OrientationHelper(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper$1 orientationHelper$1) {
        this(recyclerView$LayoutManager);
    }
}
