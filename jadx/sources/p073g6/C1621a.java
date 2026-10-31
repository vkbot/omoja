package p073g6;

import p000a.AbstractC0000a;
import p063f6.C1578b;
import p260z5.C3753i;
import p260z5.C3759o;

/* JADX INFO: renamed from: g6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1621a {

    /* JADX INFO: renamed from: a */
    public final C1578b f4095a;

    /* JADX INFO: renamed from: b */
    public final int f4096b;

    /* JADX INFO: renamed from: c */
    public final int f4097c;

    /* JADX INFO: renamed from: d */
    public final int f4098d;

    /* JADX INFO: renamed from: e */
    public final int f4099e;

    /* JADX INFO: renamed from: f */
    public final int f4100f;

    /* JADX INFO: renamed from: g */
    public final int f4101g;

    public C1621a(C1578b c1578b, int i10, int i11, int i12) throws C3753i {
        this.f4095a = c1578b;
        int i13 = c1578b.f3901c;
        this.f4096b = i13;
        int i14 = c1578b.f3900b;
        this.f4097c = i14;
        int i15 = i10 / 2;
        int i16 = i11 - i15;
        this.f4098d = i16;
        int i17 = i11 + i15;
        this.f4099e = i17;
        int i18 = i12 - i15;
        this.f4101g = i18;
        int i19 = i12 + i15;
        this.f4100f = i19;
        if (i18 < 0 || i16 < 0 || i19 >= i13 || i17 >= i14) {
            throw C3753i.f11192d;
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2698a(int i10, int i11, int i12, boolean z9) {
        C1578b c1578b = this.f4095a;
        if (z9) {
            while (i10 <= i11) {
                if (c1578b.m2658b(i10, i12)) {
                    return true;
                }
                i10++;
            }
            return false;
        }
        while (i10 <= i11) {
            if (c1578b.m2658b(i12, i10)) {
                return true;
            }
            i10++;
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public final C3759o[] m2699b() throws C3753i {
        int i10;
        int i11;
        int i12 = this.f4098d;
        int i13 = this.f4099e;
        int i14 = this.f4101g;
        int i15 = this.f4100f;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = true;
        while (true) {
            i10 = this.f4097c;
            if (!z14) {
                break;
            }
            boolean z15 = false;
            boolean zM2698a = true;
            while (true) {
                if ((!zM2698a && z10) || i13 >= i10) {
                    break;
                }
                zM2698a = m2698a(i14, i15, i13, false);
                if (zM2698a) {
                    i13++;
                    z10 = true;
                    z15 = true;
                } else if (!z10) {
                    i13++;
                }
            }
            if (i13 < i10) {
                boolean zM2698a2 = true;
                while (true) {
                    i11 = this.f4096b;
                    if ((!zM2698a2 && z11) || i15 >= i11) {
                        break;
                    }
                    zM2698a2 = m2698a(i12, i13, i15, true);
                    if (zM2698a2) {
                        i15++;
                        z11 = true;
                        z15 = true;
                    } else if (!z11) {
                        i15++;
                    }
                }
                if (i15 < i11) {
                    boolean zM2698a3 = true;
                    while (true) {
                        if ((!zM2698a3 && z12) || i12 < 0) {
                            break;
                        }
                        zM2698a3 = m2698a(i14, i15, i12, false);
                        if (zM2698a3) {
                            i12--;
                            z12 = true;
                            z15 = true;
                        } else if (!z12) {
                            i12--;
                        }
                    }
                    if (i12 >= 0) {
                        z14 = z15;
                        boolean zM2698a4 = true;
                        while (true) {
                            if ((!zM2698a4 && z13) || i14 < 0) {
                                break;
                            }
                            zM2698a4 = m2698a(i12, i13, i14, true);
                            if (zM2698a4) {
                                i14--;
                                z14 = true;
                                z13 = true;
                            } else if (!z13) {
                                i14--;
                            }
                        }
                        if (i14 < 0) {
                        }
                    }
                }
            }
            z9 = true;
            break;
        }
        if (z9) {
            throw C3753i.f11192d;
        }
        int i16 = i13 - i12;
        C3759o c3759oM2700c = null;
        C3759o c3759oM2700c2 = null;
        for (int i17 = 1; c3759oM2700c2 == null && i17 < i16; i17++) {
            c3759oM2700c2 = m2700c(i12, i15 - i17, i12 + i17, i15);
        }
        if (c3759oM2700c2 == null) {
            throw C3753i.f11192d;
        }
        C3759o c3759oM2700c3 = null;
        for (int i18 = 1; c3759oM2700c3 == null && i18 < i16; i18++) {
            c3759oM2700c3 = m2700c(i12, i14 + i18, i12 + i18, i14);
        }
        if (c3759oM2700c3 == null) {
            throw C3753i.f11192d;
        }
        C3759o c3759oM2700c4 = null;
        for (int i19 = 1; c3759oM2700c4 == null && i19 < i16; i19++) {
            c3759oM2700c4 = m2700c(i13, i14 + i19, i13 - i19, i14);
        }
        if (c3759oM2700c4 == null) {
            throw C3753i.f11192d;
        }
        for (int i20 = 1; c3759oM2700c == null && i20 < i16; i20++) {
            c3759oM2700c = m2700c(i13, i15 - i20, i13 - i20, i15);
        }
        if (c3759oM2700c == null) {
            throw C3753i.f11192d;
        }
        float f8 = c3759oM2700c.f11214a;
        float f10 = c3759oM2700c.f11215b;
        float f11 = c3759oM2700c2.f11214a;
        float f12 = c3759oM2700c2.f11215b;
        float f13 = c3759oM2700c4.f11214a;
        float f14 = c3759oM2700c4.f11215b;
        float f15 = c3759oM2700c3.f11214a;
        float f16 = c3759oM2700c3.f11215b;
        return f8 < ((float) i10) / 2.0f ? new C3759o[]{new C3759o(f15 - 1.0f, f16 + 1.0f), new C3759o(f11 + 1.0f, f12 + 1.0f), new C3759o(f13 - 1.0f, f14 - 1.0f), new C3759o(f8 + 1.0f, f10 - 1.0f)} : new C3759o[]{new C3759o(f15 + 1.0f, f16 + 1.0f), new C3759o(f11 + 1.0f, f12 - 1.0f), new C3759o(f13 - 1.0f, f14 + 1.0f), new C3759o(f8 - 1.0f, f10 - 1.0f)};
    }

    /* JADX INFO: renamed from: c */
    public final C3759o m2700c(float f8, float f10, float f11, float f12) {
        int iM20u = AbstractC0000a.m20u(AbstractC0000a.m7g(f8, f10, f11, f12));
        float f13 = iM20u;
        float f14 = (f11 - f8) / f13;
        float f15 = (f12 - f10) / f13;
        for (int i10 = 0; i10 < iM20u; i10++) {
            float f16 = i10;
            int iM20u2 = AbstractC0000a.m20u((f16 * f14) + f8);
            int iM20u3 = AbstractC0000a.m20u((f16 * f15) + f10);
            if (this.f4095a.m2658b(iM20u2, iM20u3)) {
                return new C3759o(iM20u2, iM20u3);
            }
        }
        return null;
    }

    public C1621a(C1578b c1578b) {
        this(c1578b, 10, c1578b.f3900b / 2, c1578b.f3901c / 2);
    }
}
