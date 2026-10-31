package p106j8;

import p010a9.C0061w;
import p047e0.C1357g;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3591h;

/* JADX INFO: renamed from: j8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2000c extends AbstractC1998a {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f5449c;

    /* JADX INFO: renamed from: d */
    public final Object f5450d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2000c(AbstractC3590g abstractC3590g, Object obj, int i10) {
        super(abstractC3590g);
        this.f5449c = i10;
        this.f5450d = obj;
    }

    @Override // p242x7.AbstractC3590g
    /* JADX INFO: renamed from: d */
    public final void mo2897d(InterfaceC3591h interfaceC3591h) {
        switch (this.f5449c) {
            case 0:
                this.f5443b.m5719c(new C1999b(interfaceC3591h, (C0061w) this.f5450d, 0));
                break;
            default:
                this.f5443b.m5719c(new C2007j(interfaceC3591h, (C1357g) this.f5450d));
                break;
        }
    }
}
