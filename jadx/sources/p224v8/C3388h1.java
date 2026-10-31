package p224v8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.apache.commons.net.ftp.C2930a;
import p009a8.C0029a;
import p010a9.AbstractC0037b;
import p010a9.C0051m;
import p010a9.C0061w;

/* JADX INFO: renamed from: v8.h1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C3388h1 implements InterfaceC3439z0, InterfaceC3403m1 {

    /* JADX INFO: renamed from: b */
    public static final AtomicReferenceFieldUpdater f9881b = AtomicReferenceFieldUpdater.newUpdater(C3388h1.class, Object.class, "_state");

    /* JADX INFO: renamed from: c */
    public static final AtomicReferenceFieldUpdater f9882c = AtomicReferenceFieldUpdater.newUpdater(C3388h1.class, Object.class, "_parentHandle");

    @Volatile
    private volatile Object _parentHandle;

    @Volatile
    private volatile Object _state;

    public C3388h1(boolean z9) {
        this._state = z9 ? AbstractC3366a0.f9849i : AbstractC3366a0.f9848h;
    }

    /* JADX INFO: renamed from: C */
    public static C3389i m5322C(C0051m c0051m) {
        while (c0051m.mo119h()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0051m.f134c;
            C0051m c0051mM120d = c0051m.m120d();
            if (c0051mM120d == null) {
                Object obj = atomicReferenceFieldUpdater.get(c0051m);
                while (true) {
                    c0051m = (C0051m) obj;
                    if (!c0051m.mo119h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(c0051m);
                }
            } else {
                c0051m = c0051mM120d;
            }
        }
        while (true) {
            c0051m = c0051m.m123g();
            if (!c0051m.mo119h()) {
                if (c0051m instanceof C3389i) {
                    return (C3389i) c0051m;
                }
                if (c0051m instanceof C3394j1) {
                    return null;
                }
            }
        }
    }

    /* JADX INFO: renamed from: H */
    public static String m5323H(Object obj) {
        if (!(obj instanceof C3382f1)) {
            if (obj instanceof InterfaceC3426u0) {
                return ((InterfaceC3426u0) obj).mo5292b() ? "Active" : "New";
            }
            return obj instanceof C3395k ? "Cancelled" : "Completed";
        }
        C3382f1 c3382f1 = (C3382f1) obj;
        if (c3382f1.m5317e()) {
            return "Cancelling";
        }
        return c3382f1.m5318f() ? "Completing" : "Active";
    }

    /* JADX INFO: renamed from: A */
    public boolean mo135A() {
        return false;
    }

    /* JADX INFO: renamed from: B */
    public final Object m5324B(Object obj) {
        Object objM5328I;
        do {
            objM5328I = m5328I(m5341w(), obj);
            if (objM5328I == AbstractC3366a0.f9843c) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                C3395k c3395k = obj instanceof C3395k ? (C3395k) obj : null;
                throw new IllegalStateException(str, c3395k != null ? c3395k.f9892a : null);
            }
        } while (objM5328I == AbstractC3366a0.f9845e);
        return objM5328I;
    }

    /* JADX INFO: renamed from: D */
    public final void m5325D(C3394j1 c3394j1, Throwable th) {
        Object objM122f = c3394j1.m122f();
        objM122f.getClass();
        C0029a c0029a = null;
        for (C0051m c0051mM123g = (C0051m) objM122f; !Intrinsics.areEqual(c0051mM123g, c3394j1); c0051mM123g = c0051mM123g.m123g()) {
            if (c0051mM123g instanceof AbstractC3370b1) {
                AbstractC3376d1 abstractC3376d1 = (AbstractC3376d1) c0051mM123g;
                try {
                    abstractC3376d1.mo5295j(th);
                } catch (Throwable th2) {
                    if (c0029a != null) {
                        ExceptionsKt.addSuppressed(c0029a, th2);
                    } else {
                        c0029a = new C0029a("Exception in completion handler " + abstractC3376d1 + " for " + this, 6, th2);
                        Unit unit = Unit.INSTANCE;
                    }
                }
            }
        }
        if (c0029a != null) {
            mo5281y(c0029a);
        }
        m5334m(th);
    }

    /* JADX INFO: renamed from: G */
    public final void m5327G(AbstractC3376d1 abstractC3376d1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C3394j1 c3394j1 = new C3394j1();
        abstractC3376d1.getClass();
        C0051m.f134c.lazySet(c3394j1, abstractC3376d1);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0051m.f133b;
        atomicReferenceFieldUpdater2.lazySet(c3394j1, abstractC3376d1);
        loop0: while (abstractC3376d1.m122f() == abstractC3376d1) {
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(abstractC3376d1, abstractC3376d1, c3394j1)) {
                    c3394j1.m121e(abstractC3376d1);
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(abstractC3376d1) == abstractC3376d1);
        }
        C0051m c0051mM123g = abstractC3376d1.m123g();
        do {
            atomicReferenceFieldUpdater = f9881b;
            if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC3376d1, c0051mM123g)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == abstractC3376d1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [T, java.lang.Throwable] */
    /* JADX INFO: renamed from: I */
    public final Object m5328I(Object obj, Object obj2) {
        if (!(obj instanceof InterfaceC3426u0)) {
            return AbstractC3366a0.f9843c;
        }
        if (((obj instanceof C3396k0) || (obj instanceof AbstractC3376d1)) && !(obj instanceof C3389i) && !(obj2 instanceof C3395k)) {
            InterfaceC3426u0 interfaceC3426u0 = (InterfaceC3426u0) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9881b;
            Object c3429v0 = obj2 instanceof InterfaceC3426u0 ? new C3429v0((InterfaceC3426u0) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, interfaceC3426u0, c3429v0)) {
                if (atomicReferenceFieldUpdater.get(this) != interfaceC3426u0) {
                    return AbstractC3366a0.f9845e;
                }
            }
            mo5276E(obj2);
            m5336p(interfaceC3426u0, obj2);
            return obj2;
        }
        InterfaceC3426u0 interfaceC3426u1 = (InterfaceC3426u0) obj;
        C3394j1 c3394j1M5340v = m5340v(interfaceC3426u1);
        if (c3394j1M5340v == null) {
            return AbstractC3366a0.f9845e;
        }
        C3389i c3389iM5322C = null;
        C3382f1 c3382f1 = interfaceC3426u1 instanceof C3382f1 ? (C3382f1) interfaceC3426u1 : null;
        if (c3382f1 == null) {
            c3382f1 = new C3382f1(c3394j1M5340v, null);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        synchronized (c3382f1) {
            if (c3382f1.m5318f()) {
                return AbstractC3366a0.f9843c;
            }
            C3382f1.f9870c.set(c3382f1, 1);
            if (c3382f1 != interfaceC3426u1) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f9881b;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, interfaceC3426u1, c3382f1)) {
                    if (atomicReferenceFieldUpdater2.get(this) != interfaceC3426u1) {
                        return AbstractC3366a0.f9845e;
                    }
                }
            }
            boolean zM5317e = c3382f1.m5317e();
            C3395k c3395k = obj2 instanceof C3395k ? (C3395k) obj2 : null;
            if (c3395k != null) {
                c3382f1.m5315a(c3395k.f9892a);
            }
            ?? M5316d = !zM5317e ? c3382f1.m5316d() : 0;
            objectRef.element = M5316d;
            Unit unit = Unit.INSTANCE;
            if (M5316d != 0) {
                m5325D(c3394j1M5340v, M5316d);
            }
            C3389i c3389i = interfaceC3426u1 instanceof C3389i ? (C3389i) interfaceC3426u1 : null;
            if (c3389i == null) {
                C3394j1 c3394j1Mo5293c = interfaceC3426u1.mo5293c();
                if (c3394j1Mo5293c != null) {
                    c3389iM5322C = m5322C(c3394j1Mo5293c);
                }
            } else {
                c3389iM5322C = c3389i;
            }
            if (c3389iM5322C != null) {
                while (AbstractC3435x0.m5358a(c3389iM5322C.f9883f, new C3379e1(this, c3382f1, c3389iM5322C, obj2), 1) == C3397k1.f9894b) {
                    c3389iM5322C = m5322C(c3389iM5322C);
                    if (c3389iM5322C == null) {
                    }
                }
                return AbstractC3366a0.f9844d;
            }
            return m5338r(c3382f1, obj2);
        }
    }

    @Override // p224v8.InterfaceC3439z0
    /* JADX INFO: renamed from: b */
    public boolean mo5329b() {
        Object objM5341w = m5341w();
        return (objM5341w instanceof InterfaceC3426u0) && ((InterfaceC3426u0) objM5341w).mo5292b();
    }

    @Override // p224v8.InterfaceC3439z0
    /* JADX INFO: renamed from: c */
    public void mo5330c(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new C3367a1(mo5280n(), null, this);
        }
        mo5333l(cancellationException);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return C3437y0.f9916b;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m5331h(InterfaceC3426u0 interfaceC3426u0, C3394j1 c3394j1, AbstractC3376d1 abstractC3376d1) {
        C0051m c0051mM120d;
        C3385g1 c3385g1 = new C3385g1(abstractC3376d1, this, interfaceC3426u0);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0051m.f134c;
            c0051mM120d = c3394j1.m120d();
            if (c0051mM120d == null) {
                Object obj = atomicReferenceFieldUpdater.get(c3394j1);
                while (true) {
                    c0051mM120d = (C0051m) obj;
                    if (!c0051mM120d.mo119h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(c0051mM120d);
                }
            }
            C0051m.f134c.lazySet(abstractC3376d1, c0051mM120d);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C0051m.f133b;
            atomicReferenceFieldUpdater2.lazySet(abstractC3376d1, c3394j1);
            c3385g1.f9876c = c3394j1;
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(c0051mM120d, c3394j1, c3385g1)) {
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(c0051mM120d) == c3394j1);
        }
        return c3385g1.m104b(c0051mM120d) == null;
    }

    /* JADX INFO: renamed from: j */
    public void mo137j(Object obj) {
        mo136i(obj);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003a A[PHI: r0
  0x003a: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v9 java.lang.Object) binds: [B:3:0x0008, B:16:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0056 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0056, B:31:0x005e, B:37:0x0075, B:35:0x006b, B:36:0x006f), top: B:81:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x005e A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0056, B:31:0x005e, B:37:0x0075, B:35:0x006b, B:36:0x006f), top: B:81:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x006b A[Catch: all -> 0x005c, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0056, B:31:0x005e, B:37:0x0075, B:35:0x006b, B:36:0x006f), top: B:81:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:46:0x008e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0092 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ef A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:81:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:? A[LOOP:2: B:56:0x00af->B:98:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x003e, please report this as an issue */
    /* JADX INFO: renamed from: k */
    public final boolean m5332k(Object obj) {
        Throwable thM5337q;
        Object objM5341w;
        Throwable thM5316d;
        C0061w c0061w;
        InterfaceC3426u0 interfaceC3426u0;
        C3394j1 c3394j1M5340v;
        C3382f1 c3382f1;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Object objM5328I;
        Object objM5328I2 = AbstractC3366a0.f9843c;
        if (mo5291u()) {
            do {
                Object objM5341w2 = m5341w();
                if (!(objM5341w2 instanceof InterfaceC3426u0) || ((objM5341w2 instanceof C3382f1) && ((C3382f1) objM5341w2).m5318f())) {
                    objM5328I2 = AbstractC3366a0.f9843c;
                    break;
                }
                objM5328I2 = m5328I(objM5341w2, new C3395k(false, m5337q(obj)));
            } while (objM5328I2 == AbstractC3366a0.f9845e);
            if (objM5328I2 != AbstractC3366a0.f9844d) {
                if (objM5328I2 == AbstractC3366a0.f9843c) {
                    thM5337q = null;
                    loop1: while (true) {
                        objM5341w = m5341w();
                        if (objM5341w instanceof C3382f1) {
                            synchronized (objM5341w) {
                                if (C3382f1.f9872e.get((C3382f1) objM5341w) == AbstractC3366a0.f9847g) {
                                    c0061w = AbstractC3366a0.f9846f;
                                } else {
                                    boolean zM5317e = ((C3382f1) objM5341w).m5317e();
                                    if (obj == null || !zM5317e) {
                                        if (thM5337q == null) {
                                            thM5337q = m5337q(obj);
                                        }
                                        ((C3382f1) objM5341w).m5315a(thM5337q);
                                    }
                                    thM5316d = zM5317e ? null : ((C3382f1) objM5341w).m5316d();
                                    if (thM5316d != null) {
                                        m5325D(((C3382f1) objM5341w).f9873b, thM5316d);
                                    }
                                    c0061w = AbstractC3366a0.f9843c;
                                }
                            }
                        } else if (objM5341w instanceof InterfaceC3426u0) {
                            if (thM5337q == null) {
                                thM5337q = m5337q(obj);
                            }
                            interfaceC3426u0 = (InterfaceC3426u0) objM5341w;
                            if (interfaceC3426u0.mo5292b()) {
                                c3394j1M5340v = m5340v(interfaceC3426u0);
                                if (c3394j1M5340v == null) {
                                    continue;
                                } else {
                                    c3382f1 = new C3382f1(c3394j1M5340v, thM5337q);
                                    atomicReferenceFieldUpdater = f9881b;
                                    while (true) {
                                        if (atomicReferenceFieldUpdater.compareAndSet(this, interfaceC3426u0, c3382f1)) {
                                            m5325D(c3394j1M5340v, thM5337q);
                                            c0061w = AbstractC3366a0.f9843c;
                                        } else if (atomicReferenceFieldUpdater.get(this) != interfaceC3426u0) {
                                        }
                                    }
                                }
                            } else {
                                objM5328I = m5328I(objM5341w, new C3395k(false, thM5337q));
                                if (objM5328I != AbstractC3366a0.f9843c) {
                                    C2930a.m4661c(objM5341w, "Cannot happen in ");
                                    return false;
                                }
                                if (objM5328I != AbstractC3366a0.f9845e) {
                                    objM5328I2 = objM5328I;
                                    break;
                                }
                            }
                        } else {
                            c0061w = AbstractC3366a0.f9846f;
                        }
                        objM5328I2 = c0061w;
                        break;
                    }
                }
                if (objM5328I2 != AbstractC3366a0.f9843c && objM5328I2 != AbstractC3366a0.f9844d) {
                    if (objM5328I2 == AbstractC3366a0.f9846f) {
                        return false;
                    }
                    mo136i(objM5328I2);
                    return true;
                }
            }
        } else {
            if (objM5328I2 == AbstractC3366a0.f9843c) {
                thM5337q = null;
                loop1: while (true) {
                    objM5341w = m5341w();
                    if (objM5341w instanceof C3382f1) {
                        synchronized (objM5341w) {
                            if (C3382f1.f9872e.get((C3382f1) objM5341w) == AbstractC3366a0.f9847g) {
                                c0061w = AbstractC3366a0.f9846f;
                            } else {
                                boolean zM5317e2 = ((C3382f1) objM5341w).m5317e();
                                if (obj == null) {
                                    if (thM5337q == null) {
                                        thM5337q = m5337q(obj);
                                    }
                                    ((C3382f1) objM5341w).m5315a(thM5337q);
                                } else {
                                    if (thM5337q == null) {
                                        thM5337q = m5337q(obj);
                                    }
                                    ((C3382f1) objM5341w).m5315a(thM5337q);
                                }
                                if (zM5317e2) {
                                }
                                if (thM5316d != null) {
                                    m5325D(((C3382f1) objM5341w).f9873b, thM5316d);
                                }
                                c0061w = AbstractC3366a0.f9843c;
                            }
                        }
                    } else if (objM5341w instanceof InterfaceC3426u0) {
                        if (thM5337q == null) {
                            thM5337q = m5337q(obj);
                        }
                        interfaceC3426u0 = (InterfaceC3426u0) objM5341w;
                        if (interfaceC3426u0.mo5292b()) {
                            c3394j1M5340v = m5340v(interfaceC3426u0);
                            if (c3394j1M5340v == null) {
                                continue;
                            } else {
                                c3382f1 = new C3382f1(c3394j1M5340v, thM5337q);
                                atomicReferenceFieldUpdater = f9881b;
                                while (true) {
                                    if (atomicReferenceFieldUpdater.compareAndSet(this, interfaceC3426u0, c3382f1)) {
                                        m5325D(c3394j1M5340v, thM5337q);
                                        c0061w = AbstractC3366a0.f9843c;
                                    } else if (atomicReferenceFieldUpdater.get(this) != interfaceC3426u0) {
                                    }
                                }
                            }
                        } else {
                            objM5328I = m5328I(objM5341w, new C3395k(false, thM5337q));
                            if (objM5328I != AbstractC3366a0.f9843c) {
                                C2930a.m4661c(objM5341w, "Cannot happen in ");
                                return false;
                            }
                            if (objM5328I != AbstractC3366a0.f9845e) {
                                objM5328I2 = objM5328I;
                                break;
                            }
                        }
                    } else {
                        c0061w = AbstractC3366a0.f9846f;
                    }
                    objM5328I2 = c0061w;
                    break;
                }
            }
            if (objM5328I2 != AbstractC3366a0.f9843c) {
                if (objM5328I2 == AbstractC3366a0.f9846f) {
                    return false;
                }
                mo136i(objM5328I2);
                return true;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: l */
    public void mo5333l(CancellationException cancellationException) {
        m5332k(cancellationException);
    }

    /* JADX INFO: renamed from: m */
    public final boolean m5334m(Throwable th) {
        if (mo135A()) {
            return true;
        }
        boolean z9 = th instanceof CancellationException;
        InterfaceC3386h interfaceC3386h = (InterfaceC3386h) f9882c.get(this);
        if (interfaceC3386h == null || interfaceC3386h == C3397k1.f9894b) {
            return z9;
        }
        return interfaceC3386h.mo5321a(th) || z9;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
    }

    /* JADX INFO: renamed from: n */
    public String mo5280n() {
        return "Job was cancelled";
    }

    /* JADX INFO: renamed from: o */
    public boolean mo5335o(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return m5332k(th) && mo5290t();
    }

    /* JADX INFO: renamed from: p */
    public final void m5336p(InterfaceC3426u0 interfaceC3426u0, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9882c;
        InterfaceC3386h interfaceC3386h = (InterfaceC3386h) atomicReferenceFieldUpdater.get(this);
        if (interfaceC3386h != null) {
            interfaceC3386h.dispose();
            atomicReferenceFieldUpdater.set(this, C3397k1.f9894b);
        }
        C0029a c0029a = null;
        C3395k c3395k = obj instanceof C3395k ? (C3395k) obj : null;
        Throwable th = c3395k != null ? c3395k.f9892a : null;
        if (interfaceC3426u0 instanceof AbstractC3376d1) {
            try {
                ((AbstractC3376d1) interfaceC3426u0).mo5295j(th);
                return;
            } catch (Throwable th2) {
                mo5281y(new C0029a("Exception in completion handler " + interfaceC3426u0 + " for " + this, 6, th2));
                return;
            }
        }
        C3394j1 c3394j1Mo5293c = interfaceC3426u0.mo5293c();
        if (c3394j1Mo5293c != null) {
            Object objM122f = c3394j1Mo5293c.m122f();
            objM122f.getClass();
            for (C0051m c0051mM123g = (C0051m) objM122f; !Intrinsics.areEqual(c0051mM123g, c3394j1Mo5293c); c0051mM123g = c0051mM123g.m123g()) {
                if (c0051mM123g instanceof AbstractC3376d1) {
                    AbstractC3376d1 abstractC3376d1 = (AbstractC3376d1) c0051mM123g;
                    try {
                        abstractC3376d1.mo5295j(th);
                    } catch (Throwable th3) {
                        if (c0029a != null) {
                            ExceptionsKt.addSuppressed(c0029a, th3);
                        } else {
                            c0029a = new C0029a("Exception in completion handler " + abstractC3376d1 + " for " + this, 6, th3);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
            if (c0029a != null) {
                mo5281y(c0029a);
            }
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
    }

    /* JADX INFO: renamed from: q */
    public final Throwable m5337q(Object obj) {
        Throwable thM5316d;
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new C3367a1(mo5280n(), null, this) : th;
        }
        obj.getClass();
        C3388h1 c3388h1 = (C3388h1) ((InterfaceC3403m1) obj);
        Object objM5341w = c3388h1.m5341w();
        if (objM5341w instanceof C3382f1) {
            thM5316d = ((C3382f1) objM5341w).m5316d();
        } else if (objM5341w instanceof C3395k) {
            thM5316d = ((C3395k) objM5341w).f9892a;
        } else {
            if (objM5341w instanceof InterfaceC3426u0) {
                C2930a.m4661c(objM5341w, "Cannot be cancelling child in this state: ");
                return null;
            }
            thM5316d = null;
        }
        CancellationException cancellationException = thM5316d instanceof CancellationException ? (CancellationException) thM5316d : null;
        return cancellationException == null ? new C3367a1("Parent job is ".concat(m5323H(objM5341w)), thM5316d, c3388h1) : cancellationException;
    }

    /* JADX INFO: renamed from: r */
    public final Object m5338r(C3382f1 c3382f1, Object obj) {
        Object obj2 = null;
        Throwable c3367a1 = null;
        C3395k c3395k = obj instanceof C3395k ? (C3395k) obj : null;
        Throwable th = c3395k != null ? c3395k.f9892a : null;
        synchronized (c3382f1) {
            c3382f1.m5317e();
            ArrayList arrayListM5319g = c3382f1.m5319g(th);
            if (!arrayListM5319g.isEmpty()) {
                int size = arrayListM5319g.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj3 = arrayListM5319g.get(i10);
                    i10++;
                    if (!(((Throwable) obj3) instanceof CancellationException)) {
                        obj2 = obj3;
                        break;
                    }
                }
                c3367a1 = (Throwable) obj2;
                if (c3367a1 == null) {
                    c3367a1 = (Throwable) arrayListM5319g.get(0);
                }
            } else if (c3382f1.m5317e()) {
                c3367a1 = new C3367a1(mo5280n(), null, this);
            }
            if (c3367a1 != null && arrayListM5319g.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListM5319g.size()));
                int size2 = arrayListM5319g.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj4 = arrayListM5319g.get(i11);
                    i11++;
                    Throwable th2 = (Throwable) obj4;
                    if (th2 != c3367a1 && th2 != c3367a1 && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        ExceptionsKt.addSuppressed(c3367a1, th2);
                    }
                }
            }
        }
        if (c3367a1 != null && c3367a1 != th) {
            obj = new C3395k(false, c3367a1);
        }
        if (c3367a1 != null && (m5334m(c3367a1) || mo5342x(c3367a1))) {
            obj.getClass();
            C3395k.f9891b.compareAndSet((C3395k) obj, 0, 1);
        }
        mo5276E(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9881b;
        Object c3429v0 = obj instanceof InterfaceC3426u0 ? new C3429v0((InterfaceC3426u0) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, c3382f1, c3429v0) && atomicReferenceFieldUpdater.get(this) == c3382f1) {
        }
        m5336p(c3382f1, obj);
        return obj;
    }

    /* JADX INFO: renamed from: s */
    public final CancellationException m5339s() {
        CancellationException cancellationException;
        Object objM5341w = m5341w();
        if (objM5341w instanceof C3382f1) {
            Throwable thM5316d = ((C3382f1) objM5341w).m5316d();
            if (thM5316d == null) {
                C2930a.m4661c(this, "Job is still new or active: ");
                return null;
            }
            String strConcat = getClass().getSimpleName().concat(" is cancelling");
            cancellationException = thM5316d instanceof CancellationException ? (CancellationException) thM5316d : null;
            return cancellationException == null ? new C3367a1(strConcat, thM5316d, this) : cancellationException;
        }
        if (objM5341w instanceof InterfaceC3426u0) {
            C2930a.m4661c(this, "Job is still new or active: ");
            return null;
        }
        if (!(objM5341w instanceof C3395k)) {
            return new C3367a1(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        Throwable th = ((C3395k) objM5341w).f9892a;
        cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new C3367a1(mo5280n(), th, this) : cancellationException;
    }

    /* JADX INFO: renamed from: t */
    public boolean mo5290t() {
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName() + '{' + m5323H(m5341w()) + '}');
        sb.append('@');
        sb.append(AbstractC3366a0.m5282a(this));
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    public boolean mo5291u() {
        return false;
    }

    /* JADX INFO: renamed from: v */
    public final C3394j1 m5340v(InterfaceC3426u0 interfaceC3426u0) {
        C3394j1 c3394j1Mo5293c = interfaceC3426u0.mo5293c();
        if (c3394j1Mo5293c != null) {
            return c3394j1Mo5293c;
        }
        if (interfaceC3426u0 instanceof C3396k0) {
            return new C3394j1();
        }
        if (interfaceC3426u0 instanceof AbstractC3376d1) {
            m5327G((AbstractC3376d1) interfaceC3426u0);
            return null;
        }
        C2930a.m4661c(interfaceC3426u0, "State should have list: ");
        return null;
    }

    /* JADX INFO: renamed from: w */
    public final Object m5341w() {
        while (true) {
            Object obj = f9881b.get(this);
            if (!(obj instanceof AbstractC0037b)) {
                return obj;
            }
            ((AbstractC0037b) obj).m104b(this);
        }
    }

    /* JADX INFO: renamed from: x */
    public boolean mo5342x(Throwable th) {
        return false;
    }

    /* JADX INFO: renamed from: z */
    public final void m5343z(InterfaceC3439z0 interfaceC3439z0) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9882c;
        C3397k1 c3397k1 = C3397k1.f9894b;
        if (interfaceC3439z0 == null) {
            atomicReferenceFieldUpdater.set(this, c3397k1);
            return;
        }
        C3388h1 c3388h1 = (C3388h1) interfaceC3439z0;
        loop0: while (true) {
            Object objM5341w = c3388h1.m5341w();
            boolean z9 = objM5341w instanceof C3396k0;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f9881b;
            if (!z9) {
                if (!(objM5341w instanceof C3423t0)) {
                    break;
                }
                C3394j1 c3394j1 = ((C3423t0) objM5341w).f9909b;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(c3388h1, objM5341w, c3394j1)) {
                        c3388h1.getClass();
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(c3388h1) == objM5341w);
            } else {
                if (((C3396k0) objM5341w).f9893b) {
                    break;
                }
                C3396k0 c3396k0 = AbstractC3366a0.f9849i;
                do {
                    if (atomicReferenceFieldUpdater2.compareAndSet(c3388h1, objM5341w, c3396k0)) {
                        c3388h1.getClass();
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater2.get(c3388h1) == objM5341w);
            }
        }
        InterfaceC3386h interfaceC3386h = (InterfaceC3386h) AbstractC3435x0.m5358a(c3388h1, new C3389i(this), 2);
        atomicReferenceFieldUpdater.set(this, interfaceC3386h);
        if (m5341w() instanceof InterfaceC3426u0) {
            return;
        }
        interfaceC3386h.dispose();
        atomicReferenceFieldUpdater.set(this, c3397k1);
    }

    /* JADX INFO: renamed from: F */
    public void m5326F() {
    }

    /* JADX INFO: renamed from: E */
    public void mo5276E(Object obj) {
    }

    /* JADX INFO: renamed from: i */
    public void mo136i(Object obj) {
    }

    /* JADX INFO: renamed from: y */
    public void mo5281y(C0029a c0029a) {
        throw c0029a;
    }
}
