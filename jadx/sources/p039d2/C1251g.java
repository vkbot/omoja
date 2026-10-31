package p039d2;

import java.util.Collections;
import java.util.HashMap;
import p006a5.C0016a;
import p006a5.InterfaceC0019d;
import p069g2.C1611g;
import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: d2.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1251g implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C1251g f2949a = new C1251g();

    /* JADX INFO: renamed from: b */
    public static final C3570c f2950b;

    /* JADX INFO: renamed from: c */
    public static final C3570c f2951c;

    static {
        C0016a c0016a = new C0016a(1);
        HashMap map = new HashMap();
        map.put(InterfaceC0019d.class, c0016a);
        f2950b = new C3570c("startMs", Collections.unmodifiableMap(new HashMap(map)));
        C0016a c0016a2 = new C0016a(2);
        HashMap map2 = new HashMap();
        map2.put(InterfaceC0019d.class, c0016a2);
        f2951c = new C3570c("endMs", Collections.unmodifiableMap(new HashMap(map2)));
    }

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        C1611g c1611g = (C1611g) obj;
        InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
        interfaceC3572e.mo55a(f2950b, c1611g.f4053a);
        interfaceC3572e.mo55a(f2951c, c1611g.f4054b);
    }
}
