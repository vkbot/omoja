package p116k8;

import android.support.v4.media.C0090h;
import p045d8.CallableC1313a;
import p095i8.C1783h;
import p106j8.C2001d;
import p242x7.AbstractC3595l;
import p242x7.InterfaceC3596m;

/* JADX INFO: renamed from: k8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2057a extends AbstractC3595l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5619a;

    /* JADX INFO: renamed from: b */
    public final AbstractC3595l f5620b;

    /* JADX INFO: renamed from: c */
    public final Object f5621c;

    public /* synthetic */ C2057a(AbstractC3595l abstractC3595l, Object obj, int i10) {
        this.f5619a = i10;
        this.f5620b = abstractC3595l;
        this.f5621c = obj;
    }

    @Override // p242x7.AbstractC3595l
    /* JADX INFO: renamed from: b */
    public final void mo2896b(InterfaceC3596m interfaceC3596m) {
        switch (this.f5619a) {
            case 0:
                ((C2001d) this.f5620b).m5721a(new C0090h(28, this, interfaceC3596m));
                break;
            case 1:
                this.f5620b.m5721a(new C0090h(29, this, interfaceC3596m));
                break;
            default:
                this.f5620b.m5721a(new C1783h(2, interfaceC3596m, (CallableC1313a) this.f5621c));
                break;
        }
    }
}
