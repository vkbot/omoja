package p200t4;

import org.apache.commons.net.ftp.C2930a;
import p062f5.C1548f;
import p114k5.InterfaceC2049a;
import p114k5.InterfaceC2050b;

/* JADX INFO: renamed from: t4.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3253n implements InterfaceC2050b {

    /* JADX INFO: renamed from: c */
    public static final C2930a f9540c = new C2930a(6);

    /* JADX INFO: renamed from: d */
    public static final C3243d f9541d = new C3243d(1);

    /* JADX INFO: renamed from: a */
    public InterfaceC2049a f9542a;

    /* JADX INFO: renamed from: b */
    public volatile InterfaceC2050b f9543b;

    public C3253n(C2930a c2930a, InterfaceC2050b interfaceC2050b) {
        this.f9542a = c2930a;
        this.f9543b = interfaceC2050b;
    }

    /* JADX INFO: renamed from: a */
    public final void m5188a(InterfaceC2049a interfaceC2049a) {
        InterfaceC2050b interfaceC2050b;
        InterfaceC2050b interfaceC2050b2;
        InterfaceC2050b interfaceC2050b3 = this.f9543b;
        C3243d c3243d = f9541d;
        if (interfaceC2050b3 != c3243d) {
            interfaceC2049a.mo819e(interfaceC2050b3);
            return;
        }
        synchronized (this) {
            interfaceC2050b = this.f9543b;
            if (interfaceC2050b != c3243d) {
                interfaceC2050b2 = interfaceC2050b;
            } else {
                this.f9542a = new C1548f(26, this.f9542a, interfaceC2049a);
                interfaceC2050b2 = null;
            }
        }
        if (interfaceC2050b2 != null) {
            interfaceC2049a.mo819e(interfaceC2050b);
        }
    }

    @Override // p114k5.InterfaceC2050b
    public final Object get() {
        return this.f9543b.get();
    }
}
