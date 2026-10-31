package p096i9;

import java.util.Arrays;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: i9.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1808c0 extends AbstractC1824g1 {

    /* JADX INFO: renamed from: a */
    public float[] f4733a;

    /* JADX INFO: renamed from: b */
    public int f4734b;

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: a */
    public final Object mo2909a() {
        return Arrays.copyOf(this.f4733a, this.f4734b);
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: b */
    public final void mo2910b(int i10) {
        float[] fArr = this.f4733a;
        if (fArr.length < i10) {
            this.f4733a = Arrays.copyOf(fArr, RangesKt.coerceAtLeast(i10, fArr.length * 2));
        }
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: d */
    public final int mo2911d() {
        return this.f4734b;
    }
}
