package p106j8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import p033c8.EnumC1012b;
import p047e0.C1357g;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: j8.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2005h extends AbstractC1998a {

    /* JADX INFO: renamed from: c */
    public final C1357g f5475c;

    /* JADX INFO: renamed from: d */
    public final int f5476d;

    public C2005h(AbstractC3590g abstractC3590g, C1357g c1357g, int i10) {
        super(abstractC3590g);
        this.f5475c = c1357g;
        this.f5476d = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p242x7.AbstractC3590g
    /* JADX INFO: renamed from: d */
    public final void mo2897d(InterfaceC3591h interfaceC3591h) {
        InterfaceC3762a interfaceC3762a = EnumC1012b.f1015b;
        AbstractC3590g abstractC3590g = this.f5443b;
        boolean z9 = abstractC3590g instanceof Callable;
        C1357g c1357g = this.f5475c;
        if (!z9) {
            abstractC3590g.m5719c(new C2004g(interfaceC3591h, c1357g, this.f5476d));
            return;
        }
        try {
            Object objCall = ((Callable) abstractC3590g).call();
            if (objCall == null) {
                interfaceC3591h.mo2819b(interfaceC3762a);
                interfaceC3591h.mo2818a();
                return;
            }
            try {
                AbstractC3590g abstractC3590g2 = (AbstractC3590g) c1357g.apply(objCall);
                if (!(abstractC3590g2 instanceof Callable)) {
                    abstractC3590g2.m5719c(interfaceC3591h);
                    return;
                }
                try {
                    Object objCall2 = ((Callable) abstractC3590g2).call();
                    if (objCall2 == null) {
                        interfaceC3591h.mo2819b(interfaceC3762a);
                        interfaceC3591h.mo2818a();
                    } else {
                        RunnableC2008k runnableC2008k = new RunnableC2008k(interfaceC3591h, objCall2);
                        interfaceC3591h.mo2819b(runnableC2008k);
                        runnableC2008k.run();
                    }
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    interfaceC3591h.mo2819b(interfaceC3762a);
                    interfaceC3591h.onError(th);
                }
            } catch (Throwable th2) {
                AbstractC1031d.m1292v(th2);
                interfaceC3591h.mo2819b(interfaceC3762a);
                interfaceC3591h.onError(th2);
            }
        } catch (Throwable th3) {
            AbstractC1031d.m1292v(th3);
            interfaceC3591h.mo2819b(interfaceC3762a);
            interfaceC3591h.onError(th3);
        }
    }
}
