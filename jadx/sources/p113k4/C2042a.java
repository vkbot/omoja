package p113k4;

import java.math.RoundingMode;
import java.util.Arrays;
import p000a.AbstractC0000a;
import p050e3.C1461d;
import p099j1.C1929i;

/* JADX INFO: renamed from: k4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2042a {

    /* JADX INFO: renamed from: a */
    public final String f5590a;

    /* JADX INFO: renamed from: b */
    public final char[] f5591b;

    /* JADX INFO: renamed from: c */
    public final int f5592c;

    /* JADX INFO: renamed from: d */
    public final int f5593d;

    /* JADX INFO: renamed from: e */
    public final int f5594e;

    /* JADX INFO: renamed from: f */
    public final int f5595f;

    /* JADX INFO: renamed from: g */
    public final byte[] f5596g;

    /* JADX INFO: renamed from: h */
    public final boolean[] f5597h;

    /* JADX INFO: renamed from: i */
    public final boolean f5598i;

    public C2042a(String str, char[] cArr, byte[] bArr, boolean z9) {
        this.f5590a = str;
        cArr.getClass();
        this.f5591b = cArr;
        try {
            int length = cArr.length;
            RoundingMode roundingMode = RoundingMode.UNNECESSARY;
            int iM14o = AbstractC0000a.m14o(length);
            this.f5593d = iM14o;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iM14o);
            int i10 = 1 << (3 - iNumberOfTrailingZeros);
            this.f5594e = i10;
            this.f5595f = iM14o >> iNumberOfTrailingZeros;
            this.f5592c = cArr.length - 1;
            this.f5596g = bArr;
            boolean[] zArr = new boolean[i10];
            for (int i11 = 0; i11 < this.f5595f; i11++) {
                int i12 = this.f5593d;
                RoundingMode roundingMode2 = RoundingMode.CEILING;
                zArr[AbstractC0000a.m9i(i11 * 8, i12)] = true;
            }
            this.f5597h = zArr;
            this.f5598i = z9;
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m3140a(char c) throws C2045d {
        if (c > 127) {
            throw new C2045d("Unrecognized character: 0x" + Integer.toHexString(c));
        }
        byte b10 = this.f5596g[c];
        if (b10 != -1) {
            return b10;
        }
        if (c > ' ' && c != 127) {
            throw new C2045d("Unrecognized character: " + c);
        }
        throw new C2045d("Unrecognized character: 0x" + Integer.toHexString(c));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2042a)) {
            return false;
        }
        C2042a c2042a = (C2042a) obj;
        return this.f5598i == c2042a.f5598i && Arrays.equals(this.f5591b, c2042a.f5591b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5591b) + (this.f5598i ? 1231 : 1237);
    }

    public final String toString() {
        return this.f5590a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C2042a(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i10 = 0; i10 < cArr.length; i10++) {
            char c = cArr[i10];
            if (c < 128) {
                if (bArr[c] == -1) {
                    bArr[c] = (byte) i10;
                } else {
                    C1929i.m3029k(C1461d.m2512l("Duplicate character: %s", Character.valueOf(c)));
                    throw null;
                }
            } else {
                C1929i.m3029k(C1461d.m2512l("Non-ASCII character: %s", Character.valueOf(c)));
                throw null;
            }
        }
        this(str, cArr, bArr, false);
    }
}
