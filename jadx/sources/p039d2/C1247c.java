package p039d2;

import java.util.Collections;
import java.util.HashMap;
import p006a5.C0016a;
import p006a5.InterfaceC0019d;
import p069g2.C1608d;
import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: d2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1247c implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C1247c f2939a = new C1247c();

    /* JADX INFO: renamed from: b */
    public static final C3570c f2940b;

    /* JADX INFO: renamed from: c */
    public static final C3570c f2941c;

    static {
        C0016a c0016a = new C0016a(1);
        HashMap map = new HashMap();
        map.put(InterfaceC0019d.class, c0016a);
        f2940b = new C3570c("eventsDroppedCount", Collections.unmodifiableMap(new HashMap(map)));
        C0016a c0016a2 = new C0016a(3);
        HashMap map2 = new HashMap();
        map2.put(InterfaceC0019d.class, c0016a2);
        f2941c = new C3570c("reason", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        C1608d c1608d = (C1608d) obj;
        InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
        interfaceC3572e.mo55a(f2940b, c1608d.f4046a);
        interfaceC3572e.mo58d(f2941c, c1608d.f4047b);
    }
}
