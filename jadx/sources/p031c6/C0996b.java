package p031c6;

import p000a.AbstractC0000a;
import p007a6.C0025a;
import p063f6.C1578b;
import p063f6.C1582f;
import p073g6.C1621a;
import p083h6.C1670a;
import p083h6.C1672c;
import p184r5.C3105c;
import p250y5.AbstractC3656k;
import p260z5.C3753i;
import p260z5.C3759o;

/* JADX INFO: renamed from: c6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0996b {

    /* JADX INFO: renamed from: g */
    public static final int[] f952g = {3808, 476, 2107, 1799};

    /* JADX INFO: renamed from: a */
    public final C1578b f953a;

    /* JADX INFO: renamed from: b */
    public boolean f954b;

    /* JADX INFO: renamed from: c */
    public int f955c;

    /* JADX INFO: renamed from: d */
    public int f956d;

    /* JADX INFO: renamed from: e */
    public int f957e;

    /* JADX INFO: renamed from: f */
    public int f958f;

    public C0996b(C1578b c1578b) {
        this.f953a = c1578b;
    }

    /* JADX INFO: renamed from: b */
    public static C3759o[] m1193b(C3759o[] c3759oArr, int i10, int i11) {
        float f8 = i11 / (i10 * 2.0f);
        C3759o c3759o = c3759oArr[0];
        float f10 = c3759o.f11214a;
        C3759o c3759o2 = c3759oArr[2];
        float f11 = c3759o2.f11214a;
        float f12 = f10 - f11;
        float f13 = c3759o.f11215b;
        float f14 = c3759o2.f11215b;
        float f15 = f13 - f14;
        float f16 = (f10 + f11) / 2.0f;
        float f17 = (f13 + f14) / 2.0f;
        float f18 = f12 * f8;
        float f19 = f15 * f8;
        C3759o c3759o3 = new C3759o(f16 + f18, f17 + f19);
        C3759o c3759o4 = new C3759o(f16 - f18, f17 - f19);
        C3759o c3759o5 = c3759oArr[1];
        float f20 = c3759o5.f11214a;
        C3759o c3759o6 = c3759oArr[3];
        float f21 = c3759o6.f11214a;
        float f22 = f20 - f21;
        float f23 = c3759o5.f11215b;
        float f24 = c3759o6.f11215b;
        float f25 = f23 - f24;
        float f26 = (f20 + f21) / 2.0f;
        float f27 = (f23 + f24) / 2.0f;
        float f28 = f22 * f8;
        float f29 = f8 * f25;
        return new C3759o[]{c3759o3, new C3759o(f26 + f28, f27 + f29), c3759o4, new C3759o(f26 - f28, f27 - f29)};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public final C0025a m1194a(boolean z9) throws C3753i {
        C3759o c3759oM1192a;
        C3759o c3759o;
        C3759o c3759o2;
        C3759o c3759o3;
        C3759o c3759oM1192a2;
        C3759o c3759oM1192a3;
        C3759o c3759o4;
        C3759o c3759o5;
        C0995a c0995a;
        boolean z10;
        C0995a c0995a2;
        C0995a c0995a3;
        C0995a c0995a4;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        long j10;
        int i18;
        C1578b c1578b = this.f953a;
        int i19 = -1;
        int i20 = 1;
        int i21 = 0;
        try {
            C3759o[] c3759oArrM2699b = new C1621a(c1578b).m2699b();
            c3759o2 = c3759oArrM2699b[0];
            c3759o3 = c3759oArrM2699b[1];
            c3759o = c3759oArrM2699b[2];
            c3759oM1192a = c3759oArrM2699b[3];
        } catch (C3753i unused) {
            int i22 = c1578b.f3900b / 2;
            int i23 = c1578b.f3901c / 2;
            int i24 = i22 + 7;
            int i25 = i23 - 7;
            C3759o c3759oM1192a4 = m1197e(new C0995a(i24, i25, 0), false, 1, -1).m1192a();
            int i26 = i23 + 7;
            C3759o c3759oM1192a5 = m1197e(new C0995a(i24, i26, 0), false, 1, 1).m1192a();
            int i27 = i22 - 7;
            C3759o c3759oM1192a6 = m1197e(new C0995a(i27, i26, 0), false, -1, 1).m1192a();
            c3759oM1192a = m1197e(new C0995a(i27, i25, 0), false, -1, -1).m1192a();
            c3759o = c3759oM1192a6;
            c3759o2 = c3759oM1192a4;
            c3759o3 = c3759oM1192a5;
        }
        int iM20u = AbstractC0000a.m20u((((c3759o2.f11214a + c3759oM1192a.f11214a) + c3759o3.f11214a) + c3759o.f11214a) / 4.0f);
        int iM20u2 = AbstractC0000a.m20u((((c3759o2.f11215b + c3759oM1192a.f11215b) + c3759o3.f11215b) + c3759o.f11215b) / 4.0f);
        char c = 15;
        try {
            C3759o[] c3759oArrM2699b2 = new C1621a(c1578b, 15, iM20u, iM20u2).m2699b();
            c3759o5 = c3759oArrM2699b2[0];
            c3759o4 = c3759oArrM2699b2[1];
            c3759oM1192a2 = c3759oArrM2699b2[2];
            c3759oM1192a3 = c3759oArrM2699b2[3];
            while (true) {
                i10 = c0995a4.f951c;
                i11 = c0995a4.f950b;
                i12 = c0995a.f951c;
                i13 = i21;
                i14 = c0995a.f950b;
                char c10 = c;
                if (this.f957e >= 9) {
                    i15 = i20;
                    break;
                }
                C0995a c0995aM1197e = m1197e(c0995a, z10, i20, i19);
                int i28 = c0995aM1197e.f951c;
                int i29 = c0995aM1197e.f950b;
                C0995a c0995aM1197e2 = m1197e(c0995a2, z10, i20, i20);
                C0995a c0995aM1197e3 = m1197e(c0995a3, z10, i19, i20);
                C0995a c0995aM1197e4 = m1197e(c0995a4, z10, i19, i19);
                int i30 = c0995aM1197e4.f951c;
                i15 = i20;
                int i31 = c0995aM1197e4.f950b;
                boolean z11 = z10;
                if (this.f957e > 2) {
                    double dM8h = (AbstractC0000a.m8h(i31, i30, i29, i28) * this.f957e) / (AbstractC0000a.m8h(i11, i10, i14, i12) * (this.f957e + 2));
                    if (dM8h < 0.75d || dM8h > 1.25d) {
                        break;
                    }
                    C0995a c0995a5 = new C0995a(i29 - 3, i28 + 3, 0);
                    C0995a c0995a6 = new C0995a(c0995aM1197e2.f950b - 3, c0995aM1197e2.f951c - 3, 0);
                    C0995a c0995a7 = new C0995a(c0995aM1197e3.f950b + 3, c0995aM1197e3.f951c - 3, 0);
                    C0995a c0995a8 = new C0995a(i31 + 3, i30 + 3, 0);
                    int iM1195c = m1195c(c0995a8, c0995a5);
                    if (iM1195c == 0 || m1195c(c0995a5, c0995a6) != iM1195c || m1195c(c0995a6, c0995a7) != iM1195c || m1195c(c0995a7, c0995a8) != iM1195c) {
                        break;
                    }
                }
                z10 = !z11;
                this.f957e++;
                c0995a3 = c0995aM1197e3;
                i21 = i13;
                c = c10;
                c0995a = c0995aM1197e;
                i20 = i15;
                c0995a4 = c0995aM1197e4;
                c0995a2 = c0995aM1197e2;
                i19 = -1;
            }
        } catch (C3753i unused2) {
            int i32 = iM20u + 7;
            int i33 = iM20u2 - 7;
            C3759o c3759oM1192a7 = m1197e(new C0995a(i32, i33, 0), false, 1, -1).m1192a();
            int i34 = iM20u2 + 7;
            C3759o c3759oM1192a8 = m1197e(new C0995a(i32, i34, 0), false, 1, 1).m1192a();
            int i35 = iM20u - 7;
            c3759oM1192a2 = m1197e(new C0995a(i35, i34, 0), false, -1, 1).m1192a();
            c3759oM1192a3 = m1197e(new C0995a(i35, i33, 0), false, -1, -1).m1192a();
            c3759o4 = c3759oM1192a8;
            c3759o5 = c3759oM1192a7;
        }
        c0995a = new C0995a(AbstractC0000a.m20u((((c3759o5.f11214a + c3759oM1192a3.f11214a) + c3759o4.f11214a) + c3759oM1192a2.f11214a) / 4.0f), AbstractC0000a.m20u((((c3759o5.f11215b + c3759oM1192a3.f11215b) + c3759o4.f11215b) + c3759oM1192a2.f11215b) / 4.0f), 0);
        this.f957e = 1;
        z10 = true;
        c0995a2 = c0995a;
        c0995a3 = c0995a2;
        c0995a4 = c0995a3;
        int i36 = this.f957e;
        if (i36 != 5 && i36 != 7) {
            throw C3753i.f11192d;
        }
        this.f954b = i36 == 5 ? i15 : i13;
        int i37 = i36 * 2;
        C3759o[] c3759oArrM1193b = m1193b(new C3759o[]{new C3759o(i14 + 0.5f, i12 - 0.5f), new C3759o(c0995a2.f950b + 0.5f, c0995a2.f951c + 0.5f), new C3759o(c0995a3.f950b - 0.5f, c0995a3.f951c + 0.5f), new C3759o(i11 - 0.5f, i10 - 0.5f)}, i37 - 3, i37);
        if (z9) {
            C3759o c3759o6 = c3759oArrM1193b[i13];
            c3759oArrM1193b[i13] = c3759oArrM1193b[2];
            c3759oArrM1193b[2] = c3759o6;
        }
        if (!m1199g(c3759oArrM1193b[i13]) || !m1199g(c3759oArrM1193b[i15]) || !m1199g(c3759oArrM1193b[2]) || !m1199g(c3759oArrM1193b[r2])) {
            throw C3753i.f11192d;
        }
        int i38 = this.f957e * 2;
        int[] iArr = {m1200h(c3759oArrM1193b[i13], c3759oArrM1193b[i15], i38), m1200h(c3759oArrM1193b[i15], c3759oArrM1193b[2], i38), m1200h(c3759oArrM1193b[2], c3759oArrM1193b[r2], i38), m1200h(c3759oArrM1193b[3], c3759oArrM1193b[i13], i38)};
        int i39 = i13;
        int i40 = i39;
        while (i39 < 4) {
            int i41 = iArr[i39];
            i40 = (i40 << 3) + ((i41 >> (i38 - 2)) << 1) + (i41 & 1);
            i39++;
        }
        int i42 = ((i40 & 1) << 11) + (i40 >> 1);
        for (int i43 = i13; i43 < 4; i43++) {
            if (Integer.bitCount(f952g[i43] ^ i42) <= 2) {
                this.f958f = i43;
                long j11 = 0;
                int i44 = i13;
                while (true) {
                    i16 = 10;
                    if (i44 >= 4) {
                        break;
                    }
                    int i45 = iArr[(this.f958f + i44) % 4];
                    if (this.f954b) {
                        j10 = j11 << 7;
                        i18 = (i45 >> 1) & 127;
                    } else {
                        j10 = j11 << 10;
                        i18 = ((i45 >> 2) & 992) + ((i45 >> 1) & 31);
                    }
                    j11 = j10 + ((long) i18);
                    i44++;
                }
                if (this.f954b) {
                    i16 = 7;
                    i17 = 2;
                } else {
                    i17 = 4;
                }
                int i46 = i16 - i17;
                int[] iArr2 = new int[i16];
                for (int i47 = i16 - 1; i47 >= 0; i47--) {
                    iArr2[i47] = ((int) j11) & 15;
                    j11 >>= 4;
                }
                try {
                    new C3105c(19, C1670a.f4276k).m4941f(iArr2, i46);
                    int i48 = i13;
                    for (int i49 = i48; i49 < i17; i49++) {
                        i48 = (i48 << 4) + iArr2[i49];
                    }
                    if (this.f954b) {
                        this.f955c = (i48 >> 6) + 1;
                        this.f956d = (i48 & 63) + 1;
                    } else {
                        this.f955c = (i48 >> 11) + 1;
                        this.f956d = (i48 & 2047) + 1;
                    }
                    int i50 = this.f958f;
                    C3759o c3759o7 = c3759oArrM1193b[i50 % 4];
                    C3759o c3759o8 = c3759oArrM1193b[(i50 + 1) % 4];
                    C3759o c3759o9 = c3759oArrM1193b[(i50 + 2) % 4];
                    C3759o c3759o10 = c3759oArrM1193b[(i50 + 3) % 4];
                    int iM1196d = m1196d();
                    float f8 = iM1196d / 2.0f;
                    float f10 = this.f957e;
                    float f11 = f8 - f10;
                    float f12 = f8 + f10;
                    return new C0025a(AbstractC3656k.m5871q(c1578b, iM1196d, iM1196d, C1582f.m2667a(f11, f11, f12, f11, f12, f12, f11, f12, c3759o7.f11214a, c3759o7.f11215b, c3759o8.f11214a, c3759o8.f11215b, c3759o9.f11214a, c3759o9.f11215b, c3759o10.f11214a, c3759o10.f11215b)), m1193b(c3759oArrM1193b, this.f957e * 2, m1196d()), this.f954b, this.f956d, this.f955c);
                } catch (C1672c unused3) {
                    throw C3753i.f11192d;
                }
            }
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: c */
    public final int m1195c(C0995a c0995a, C0995a c0995a2) {
        int i10 = c0995a.f950b;
        int i11 = c0995a.f951c;
        int i12 = c0995a2.f950b;
        int i13 = c0995a2.f951c;
        float fM8h = AbstractC0000a.m8h(i10, i11, i12, i13);
        float f8 = (i12 - i10) / fM8h;
        float f10 = (i13 - i11) / fM8h;
        float f11 = i10;
        float f12 = i11;
        C1578b c1578b = this.f953a;
        boolean zM2658b = c1578b.m2658b(i10, i11);
        int iCeil = (int) Math.ceil(fM8h);
        int i14 = 0;
        for (int i15 = 0; i15 < iCeil; i15++) {
            f11 += f8;
            f12 += f10;
            if (c1578b.m2658b(AbstractC0000a.m20u(f11), AbstractC0000a.m20u(f12)) != zM2658b) {
                i14++;
            }
        }
        float f13 = i14 / fM8h;
        if (f13 <= 0.1f || f13 >= 0.9f) {
            return (f13 <= 0.1f) == zM2658b ? 1 : -1;
        }
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public final int m1196d() {
        boolean z9 = this.f954b;
        int i10 = this.f955c;
        if (z9) {
            return (i10 * 4) + 11;
        }
        if (i10 <= 4) {
            return (i10 * 4) + 15;
        }
        return ((((i10 - 4) / 8) + 1) * 2) + (i10 * 4) + 15;
    }

    /* JADX INFO: renamed from: e */
    public final C0995a m1197e(C0995a c0995a, boolean z9, int i10, int i11) {
        C1578b c1578b;
        int i12 = c0995a.f950b + i10;
        int i13 = c0995a.f951c;
        while (true) {
            i13 += i11;
            boolean zM1198f = m1198f(i12, i13);
            c1578b = this.f953a;
            if (!zM1198f || c1578b.m2658b(i12, i13) != z9) {
                break;
            }
            i12 += i10;
        }
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        while (m1198f(i14, i15) && c1578b.m2658b(i14, i15) == z9) {
            i14 += i10;
        }
        int i16 = i14 - i10;
        while (m1198f(i16, i15) && c1578b.m2658b(i16, i15) == z9) {
            i15 += i11;
        }
        return new C0995a(i16, i15 - i11, 0);
    }

    /* JADX INFO: renamed from: f */
    public final boolean m1198f(int i10, int i11) {
        if (i10 < 0) {
            return false;
        }
        C1578b c1578b = this.f953a;
        return i10 < c1578b.f3900b && i11 > 0 && i11 < c1578b.f3901c;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m1199g(C3759o c3759o) {
        return m1198f(AbstractC0000a.m20u(c3759o.f11214a), AbstractC0000a.m20u(c3759o.f11215b));
    }

    /* JADX INFO: renamed from: h */
    public final int m1200h(C3759o c3759o, C3759o c3759o2, int i10) {
        float f8 = c3759o.f11214a;
        float f10 = c3759o.f11215b;
        float f11 = c3759o2.f11214a;
        float f12 = c3759o2.f11215b;
        float fM7g = AbstractC0000a.m7g(f8, f10, f11, f12);
        float f13 = fM7g / i10;
        float f14 = c3759o.f11214a;
        float f15 = ((c3759o2.f11214a - f14) * f13) / fM7g;
        float f16 = ((f12 - f10) * f13) / fM7g;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            float f17 = i12;
            if (this.f953a.m2658b(AbstractC0000a.m20u((f17 * f15) + f14), AbstractC0000a.m20u((f17 * f16) + f10))) {
                i11 |= 1 << ((i10 - i12) - 1);
            }
        }
        return i11;
    }
}
