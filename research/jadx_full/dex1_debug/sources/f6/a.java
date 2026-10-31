package f6;

import j1.i;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f2257b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9) {
        this.c = i9;
        this.f2257b = new int[(i9 + 31) / 32];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(boolean z8) {
        c(this.c + 1);
        if (z8) {
            int[] iArr = this.f2257b;
            int i9 = this.c;
            int i10 = i9 / 32;
            iArr[i10] = (1 << (i9 & 31)) | iArr[i10];
        }
        this.c++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9, int i10) {
        if (i10 < 0 || i10 > 32) {
            i.k("Num bits must be between 0 and 32");
            return;
        }
        c(this.c + i10);
        while (i10 > 0) {
            boolean z8 = true;
            if (((i9 >> (i10 - 1)) & 1) != 1) {
                z8 = false;
            }
            a(z8);
            i10--;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9) {
        int[] iArr = this.f2257b;
        if (i9 > (iArr.length << 5)) {
            int[] iArr2 = new int[(i9 + 31) / 32];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f2257b = iArr2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object clone() {
        int[] iArr = (int[]) this.f2257b.clone();
        int i9 = this.c;
        a aVar = new a();
        aVar.f2257b = iArr;
        aVar.c = i9;
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d(int i9) {
        return ((1 << (i9 & 31)) & this.f2257b[i9 / 32]) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int e(int i9) {
        int i10 = this.c;
        if (i9 >= i10) {
            return i10;
        }
        int i11 = i9 / 32;
        int i12 = (-(1 << (i9 & 31))) & this.f2257b[i11];
        while (i12 == 0) {
            i11++;
            int[] iArr = this.f2257b;
            if (i11 == iArr.length) {
                return this.c;
            }
            i12 = iArr[i11];
        }
        return Math.min(Integer.numberOfTrailingZeros(i12) + (i11 << 5), this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.c == aVar.c && Arrays.equals(this.f2257b, aVar.f2257b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int f(int i9) {
        int i10 = this.c;
        if (i9 >= i10) {
            return i10;
        }
        int i11 = i9 / 32;
        int i12 = (-(1 << (i9 & 31))) & (~this.f2257b[i11]);
        while (i12 == 0) {
            i11++;
            int[] iArr = this.f2257b;
            if (i11 == iArr.length) {
                return this.c;
            }
            i12 = ~iArr[i11];
        }
        return Math.min(Integer.numberOfTrailingZeros(i12) + (i11 << 5), this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int g() {
        return (this.c + 7) / 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean h(int i9, int i10) {
        if (i10 < i9 || i9 < 0 || i10 > this.c) {
            l9.i.a();
            return false;
        }
        if (i10 != i9) {
            int i11 = i10 - 1;
            int i12 = i9 / 32;
            int i13 = i11 / 32;
            int i14 = i12;
            while (i14 <= i13) {
                if ((((2 << (i14 >= i13 ? 31 & i11 : 31)) - (1 << (i14 > i12 ? 0 : i9 & 31))) & this.f2257b[i14]) != 0) {
                    return false;
                }
                i14++;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(this.f2257b) + (this.c * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i() {
        int[] iArr = new int[this.f2257b.length];
        int i9 = (this.c - 1) / 32;
        int i10 = i9 + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            long j9 = this.f2257b[i11];
            long j10 = ((j9 & 1431655765) << 1) | ((j9 >> 1) & 1431655765);
            long j11 = ((j10 & 858993459) << 2) | ((j10 >> 2) & 858993459);
            long j12 = ((j11 & 252645135) << 4) | ((j11 >> 4) & 252645135);
            long j13 = ((j12 & 16711935) << 8) | ((j12 >> 8) & 16711935);
            iArr[i9 - i11] = (int) (((j13 & 65535) << 16) | ((j13 >> 16) & 65535));
        }
        int i12 = this.c;
        int i13 = i10 << 5;
        if (i12 != i13) {
            int i14 = i13 - i12;
            int i15 = iArr[0] >>> i14;
            for (int i16 = 1; i16 < i10; i16++) {
                int i17 = iArr[i16];
                iArr[i16 - 1] = i15 | (i17 << (32 - i14));
                i15 = i17 >>> i14;
            }
            iArr[i9] = i15;
        }
        this.f2257b = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(int i9) {
        int[] iArr = this.f2257b;
        int i10 = i9 / 32;
        iArr[i10] = (1 << (i9 & 31)) | iArr[i10];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        int i9 = this.c;
        StringBuilder sb = new StringBuilder((i9 / 8) + i9 + 1);
        for (int i10 = 0; i10 < this.c; i10++) {
            if ((i10 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(d(i10) ? 'X' : '.');
        }
        return sb.toString();
    }

    public a() {
        this.c = 0;
        this.f2257b = new int[1];
    }
}
