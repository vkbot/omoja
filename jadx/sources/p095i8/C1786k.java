package p095i8;

import p023b8.InterfaceC0929c;
import p075g8.C1627c;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3589f;

/* JADX INFO: renamed from: i8.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1786k extends AbstractC1776a {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4691c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC0929c f4692d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1786k(AbstractC3588e abstractC3588e, InterfaceC0929c interfaceC0929c, int i10) {
        super(abstractC3588e);
        this.f4691c = i10;
        this.f4692d = interfaceC0929c;
    }

    @Override // p242x7.AbstractC3588e
    /* JADX INFO: renamed from: d */
    public final void mo2841d(InterfaceC3589f interfaceC3589f) {
        switch (this.f4691c) {
            case 0:
                this.f4669b.m5717c(new C1785j(interfaceC3589f, this.f4692d));
                break;
            default:
                this.f4669b.m5717c(new C1627c(interfaceC3589f, this.f4692d, 1));
                break;
        }
    }
}
