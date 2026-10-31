package p085h8;

import p150n9.InterfaceC2561b;
import p242x7.InterfaceC3587d;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: h8.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1693e0 implements InterfaceC3591h, InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4380b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3762a f4381c;

    public C1693e0(InterfaceC3587d interfaceC3587d) {
        this.f4380b = interfaceC3587d;
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: a */
    public final void mo2818a() {
        this.f4380b.mo2804a();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: b */
    public final void mo2819b(InterfaceC3762a interfaceC3762a) {
        this.f4381c = interfaceC3762a;
        this.f4380b.mo2808f(this);
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        this.f4381c.dispose();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: e */
    public final void mo2820e(Object obj) {
        this.f4380b.mo2807e(obj);
    }

    @Override // p242x7.InterfaceC3591h
    public final void onError(Throwable th) {
        this.f4380b.onError(th);
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
    }
}
