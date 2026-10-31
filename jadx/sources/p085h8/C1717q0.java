package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import p023b8.InterfaceC0929c;
import p045d8.AbstractC1314b;
import p150n9.InterfaceC2560a;
import p158o8.C2756e;
import p158o8.EnumC2755d;
import p242x7.AbstractC3585b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1717q0 extends AbstractC3585b {

    /* JADX INFO: renamed from: c */
    public final Object f4462c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC0929c f4463d;

    public C1717q0(Object obj, InterfaceC0929c interfaceC0929c) {
        this.f4462c = obj;
        this.f4463d = interfaceC0929c;
    }

    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        try {
            Object objApply = this.f4463d.apply(this.f4462c);
            AbstractC1314b.m2356a(objApply, "The mapper returned a null Publisher");
            InterfaceC2560a interfaceC2560a = (InterfaceC2560a) objApply;
            if (!(interfaceC2560a instanceof Callable)) {
                interfaceC2560a.mo2835a(interfaceC3587d);
                return;
            }
            try {
                Object objCall = ((Callable) interfaceC2560a).call();
                if (objCall == null) {
                    EnumC2755d.m4274a(interfaceC3587d);
                } else {
                    interfaceC3587d.mo2808f(new C2756e(objCall, interfaceC3587d));
                }
            } catch (Throwable th) {
                AbstractC1031d.m1292v(th);
                EnumC2755d.m4275b(th, interfaceC3587d);
            }
        } catch (Throwable th2) {
            EnumC2755d.m4275b(th2, interfaceC3587d);
        }
    }
}
