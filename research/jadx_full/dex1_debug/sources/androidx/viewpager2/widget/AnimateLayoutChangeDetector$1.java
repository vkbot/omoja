package androidx.viewpager2.widget;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimateLayoutChangeDetector$1 implements Comparator<int[]> {
    final /* synthetic */ AnimateLayoutChangeDetector this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimateLayoutChangeDetector$1(AnimateLayoutChangeDetector animateLayoutChangeDetector) {
        this.this$0 = animateLayoutChangeDetector;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(int[] iArr, int[] iArr2) {
        return compare2(iArr, iArr2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(int[] iArr, int[] iArr2) {
        return iArr[0] - iArr2[0];
    }
}
