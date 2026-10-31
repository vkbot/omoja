package p147n6;

import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;
import p063f6.C1577a;
import p063f6.C1581e;
import p260z5.AbstractC3751g;
import p260z5.AbstractC3756l;
import p260z5.C3746b;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3748d;
import p260z5.EnumC3758n;
import p260z5.InterfaceC3755k;

/* JADX INFO: renamed from: n6.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2487h implements InterfaceC3755k {
    /* JADX INFO: renamed from: d */
    public static float m3871d(int[] iArr, int[] iArr2, float f8) {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            i10 += iArr[i12];
            i11 += iArr2[i12];
        }
        if (i10 < i11) {
            return Float.POSITIVE_INFINITY;
        }
        float f10 = i10;
        float f11 = f10 / i11;
        float f12 = f8 * f11;
        float f13 = 0.0f;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            float f14 = iArr2[i13] * f11;
            float f15 = i14;
            float f16 = f15 > f14 ? f15 - f14 : f14 - f15;
            if (f16 > f12) {
                return Float.POSITIVE_INFINITY;
            }
            f13 += f16;
        }
        return f13 / f10;
    }

    /* JADX INFO: renamed from: e */
    public static void m3872e(int i10, C1577a c1577a, int[] iArr) throws C3753i {
        int length = iArr.length;
        int i11 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int i12 = c1577a.f3899c;
        if (i10 >= i12) {
            throw C3753i.f11192d;
        }
        boolean z9 = !c1577a.m2650d(i10);
        while (i10 < i12) {
            if (c1577a.m2650d(i10) == z9) {
                i11++;
                if (i11 == length) {
                    break;
                }
                iArr[i11] = 1;
                z9 = !z9;
            } else {
                iArr[i11] = iArr[i11] + 1;
            }
            i10++;
        }
        if (i11 != length) {
            if (i11 != length - 1 || i10 != i12) {
                throw C3753i.f11192d;
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m3873f(int i10, C1577a c1577a, int[] iArr) throws C3753i {
        int length = iArr.length;
        boolean zM2650d = c1577a.m2650d(i10);
        while (i10 > 0 && length >= 0) {
            i10--;
            if (c1577a.m2650d(i10) != zM2650d) {
                length--;
                zM2650d = !zM2650d;
            }
        }
        if (length >= 0) {
            throw C3753i.f11192d;
        }
        m3872e(i10 + 1, c1577a, iArr);
    }

    @Override // p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public C3757m mo89a(C3746b c3746b, Map map) throws C3753i {
        try {
            return m3874c(c3746b, map);
        } catch (C3753i e) {
            if (map == null || !map.containsKey(EnumC3748d.f11175e) || !c3746b.f11170a.f3917a.mo5983c()) {
                throw e;
            }
            AbstractC3751g abstractC3751gMo5984d = c3746b.f11170a.f3917a.mo5984d();
            C3757m c3757mM3874c = m3874c(new C3746b(new C1581e(abstractC3751gMo5984d)), map);
            Map map2 = c3757mM3874c.f11202e;
            EnumC3758n enumC3758n = EnumC3758n.f11203b;
            int iIntValue = 270;
            if (map2 != null && map2.containsKey(enumC3758n)) {
                iIntValue = (((Integer) map2.get(enumC3758n)).intValue() + 270) % 360;
            }
            c3757mM3874c.m5988b(enumC3758n, Integer.valueOf(iIntValue));
            C3759o[] c3759oArr = c3757mM3874c.f11200c;
            if (c3759oArr != null) {
                int i10 = abstractC3751gMo5984d.f11188b;
                for (int i11 = 0; i11 < c3759oArr.length; i11++) {
                    C3759o c3759o = c3759oArr[i11];
                    c3759oArr[i11] = new C3759o((i10 - c3759o.f11215b) - 1.0f, c3759o.f11214a);
                }
            }
            return c3757mM3874c;
        }
    }

    /* JADX INFO: renamed from: b */
    public abstract C3757m mo3857b(int i10, C1577a c1577a, Map map);

    /* JADX INFO: renamed from: c */
    public final C3757m m3874c(C3746b c3746b, Map map) throws C3753i {
        int i10;
        C3746b c3746b2 = c3746b;
        Map map2 = map;
        AbstractC3751g abstractC3751g = c3746b2.f11170a.f3917a;
        int i11 = abstractC3751g.f11187a;
        int i12 = abstractC3751g.f11188b;
        C1577a c1577a = new C1577a(i11);
        int i13 = 1;
        boolean z9 = map2 != null && map2.containsKey(EnumC3748d.f11175e);
        int iMax = Math.max(1, i12 >> (z9 ? 8 : 5));
        int i14 = z9 ? i12 : 15;
        int i15 = i12 / 2;
        int i16 = 0;
        while (i16 < i14) {
            int i17 = i16 + 1;
            int i18 = i17 / 2;
            if ((i16 & 1) != 0) {
                i18 = -i18;
            }
            int i19 = (i18 * iMax) + i15;
            if (i19 < 0 || i19 >= i12) {
                break;
            }
            try {
                c1577a = c3746b2.m5978b(c1577a, i19);
                int i20 = 0;
                while (i20 < 2) {
                    if (i20 == i13) {
                        c1577a.m2655i();
                        if (map2 != null) {
                            Object obj = EnumC3748d.f11181k;
                            if (map2.containsKey(obj)) {
                                EnumMap enumMap = new EnumMap(EnumC3748d.class);
                                enumMap.putAll(map2);
                                enumMap.remove(obj);
                                map2 = enumMap;
                            }
                        }
                    }
                    try {
                        C3757m c3757mMo3857b = mo3857b(i19, c1577a, map2);
                        if (i20 == i13) {
                            try {
                                c3757mMo3857b.m5988b(EnumC3758n.f11203b, 180);
                                C3759o[] c3759oArr = c3757mMo3857b.f11200c;
                                if (c3759oArr != null) {
                                    i10 = i13;
                                    float f8 = i11;
                                    try {
                                        C3759o c3759o = c3759oArr[0];
                                        try {
                                            c3759oArr[0] = new C3759o((f8 - c3759o.f11214a) - 1.0f, c3759o.f11215b);
                                            C3759o c3759o2 = c3759oArr[i10];
                                            c3759oArr[i10] = new C3759o((f8 - c3759o2.f11214a) - 1.0f, c3759o2.f11215b);
                                        } catch (AbstractC3756l unused) {
                                            continue;
                                            i20++;
                                            map2 = map2;
                                            i13 = i10;
                                        }
                                    } catch (AbstractC3756l unused2) {
                                    }
                                }
                            } catch (AbstractC3756l unused3) {
                                i10 = i13;
                            }
                        }
                        return c3757mMo3857b;
                    } catch (AbstractC3756l unused4) {
                        i10 = i13;
                    }
                }
            } catch (C3753i unused5) {
            }
            c3746b2 = c3746b;
            i16 = i17;
            i13 = i13;
        }
        throw C3753i.f11192d;
    }

    @Override // p260z5.InterfaceC3755k
    public void reset() {
    }
}
