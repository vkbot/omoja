package p095i8;

import p000a.AbstractC0000a;
import p023b8.InterfaceC0930d;
import p075g8.C1627c;
import p165p2.C2962e;
import p184r5.C3105c;
import p242x7.AbstractC3588e;
import p242x7.AbstractC3595l;
import p242x7.InterfaceC3589f;

/* JADX INFO: renamed from: i8.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1782g extends AbstractC3588e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4680b;

    /* JADX INFO: renamed from: c */
    public final Object f4681c;

    /* JADX INFO: renamed from: d */
    public final Object f4682d;

    public /* synthetic */ C1782g(int i10, Object obj, Object obj2) {
        this.f4680b = i10;
        this.f4681c = obj;
        this.f4682d = obj2;
    }

    @Override // p242x7.AbstractC3588e
    /* JADX INFO: renamed from: d */
    public final void mo2841d(InterfaceC3589f interfaceC3589f) {
        switch (this.f4680b) {
            case 0:
                ((AbstractC3595l) this.f4681c).m5721a(new C1780e(interfaceC3589f, (InterfaceC0930d) this.f4682d, 1));
                break;
            default:
                AbstractC3588e[] abstractC3588eArr = (AbstractC3588e[]) this.f4681c;
                int length = abstractC3588eArr.length;
                if (length == 1) {
                    abstractC3588eArr[0].m5717c(new C1627c(interfaceC3589f, new C3105c(21, this), 1));
                } else {
                    C1797v c1797v = new C1797v(interfaceC3589f, length, (C2962e) this.f4682d);
                    interfaceC3589f.mo238b(c1797v);
                    for (int i10 = 0; i10 < length; i10++) {
                        if (!(c1797v.get() <= 0)) {
                            AbstractC3588e abstractC3588e = abstractC3588eArr[i10];
                            if (abstractC3588e == null) {
                                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                                if (c1797v.getAndSet(0) > 0) {
                                    c1797v.m2898a(i10);
                                    c1797v.f4713b.onError(nullPointerException);
                                } else {
                                    AbstractC0000a.m18s(nullPointerException);
                                }
                            } else {
                                abstractC3588e.m5717c(c1797v.f4715d[i10]);
                            }
                        }
                    }
                }
                break;
        }
    }
}
