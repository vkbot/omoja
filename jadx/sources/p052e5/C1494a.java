package p052e5;

import p204t8.InterfaceC3268a;

/* JADX INFO: renamed from: e5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1494a implements InterfaceC3268a {

    /* JADX INFO: renamed from: d */
    public static final Object f3689d = new Object();

    /* JADX INFO: renamed from: b */
    public volatile InterfaceC1495b f3690b;

    /* JADX INFO: renamed from: c */
    public volatile Object f3691c;

    /* JADX INFO: renamed from: a */
    public static InterfaceC3268a m2578a(InterfaceC1495b interfaceC1495b) {
        if (interfaceC1495b instanceof C1494a) {
            return interfaceC1495b;
        }
        C1494a c1494a = new C1494a();
        c1494a.f3691c = f3689d;
        c1494a.f3690b = interfaceC1495b;
        return c1494a;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        Object obj;
        Object obj2 = this.f3691c;
        Object obj3 = f3689d;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f3691c;
                if (obj == obj3) {
                    obj = this.f3690b.get();
                    Object obj4 = this.f3691c;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f3691c = obj;
                    this.f3690b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
