package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import p023b8.InterfaceC0929c;
import p030c5.C0990e;
import p045d8.AbstractC1314b;
import p054e8.InterfaceC1498a;
import p158o8.EnumC2755d;
import p242x7.AbstractC3585b;
import p242x7.AbstractC3593j;
import p242x7.AbstractC3594k;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1685a0 extends AbstractC1684a {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f4329d = 1;

    /* JADX INFO: renamed from: e */
    public final int f4330e;

    /* JADX INFO: renamed from: f */
    public final Object f4331f;

    public C1685a0(AbstractC3585b abstractC3585b, InterfaceC0929c interfaceC0929c) {
        super(abstractC3585b);
        this.f4331f = interfaceC0929c;
        this.f4330e = Integer.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        switch (this.f4329d) {
            case 0:
                this.f4328c.m5714d(new C1727z(interfaceC3587d, (InterfaceC0929c) this.f4331f, this.f4330e));
                break;
            case 1:
                C0990e c0990e = (C0990e) this.f4331f;
                AbstractC3585b abstractC3585b = this.f4328c;
                if (!(abstractC3585b instanceof Callable)) {
                    abstractC3585b.m5714d(new C1687b0(interfaceC3587d, c0990e, this.f4330e));
                } else {
                    try {
                        Object objCall = ((Callable) abstractC3585b).call();
                        if (objCall == null) {
                            EnumC2755d.m4274a(interfaceC3587d);
                        } else {
                            try {
                                c0990e.getClass();
                                C1706l.m2834f(interfaceC3587d, ((Iterable) objCall).iterator());
                            } catch (Throwable th) {
                                AbstractC1031d.m1292v(th);
                                EnumC2755d.m4275b(th, interfaceC3587d);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        AbstractC1031d.m1292v(th2);
                        EnumC2755d.m4275b(th2, interfaceC3587d);
                        return;
                    }
                }
                break;
            default:
                AbstractC3593j abstractC3593jMo3780a = ((AbstractC3594k) this.f4331f).mo3780a();
                boolean z9 = interfaceC3587d instanceof InterfaceC1498a;
                int i10 = this.f4330e;
                AbstractC3585b abstractC3585b2 = this.f4328c;
                if (!z9) {
                    abstractC3585b2.m5714d(new C1703j0(interfaceC3587d, abstractC3593jMo3780a, i10));
                } else {
                    abstractC3585b2.m5714d(new C1701i0((InterfaceC1498a) interfaceC3587d, abstractC3593jMo3780a, i10));
                }
                break;
        }
    }

    public C1685a0(AbstractC3585b abstractC3585b, AbstractC3594k abstractC3594k, int i10) {
        super(abstractC3585b);
        this.f4331f = abstractC3594k;
        this.f4330e = i10;
    }

    public C1685a0(C1724w c1724w, int i10) {
        super(c1724w);
        this.f4331f = AbstractC1314b.f3133a;
        this.f4330e = i10;
    }
}
