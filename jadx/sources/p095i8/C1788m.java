package p095i8;

import p033c8.EnumC1011a;
import p242x7.InterfaceC3589f;
import p242x7.InterfaceC3596m;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1788m implements InterfaceC3589f, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3596m f4694b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3762a f4695c;

    public C1788m(InterfaceC3596m interfaceC3596m) {
        this.f4694b = interfaceC3596m;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        this.f4695c = EnumC1011a.f1013b;
        this.f4694b.mo239c(Boolean.TRUE);
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1219e(this.f4695c, interfaceC3762a)) {
            this.f4695c = interfaceC3762a;
            this.f4694b.mo238b(this);
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        this.f4695c = EnumC1011a.f1013b;
        this.f4694b.mo239c(Boolean.FALSE);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        this.f4695c.dispose();
        this.f4695c = EnumC1011a.f1013b;
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        this.f4695c = EnumC1011a.f1013b;
        this.f4694b.onError(th);
    }
}
