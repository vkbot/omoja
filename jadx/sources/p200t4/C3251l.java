package p200t4;

import p114k5.InterfaceC2050b;

/* JADX INFO: renamed from: t4.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3251l implements InterfaceC2050b {

    /* JADX INFO: renamed from: c */
    public static final Object f9535c = new Object();

    /* JADX INFO: renamed from: a */
    public volatile Object f9536a = f9535c;

    /* JADX INFO: renamed from: b */
    public volatile InterfaceC2050b f9537b;

    public C3251l(InterfaceC2050b interfaceC2050b) {
        this.f9537b = interfaceC2050b;
    }

    @Override // p114k5.InterfaceC2050b
    public final Object get() {
        Object obj;
        Object obj2 = this.f9536a;
        Object obj3 = f9535c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f9536a;
                if (obj == obj3) {
                    obj = this.f9537b.get();
                    this.f9536a = obj;
                    this.f9537b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
