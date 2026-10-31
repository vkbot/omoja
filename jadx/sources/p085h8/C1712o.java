package p085h8;

import p045d8.AbstractC1314b;
import p047e0.C1357g;
import p054e8.InterfaceC1498a;
import p232w7.C3537c;
import p242x7.AbstractC3585b;
import p242x7.InterfaceC3587d;
import p258z3.C3720f;

/* JADX INFO: renamed from: h8.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1712o extends AbstractC1684a {

    /* JADX INFO: renamed from: d */
    public final C1357g f4441d;

    /* JADX INFO: renamed from: e */
    public final C3720f f4442e;

    /* JADX INFO: renamed from: f */
    public final C3537c f4443f;

    /* JADX INFO: renamed from: g */
    public final C3537c f4444g;

    public C1712o(AbstractC3585b abstractC3585b, C1357g c1357g) {
        super(abstractC3585b);
        this.f4441d = c1357g;
        this.f4442e = AbstractC1314b.f3136d;
        C3537c c3537c = AbstractC1314b.f3135c;
        this.f4443f = c3537c;
        this.f4444g = c3537c;
    }

    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        boolean z9 = interfaceC3587d instanceof InterfaceC1498a;
        AbstractC3585b abstractC3585b = this.f4328c;
        C1357g c1357g = this.f4441d;
        if (z9) {
            abstractC3585b.m5714d(new C1708m((InterfaceC1498a) interfaceC3587d, c1357g, this.f4442e, this.f4443f, this.f4444g));
        } else {
            abstractC3585b.m5714d(new C1710n(interfaceC3587d, c1357g, this.f4442e, this.f4443f, this.f4444g));
        }
    }
}
