package z5;

import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6325b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(int i9, int i10) {
        this.f6324a = i9;
        this.f6325b = i10;
    }

    public abstract byte[] a();

    public abstract byte[] b(int i9, byte[] bArr);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean c() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g d() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        char c;
        int i9 = this.f6324a;
        byte[] bArrB = new byte[i9];
        int i10 = this.f6325b;
        StringBuilder sb = new StringBuilder((i9 + 1) * i10);
        for (int i11 = 0; i11 < i10; i11++) {
            bArrB = b(i11, bArrB);
            for (int i12 = 0; i12 < i9; i12++) {
                int i13 = bArrB[i12] & UByte.MAX_VALUE;
                if (i13 < 64) {
                    c = '#';
                } else if (i13 < 128) {
                    c = '+';
                } else {
                    c = i13 < 192 ? '.' : ' ';
                }
                sb.append(c);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
