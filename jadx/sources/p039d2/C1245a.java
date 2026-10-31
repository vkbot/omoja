package p039d2;

import java.util.Collections;
import java.util.HashMap;
import p006a5.C0016a;
import p006a5.InterfaceC0019d;
import p069g2.C1605a;
import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: d2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1245a implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C1245a f2932a = new C1245a();

    /* JADX INFO: renamed from: b */
    public static final C3570c f2933b;

    /* JADX INFO: renamed from: c */
    public static final C3570c f2934c;

    /* JADX INFO: renamed from: d */
    public static final C3570c f2935d;

    /* JADX INFO: renamed from: e */
    public static final C3570c f2936e;

    static {
        C0016a c0016a = new C0016a(1);
        HashMap map = new HashMap();
        map.put(InterfaceC0019d.class, c0016a);
        f2933b = new C3570c("window", Collections.unmodifiableMap(new HashMap(map)));
        C0016a c0016a2 = new C0016a(2);
        HashMap map2 = new HashMap();
        map2.put(InterfaceC0019d.class, c0016a2);
        f2934c = new C3570c("logSourceMetrics", Collections.unmodifiableMap(new HashMap(map2)));
        C0016a c0016a3 = new C0016a(3);
        HashMap map3 = new HashMap();
        map3.put(InterfaceC0019d.class, c0016a3);
        f2935d = new C3570c("globalMetrics", Collections.unmodifiableMap(new HashMap(map3)));
        C0016a c0016a4 = new C0016a(4);
        HashMap map4 = new HashMap();
        map4.put(InterfaceC0019d.class, c0016a4);
        f2936e = new C3570c("appNamespace", Collections.unmodifiableMap(new HashMap(map4)));
    }

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        C1605a c1605a = (C1605a) obj;
        InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
        interfaceC3572e.mo58d(f2933b, c1605a.f4032a);
        interfaceC3572e.mo58d(f2934c, c1605a.f4033b);
        interfaceC3572e.mo58d(f2935d, c1605a.f4034c);
        interfaceC3572e.mo58d(f2936e, c1605a.f4035d);
    }
}
