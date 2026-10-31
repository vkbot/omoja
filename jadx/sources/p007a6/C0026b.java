package p007a6;

import java.util.List;
import java.util.Map;
import p021b6.C0904a;
import p031c6.C0996b;
import p063f6.C1580d;
import p260z5.C3746b;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;
import p260z5.EnumC3758n;
import p260z5.InterfaceC3755k;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: a6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0026b implements InterfaceC3755k {
    @Override // p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public final C3757m mo89a(C3746b c3746b, Map map) throws C3749e, C3753i {
        C3759o[] c3759oArr;
        C3753i c3753i;
        C3759o[] c3759oArr2;
        C3749e c3749e;
        C3759o[] c3759oArr3;
        InterfaceC3760p interfaceC3760p;
        C0996b c0996b = new C0996b(c3746b.m5977a());
        C1580d c1580dM1032a = null;
        try {
            C0025a c0025aM1194a = c0996b.m1194a(false);
            c3759oArr = (C3759o[]) c0025aM1194a.f92e;
            try {
                c3749e = null;
                c1580dM1032a = new C0904a().m1032a(c0025aM1194a);
                c3759oArr2 = c3759oArr;
                c3753i = null;
            } catch (C3749e e) {
                e = e;
                c3749e = e;
                c3759oArr2 = c3759oArr;
                c3753i = null;
            } catch (C3753i e6) {
                e = e6;
                C3759o[] c3759oArr4 = c3759oArr;
                c3753i = e;
                c3759oArr2 = c3759oArr4;
                c3749e = null;
            }
        } catch (C3749e e10) {
            e = e10;
            c3759oArr = null;
        } catch (C3753i e11) {
            e = e11;
            c3759oArr = null;
        }
        if (c1580dM1032a == null) {
            try {
                C0025a c0025aM1194a2 = c0996b.m1194a(true);
                C3759o[] c3759oArr5 = (C3759o[]) c0025aM1194a2.f92e;
                c1580dM1032a = new C0904a().m1032a(c0025aM1194a2);
                c3759oArr3 = c3759oArr5;
            } catch (C3749e | C3753i e12) {
                if (c3753i != null) {
                    throw c3753i;
                }
                if (c3749e != null) {
                    throw c3749e;
                }
                throw e12;
            }
        } else {
            c3759oArr3 = c3759oArr2;
        }
        if (map != null && (interfaceC3760p = (InterfaceC3760p) map.get(EnumC3748d.f11181k)) != null) {
            for (C3759o c3759o : c3759oArr3) {
                interfaceC3760p.mo1052a(c3759o);
            }
        }
        String str = c1580dM1032a.f3909a;
        byte[] bArr = (byte[]) c1580dM1032a.f3912d;
        System.currentTimeMillis();
        C3757m c3757m = new C3757m(str, bArr, c3759oArr3, EnumC3745a.f11152b, 0);
        List list = (List) c1580dM1032a.f3914f;
        if (list != null) {
            c3757m.m5988b(EnumC3758n.f11204c, list);
        }
        String str2 = (String) c1580dM1032a.f3913e;
        if (str2 != null) {
            c3757m.m5988b(EnumC3758n.f11205d, str2);
        }
        return c3757m;
    }

    @Override // p260z5.InterfaceC3755k
    public final void reset() {
    }
}
