package p224v8;

import kotlin.Unit;

/* JADX INFO: renamed from: v8.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3389i extends AbstractC3370b1 implements InterfaceC3386h {

    /* JADX INFO: renamed from: f */
    public final C3388h1 f9883f;

    public C3389i(C3388h1 c3388h1) {
        this.f9883f = c3388h1;
    }

    @Override // p224v8.InterfaceC3386h
    /* JADX INFO: renamed from: a */
    public final boolean mo5321a(Throwable th) {
        return m5294i().mo5335o(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        mo5295j((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // p224v8.AbstractC3376d1
    /* JADX INFO: renamed from: j */
    public final void mo5295j(Throwable th) {
        this.f9883f.m5332k(m5294i());
    }
}
