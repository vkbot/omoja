package i9;

import java.util.Arrays;
import kotlin.UByteArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class s1 extends g1 {
    public byte[] a;
    public int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final Object a() {
        return UByteArray.box-impl(UByteArray.constructor-impl(Arrays.copyOf(this.a, this.b)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final void b(int i) {
        if (UByteArray.getSize-impl(this.a) < i) {
            byte[] bArr = this.a;
            this.a = UByteArray.constructor-impl(Arrays.copyOf(bArr, RangesKt.coerceAtLeast(i, UByteArray.getSize-impl(bArr) * 2)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final int d() {
        return this.b;
    }
}
