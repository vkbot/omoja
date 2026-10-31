package p147n6;

import java.util.Map;
import p063f6.C1577a;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;

/* JADX INFO: renamed from: n6.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2485f extends AbstractC2487h {

    /* JADX INFO: renamed from: b */
    public static final int[] f6854b = {6, 8, 10, 12, 14};

    /* JADX INFO: renamed from: c */
    public static final int[] f6855c = {1, 1, 1, 1};

    /* JADX INFO: renamed from: d */
    public static final int[][] f6856d = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* JADX INFO: renamed from: e */
    public static final int[][] f6857e = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* JADX INFO: renamed from: a */
    public int f6858a = -1;

    /* JADX INFO: renamed from: g */
    public static int m3868g(int[] iArr) throws C3753i {
        float f8 = 0.38f;
        int i10 = -1;
        for (int i11 = 0; i11 < 20; i11++) {
            float fM3871d = AbstractC2487h.m3871d(iArr, f6857e[i11], 0.5f);
            if (fM3871d < f8) {
                i10 = i11;
                f8 = fM3871d;
            } else if (fM3871d == f8) {
                i10 = -1;
            }
        }
        if (i10 >= 0) {
            return i10 % 10;
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: h */
    public static int[] m3869h(int i10, C1577a c1577a, int[] iArr) throws C3753i {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i11 = c1577a.f3899c;
        int i12 = i10;
        boolean z9 = false;
        int i13 = 0;
        while (i10 < i11) {
            if (c1577a.m2650d(i10) != z9) {
                iArr2[i13] = iArr2[i13] + 1;
            } else {
                if (i13 != length - 1) {
                    i13++;
                } else {
                    if (AbstractC2487h.m3871d(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i12, i10};
                    }
                    i12 += iArr2[0] + iArr2[1];
                    int i14 = i13 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i13] = 0;
                    i13--;
                }
                iArr2[i13] = 1;
                z9 = !z9;
            }
            i10++;
        }
        throw C3753i.f11192d;
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) throws C3749e, C3753i {
        int[] iArrM3869h;
        int[] iArr;
        int length;
        int length2;
        int i11;
        int i12;
        boolean z9;
        int i13 = c1577a.f3899c;
        int iM2651e = c1577a.m2651e(0);
        if (iM2651e == i13) {
            throw C3753i.f11192d;
        }
        int[] iArrM3869h2 = m3869h(iM2651e, c1577a, f6855c);
        int i14 = iArrM3869h2[1];
        int i15 = iArrM3869h2[0];
        this.f6858a = (i14 - i15) / 4;
        m3870i(c1577a, i15);
        int[][] iArr2 = f6856d;
        c1577a.m2655i();
        try {
            int i16 = c1577a.f3899c;
            int iM2651e2 = c1577a.m2651e(0);
            if (iM2651e2 == i16) {
                throw C3753i.f11192d;
            }
            try {
                iArrM3869h = m3869h(iM2651e2, c1577a, iArr2[0]);
                while (true) {
                    if (i11 >= length2) {
                        z9 = false;
                        break;
                    }
                    int i17 = iArr[i11];
                    if (length == i17) {
                        z9 = true;
                        break;
                    }
                    if (i17 > i12) {
                        i12 = i17;
                    }
                    i11++;
                }
            } catch (C3753i unused) {
                iArrM3869h = m3869h(iM2651e2, c1577a, iArr2[1]);
            }
            m3870i(c1577a, iArrM3869h[0]);
            int i18 = iArrM3869h[0];
            int i19 = c1577a.f3899c;
            iArrM3869h[0] = i19 - iArrM3869h[1];
            iArrM3869h[1] = i19 - i18;
            c1577a.m2655i();
            StringBuilder sb = new StringBuilder(20);
            int i20 = iArrM3869h2[1];
            int i21 = iArrM3869h[0];
            int[] iArr3 = new int[10];
            int[] iArr4 = new int[5];
            int[] iArr5 = new int[5];
            while (i20 < i21) {
                AbstractC2487h.m3872e(i20, c1577a, iArr3);
                for (int i22 = 0; i22 < 5; i22++) {
                    int i23 = i22 * 2;
                    iArr4[i22] = iArr3[i23];
                    iArr5[i22] = iArr3[i23 + 1];
                }
                sb.append((char) (m3868g(iArr4) + 48));
                sb.append((char) (m3868g(iArr5) + 48));
                for (int i24 = 0; i24 < 10; i24++) {
                    i20 += iArr3[i24];
                }
            }
            String string = sb.toString();
            iArr = map != null ? (int[]) map.get(EnumC3748d.f11177g) : null;
            if (iArr == null) {
                iArr = f6854b;
            }
            length = string.length();
            length2 = iArr.length;
            i11 = 0;
            i12 = 0;
            if (!z9 && length > i12) {
                z9 = true;
            }
            if (!z9) {
                throw C3749e.m5980a();
            }
            float f8 = i10;
            return new C3757m(string, null, new C3759o[]{new C3759o(iArrM3869h2[1], f8), new C3759o(iArrM3869h[0], f8)}, EnumC3745a.f11160j);
        } catch (Throwable th) {
            c1577a.m2655i();
            throw th;
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m3870i(C1577a c1577a, int i10) throws C3753i {
        int iMin = Math.min(this.f6858a * 10, i10);
        for (int i11 = i10 - 1; iMin > 0 && i11 >= 0 && !c1577a.m2650d(i11); i11--) {
            iMin--;
        }
        if (iMin != 0) {
            throw C3753i.f11192d;
        }
    }
}
