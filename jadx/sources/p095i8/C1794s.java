package p095i8;

import p033c8.EnumC1011a;
import p158o8.AbstractC2754c;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1794s extends AbstractC2754c implements InterfaceC3589f {

    /* JADX INFO: renamed from: d */
    public InterfaceC3762a f4707d;

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        this.f7918b.mo2804a();
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1219e(this.f4707d, interfaceC3762a)) {
            this.f4707d = interfaceC3762a;
            this.f7918b.mo2808f(this);
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        set(4);
        this.f7919c = null;
        this.f4707d.dispose();
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        this.f7918b.onError(th);
    }
}
