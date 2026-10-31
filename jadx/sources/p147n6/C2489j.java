package p147n6;

import java.util.ArrayList;
import java.util.EnumMap;
import p063f6.C1577a;
import p260z5.AbstractC3756l;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3758n;

/* JADX INFO: renamed from: n6.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2489j {

    /* JADX INFO: renamed from: c */
    public static final int[] f6866c = {1, 1, 2};

    /* JADX INFO: renamed from: a */
    public final Object f6867a;

    /* JADX INFO: renamed from: b */
    public final Object f6868b;

    public C2489j(int i10) {
        switch (i10) {
            case 1:
                this.f6867a = new ArrayList();
                this.f6868b = new ArrayList();
                break;
            default:
                this.f6867a = new C2488i(1);
                this.f6868b = new C2488i(0);
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public void m3876a(String str, int[] iArr) {
        ((ArrayList) this.f6867a).add(iArr);
        ((ArrayList) this.f6868b).add(str);
    }

    /* JADX INFO: renamed from: b */
    public C3757m m3877b(int i10, int i11, C1577a c1577a) throws C3753i {
        EnumMap enumMap;
        int[] iArrM3879l = AbstractC2490k.m3879l(c1577a, i11, false, f6866c, new int[3]);
        try {
            return ((C2488i) this.f6868b).m3875a(i10, c1577a, iArrM3879l);
        } catch (AbstractC3756l unused) {
            C2488i c2488i = (C2488i) this.f6867a;
            StringBuilder sb = c2488i.f6865b;
            sb.setLength(0);
            int[] iArr = c2488i.f6864a;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            int i12 = c1577a.f3899c;
            int iM2652f = iArrM3879l[1];
            int i13 = 0;
            for (int i14 = 0; i14 < 2 && iM2652f < i12; i14++) {
                int iM3878h = AbstractC2490k.m3878h(c1577a, iArr, iM2652f, AbstractC2490k.f6872g);
                sb.append((char) ((iM3878h % 10) + 48));
                for (int i15 : iArr) {
                    iM2652f += i15;
                }
                if (iM3878h >= 10) {
                    i13 |= 1 << (1 - i14);
                }
                if (i14 != 1) {
                    iM2652f = c1577a.m2652f(c1577a.m2651e(iM2652f));
                }
            }
            if (sb.length() != 2) {
                throw C3753i.f11192d;
            }
            if (Integer.parseInt(sb.toString()) % 4 != i13) {
                throw C3753i.f11192d;
            }
            String string = sb.toString();
            if (string.length() != 2) {
                enumMap = null;
            } else {
                enumMap = new EnumMap(EnumC3758n.class);
                enumMap.put(EnumC3758n.f11206e, Integer.valueOf(string));
            }
            float f8 = i10;
            C3757m c3757m = new C3757m(string, null, new C3759o[]{new C3759o((iArrM3879l[0] + iArrM3879l[1]) / 2.0f, f8), new C3759o(iM2652f, f8)}, EnumC3745a.f11168r);
            if (enumMap != null) {
                c3757m.m5987a(enumMap);
            }
            return c3757m;
        }
    }
}
