package p094i7;

import com.example.navistart.LocServ;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.AsyncTaskC1364h1;
import p047e0.C1440x1;
import p078h0.C1652b;
import p206u0.C3277a;

/* JADX INFO: renamed from: i7.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1764m {

    /* JADX INFO: renamed from: k */
    public static ArrayList f4614k = new ArrayList();

    /* JADX INFO: renamed from: a */
    public final LocServ f4615a;

    /* JADX INFO: renamed from: b */
    public final int f4616b;

    /* JADX INFO: renamed from: e */
    public final C1758g f4619e;

    /* JADX INFO: renamed from: f */
    public final C1760i f4620f;

    /* JADX INFO: renamed from: g */
    public final C1761j f4621g;

    /* JADX INFO: renamed from: h */
    public AsyncTaskC1364h1 f4622h;

    /* JADX INFO: renamed from: c */
    public final WeakHashMap f4617c = new WeakHashMap();

    /* JADX INFO: renamed from: d */
    public double f4618d = 0.0d;

    /* JADX INFO: renamed from: i */
    public final Boolean f4623i = Boolean.TRUE;

    /* JADX INFO: renamed from: j */
    public final ScheduledThreadPoolExecutor f4624j = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{41, 107, 50, 54, -123, 87, -122, -60, 7, 126, 51}, new byte[]{110, 27, 65, 120, -22, 35, -17, -94}));

    public C1764m(LocServ locServ) {
        this.f4615a = locServ;
        this.f4621g = new C1761j(locServ);
        this.f4619e = new C1758g(locServ);
        C1760i c1760i = new C1760i(0);
        c1760i.f4603b = new ArrayList();
        this.f4620f = c1760i;
        this.f4622h = new AsyncTaskC1364h1(this);
        this.f4616b = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-45, -18, 81, 94, 44, 66}, new byte[]{-127, -81, 21, 23, 121, 17, 0, -119}), 1500);
    }

    /* JADX INFO: renamed from: a */
    public static Boolean m2889a() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-36}, new byte[]{-20, -1, -2, -28, 12, 70, -18, 76}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }
}
