package p096i9;

import java.util.Arrays;
import kotlin.ULongArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: i9.y1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1878y1 extends AbstractC1824g1 {

    /* JADX INFO: renamed from: a */
    public long[] f4855a;

    /* JADX INFO: renamed from: b */
    public int f4856b;

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: a */
    public final Object mo2909a() {
        return ULongArray.m6315boximpl(ULongArray.m6317constructorimpl(Arrays.copyOf(this.f4855a, this.f4856b)));
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: b */
    public final void mo2910b(int i10) {
        if (ULongArray.m6323getSizeimpl(this.f4855a) < i10) {
            long[] jArr = this.f4855a;
            this.f4855a = ULongArray.m6317constructorimpl(Arrays.copyOf(jArr, RangesKt.coerceAtLeast(i10, ULongArray.m6323getSizeimpl(jArr) * 2)));
        }
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: d */
    public final int mo2911d() {
        return this.f4856b;
    }
}
