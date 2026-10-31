package k4;

import j1.i;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f3192b;
    public final int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final byte[] f3194g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean[] f3195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3196i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, char[] cArr, byte[] bArr, boolean z8) {
        this.f3191a = str;
        cArr.getClass();
        this.f3192b = cArr;
        try {
            int length = cArr.length;
            RoundingMode roundingMode = RoundingMode.UNNECESSARY;
            int iO = a.a.o(length);
            this.d = iO;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iO);
            int i9 = 1 << (3 - iNumberOfTrailingZeros);
            this.e = i9;
            this.f3193f = iO >> iNumberOfTrailingZeros;
            this.c = cArr.length - 1;
            this.f3194g = bArr;
            boolean[] zArr = new boolean[i9];
            for (int i10 = 0; i10 < this.f3193f; i10++) {
                int i11 = this.d;
                RoundingMode roundingMode2 = RoundingMode.CEILING;
                zArr[a.a.i(i10 * 8, i11)] = true;
            }
            this.f3195h = zArr;
            this.f3196i = z8;
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(char c) throws d {
        if (c > 127) {
            throw new d("Unrecognized character: 0x" + Integer.toHexString(c));
        }
        byte b9 = this.f3194g[c];
        if (b9 != -1) {
            return b9;
        }
        if (c > ' ' && c != 127) {
            throw new d("Unrecognized character: " + c);
        }
        throw new d("Unrecognized character: 0x" + Integer.toHexString(c));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3196i == aVar.f3196i && Arrays.equals(this.f3192b, aVar.f3192b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(this.f3192b) + (this.f3196i ? 1231 : 1237);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.f3191a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i9 = 0; i9 < cArr.length; i9++) {
            char c = cArr[i9];
            if (c < 128) {
                if (bArr[c] == -1) {
                    bArr[c] = (byte) i9;
                } else {
                    i.k(e3.d.l("Duplicate character: %s", Character.valueOf(c)));
                    throw null;
                }
            } else {
                i.k(e3.d.l("Non-ASCII character: %s", Character.valueOf(c)));
                throw null;
            }
        }
        this(str, cArr, bArr, false);
    }
}
