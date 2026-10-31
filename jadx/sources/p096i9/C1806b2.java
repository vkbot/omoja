package p096i9;

import java.util.Arrays;
import kotlin.UShortArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: i9.b2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1806b2 extends AbstractC1824g1 {

    /* JADX INFO: renamed from: a */
    public short[] f4730a;

    /* JADX INFO: renamed from: b */
    public int f4731b;

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: a */
    public final Object mo2909a() {
        return UShortArray.m6420boximpl(UShortArray.m6422constructorimpl(Arrays.copyOf(this.f4730a, this.f4731b)));
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: b */
    public final void mo2910b(int i10) {
        if (UShortArray.m6428getSizeimpl(this.f4730a) < i10) {
            short[] sArr = this.f4730a;
            this.f4730a = UShortArray.m6422constructorimpl(Arrays.copyOf(sArr, RangesKt.coerceAtLeast(i10, UShortArray.m6428getSizeimpl(sArr) * 2)));
        }
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: d */
    public final int mo2911d() {
        return this.f4731b;
    }
}
