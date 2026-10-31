package p063f6;

import java.util.Arrays;
import p099j1.C1929i;

/* JADX INFO: renamed from: f6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1578b implements Cloneable {

    /* JADX INFO: renamed from: b */
    public final int f3900b;

    /* JADX INFO: renamed from: c */
    public final int f3901c;

    /* JADX INFO: renamed from: d */
    public final int f3902d;

    /* JADX INFO: renamed from: e */
    public final int[] f3903e;

    public C1578b(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            C1929i.m3029k("Both dimensions must be greater than 0");
            throw null;
        }
        this.f3900b = i10;
        this.f3901c = i11;
        int i12 = (i10 + 31) / 32;
        this.f3902d = i12;
        this.f3903e = new int[i12 * i11];
    }

    /* JADX INFO: renamed from: a */
    public final void m2657a(int i10, int i11) {
        int i12 = (i10 / 32) + (i11 * this.f3902d);
        int[] iArr = this.f3903e;
        iArr[i12] = (1 << (i10 & 31)) ^ iArr[i12];
    }

    /* JADX INFO: renamed from: b */
    public final boolean m2658b(int i10, int i11) {
        return ((this.f3903e[(i10 / 32) + (i11 * this.f3902d)] >>> (i10 & 31)) & 1) != 0;
    }

    /* JADX INFO: renamed from: c */
    public final int[] m2659c() {
        int[] iArr = this.f3903e;
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i10 = this.f3902d;
        int i11 = length / i10;
        int i12 = (length % i10) << 5;
        int i13 = iArr[length];
        int i14 = 31;
        while ((i13 >>> i14) == 0) {
            i14--;
        }
        return new int[]{i12 + i14, i11};
    }

    public final Object clone() {
        return new C1578b(this.f3900b, this.f3901c, this.f3902d, (int[]) this.f3903e.clone());
    }

    /* JADX INFO: renamed from: d */
    public final C1577a m2660d(C1577a c1577a, int i10) {
        int i11 = c1577a.f3899c;
        int i12 = this.f3900b;
        if (i11 < i12) {
            c1577a = new C1577a(i12);
        } else {
            int length = c1577a.f3898b.length;
            for (int i13 = 0; i13 < length; i13++) {
                c1577a.f3898b[i13] = 0;
            }
        }
        int i14 = this.f3902d;
        int i15 = i10 * i14;
        for (int i16 = 0; i16 < i14; i16++) {
            c1577a.f3898b[(i16 << 5) / 32] = this.f3903e[i15 + i16];
        }
        return c1577a;
    }

    /* JADX INFO: renamed from: e */
    public final int[] m2661e() {
        int[] iArr;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            iArr = this.f3903e;
            if (i11 >= iArr.length || iArr[i11] != 0) {
                break;
            }
            i11++;
        }
        if (i11 == iArr.length) {
            return null;
        }
        int i12 = this.f3902d;
        int i13 = i11 / i12;
        int i14 = (i11 % i12) << 5;
        while ((iArr[i11] << (31 - i10)) == 0) {
            i10++;
        }
        return new int[]{i14 + i10, i13};
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1578b)) {
            return false;
        }
        C1578b c1578b = (C1578b) obj;
        return this.f3900b == c1578b.f3900b && this.f3901c == c1578b.f3901c && this.f3902d == c1578b.f3902d && Arrays.equals(this.f3903e, c1578b.f3903e);
    }

    /* JADX INFO: renamed from: f */
    public final void m2662f(int i10, int i11) {
        int i12 = (i10 / 32) + (i11 * this.f3902d);
        int[] iArr = this.f3903e;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    /* JADX INFO: renamed from: g */
    public final void m2663g(int i10, int i11, int i12, int i13) {
        if (i11 < 0 || i10 < 0) {
            C1929i.m3029k("Left and top must be nonnegative");
            return;
        }
        if (i13 <= 0 || i12 <= 0) {
            C1929i.m3029k("Height and width must be at least 1");
            return;
        }
        int i14 = i12 + i10;
        int i15 = i13 + i11;
        if (i15 > this.f3901c || i14 > this.f3900b) {
            C1929i.m3029k("The region must fit inside the matrix");
            return;
        }
        while (i11 < i15) {
            int i16 = this.f3902d * i11;
            for (int i17 = i10; i17 < i14; i17++) {
                int i18 = (i17 / 32) + i16;
                int[] iArr = this.f3903e;
                iArr[i18] = iArr[i18] | (1 << (i17 & 31));
            }
            i11++;
        }
    }

    public final int hashCode() {
        int i10 = this.f3900b;
        return Arrays.hashCode(this.f3903e) + (((((((i10 * 31) + i10) * 31) + this.f3901c) * 31) + this.f3902d) * 31);
    }

    public final String toString() {
        int i10 = this.f3900b;
        int i11 = this.f3901c;
        StringBuilder sb = new StringBuilder((i10 + 1) * i11);
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                sb.append(m2658b(i13, i12) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public C1578b(int i10, int i11, int i12, int[] iArr) {
        this.f3900b = i10;
        this.f3901c = i11;
        this.f3902d = i12;
        this.f3903e = iArr;
    }
}
