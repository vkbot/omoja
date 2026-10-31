package p157o7;

import p006a5.C0023h;
import p016b1.C0872m;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p232w7.AbstractC3536b;
import p232w7.C3535a;

/* JADX INFO: renamed from: o7.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2695q extends AbstractRunnableC2618d0 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2508f1 f7705d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2547v0 f7706e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ C0023h f7707f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2695q(C0023h c0023h, C2508f1 c2508f1, C2547v0 c2547v0) {
        super(0, ((C2713t) c0023h.f83e).f7764h);
        this.f7707f = c0023h;
        this.f7705d = c2508f1;
        this.f7706e = c2547v0;
    }

    @Override // p157o7.AbstractRunnableC2618d0
    /* JADX INFO: renamed from: b */
    public final void mo4133b() {
        AbstractC3536b.m5642c();
        try {
            AbstractC3536b.m5640a();
            C3535a c3535a = AbstractC3536b.f10507a;
            c3535a.getClass();
            m4224c();
            c3535a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m4224c() {
        C2508f1 c2508f1 = this.f7705d;
        C2547v0 c2547v0 = this.f7706e;
        C2508f1 c2508f2 = (C2508f1) this.f7707f.f82d;
        if (c2508f2 != null) {
            c2547v0 = new C2547v0();
            c2508f1 = c2508f2;
        }
        ((C2713t) this.f7707f.f83e).f7769m = true;
        try {
            ((AbstractC2503e) this.f7707f.f81c).mo3907o(c2508f1, c2547v0);
            ((C2713t) this.f7707f.f83e).m4235s();
            C0872m c0872m = ((C2713t) this.f7707f.f83e).f7763g;
            if (c2508f1.m3932f()) {
                ((InterfaceC2703r1) c0872m.f603e).mo4136a();
            } else {
                ((InterfaceC2703r1) c0872m.f604f).mo4136a();
            }
        } catch (Throwable th) {
            ((C2713t) this.f7707f.f83e).m4235s();
            C0872m c0872m2 = ((C2713t) this.f7707f.f83e).f7763g;
            if (c2508f1.m3932f()) {
                ((InterfaceC2703r1) c0872m2.f603e).mo4136a();
            } else {
                ((InterfaceC2703r1) c0872m2.f604f).mo4136a();
            }
            throw th;
        }
    }
}
