package l9;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.collections.ArraysKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class d0 extends o {
    public final transient byte[][] f;
    public final transient int[] g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d0(byte[][] bArr, int[] iArr) {
        super(o.e.b);
        this.f = bArr;
        this.g = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final String a() {
        return new o(k()).a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final o b(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.g;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new o(bArrDigest);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final int c() {
        return this.g[this.f.length - 1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final String d() {
        return new o(k()).d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final byte[] e() {
        return k();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return oVar.c() == c() && i(oVar, c());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final byte f(int i) {
        byte[][] bArr = this.f;
        int length = bArr.length - 1;
        int[] iArr = this.g;
        b.d(iArr[length], i, 1L);
        int iA = m9.c.a(this, i);
        return bArr[iA][(i - (iA == 0 ? 0 : iArr[iA - 1])) + iArr[bArr.length + iA]];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final boolean h(int i, int i2, int i3, byte[] bArr) {
        bArr.getClass();
        if (i >= 0 && i <= c() - i3 && i2 >= 0 && i2 <= bArr.length - i3) {
            int i4 = i3 + i;
            int iA = m9.c.a(this, i);
            while (i < i4) {
                int[] iArr = this.g;
                int i5 = iA == 0 ? 0 : iArr[iA - 1];
                int i6 = iArr[iA] - i5;
                byte[][] bArr2 = this.f;
                int i7 = iArr[bArr2.length + iA];
                int iMin = Math.min(i4, i6 + i5) - i;
                int i8 = (i - i5) + i7;
                byte[] bArr3 = bArr2[iA];
                bArr3.getClass();
                for (int i10 = 0; i10 < iMin; i10++) {
                    if (bArr3[i10 + i8] == bArr[i10 + i2]) {
                    }
                }
                i2 += iMin;
                i += iMin;
                iA++;
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.f;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.c = i3;
        return i3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final boolean i(o oVar, int i) {
        oVar.getClass();
        if (c() - i >= 0) {
            int iA = m9.c.a(this, 0);
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int[] iArr = this.g;
                int i4 = iA == 0 ? 0 : iArr[iA - 1];
                int i5 = iArr[iA] - i4;
                byte[][] bArr = this.f;
                int i6 = iArr[bArr.length + iA];
                int iMin = Math.min(i, i5 + i4) - i2;
                if (oVar.h(i3, (i2 - i4) + i6, iMin, bArr[iA])) {
                    i3 += iMin;
                    i2 += iMin;
                    iA++;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final o j() {
        return new o(k()).j();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final byte[] k() {
        byte[] bArr = new byte[c()];
        byte[][] bArr2 = this.f;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.g;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            ArraysKt.copyInto(bArr2[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final void m(int i, l lVar) {
        int iA = m9.c.a(this, 0);
        int i2 = 0;
        while (i2 < i) {
            int[] iArr = this.g;
            int i3 = iA == 0 ? 0 : iArr[iA - 1];
            int i4 = iArr[iA] - i3;
            byte[][] bArr = this.f;
            int i5 = iArr[bArr.length + iA];
            int iMin = Math.min(i, i4 + i3) - i2;
            int i6 = (i2 - i3) + i5;
            b0 b0Var = new b0(bArr[iA], i6, i6 + iMin, true, false);
            b0 b0Var2 = lVar.b;
            if (b0Var2 == null) {
                b0Var.g = b0Var;
                b0Var.f = b0Var;
                lVar.b = b0Var;
            } else {
                b0 b0Var3 = b0Var2.g;
                b0Var3.getClass();
                b0Var3.b(b0Var);
            }
            i2 += iMin;
            iA++;
        }
        lVar.c += (long) i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.o
    public final String toString() {
        return new o(k()).toString();
    }
}
