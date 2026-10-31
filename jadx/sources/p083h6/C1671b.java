package p083h6;

import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: renamed from: h6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1671b {

    /* JADX INFO: renamed from: a */
    public final C1670a f4288a;

    /* JADX INFO: renamed from: b */
    public final int[] f4289b;

    public C1671b(C1670a c1670a, int[] iArr) {
        if (iArr.length == 0) {
            C2237i.m3594a();
            throw null;
        }
        this.f4288a = c1670a;
        int length = iArr.length;
        int i10 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f4289b = iArr;
            return;
        }
        while (i10 < length && iArr[i10] == 0) {
            i10++;
        }
        if (i10 == length) {
            this.f4289b = new int[]{0};
            return;
        }
        int i11 = length - i10;
        int[] iArr2 = new int[i11];
        this.f4289b = iArr2;
        System.arraycopy(iArr, i10, iArr2, 0, i11);
    }

    /* JADX INFO: renamed from: a */
    public final C1671b m2772a(C1671b c1671b) {
        C1670a c1670a = c1671b.f4288a;
        C1670a c1670a2 = this.f4288a;
        if (!c1670a2.equals(c1670a)) {
            C1929i.m3029k("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (m2776e()) {
            return c1671b;
        }
        if (c1671b.m2776e()) {
            return this;
        }
        int[] iArr = c1671b.f4289b;
        int[] iArr2 = this.f4289b;
        if (iArr2.length > iArr.length) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i10 = length; i10 < iArr.length; i10++) {
            iArr3[i10] = iArr2[i10 - length] ^ iArr[i10];
        }
        return new C1671b(c1670a2, iArr3);
    }

    /* JADX INFO: renamed from: b */
    public final int m2773b(int i10) {
        if (i10 == 0) {
            return m2774c(0);
        }
        int[] iArr = this.f4289b;
        if (i10 != 1) {
            int iM2771c = iArr[0];
            int length = iArr.length;
            for (int i11 = 1; i11 < length; i11++) {
                iM2771c = this.f4288a.m2771c(i10, iM2771c) ^ iArr[i11];
            }
            return iM2771c;
        }
        int i12 = 0;
        for (int i13 : iArr) {
            C1670a c1670a = C1670a.f4273h;
            i12 ^= i13;
        }
        return i12;
    }

    /* JADX INFO: renamed from: c */
    public final int m2774c(int i10) {
        int[] iArr = this.f4289b;
        return iArr[(iArr.length - 1) - i10];
    }

    /* JADX INFO: renamed from: d */
    public final int m2775d() {
        return this.f4289b.length - 1;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m2776e() {
        return this.f4289b[0] == 0;
    }

    /* JADX INFO: renamed from: f */
    public final C1671b m2777f(int i10) {
        C1670a c1670a = this.f4288a;
        if (i10 == 0) {
            return c1670a.f4283c;
        }
        if (i10 == 1) {
            return this;
        }
        int[] iArr = this.f4289b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr2[i11] = c1670a.m2771c(iArr[i11], i10);
        }
        return new C1671b(c1670a, iArr2);
    }

    /* JADX INFO: renamed from: g */
    public final C1671b m2778g(C1671b c1671b) {
        C1670a c1670a = c1671b.f4288a;
        C1670a c1670a2 = this.f4288a;
        if (!c1670a2.equals(c1670a)) {
            C1929i.m3029k("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (m2776e() || c1671b.m2776e()) {
            return c1670a2.f4283c;
        }
        int[] iArr = this.f4289b;
        int length = iArr.length;
        int[] iArr2 = c1671b.f4289b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10];
            for (int i12 = 0; i12 < length2; i12++) {
                int i13 = i10 + i12;
                iArr3[i13] = iArr3[i13] ^ c1670a2.m2771c(i11, iArr2[i12]);
            }
        }
        return new C1671b(c1670a2, iArr3);
    }

    /* JADX INFO: renamed from: h */
    public final C1671b m2779h(int i10, int i11) {
        if (i10 < 0) {
            C2237i.m3594a();
            return null;
        }
        C1670a c1670a = this.f4288a;
        if (i11 == 0) {
            return c1670a.f4283c;
        }
        int[] iArr = this.f4289b;
        int length = iArr.length;
        int[] iArr2 = new int[i10 + length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr2[i12] = c1670a.m2771c(iArr[i12], i11);
        }
        return new C1671b(c1670a, iArr2);
    }

    public final String toString() {
        if (m2776e()) {
            return "0";
        }
        StringBuilder sb = new StringBuilder(m2775d() * 8);
        for (int iM2775d = m2775d(); iM2775d >= 0; iM2775d--) {
            int iM2774c = m2774c(iM2775d);
            if (iM2774c != 0) {
                if (iM2774c < 0) {
                    if (iM2775d == m2775d()) {
                        sb.append("-");
                    } else {
                        sb.append(" - ");
                    }
                    iM2774c = -iM2774c;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iM2775d == 0 || iM2774c != 1) {
                    C1670a c1670a = this.f4288a;
                    if (iM2774c == 0) {
                        c1670a.getClass();
                        C2237i.m3594a();
                        return null;
                    }
                    int i10 = c1670a.f4282b[iM2774c];
                    if (i10 == 0) {
                        sb.append('1');
                    } else if (i10 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i10);
                    }
                }
                if (iM2775d != 0) {
                    if (iM2775d == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iM2775d);
                    }
                }
            }
        }
        return sb.toString();
    }
}
