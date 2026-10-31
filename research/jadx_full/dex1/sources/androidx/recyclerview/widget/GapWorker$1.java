package androidx.recyclerview.widget;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GapWorker$1 implements Comparator<GapWorker$Task> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(GapWorker$Task gapWorker$Task, GapWorker$Task gapWorker$Task2) {
        RecyclerView recyclerView = gapWorker$Task.view;
        if ((recyclerView == null) != (gapWorker$Task2.view == null)) {
            return recyclerView == null ? 1 : -1;
        }
        boolean z8 = gapWorker$Task.neededNextFrame;
        if (z8 != gapWorker$Task2.neededNextFrame) {
            return z8 ? -1 : 1;
        }
        int i9 = gapWorker$Task2.viewVelocity - gapWorker$Task.viewVelocity;
        if (i9 != 0) {
            return i9;
        }
        int i10 = gapWorker$Task.distanceToItem - gapWorker$Task2.distanceToItem;
        if (i10 != 0) {
            return i10;
        }
        return 0;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(GapWorker$Task gapWorker$Task, GapWorker$Task gapWorker$Task2) {
        return compare2(gapWorker$Task, gapWorker$Task2);
    }
}
