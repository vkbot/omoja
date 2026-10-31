package p096i9;

import java.util.Arrays;
import kotlin.UIntArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: i9.v1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1869v1 extends AbstractC1824g1 {

    /* JADX INFO: renamed from: a */
    public int[] f4842a;

    /* JADX INFO: renamed from: b */
    public int f4843b;

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: a */
    public final Object mo2909a() {
        return UIntArray.m6236boximpl(UIntArray.m6238constructorimpl(Arrays.copyOf(this.f4842a, this.f4843b)));
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: b */
    public final void mo2910b(int i10) {
        if (UIntArray.m6244getSizeimpl(this.f4842a) < i10) {
            int[] iArr = this.f4842a;
            this.f4842a = UIntArray.m6238constructorimpl(Arrays.copyOf(iArr, RangesKt.coerceAtLeast(i10, UIntArray.m6244getSizeimpl(iArr) * 2)));
        }
    }

    @Override // p096i9.AbstractC1824g1
    /* JADX INFO: renamed from: d */
    public final int mo2911d() {
        return this.f4843b;
    }
}
