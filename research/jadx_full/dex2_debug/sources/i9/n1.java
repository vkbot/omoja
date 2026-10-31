package i9;

import java.util.Arrays;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class n1 extends g1 {
    public short[] a;
    public int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final Object a() {
        return Arrays.copyOf(this.a, this.b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final void b(int i) {
        short[] sArr = this.a;
        if (sArr.length < i) {
            this.a = Arrays.copyOf(sArr, RangesKt.coerceAtLeast(i, sArr.length * 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.g1
    public final int d() {
        return this.b;
    }
}
