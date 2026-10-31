package p096i9;

import java.util.Arrays;
import kotlin.UByteArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: i9.s1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1860s1 extends AbstractC1824g1 {

    /* JADX INFO: renamed from: a */
    public byte[] f4827a;

    /* JADX INFO: renamed from: b */
    public int f4828b;

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: a */
    public final Object mo2909a() {
        return UByteArray.m6157boximpl(UByteArray.m6159constructorimpl(Arrays.copyOf(this.f4827a, this.f4828b)));
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: b */
    public final void mo2910b(int i10) {
        if (UByteArray.m6165getSizeimpl(this.f4827a) < i10) {
            byte[] bArr = this.f4827a;
            this.f4827a = UByteArray.m6159constructorimpl(Arrays.copyOf(bArr, RangesKt.coerceAtLeast(i10, UByteArray.m6165getSizeimpl(bArr) * 2)));
        }
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: d */
    public final int mo2911d() {
        return this.f4828b;
    }
}
