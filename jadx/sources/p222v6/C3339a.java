package p222v6;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p000a.AbstractC0000a;
import p063f6.C1578b;
import p063f6.C1580d;
import p063f6.C1582f;
import p104j6.C1994c;
import p120l.C2187d;
import p231w6.C3533e;
import p231w6.C3534f;
import p241x6.C3579a;
import p241x6.C3581c;
import p241x6.C3583e;
import p250y5.AbstractC3656k;
import p260z5.C3746b;
import p260z5.C3747c;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;
import p260z5.EnumC3758n;
import p260z5.InterfaceC3755k;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: v6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3339a implements InterfaceC3755k {

    /* JADX INFO: renamed from: b */
    public static final C3759o[] f9754b = new C3759o[0];

    /* JADX INFO: renamed from: a */
    public final C1994c f9755a = new C1994c(2);

    /* JADX WARN: Code duplicated, block: B:217:0x0425  */
    /* JADX WARN: Code duplicated, block: B:219:0x0432  */
    /* JADX WARN: Code duplicated, block: B:222:0x046b  */
    /* JADX WARN: Code duplicated, block: B:223:0x047b  */
    @Override // p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public final C3757m mo89a(C3746b c3746b, Map map) throws C3747c, C3749e, C3753i {
        int i10;
        ArrayList arrayList;
        C3581c c3581c;
        C3581c c3581c2;
        C3581c c3581c3;
        float f8;
        float f10;
        C3579a c3579aM3486o;
        float f11;
        float f12;
        float f13;
        float f14;
        int i11;
        C3759o[] c3759oArr;
        C1580d c1580dM3086d;
        double d;
        int i12;
        int iAbs;
        int i13;
        int i14 = 3;
        C1994c c1994c = this.f9755a;
        int i15 = 1;
        int i16 = 0;
        if (map == null || !map.containsKey(EnumC3748d.f11173c)) {
            C1578b c1578bM5977a = c3746b.m5977a();
            C2187d c2187d = new C2187d(23, c1578bM5977a);
            InterfaceC3760p interfaceC3760p = map == null ? null : (InterfaceC3760p) map.get(EnumC3748d.f11181k);
            c2187d.f5706d = interfaceC3760p;
            C3583e c3583e = new C3583e(c1578bM5977a, interfaceC3760p);
            boolean z9 = map != null && map.containsKey(EnumC3748d.f11175e);
            int i17 = c1578bM5977a.f3901c;
            int i18 = c1578bM5977a.f3900b;
            int i19 = (i17 * 3) / 388;
            if (i19 < 3 || z9) {
                i19 = 3;
            }
            int[] iArr = new int[5];
            int i20 = i19 - 1;
            boolean zM5711d = false;
            while (true) {
                i10 = i14;
                arrayList = c3583e.f10649b;
                if (i20 >= i17 || zM5711d) {
                    break;
                }
                Arrays.fill(iArr, i16);
                int i21 = i19;
                int i22 = i16;
                while (i16 < i18) {
                    if (c1578bM5977a.m2658b(i16, i20)) {
                        if ((i22 & 1) == i15) {
                            i22++;
                        }
                        iArr[i22] = iArr[i22] + i15;
                    } else if ((i22 & 1) != 0) {
                        iArr[i22] = iArr[i22] + 1;
                    } else if (i22 == 4) {
                        if (!C3583e.m5708b(iArr)) {
                            int i23 = i15;
                            iArr[0] = iArr[2];
                            iArr[i23] = iArr[i10];
                            iArr[2] = iArr[4];
                            iArr[i10] = i23;
                            iArr[4] = 0;
                        } else if (c3583e.m5710c(i20, i16, iArr)) {
                            if (c3583e.f10650c) {
                                zM5711d = c3583e.m5711d();
                                i12 = 2;
                            } else {
                                if (arrayList.size() > i15) {
                                    int size = arrayList.size();
                                    C3581c c3581c4 = null;
                                    int i24 = 0;
                                    while (true) {
                                        if (i24 >= size) {
                                            i16 = i16;
                                            i12 = 2;
                                            iAbs = 0;
                                            break;
                                        }
                                        Object obj = arrayList.get(i24);
                                        i24++;
                                        C3581c c3581c5 = (C3581c) obj;
                                        i16 = i16;
                                        size = size;
                                        if (c3581c5.f10646d >= 2) {
                                            if (c3581c4 != null) {
                                                c3583e.f10650c = true;
                                                i12 = 2;
                                                iAbs = ((int) (Math.abs(c3581c4.f11214a - c3581c5.f11214a) - Math.abs(c3581c4.f11215b - c3581c5.f11215b))) / 2;
                                                break;
                                            }
                                            c3581c4 = c3581c5;
                                        }
                                    }
                                } else {
                                    i16 = i16;
                                    iAbs = 0;
                                    i12 = 2;
                                }
                                int i25 = iArr[i12];
                                if (iAbs > i25) {
                                    i20 += (iAbs - i25) - 2;
                                    i16 = i18 - 1;
                                } else {
                                    i16 = i16;
                                }
                            }
                            Arrays.fill(iArr, 0);
                            i22 = 0;
                            i21 = i12;
                        } else {
                            iArr[0] = iArr[2];
                            iArr[1] = iArr[i10];
                            iArr[2] = iArr[4];
                            iArr[i10] = 1;
                            iArr[4] = 0;
                        }
                        i22 = i10;
                    } else {
                        int i26 = i22 + 1;
                        iArr[i26] = iArr[i26] + 1;
                        i22 = i26;
                    }
                    i16++;
                    i15 = 1;
                }
                if (C3583e.m5708b(iArr) && c3583e.m5710c(i20, i18, iArr)) {
                    int i27 = iArr[0];
                    if (c3583e.f10650c) {
                        i19 = i27;
                        zM5711d = c3583e.m5711d();
                    } else {
                        i19 = i27;
                    }
                } else {
                    i19 = i21;
                }
                i20 += i19;
                i14 = i10;
                i15 = 1;
                i16 = 0;
            }
            if (arrayList.size() < i10) {
                throw C3753i.f11192d;
            }
            arrayList.sort(C3583e.f10647f);
            C3581c[] c3581cArr = new C3581c[i10];
            int i28 = 0;
            double d10 = Double.MAX_VALUE;
            while (i28 < arrayList.size() - 2) {
                C3581c c3581c6 = (C3581c) arrayList.get(i28);
                float f15 = c3581c6.f10645c;
                i28++;
                int i29 = i28;
                while (i29 < arrayList.size() - 1) {
                    C3581c c3581c7 = (C3581c) arrayList.get(i29);
                    double dM5709e = C3583e.m5709e(c3581c6, c3581c7);
                    i29++;
                    for (int i30 = i29; i30 < arrayList.size(); i30++) {
                        C3581c c3581c8 = (C3581c) arrayList.get(i30);
                        if (c3581c8.f10645c <= 1.4f * f15) {
                            double dM5709e2 = C3583e.m5709e(c3581c7, c3581c8);
                            double dM5709e3 = C3583e.m5709e(c3581c6, c3581c8);
                            if (dM5709e < dM5709e2) {
                                if (dM5709e2 <= dM5709e3) {
                                    dM5709e3 = dM5709e2;
                                    dM5709e2 = dM5709e3;
                                } else if (dM5709e >= dM5709e3) {
                                    d = dM5709e3;
                                    dM5709e3 = dM5709e;
                                }
                                d = dM5709e;
                            } else {
                                if (dM5709e2 >= dM5709e3) {
                                    d = dM5709e3;
                                    dM5709e3 = dM5709e2;
                                } else if (dM5709e < dM5709e3) {
                                    d = dM5709e2;
                                    dM5709e2 = dM5709e3;
                                    dM5709e3 = dM5709e;
                                } else {
                                    d = dM5709e2;
                                }
                                dM5709e2 = dM5709e;
                            }
                            double dAbs = Math.abs(dM5709e2 - (d * 2.0d)) + Math.abs(dM5709e2 - (dM5709e3 * 2.0d));
                            if (dAbs < d10) {
                                c3581cArr[0] = c3581c6;
                                c3581cArr[1] = c3581c7;
                                c3581cArr[2] = c3581c8;
                                d10 = dAbs;
                            }
                        }
                    }
                }
            }
            if (d10 == Double.MAX_VALUE) {
                throw C3753i.f11192d;
            }
            float fM5989a = C3759o.m5989a(c3581cArr[0], c3581cArr[1]);
            float fM5989a2 = C3759o.m5989a(c3581cArr[1], c3581cArr[2]);
            float fM5989a3 = C3759o.m5989a(c3581cArr[0], c3581cArr[2]);
            if (fM5989a2 >= fM5989a && fM5989a2 >= fM5989a3) {
                c3581c = c3581cArr[0];
                c3581c2 = c3581cArr[1];
                c3581c3 = c3581cArr[2];
            } else if (fM5989a3 < fM5989a2 || fM5989a3 < fM5989a) {
                c3581c = c3581cArr[2];
                c3581c2 = c3581cArr[0];
                c3581c3 = c3581cArr[1];
            } else {
                c3581c = c3581cArr[1];
                c3581c2 = c3581cArr[0];
                c3581c3 = c3581cArr[2];
            }
            float f16 = c3581c.f11214a;
            float f17 = c3581c.f11215b;
            if (((c3581c2.f11215b - f17) * (c3581c3.f11214a - f16)) - ((c3581c2.f11214a - f16) * (c3581c3.f11215b - f17)) < 0.0f) {
                C3581c c3581c9 = c3581c3;
                c3581c3 = c3581c2;
                c3581c2 = c3581c9;
            }
            c3581cArr[0] = c3581c2;
            c3581cArr[1] = c3581c;
            c3581cArr[2] = c3581c3;
            float fM3481i = c2187d.m3481i(c3581c, c3581c3);
            float f18 = c3581c.f11214a;
            float f19 = c3581c3.f11215b;
            float f20 = c3581c3.f11214a;
            float fM3481i2 = c2187d.m3481i(c3581c, c3581c2);
            float f21 = c3581c2.f11215b;
            float f22 = c3581c2.f11214a;
            float f23 = (fM3481i2 + fM3481i) / 2.0f;
            if (f23 < 1.0f) {
                throw C3753i.f11192d;
            }
            int iM20u = (AbstractC0000a.m20u(C3759o.m5989a(c3581c, c3581c2) / f23) + AbstractC0000a.m20u(C3759o.m5989a(c3581c, c3581c3) / f23)) / 2;
            int i31 = iM20u + 7;
            int i32 = i31 & 3;
            if (i32 == 0) {
                i31 = iM20u + 8;
            } else if (i32 == 2) {
                i31 = iM20u + 6;
            } else if (i32 == 3) {
                throw C3753i.f11192d;
            }
            int i33 = i31;
            int[] iArr2 = C3534f.f10499e;
            if (i33 % 4 != 1) {
                throw C3749e.m5980a();
            }
            try {
                C3534f c3534fM5639c = C3534f.m5639c((i33 - 17) / 4);
                int i34 = (c3534fM5639c.f10501a * 4) + 10;
                if (c3534fM5639c.f10502b.length > 0) {
                    float f24 = (f20 - f18) + f22;
                    f10 = f20;
                    float f25 = (f19 - f17) + f21;
                    float f26 = 1.0f - (3.0f / i34);
                    int iM151b = (int) AbstractC0074a.m151b(f24, f18, f26, f18);
                    int iM151b2 = (int) AbstractC0074a.m151b(f25, f17, f26, f17);
                    f8 = f18;
                    int i35 = 4;
                    while (true) {
                        if (i35 <= 16) {
                            try {
                                c3579aM3486o = c2187d.m3486o(f23, i35, iM151b, iM151b2);
                                break;
                            } catch (C3753i unused) {
                                i35 <<= 1;
                            }
                        }
                    }
                    f11 = i33 - 3.5f;
                    if (c3579aM3486o != null) {
                        f12 = c3579aM3486o.f11214a;
                        f13 = c3579aM3486o.f11215b;
                        f14 = f11 - 3.0f;
                    } else {
                        f12 = (f10 - f8) + f22;
                        f13 = (f19 - f17) + f21;
                        f14 = f11;
                    }
                    C1578b c1578bM5871q = AbstractC3656k.m5871q(c1578bM5977a, i33, i33, C1582f.m2667a(3.5f, 3.5f, f11, 3.5f, f14, f14, 3.5f, f11, c3581c.f11214a, c3581c.f11215b, c3581c3.f11214a, c3581c3.f11215b, f12, f13, c3581c2.f11214a, c3581c2.f11215b));
                    if (c3579aM3486o == null) {
                        i11 = 3;
                        c3759oArr = new C3759o[]{c3581c2, c3581c, c3581c3};
                    } else {
                        i11 = 3;
                        c3759oArr = new C3759o[]{c3581c2, c3581c, c3581c3, c3579aM3486o};
                    }
                    c1580dM3086d = c1994c.m3086d(c1578bM5871q, map);
                } else {
                    f8 = f18;
                    f10 = f20;
                }
                c3579aM3486o = null;
                f11 = i33 - 3.5f;
                if (c3579aM3486o != null) {
                    f12 = c3579aM3486o.f11214a;
                    f13 = c3579aM3486o.f11215b;
                    f14 = f11 - 3.0f;
                } else {
                    f12 = (f10 - f8) + f22;
                    f13 = (f19 - f17) + f21;
                    f14 = f11;
                }
                C1578b c1578bM5871q2 = AbstractC3656k.m5871q(c1578bM5977a, i33, i33, C1582f.m2667a(3.5f, 3.5f, f11, 3.5f, f14, f14, 3.5f, f11, c3581c.f11214a, c3581c.f11215b, c3581c3.f11214a, c3581c3.f11215b, f12, f13, c3581c2.f11214a, c3581c2.f11215b));
                if (c3579aM3486o == null) {
                    i11 = 3;
                    c3759oArr = new C3759o[]{c3581c2, c3581c, c3581c3};
                } else {
                    i11 = 3;
                    c3759oArr = new C3759o[]{c3581c2, c3581c, c3581c3, c3579aM3486o};
                }
                c1580dM3086d = c1994c.m3086d(c1578bM5871q2, map);
            } catch (IllegalArgumentException unused2) {
                throw C3749e.m5980a();
            }
        } else {
            C1578b c1578bM5977a2 = c3746b.m5977a();
            int[] iArrM2661e = c1578bM5977a2.m2661e();
            int i36 = c1578bM5977a2.f3900b;
            int[] iArrM2659c = c1578bM5977a2.m2659c();
            if (iArrM2661e == null || iArrM2659c == null) {
                throw C3753i.f11192d;
            }
            int i37 = c1578bM5977a2.f3901c;
            int i38 = iArrM2661e[0];
            int i39 = iArrM2661e[1];
            boolean z10 = true;
            int i40 = 0;
            while (i38 < i36 && i39 < i37) {
                if (z10 != c1578bM5977a2.m2658b(i38, i39)) {
                    int i41 = i40 + 1;
                    if (i41 == 5) {
                        break;
                    }
                    z10 = !z10;
                    i40 = i41;
                }
                i38++;
                i39++;
            }
            if (i38 == i36 || i39 == i37) {
                throw C3753i.f11192d;
            }
            int i42 = iArrM2661e[0];
            float f27 = (i38 - i42) / 7.0f;
            int i43 = iArrM2661e[1];
            int i44 = iArrM2659c[1];
            int i45 = iArrM2659c[0];
            if (i42 >= i45 || i43 >= i44) {
                throw C3753i.f11192d;
            }
            int i46 = i44 - i43;
            if (i46 != i45 - i42 && (i45 = i42 + i46) >= i36) {
                throw C3753i.f11192d;
            }
            int iRound = Math.round(((i45 - i42) + 1) / f27);
            int iRound2 = Math.round((i46 + 1) / f27);
            if (iRound <= 0 || iRound2 <= 0) {
                throw C3753i.f11192d;
            }
            if (iRound2 != iRound) {
                throw C3753i.f11192d;
            }
            int i47 = (int) (f27 / 2.0f);
            int i48 = i43 + i47;
            int i49 = i42 + i47;
            int i50 = (((int) ((iRound - 1) * f27)) + i49) - i45;
            if (i50 > 0) {
                if (i50 > i47) {
                    throw C3753i.f11192d;
                }
                i49 -= i50;
            }
            int i51 = (((int) ((iRound2 - 1) * f27)) + i48) - i44;
            if (i51 > 0) {
                if (i51 > i47) {
                    throw C3753i.f11192d;
                }
                i48 -= i51;
            }
            C1578b c1578b = new C1578b(iRound, iRound2);
            for (int i52 = 0; i52 < iRound2; i52++) {
                int i53 = ((int) (i52 * f27)) + i48;
                for (int i54 = 0; i54 < iRound; i54++) {
                    if (c1578bM5977a2.m2658b(((int) (i54 * f27)) + i49, i53)) {
                        c1578b.m2662f(i54, i52);
                    }
                }
            }
            c1580dM3086d = c1994c.m3086d(c1578b, map);
            c3759oArr = f9754b;
            i11 = 3;
        }
        int i55 = c1580dM3086d.f3910b;
        if ((c1580dM3086d.f3915g instanceof C3533e) && c3759oArr.length >= i11) {
            C3759o c3759o = c3759oArr[0];
            c3759oArr[0] = c3759oArr[2];
            c3759oArr[2] = c3759o;
        }
        C3757m c3757m = new C3757m(c1580dM3086d.f3909a, (byte[]) c1580dM3086d.f3912d, c3759oArr, EnumC3745a.f11163m);
        List list = (List) c1580dM3086d.f3914f;
        if (list != null) {
            c3757m.m5988b(EnumC3758n.f11204c, list);
        }
        String str = (String) c1580dM3086d.f3913e;
        if (str != null) {
            c3757m.m5988b(EnumC3758n.f11205d, str);
        }
        if (i55 >= 0 && (i13 = c1580dM3086d.f3911c) >= 0) {
            c3757m.m5988b(EnumC3758n.f11211j, Integer.valueOf(i13));
            c3757m.m5988b(EnumC3758n.f11212k, Integer.valueOf(i55));
        }
        return c3757m;
    }

    @Override // p260z5.InterfaceC3755k
    public final void reset() {
    }
}
