package p156o6;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import okhttp3.internal.p160ws.WebSocketProtocol;
import p000a.AbstractC0000a;
import p063f6.C1577a;
import p147n6.AbstractC2487h;
import p155o4.AbstractC2587b;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: o6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2598e extends AbstractC2594a {

    /* JADX INFO: renamed from: i */
    public static final int[] f7242i = {1, 10, 34, 70, WebSocketProtocol.PAYLOAD_SHORT};

    /* JADX INFO: renamed from: j */
    public static final int[] f7243j = {4, 20, 48, 81};

    /* JADX INFO: renamed from: k */
    public static final int[] f7244k = {0, 161, 961, 2015, 2715};

    /* JADX INFO: renamed from: l */
    public static final int[] f7245l = {0, 336, 1036, 1516};

    /* JADX INFO: renamed from: m */
    public static final int[] f7246m = {8, 6, 4, 3, 1};

    /* JADX INFO: renamed from: n */
    public static final int[] f7247n = {2, 4, 6, 8};

    /* JADX INFO: renamed from: o */
    public static final int[][] f7248o = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* JADX INFO: renamed from: g */
    public final ArrayList f7249g = new ArrayList();

    /* JADX INFO: renamed from: h */
    public final ArrayList f7250h = new ArrayList();

    /* JADX INFO: renamed from: j */
    public static void m4071j(ArrayList arrayList, C2597d c2597d) {
        if (c2597d == null) {
            return;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C2597d c2597d2 = (C2597d) obj;
            if (c2597d2.f7235a == c2597d.f7235a) {
                c2597d2.f7241d++;
                return;
            }
        }
        arrayList.add(c2597d);
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) throws C3753i {
        C2597d c2597dM4073l = m4073l(c1577a, false, i10, map);
        ArrayList arrayList = this.f7249g;
        m4071j(arrayList, c2597dM4073l);
        c1577a.m2655i();
        C2597d c2597dM4073l2 = m4073l(c1577a, true, i10, map);
        ArrayList arrayList2 = this.f7250h;
        m4071j(arrayList2, c2597dM4073l2);
        c1577a.m2655i();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C2597d c2597d = (C2597d) obj;
            int i12 = c2597d.f7241d;
            C2596c c2596c = c2597d.f7240c;
            if (i12 > 1) {
                int size2 = arrayList2.size();
                int i13 = 0;
                while (i13 < size2) {
                    Object obj2 = arrayList2.get(i13);
                    i13++;
                    C2597d c2597d2 = (C2597d) obj2;
                    int i14 = c2597d2.f7241d;
                    C2596c c2596c2 = c2597d2.f7240c;
                    if (i14 > 1) {
                        int i15 = ((c2597d2.f7236b * 16) + c2597d.f7236b) % 79;
                        int i16 = (c2596c.f7237a * 9) + c2596c2.f7237a;
                        if (i16 > 72) {
                            i16--;
                        }
                        if (i16 > 8) {
                            i16--;
                        }
                        if (i15 == i16) {
                            String strValueOf = String.valueOf((((long) c2597d.f7235a) * 4537077) + ((long) c2597d2.f7235a));
                            StringBuilder sb = new StringBuilder(14);
                            for (int length = 13 - strValueOf.length(); length > 0; length--) {
                                sb.append('0');
                            }
                            sb.append(strValueOf);
                            int i17 = 0;
                            for (int i18 = 0; i18 < 13; i18++) {
                                int iCharAt = sb.charAt(i18) - '0';
                                if ((i18 & 1) == 0) {
                                    iCharAt *= 3;
                                }
                                i17 += iCharAt;
                            }
                            int i19 = 10 - (i17 % 10);
                            if (i19 == 10) {
                                i19 = 0;
                            }
                            sb.append(i19);
                            C3759o[] c3759oArr = c2596c.f7239c;
                            C3759o[] c3759oArr2 = c2596c2.f7239c;
                            return new C3757m(sb.toString(), null, new C3759o[]{c3759oArr[0], c3759oArr[1], c3759oArr2[0], c3759oArr2[1]}, EnumC3745a.f11164n);
                        }
                    }
                }
            }
        }
        throw C3753i.f11192d;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008e A[PHI: r14 r15
  0x008e: PHI (r14v12 boolean) = (r14v4 boolean), (r14v15 boolean) binds: [B:44:0x00ae, B:32:0x008c] A[DONT_GENERATE, DONT_INLINE]
  0x008e: PHI (r15v10 boolean) = (r15v2 boolean), (r15v13 boolean) binds: [B:44:0x00ae, B:32:0x008c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x0095 A[PHI: r14 r15
  0x0095: PHI (r14v7 boolean) = (r14v4 boolean), (r14v15 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x0095: PHI (r15v5 boolean) = (r15v2 boolean), (r15v13 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x009a A[PHI: r14 r15
  0x009a: PHI (r14v6 boolean) = (r14v4 boolean), (r14v15 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x009a: PHI (r15v4 boolean) = (r15v2 boolean), (r15v13 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: k */
    public final C2595b m4072k(C1577a c1577a, C2596c c2596c, boolean z9) throws C3753i {
        float[] fArr;
        float[] fArr2;
        int[] iArr;
        int[] iArr2;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int[] iArr3 = this.f7230b;
        Arrays.fill(iArr3, 0);
        int[] iArr4 = c2596c.f7238b;
        if (z9) {
            AbstractC2487h.m3873f(iArr4[0], c1577a, iArr3);
        } else {
            AbstractC2487h.m3872e(iArr4[1], c1577a, iArr3);
            int i10 = 0;
            for (int length = iArr3.length - 1; i10 < length; length--) {
                int i11 = iArr3[i10];
                iArr3[i10] = iArr3[length];
                iArr3[length] = i11;
                i10++;
            }
        }
        int i12 = z9 ? 16 : 15;
        float fM23x = AbstractC0000a.m23x(iArr3) / i12;
        int i13 = 0;
        while (true) {
            int length2 = iArr3.length;
            fArr = this.f7232d;
            fArr2 = this.f7231c;
            iArr = this.f7234f;
            iArr2 = this.f7233e;
            if (i13 >= length2) {
                break;
            }
            float f8 = iArr3[i13] / fM23x;
            int i14 = (int) (0.5f + f8);
            if (i14 <= 0) {
                i14 = 1;
            } else if (i14 > 8) {
                i14 = 8;
            }
            int i15 = i13 / 2;
            if ((i13 & 1) == 0) {
                iArr2[i15] = i14;
                fArr2[i15] = f8 - i14;
            } else {
                iArr[i15] = i14;
                fArr[i15] = f8 - i14;
            }
            i13++;
        }
        int iM23x = AbstractC0000a.m23x(iArr2);
        int iM23x2 = AbstractC0000a.m23x(iArr);
        if (z9) {
            if (iM23x > 12) {
                z10 = false;
                z11 = true;
            } else if (iM23x < 4) {
                z11 = false;
                z10 = true;
            } else {
                z10 = false;
                z11 = false;
            }
            if (iM23x2 > 12) {
                z12 = false;
                z13 = true;
            } else if (iM23x2 < 4) {
                z13 = false;
                z12 = true;
            } else {
                z12 = false;
                z13 = false;
            }
        } else {
            if (iM23x > 11) {
                z10 = false;
                z11 = true;
            } else if (iM23x < 5) {
                z11 = false;
                z10 = true;
            } else {
                z10 = false;
                z11 = false;
            }
            if (iM23x2 > 10) {
                z12 = false;
                z13 = true;
            } else if (iM23x2 < 4) {
                z13 = false;
                z12 = true;
            } else {
                z12 = false;
                z13 = false;
            }
        }
        int i16 = (iM23x + iM23x2) - i12;
        boolean z14 = (iM23x & 1) == z9;
        boolean z15 = (iM23x2 & 1) == 1;
        if (i16 != -1) {
            if (i16 != 0) {
                if (i16 != 1) {
                    throw C3753i.f11192d;
                }
                if (z14) {
                    if (z15) {
                        throw C3753i.f11192d;
                    }
                    z11 = true;
                } else {
                    if (!z15) {
                        throw C3753i.f11192d;
                    }
                    z13 = true;
                }
            } else if (z14) {
                if (!z15) {
                    throw C3753i.f11192d;
                }
                if (iM23x < iM23x2) {
                    z10 = true;
                    z13 = true;
                } else {
                    z11 = true;
                    z12 = true;
                }
            } else if (z15) {
                throw C3753i.f11192d;
            }
        } else if (z14) {
            if (z15) {
                throw C3753i.f11192d;
            }
            z10 = true;
        } else {
            if (!z15) {
                throw C3753i.f11192d;
            }
            z12 = true;
        }
        if (z10) {
            if (z11) {
                throw C3753i.f11192d;
            }
            AbstractC2594a.m4069h(iArr2, fArr2);
        }
        if (z11) {
            AbstractC2594a.m4068g(iArr2, fArr2);
        }
        if (z12) {
            if (z13) {
                throw C3753i.f11192d;
            }
            AbstractC2594a.m4069h(iArr, fArr2);
        }
        if (z13) {
            AbstractC2594a.m4068g(iArr, fArr);
        }
        int i17 = 0;
        int i18 = 0;
        for (int length3 = iArr2.length - 1; length3 >= 0; length3--) {
            int i19 = iArr2[length3];
            i17 = (i17 * 9) + i19;
            i18 += i19;
        }
        int i20 = 0;
        int i21 = 0;
        for (int length4 = iArr.length - 1; length4 >= 0; length4--) {
            int i22 = iArr[length4];
            i20 = (i20 * 9) + i22;
            i21 += i22;
        }
        int i23 = (i20 * 3) + i17;
        if (!z9) {
            if ((i21 & 1) != 0 || i21 > 10 || i21 < 4) {
                throw C3753i.f11192d;
            }
            int i24 = (10 - i21) / 2;
            int i25 = f7247n[i24];
            return new C2595b((AbstractC2587b.m4054u(iArr, 9 - i25, false) * f7243j[i24]) + AbstractC2587b.m4054u(iArr2, i25, true) + f7245l[i24], i23);
        }
        if ((i18 & 1) != 0 || i18 > 12 || i18 < 4) {
            throw C3753i.f11192d;
        }
        int i26 = (12 - i18) / 2;
        int i27 = f7246m[i26];
        return new C2595b((AbstractC2587b.m4054u(iArr2, i27, false) * f7242i[i26]) + AbstractC2587b.m4054u(iArr, 9 - i27, true) + f7244k[i26], i23);
    }

    /* JADX INFO: renamed from: l */
    public final C2597d m4073l(C1577a c1577a, boolean z9, int i10, Map map) {
        try {
            C2596c c2596cM4075n = m4075n(c1577a, i10, z9, m4074m(c1577a, z9));
            InterfaceC3760p interfaceC3760p = map == null ? null : (InterfaceC3760p) map.get(EnumC3748d.f11181k);
            if (interfaceC3760p != null) {
                int[] iArr = c2596cM4075n.f7238b;
                float f8 = ((iArr[0] + iArr[1]) - 1) / 2.0f;
                if (z9) {
                    f8 = (c1577a.f3899c - 1) - f8;
                }
                interfaceC3760p.mo1052a(new C3759o(f8, i10));
            }
            C2595b c2595bM4072k = m4072k(c1577a, c2596cM4075n, true);
            C2595b c2595bM4072k2 = m4072k(c1577a, c2596cM4075n, false);
            return new C2597d((c2595bM4072k.f7235a * 1597) + c2595bM4072k2.f7235a, (c2595bM4072k2.f7236b * 4) + c2595bM4072k.f7236b, c2596cM4075n);
        } catch (C3753i unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: m */
    public final int[] m4074m(C1577a c1577a, boolean z9) throws C3753i {
        int[] iArr = this.f7229a;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        int i10 = c1577a.f3899c;
        int i11 = 0;
        boolean z10 = false;
        while (i11 < i10) {
            z10 = !c1577a.m2650d(i11);
            if (z9 == z10) {
                break;
            }
            i11++;
        }
        int i12 = 0;
        int i13 = i11;
        while (i11 < i10) {
            if (c1577a.m2650d(i11) != z10) {
                iArr[i12] = iArr[i12] + 1;
            } else {
                if (i12 != 3) {
                    i12++;
                } else {
                    if (AbstractC2594a.m4070i(iArr)) {
                        return new int[]{i13, i11};
                    }
                    i13 += iArr[0] + iArr[1];
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = 0;
                    iArr[3] = 0;
                    i12--;
                }
                iArr[i12] = 1;
                z10 = !z10;
            }
            i11++;
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: n */
    public final C2596c m4075n(C1577a c1577a, int i10, boolean z9, int[] iArr) throws C3753i {
        int i11;
        int i12;
        boolean zM2650d = c1577a.m2650d(iArr[0]);
        int i13 = iArr[0] - 1;
        while (i13 >= 0 && zM2650d != c1577a.m2650d(i13)) {
            i13--;
        }
        int i14 = i13 + 1;
        int i15 = iArr[0] - i14;
        int[] iArr2 = this.f7229a;
        System.arraycopy(iArr2, 0, iArr2, 1, iArr2.length - 1);
        iArr2[0] = i15;
        for (int i16 = 0; i16 < 9; i16++) {
            if (AbstractC2487h.m3871d(iArr2, f7248o[i16], 0.45f) < 0.2f) {
                int i17 = iArr[1];
                if (z9) {
                    int i18 = c1577a.f3899c - 1;
                    i11 = i18 - i17;
                    i12 = i18 - i14;
                } else {
                    i11 = i17;
                    i12 = i14;
                }
                return new C2596c(i16, i12, i11, i10, new int[]{i14, i17});
            }
        }
        throw C3753i.f11192d;
    }

    @Override // p147n6.AbstractC2487h, p260z5.InterfaceC3755k
    public final void reset() {
        this.f7249g.clear();
        this.f7250h.clear();
    }
}
