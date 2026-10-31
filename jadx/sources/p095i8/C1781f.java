package p095i8;

import p023b8.InterfaceC0930d;
import p045d8.CallableC1313a;
import p242x7.AbstractC3588e;
import p242x7.AbstractC3594k;
import p242x7.InterfaceC3589f;

/* JADX INFO: renamed from: i8.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1781f extends AbstractC1776a {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4678c;

    /* JADX INFO: renamed from: d */
    public final Object f4679d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1781f(AbstractC3588e abstractC3588e, Object obj, int i10) {
        super(abstractC3588e);
        this.f4678c = i10;
        this.f4679d = obj;
    }

    @Override // p242x7.AbstractC3588e
    /* JADX INFO: renamed from: d */
    public final void mo2841d(InterfaceC3589f interfaceC3589f) {
        switch (this.f4678c) {
            case 0:
                this.f4669b.m5717c(new C1780e(interfaceC3589f, (InterfaceC0930d) this.f4679d, 0));
                break;
            case 1:
                this.f4669b.m5717c(new RunnableC1791p(interfaceC3589f, (AbstractC3594k) this.f4679d));
                break;
            case 2:
                this.f4669b.m5717c(new C1792q(interfaceC3589f, (CallableC1313a) this.f4679d));
                break;
            default:
                this.f4669b.m5717c(new C1783h(1, interfaceC3589f, (AbstractC3588e) this.f4679d));
                break;
        }
    }
}
