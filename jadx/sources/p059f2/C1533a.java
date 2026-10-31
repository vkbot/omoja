package p059f2;

import p204t8.InterfaceC3268a;

/* JADX INFO: renamed from: f2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1533a implements InterfaceC3268a {

    /* JADX INFO: renamed from: d */
    public static final Object f3781d = new Object();

    /* JADX INFO: renamed from: b */
    public volatile InterfaceC1534b f3782b;

    /* JADX INFO: renamed from: c */
    public volatile Object f3783c;

    /* JADX INFO: renamed from: a */
    public static InterfaceC3268a m2631a(InterfaceC1534b interfaceC1534b) {
        if (interfaceC1534b instanceof C1533a) {
            return interfaceC1534b;
        }
        C1533a c1533a = new C1533a();
        c1533a.f3783c = f3781d;
        c1533a.f3782b = interfaceC1534b;
        return c1533a;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        Object obj;
        Object obj2 = this.f3783c;
        Object obj3 = f3781d;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f3783c;
                if (obj == obj3) {
                    obj = this.f3782b.get();
                    Object obj4 = this.f3783c;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f3783c = obj;
                    this.f3782b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
