package p039d2;

import java.util.Collections;
import java.util.HashMap;
import p006a5.C0016a;
import p006a5.InterfaceC0019d;
import p069g2.C1606b;
import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: d2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1246b implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C1246b f2937a = new C1246b();

    /* JADX INFO: renamed from: b */
    public static final C3570c f2938b;

    static {
        C0016a c0016a = new C0016a(1);
        HashMap map = new HashMap();
        map.put(InterfaceC0019d.class, c0016a);
        f2938b = new C3570c("storageMetrics", Collections.unmodifiableMap(new HashMap(map)));
    }

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        ((InterfaceC3572e) obj2).mo58d(f2938b, ((C1606b) obj).f4036a);
    }
}
