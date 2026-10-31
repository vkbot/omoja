package p224v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;

/* JADX INFO: renamed from: v8.x0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3435x0 {
    /* JADX WARN: Code duplicated, block: B:102:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x00c5 A[EDGE_INSN: B:103:0x00c5->B:81:0x00c5 BREAK  A[LOOP:0: B:20:0x002b->B:111:0x002b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x002b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00bf  */
    /* JADX INFO: renamed from: a */
    public static InterfaceC3390i0 m5358a(InterfaceC3439z0 interfaceC3439z0, AbstractC3376d1 abstractC3376d1, int i10) {
        AbstractC3376d1 c3432w0;
        Throwable thM5316d;
        boolean z9 = (i10 & 1) == 0;
        boolean z10 = (i10 & 2) != 0;
        C3388h1 c3388h1 = (C3388h1) interfaceC3439z0;
        c3388h1.getClass();
        if (z9) {
            c3432w0 = abstractC3376d1 instanceof AbstractC3370b1 ? (AbstractC3370b1) abstractC3376d1 : null;
            if (c3432w0 == null) {
                c3432w0 = new C3432w0(abstractC3376d1);
            }
        } else {
            c3432w0 = abstractC3376d1;
        }
        c3432w0.f9857e = c3388h1;
        loop0: while (true) {
            Object objM5341w = c3388h1.m5341w();
            if (objM5341w instanceof C3396k0) {
                C3396k0 c3396k0 = (C3396k0) objM5341w;
                if (c3396k0.f9893b) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C3388h1.f9881b;
                    while (!atomicReferenceFieldUpdater.compareAndSet(c3388h1, objM5341w, c3432w0)) {
                        if (atomicReferenceFieldUpdater.get(c3388h1) != objM5341w) {
                        }
                    }
                    break loop0;
                }
                C3394j1 c3394j1 = new C3394j1();
                Object c3423t0 = c3396k0.f9893b ? c3394j1 : new C3423t0(c3394j1);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C3388h1.f9881b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(c3388h1, c3396k0, c3423t0) && atomicReferenceFieldUpdater2.get(c3388h1) == c3396k0) {
                }
            } else {
                if (!(objM5341w instanceof InterfaceC3426u0)) {
                    if (z10) {
                        C3395k c3395k = objM5341w instanceof C3395k ? (C3395k) objM5341w : null;
                        abstractC3376d1.invoke(c3395k != null ? c3395k.f9892a : null);
                    }
                    return C3397k1.f9894b;
                }
                InterfaceC3426u0 interfaceC3426u0 = (InterfaceC3426u0) objM5341w;
                C3394j1 c3394j1Mo5293c = interfaceC3426u0.mo5293c();
                if (c3394j1Mo5293c == null) {
                    c3388h1.m5327G((AbstractC3376d1) objM5341w);
                } else {
                    InterfaceC3390i0 interfaceC3390i0 = C3397k1.f9894b;
                    if (z9 && (objM5341w instanceof C3382f1)) {
                        synchronized (objM5341w) {
                            try {
                                thM5316d = ((C3382f1) objM5341w).m5316d();
                                if (thM5316d == null || ((abstractC3376d1 instanceof C3389i) && !((C3382f1) objM5341w).m5318f())) {
                                    if (c3388h1.m5331h((InterfaceC3426u0) objM5341w, c3394j1Mo5293c, c3432w0)) {
                                        if (thM5316d == null) {
                                            return c3432w0;
                                        }
                                        interfaceC3390i0 = c3432w0;
                                    }
                                }
                                Unit unit = Unit.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (thM5316d != null) {
                            if (z10) {
                                abstractC3376d1.invoke(thM5316d);
                            }
                            return interfaceC3390i0;
                        }
                        if (c3388h1.m5331h(interfaceC3426u0, c3394j1Mo5293c, c3432w0)) {
                            break;
                            break;
                        }
                    } else {
                        thM5316d = null;
                        if (thM5316d != null) {
                            if (z10) {
                                abstractC3376d1.invoke(thM5316d);
                            }
                            return interfaceC3390i0;
                        }
                        if (c3388h1.m5331h(interfaceC3426u0, c3394j1Mo5293c, c3432w0)) {
                            break;
                        }
                    }
                }
            }
        }
        return c3432w0;
    }
}
