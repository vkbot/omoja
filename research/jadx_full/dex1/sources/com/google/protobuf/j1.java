package com.google.protobuf;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final j1 f1521f = new j1(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f1523b;
    public Object[] c;
    public int d = -1;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j1(int i9, int[] iArr, Object[] objArr, boolean z8) {
        this.f1522a = i9;
        this.f1523b = iArr;
        this.c = objArr;
        this.e = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        int[] iArr = this.f1523b;
        if (i9 > iArr.length) {
            int i10 = this.f1522a;
            int i11 = (i10 / 2) + i10;
            if (i11 >= i9) {
                i9 = i11;
            }
            if (i9 < 8) {
                i9 = 8;
            }
            this.f1523b = Arrays.copyOf(iArr, i9);
            this.c = Arrays.copyOf(this.c, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b() {
        int iC;
        int iE;
        int iC2;
        int i9 = this.d;
        if (i9 != -1) {
            return i9;
        }
        int iA = 0;
        for (int i10 = 0; i10 < this.f1522a; i10++) {
            int i11 = this.f1523b[i10];
            int i12 = i11 >>> 3;
            int i13 = i11 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 == 2) {
                        g gVar = (g) this.c[i10];
                        int iC3 = n.c(i12);
                        int size = gVar.size();
                        iA = q.a(size, size, iC3, iA);
                    } else if (i13 == 3) {
                        iC = n.c(i12) * 2;
                        iE = ((j1) this.c[i10]).b();
                    } else {
                        if (i13 != 5) {
                            throw new IllegalStateException(d0.b());
                        }
                        ((Integer) this.c[i10]).getClass();
                        iC2 = n.c(i12) + 4;
                    }
                } else {
                    ((Long) this.c[i10]).getClass();
                    iC2 = n.c(i12) + 8;
                }
                iA = iC2 + iA;
            } else {
                long jLongValue = ((Long) this.c[i10]).longValue();
                iC = n.c(i12);
                iE = n.e(jLongValue);
            }
            iA = iE + iC + iA;
        }
        this.d = iA;
        return iA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9, Object obj) {
        if (!this.e) {
            androidx.navigation.b.a();
            return;
        }
        a(this.f1522a + 1);
        int[] iArr = this.f1523b;
        int i10 = this.f1522a;
        iArr[i10] = i9;
        this.c[i10] = obj;
        this.f1522a = i10 + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(l0 l0Var) {
        if (this.f1522a == 0) {
            return;
        }
        l0Var.getClass();
        n nVar = (n) l0Var.f1527a;
        for (int i9 = 0; i9 < this.f1522a; i9++) {
            int i10 = this.f1523b[i9];
            Object obj = this.c[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 == 0) {
                nVar.z(i11, ((Long) obj).longValue());
            } else if (i12 == 1) {
                nVar.n(i11, ((Long) obj).longValue());
            } else if (i12 == 2) {
                nVar.j(i11, (g) obj);
            } else if (i12 == 3) {
                nVar.w(i11, 3);
                ((j1) obj).d(l0Var);
                nVar.w(i11, 4);
            } else {
                if (i12 != 5) {
                    n0.b.w(d0.b());
                    return;
                }
                nVar.l(i11, ((Integer) obj).intValue());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) obj;
        int i9 = this.f1522a;
        if (i9 == j1Var.f1522a) {
            int[] iArr = this.f1523b;
            int[] iArr2 = j1Var.f1523b;
            for (int i10 = 0; i10 < i9; i10++) {
                if (iArr[i10] == iArr2[i10]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = j1Var.c;
            int i11 = this.f1522a;
            for (int i12 = 0; i12 < i11; i12++) {
                if (objArr[i12].equals(objArr2[i12])) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int i9 = this.f1522a;
        int i10 = (527 + i9) * 31;
        int[] iArr = this.f1523b;
        int iHashCode = 17;
        int i11 = 17;
        for (int i12 = 0; i12 < i9; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        int i13 = (i10 + i11) * 31;
        Object[] objArr = this.c;
        int i14 = this.f1522a;
        for (int i15 = 0; i15 < i14; i15++) {
            iHashCode = (iHashCode * 31) + objArr[i15].hashCode();
        }
        return i13 + iHashCode;
    }
}
