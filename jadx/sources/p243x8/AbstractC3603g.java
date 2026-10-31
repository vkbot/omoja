package p243x8;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import org.apache.commons.net.ftp.C2930a;
import p010a9.C0061w;
import p046d9.C1322h;
import p099j1.C1929i;
import p224v8.AbstractC3365a;
import p224v8.C3367a1;
import p224v8.C3382f1;
import p224v8.C3395k;

/* JADX INFO: renamed from: x8.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3603g extends AbstractC3365a implements InterfaceC3602f {

    /* JADX INFO: renamed from: e */
    public final C3598b f10693e;

    public AbstractC3603g(CoroutineContext coroutineContext, C3598b c3598b) {
        super(coroutineContext, true);
        this.f10693e = c3598b;
    }

    /* JADX INFO: renamed from: M */
    public final void m5752M(C1322h c1322h) {
        C3598b c3598b = this.f10693e;
        c3598b.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C3598b.f10668k;
        while (!atomicReferenceFieldUpdater.compareAndSet(c3598b, null, c1322h)) {
            if (atomicReferenceFieldUpdater.get(c3598b) != null) {
                while (true) {
                    Object obj = atomicReferenceFieldUpdater.get(c3598b);
                    C0061w c0061w = AbstractC3600d.f10687q;
                    if (obj != c0061w) {
                        if (obj == AbstractC3600d.f10688r) {
                            C1929i.m3030l("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            C2930a.m4661c(obj, "Another handler is already registered: ");
                            return;
                        }
                    }
                    C0061w c0061w2 = AbstractC3600d.f10688r;
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(c3598b, c0061w, c0061w2)) {
                            c1322h.invoke(c3598b.m5740m());
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(c3598b) == c0061w);
                }
            }
        }
    }

    @Override // p224v8.C3388h1, p224v8.InterfaceC3439z0
    /* JADX INFO: renamed from: c */
    public final void mo5330c(CancellationException cancellationException) {
        Object objM5341w = m5341w();
        if (objM5341w instanceof C3395k) {
            return;
        }
        if ((objM5341w instanceof C3382f1) && ((C3382f1) objM5341w).m5317e()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new C3367a1(mo5280n(), null, this);
        }
        mo5333l(cancellationException);
    }

    @Override // p243x8.InterfaceC3614r
    /* JADX INFO: renamed from: e */
    public final Object mo5732e(Object obj) {
        return this.f10693e.mo5732e(obj);
    }

    @Override // p243x8.InterfaceC3614r
    /* JADX INFO: renamed from: f */
    public final Object mo5733f(Object obj, Continuation continuation) {
        return this.f10693e.mo5733f(obj, continuation);
    }

    @Override // p224v8.C3388h1
    /* JADX INFO: renamed from: l */
    public final void mo5333l(CancellationException cancellationException) {
        this.f10693e.m5735h(true, cancellationException);
        m5332k(cancellationException);
    }
}
