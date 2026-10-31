package p097j;

import p037d0.AbstractC1239g;
import p037d0.C1236d;
import p037d0.C1240h;
import p037d0.InterfaceC1237e;
import p258z3.C3720f;

/* JADX INFO: renamed from: j.c0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1887c0 implements InterfaceC1889d0, InterfaceC1237e {

    /* JADX INFO: renamed from: f */
    public static final C1236d f4869f = AbstractC1239g.m2223a(20, new C3720f(11));

    /* JADX INFO: renamed from: b */
    public final C1240h f4870b = new C1240h();

    /* JADX INFO: renamed from: c */
    public InterfaceC1889d0 f4871c;

    /* JADX INFO: renamed from: d */
    public boolean f4872d;

    /* JADX INFO: renamed from: e */
    public boolean f4873e;

    /* JADX INFO: renamed from: a */
    public final synchronized void m2931a() {
        this.f4870b.m2224a();
        if (!this.f4872d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f4872d = false;
        if (this.f4873e) {
            recycle();
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: b */
    public final int mo2932b() {
        return this.f4871c.mo2932b();
    }

    @Override // p037d0.InterfaceC1237e
    /* JADX INFO: renamed from: c */
    public final C1240h mo2222c() {
        return this.f4870b;
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: d */
    public final Class mo2933d() {
        return this.f4871c.mo2933d();
    }

    @Override // p097j.InterfaceC1889d0
    public final Object get() {
        return this.f4871c.get();
    }

    @Override // p097j.InterfaceC1889d0
    public final synchronized void recycle() {
        this.f4870b.m2224a();
        this.f4873e = true;
        if (!this.f4872d) {
            this.f4871c.recycle();
            this.f4871c = null;
            f4869f.release(this);
        }
    }
}
