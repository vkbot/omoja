package p093i6;

import android.support.v4.media.C0090h;
import java.util.List;
import java.util.Map;
import p063f6.C1578b;
import p063f6.C1580d;
import p063f6.C1582f;
import p073g6.C1621a;
import p104j6.C1994c;
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

/* JADX INFO: renamed from: i6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1751a implements InterfaceC3755k {

    /* JADX INFO: renamed from: b */
    public static final C3759o[] f4565b = new C3759o[0];

    /* JADX INFO: renamed from: a */
    public final C1994c f4566a = new C1994c(0);

    /* JADX WARN: Code duplicated, block: B:62:0x018d  */
    @Override // p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public final C3757m mo89a(C3746b c3746b, Map map) throws C3747c, C3749e, C3753i {
        C1580d c1580dM3085c;
        C3759o[] c3759oArr;
        C1994c c1994c = this.f4566a;
        if (map == null || !map.containsKey(EnumC3748d.f11173c)) {
            C1578b c1578bM5977a = c3746b.m5977a();
            C0090h c0090h = new C0090h(c1578bM5977a);
            C3759o[] c3759oArrM2699b = ((C1621a) c0090h.f192d).m2699b();
            C3759o c3759o = c3759oArrM2699b[0];
            C3759o c3759o2 = c3759oArrM2699b[1];
            C3759o c3759o3 = c3759oArrM2699b[3];
            C3759o c3759o4 = c3759oArrM2699b[2];
            int iM255w = c0090h.m255w(c3759o, c3759o2);
            int iM255w2 = c0090h.m255w(c3759o2, c3759o3);
            int iM255w3 = c0090h.m255w(c3759o3, c3759o4);
            int iM255w4 = c0090h.m255w(c3759o4, c3759o);
            C3759o[] c3759oArr2 = {c3759o4, c3759o, c3759o2, c3759o3};
            if (iM255w > iM255w2) {
                c3759oArr2[0] = c3759o;
                c3759oArr2[1] = c3759o2;
                c3759oArr2[2] = c3759o3;
                c3759oArr2[3] = c3759o4;
                iM255w = iM255w2;
            }
            if (iM255w > iM255w3) {
                c3759oArr2[0] = c3759o2;
                c3759oArr2[1] = c3759o3;
                c3759oArr2[2] = c3759o4;
                c3759oArr2[3] = c3759o;
            } else {
                iM255w3 = iM255w;
            }
            if (iM255w3 > iM255w4) {
                c3759oArr2[0] = c3759o3;
                c3759oArr2[1] = c3759o4;
                c3759oArr2[2] = c3759o;
                c3759oArr2[3] = c3759o2;
            }
            C3759o c3759o5 = c3759oArr2[0];
            C3759o c3759o6 = c3759oArr2[1];
            C3759o c3759o7 = c3759oArr2[2];
            C3759o c3759o8 = c3759oArr2[3];
            int iM255w5 = (c0090h.m255w(c3759o5, c3759o8) + 1) << 2;
            if (c0090h.m255w(C0090h.m236v(c3759o6, c3759o7, iM255w5), c3759o5) < c0090h.m255w(C0090h.m236v(c3759o7, c3759o6, iM255w5), c3759o8)) {
                c3759oArr2[0] = c3759o5;
                c3759oArr2[1] = c3759o6;
                c3759oArr2[2] = c3759o7;
                c3759oArr2[3] = c3759o8;
            } else {
                c3759oArr2[0] = c3759o6;
                c3759oArr2[1] = c3759o7;
                c3759oArr2[2] = c3759o8;
                c3759oArr2[3] = c3759o5;
            }
            C3759o c3759o9 = c3759oArr2[0];
            C3759o c3759o10 = c3759oArr2[1];
            C3759o c3759o11 = c3759oArr2[2];
            C3759o c3759o12 = c3759oArr2[3];
            int iM255w6 = c0090h.m255w(c3759o9, c3759o12);
            C3759o c3759oM236v = C0090h.m236v(c3759o9, c3759o10, (c0090h.m255w(c3759o10, c3759o12) + 1) << 2);
            C3759o c3759oM236v2 = C0090h.m236v(c3759o11, c3759o10, (iM255w6 + 1) << 2);
            int iM255w7 = c0090h.m255w(c3759oM236v, c3759o12);
            int iM255w8 = c0090h.m255w(c3759oM236v2, c3759o12);
            float f8 = c3759o12.f11214a;
            float f10 = c3759o11.f11214a;
            float f11 = c3759o10.f11214a;
            float f12 = iM255w7 + 1;
            float f13 = c3759o12.f11215b;
            float f14 = c3759o11.f11215b;
            float f15 = c3759o10.f11215b;
            C3759o c3759o13 = new C3759o(((f10 - f11) / f12) + f8, ((f14 - f15) / f12) + f13);
            float f16 = c3759o9.f11214a - f11;
            float f17 = iM255w8 + 1;
            C3759o c3759o14 = new C3759o((f16 / f17) + f8, ((c3759o9.f11215b - f15) / f17) + f13);
            if (c0090h.m248m(c3759o13)) {
                if (c0090h.m248m(c3759o14) && c0090h.m255w(c3759oM236v2, c3759o13) + c0090h.m255w(c3759oM236v, c3759o13) <= c0090h.m255w(c3759oM236v2, c3759o14) + c0090h.m255w(c3759oM236v, c3759o14)) {
                    c3759o13 = c3759o14;
                }
            } else if (c0090h.m248m(c3759o14)) {
                c3759o13 = c3759o14;
            } else {
                c3759o13 = null;
            }
            c3759oArr2[3] = c3759o13;
            if (c3759o13 == null) {
                throw C3753i.f11192d;
            }
            C3759o c3759o15 = c3759oArr2[0];
            C3759o c3759o16 = c3759oArr2[1];
            C3759o c3759o17 = c3759oArr2[2];
            int iM255w9 = c0090h.m255w(c3759o15, c3759o13) + 1;
            C3759o c3759oM236v3 = C0090h.m236v(c3759o15, c3759o16, (c0090h.m255w(c3759o17, c3759o13) + 1) << 2);
            C3759o c3759oM236v4 = C0090h.m236v(c3759o17, c3759o16, iM255w9 << 2);
            int iM255w10 = c0090h.m255w(c3759oM236v3, c3759o13);
            int i10 = iM255w10 + 1;
            int iM255w11 = c0090h.m255w(c3759oM236v4, c3759o13);
            int i11 = iM255w11 + 1;
            if ((i10 & 1) == 1) {
                i10 = iM255w10 + 2;
            }
            if ((i11 & 1) == 1) {
                i11 = iM255w11 + 2;
            }
            float f18 = (((c3759o15.f11214a + c3759o16.f11214a) + c3759o17.f11214a) + c3759o13.f11214a) / 4.0f;
            float f19 = (((c3759o15.f11215b + c3759o16.f11215b) + c3759o17.f11215b) + c3759o13.f11215b) / 4.0f;
            C3759o c3759oM234n = C0090h.m234n(c3759o15, f18, f19);
            C3759o c3759oM234n2 = C0090h.m234n(c3759o16, f18, f19);
            C3759o c3759oM234n3 = C0090h.m234n(c3759o17, f18, f19);
            C3759o c3759oM234n4 = C0090h.m234n(c3759o13, f18, f19);
            int i12 = i11 << 2;
            int i13 = i10 << 2;
            C3759o[] c3759oArr3 = {C0090h.m236v(C0090h.m236v(c3759oM234n, c3759oM234n2, i12), c3759oM234n4, i13), C0090h.m236v(C0090h.m236v(c3759oM234n2, c3759oM234n, i12), c3759oM234n3, i13), C0090h.m236v(C0090h.m236v(c3759oM234n3, c3759oM234n4, i12), c3759oM234n2, i13), C0090h.m236v(C0090h.m236v(c3759oM234n4, c3759oM234n3, i12), c3759oM234n, i13)};
            C3759o c3759o18 = c3759oArr3[0];
            C3759o c3759o19 = c3759oArr3[1];
            C3759o c3759o20 = c3759oArr3[2];
            C3759o c3759o21 = c3759oArr3[3];
            int iM255w12 = c0090h.m255w(c3759o18, c3759o21);
            int iMax = iM255w12 + 1;
            int iM255w13 = c0090h.m255w(c3759o20, c3759o21);
            int i14 = iM255w13 + 1;
            if ((iMax & 1) == 1) {
                iMax = iM255w12 + 2;
            }
            if ((i14 & 1) == 1) {
                i14 = iM255w13 + 2;
            }
            if (iMax * 4 < i14 * 7 && i14 * 4 < iMax * 7) {
                iMax = Math.max(iMax, i14);
                i14 = iMax;
            }
            float f20 = iMax - 0.5f;
            float f21 = i14 - 0.5f;
            c1580dM3085c = c1994c.m3085c(AbstractC3656k.m5871q(c1578bM5977a, iMax, i14, C1582f.m2667a(0.5f, 0.5f, f20, 0.5f, f20, f21, 0.5f, f21, c3759o18.f11214a, c3759o18.f11215b, c3759o21.f11214a, c3759o21.f11215b, c3759o20.f11214a, c3759o20.f11215b, c3759o19.f11214a, c3759o19.f11215b)));
            c3759oArr = new C3759o[]{c3759o18, c3759o19, c3759o20, c3759o21};
        } else {
            C1578b c1578bM5977a2 = c3746b.m5977a();
            int[] iArrM2661e = c1578bM5977a2.m2661e();
            int[] iArrM2659c = c1578bM5977a2.m2659c();
            if (iArrM2661e == null || iArrM2659c == null) {
                throw C3753i.f11192d;
            }
            int i15 = c1578bM5977a2.f3900b;
            int i16 = iArrM2661e[0];
            int i17 = iArrM2661e[1];
            while (i16 < i15 && c1578bM5977a2.m2658b(i16, i17)) {
                i16++;
            }
            if (i16 == i15) {
                throw C3753i.f11192d;
            }
            int i18 = iArrM2661e[0];
            int i19 = i16 - i18;
            if (i19 == 0) {
                throw C3753i.f11192d;
            }
            int i20 = iArrM2661e[1];
            int i21 = iArrM2659c[1];
            int i22 = ((iArrM2659c[0] - i18) + 1) / i19;
            int i23 = ((i21 - i20) + 1) / i19;
            if (i22 <= 0 || i23 <= 0) {
                throw C3753i.f11192d;
            }
            int i24 = i19 / 2;
            int i25 = i20 + i24;
            int i26 = i18 + i24;
            C1578b c1578b = new C1578b(i22, i23);
            for (int i27 = 0; i27 < i23; i27++) {
                int i28 = (i27 * i19) + i25;
                for (int i29 = 0; i29 < i22; i29++) {
                    if (c1578bM5977a2.m2658b((i29 * i19) + i26, i28)) {
                        c1578b.m2662f(i29, i27);
                    }
                }
            }
            c1580dM3085c = c1994c.m3085c(c1578b);
            c3759oArr = f4565b;
        }
        C3757m c3757m = new C3757m(c1580dM3085c.f3909a, (byte[]) c1580dM3085c.f3912d, c3759oArr, EnumC3745a.f11157g);
        List list = (List) c1580dM3085c.f3914f;
        if (list != null) {
            c3757m.m5988b(EnumC3758n.f11204c, list);
        }
        String str = (String) c1580dM3085c.f3913e;
        if (str != null) {
            c3757m.m5988b(EnumC3758n.f11205d, str);
        }
        return c3757m;
    }

    @Override // p260z5.InterfaceC3755k
    public final void reset() {
    }
}
