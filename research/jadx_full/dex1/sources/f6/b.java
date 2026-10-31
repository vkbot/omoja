package f6;

import j1.i;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2258b;
    public final int c;
    public final int d;
    public final int[] e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i9, int i10) {
        if (i9 <= 0 || i10 <= 0) {
            i.k("Both dimensions must be greater than 0");
            throw null;
        }
        this.f2258b = i9;
        this.c = i10;
        int i11 = (i9 + 31) / 32;
        this.d = i11;
        this.e = new int[i11 * i10];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, int i10) {
        int i11 = (i9 / 32) + (i10 * this.d);
        int[] iArr = this.e;
        iArr[i11] = (1 << (i9 & 31)) ^ iArr[i11];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b(int i9, int i10) {
        return ((this.e[(i9 / 32) + (i10 * this.d)] >>> (i9 & 31)) & 1) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] c() {
        int[] iArr = this.e;
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i9 = this.d;
        int i10 = length / i9;
        int i11 = (length % i9) << 5;
        int i12 = iArr[length];
        int i13 = 31;
        while ((i12 >>> i13) == 0) {
            i13--;
        }
        return new int[]{i11 + i13, i10};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object clone() {
        return new b(this.f2258b, this.c, this.d, (int[]) this.e.clone());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a d(a aVar, int i9) {
        int i10 = aVar.c;
        int i11 = this.f2258b;
        if (i10 < i11) {
            aVar = new a(i11);
        } else {
            int length = aVar.f2257b.length;
            for (int i12 = 0; i12 < length; i12++) {
                aVar.f2257b[i12] = 0;
            }
        }
        int i13 = this.d;
        int i14 = i9 * i13;
        for (int i15 = 0; i15 < i13; i15++) {
            aVar.f2257b[(i15 << 5) / 32] = this.e[i14 + i15];
        }
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] e() {
        int[] iArr;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            iArr = this.e;
            if (i10 >= iArr.length || iArr[i10] != 0) {
                break;
            }
            i10++;
        }
        if (i10 == iArr.length) {
            return null;
        }
        int i11 = this.d;
        int i12 = i10 / i11;
        int i13 = (i10 % i11) << 5;
        while ((iArr[i10] << (31 - i9)) == 0) {
            i9++;
        }
        return new int[]{i13 + i9, i12};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2258b == bVar.f2258b && this.c == bVar.c && this.d == bVar.d && Arrays.equals(this.e, bVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(int i9, int i10) {
        int i11 = (i9 / 32) + (i10 * this.d);
        int[] iArr = this.e;
        iArr[i11] = (1 << (i9 & 31)) | iArr[i11];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(int i9, int i10, int i11, int i12) {
        if (i10 < 0 || i9 < 0) {
            i.k("Left and top must be nonnegative");
            return;
        }
        if (i12 <= 0 || i11 <= 0) {
            i.k("Height and width must be at least 1");
            return;
        }
        int i13 = i11 + i9;
        int i14 = i12 + i10;
        if (i14 > this.c || i13 > this.f2258b) {
            i.k("The region must fit inside the matrix");
            return;
        }
        while (i10 < i14) {
            int i15 = this.d * i10;
            for (int i16 = i9; i16 < i13; i16++) {
                int i17 = (i16 / 32) + i15;
                int[] iArr = this.e;
                iArr[i17] = iArr[i17] | (1 << (i16 & 31));
            }
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int i9 = this.f2258b;
        return Arrays.hashCode(this.e) + (((((((i9 * 31) + i9) * 31) + this.c) * 31) + this.d) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        int i9 = this.f2258b;
        int i10 = this.c;
        StringBuilder sb = new StringBuilder((i9 + 1) * i10);
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i9; i12++) {
                sb.append(b(i12, i11) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public b(int i9, int i10, int i11, int[] iArr) {
        this.f2258b = i9;
        this.c = i10;
        this.d = i11;
        this.e = iArr;
    }
}
