package p106j8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import p033c8.EnumC1012b;
import p047e0.C1357g;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: j8.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2009l extends AbstractC3590g {

    /* JADX INFO: renamed from: b */
    public final Object f5489b;

    /* JADX INFO: renamed from: c */
    public final C1357g f5490c;

    public C2009l(Object obj, C1357g c1357g) {
        this.f5489b = obj;
        this.f5490c = c1357g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p242x7.AbstractC3590g
    /* JADX INFO: renamed from: d */
    public final void mo2897d(InterfaceC3591h interfaceC3591h) {
        InterfaceC3762a interfaceC3762a = EnumC1012b.f1015b;
        try {
            AbstractC3590g abstractC3590g = (AbstractC3590g) this.f5490c.apply(this.f5489b);
            if (!(abstractC3590g instanceof Callable)) {
                abstractC3590g.m5719c(interfaceC3591h);
                return;
            }
            try {
                Object objCall = ((Callable) abstractC3590g).call();
                if (objCall == null) {
                    interfaceC3591h.mo2819b(interfaceC3762a);
                    interfaceC3591h.mo2818a();
                } else {
                    RunnableC2008k runnableC2008k = new RunnableC2008k(interfaceC3591h, objCall);
                    interfaceC3591h.mo2819b(runnableC2008k);
                    runnableC2008k.run();
                }
            } catch (Throwable th) {
                AbstractC1031d.m1292v(th);
                interfaceC3591h.mo2819b(interfaceC3762a);
                interfaceC3591h.onError(th);
            }
        } catch (Throwable th2) {
            interfaceC3591h.mo2819b(interfaceC3762a);
            interfaceC3591h.onError(th2);
        }
    }
}
