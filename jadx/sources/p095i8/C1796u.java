package p095i8;

import com.bumptech.glide.AbstractC1031d;
import java.util.Iterator;
import p033c8.EnumC1012b;
import p045d8.AbstractC1314b;
import p106j8.C2006i;
import p242x7.AbstractC3588e;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1796u extends AbstractC3590g {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4711b;

    /* JADX INFO: renamed from: c */
    public final Object f4712c;

    public /* synthetic */ C1796u(int i10, Object obj) {
        this.f4711b = i10;
        this.f4712c = obj;
    }

    @Override // p242x7.AbstractC3590g
    /* JADX INFO: renamed from: d */
    public final void mo2897d(InterfaceC3591h interfaceC3591h) {
        switch (this.f4711b) {
            case 0:
                ((AbstractC3588e) this.f4712c).m5717c(new C1795t(interfaceC3591h));
                break;
            default:
                InterfaceC3762a interfaceC3762a = EnumC1012b.f1015b;
                try {
                    Iterator it = ((Iterable) this.f4712c).iterator();
                    try {
                        if (!it.hasNext()) {
                            interfaceC3591h.mo2819b(interfaceC3762a);
                            interfaceC3591h.mo2818a();
                        } else {
                            C2006i c2006i = new C2006i(interfaceC3591h, it);
                            interfaceC3591h.mo2819b(c2006i);
                            if (!c2006i.f5480e) {
                                while (!c2006i.f5479d) {
                                    try {
                                        Object next = c2006i.f5478c.next();
                                        AbstractC1314b.m2356a(next, "The iterator returned a null value");
                                        c2006i.f5477b.mo2820e(next);
                                        if (c2006i.f5479d) {
                                            break;
                                        } else {
                                            try {
                                                if (!c2006i.f5478c.hasNext()) {
                                                    if (!c2006i.f5479d) {
                                                        c2006i.f5477b.mo2818a();
                                                    }
                                                    break;
                                                }
                                            } catch (Throwable th) {
                                                AbstractC1031d.m1292v(th);
                                                c2006i.f5477b.onError(th);
                                                return;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        AbstractC1031d.m1292v(th2);
                                        c2006i.f5477b.onError(th2);
                                        return;
                                    }
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        AbstractC1031d.m1292v(th3);
                        interfaceC3591h.mo2819b(interfaceC3762a);
                        interfaceC3591h.onError(th3);
                        return;
                    }
                } catch (Throwable th4) {
                    AbstractC1031d.m1292v(th4);
                    interfaceC3591h.mo2819b(interfaceC3762a);
                    interfaceC3591h.onError(th4);
                }
                break;
        }
    }
}
