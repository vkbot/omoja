package p096i9;

import java.util.Arrays;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: i9.n1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1845n1 extends AbstractC1824g1 {

    /* JADX INFO: renamed from: a */
    public short[] f4800a;

    /* JADX INFO: renamed from: b */
    public int f4801b;

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: a */
    public final Object mo2909a() {
        return Arrays.copyOf(this.f4800a, this.f4801b);
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: b */
    public final void mo2910b(int i10) {
        short[] sArr = this.f4800a;
        if (sArr.length < i10) {
            this.f4800a = Arrays.copyOf(sArr, RangesKt.coerceAtLeast(i10, sArr.length * 2));
        }
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: d */
    public final int mo2911d() {
        return this.f4801b;
    }
}
