package h6;

import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f2486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2487b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            i.a();
            throw null;
        }
        this.f2486a = aVar;
        int length = iArr.length;
        int i9 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f2487b = iArr;
            return;
        }
        while (i9 < length && iArr[i9] == 0) {
            i9++;
        }
        if (i9 == length) {
            this.f2487b = new int[]{0};
            return;
        }
        int i10 = length - i9;
        int[] iArr2 = new int[i10];
        this.f2487b = iArr2;
        System.arraycopy(iArr, i9, iArr2, 0, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b a(b bVar) {
        a aVar = bVar.f2486a;
        a aVar2 = this.f2486a;
        if (!aVar2.equals(aVar)) {
            j1.i.k("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (e()) {
            return bVar;
        }
        if (bVar.e()) {
            return this;
        }
        int[] iArr = bVar.f2487b;
        int[] iArr2 = this.f2487b;
        if (iArr2.length > iArr.length) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i9 = length; i9 < iArr.length; i9++) {
            iArr3[i9] = iArr2[i9 - length] ^ iArr[i9];
        }
        return new b(aVar2, iArr3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(int i9) {
        if (i9 == 0) {
            return c(0);
        }
        int[] iArr = this.f2487b;
        if (i9 != 1) {
            int iC = iArr[0];
            int length = iArr.length;
            for (int i10 = 1; i10 < length; i10++) {
                iC = this.f2486a.c(i9, iC) ^ iArr[i10];
            }
            return iC;
        }
        int i11 = 0;
        for (int i12 : iArr) {
            a aVar = a.f2474h;
            i11 ^= i12;
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(int i9) {
        int[] iArr = this.f2487b;
        return iArr[(iArr.length - 1) - i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int d() {
        return this.f2487b.length - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e() {
        return this.f2487b[0] == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b f(int i9) {
        a aVar = this.f2486a;
        if (i9 == 0) {
            return aVar.c;
        }
        if (i9 == 1) {
            return this;
        }
        int[] iArr = this.f2487b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr2[i10] = aVar.c(iArr[i10], i9);
        }
        return new b(aVar, iArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b g(b bVar) {
        a aVar = bVar.f2486a;
        a aVar2 = this.f2486a;
        if (!aVar2.equals(aVar)) {
            j1.i.k("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (e() || bVar.e()) {
            return aVar2.c;
        }
        int[] iArr = this.f2487b;
        int length = iArr.length;
        int[] iArr2 = bVar.f2487b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = iArr[i9];
            for (int i11 = 0; i11 < length2; i11++) {
                int i12 = i9 + i11;
                iArr3[i12] = iArr3[i12] ^ aVar2.c(i10, iArr2[i11]);
            }
        }
        return new b(aVar2, iArr3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b h(int i9, int i10) {
        if (i9 < 0) {
            i.a();
            return null;
        }
        a aVar = this.f2486a;
        if (i10 == 0) {
            return aVar.c;
        }
        int[] iArr = this.f2487b;
        int length = iArr.length;
        int[] iArr2 = new int[i9 + length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr2[i11] = aVar.c(iArr[i11], i10);
        }
        return new b(aVar, iArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        if (e()) {
            return "0";
        }
        StringBuilder sb = new StringBuilder(d() * 8);
        for (int iD = d(); iD >= 0; iD--) {
            int iC = c(iD);
            if (iC != 0) {
                if (iC < 0) {
                    if (iD == d()) {
                        sb.append("-");
                    } else {
                        sb.append(" - ");
                    }
                    iC = -iC;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iD == 0 || iC != 1) {
                    a aVar = this.f2486a;
                    if (iC == 0) {
                        aVar.getClass();
                        i.a();
                        return null;
                    }
                    int i9 = aVar.f2483b[iC];
                    if (i9 == 0) {
                        sb.append('1');
                    } else if (i9 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i9);
                    }
                }
                if (iD != 0) {
                    if (iD == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iD);
                    }
                }
            }
        }
        return sb.toString();
    }
}
