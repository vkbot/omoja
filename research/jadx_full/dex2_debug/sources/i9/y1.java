package i9;

import java.util.Arrays;
import kotlin.ULongArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class y1 extends g1 {
    public long[] a;
    public int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final Object a() {
        return ULongArray.box-impl(ULongArray.constructor-impl(Arrays.copyOf(this.a, this.b)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final void b(int i) {
        if (ULongArray.getSize-impl(this.a) < i) {
            long[] jArr = this.a;
            this.a = ULongArray.constructor-impl(Arrays.copyOf(jArr, RangesKt.coerceAtLeast(i, ULongArray.getSize-impl(jArr) * 2)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final int d() {
        return this.b;
    }
}
