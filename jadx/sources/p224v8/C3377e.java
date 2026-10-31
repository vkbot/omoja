package p224v8;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import org.apache.commons.net.ftp.C2930a;
import p009a8.C0029a;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0059u;
import p010a9.C0046h;
import p010a9.C0061w;
import p099j1.C1929i;

/* JADX INFO: renamed from: v8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3377e extends AbstractC3381f0 implements InterfaceC3374d, CoroutineStackFrame, InterfaceC3427u1 {

    /* JADX INFO: renamed from: g */
    public static final AtomicIntegerFieldUpdater f9858g = AtomicIntegerFieldUpdater.newUpdater(C3377e.class, "_decisionAndIndex");

    /* JADX INFO: renamed from: h */
    public static final AtomicReferenceFieldUpdater f9859h = AtomicReferenceFieldUpdater.newUpdater(C3377e.class, Object.class, "_state");

    /* JADX INFO: renamed from: i */
    public static final AtomicReferenceFieldUpdater f9860i = AtomicReferenceFieldUpdater.newUpdater(C3377e.class, Object.class, "_parentHandle");

    @Volatile
    private volatile int _decisionAndIndex;

    @Volatile
    private volatile Object _parentHandle;

    @Volatile
    private volatile Object _state;

    /* JADX INFO: renamed from: e */
    public final Continuation f9861e;

    /* JADX INFO: renamed from: f */
    public final CoroutineContext f9862f;

    public C3377e(int i10, Continuation continuation) {
        super(i10);
        this.f9861e = continuation;
        this.f9862f = continuation.get$context();
        this._decisionAndIndex = 536870911;
        this._state = C3368b.f9851b;
    }

    /* JADX INFO: renamed from: w */
    public static void m5296w(InterfaceC3400l1 interfaceC3400l1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + interfaceC3400l1 + ", already has " + obj).toString());
    }

    /* JADX INFO: renamed from: z */
    public static Object m5297z(InterfaceC3400l1 interfaceC3400l1, Object obj, int i10, Function1 function1) {
        if (obj instanceof C3395k) {
            return obj;
        }
        if (i10 != 1 && i10 != 2) {
            return obj;
        }
        if (function1 != null || (interfaceC3400l1 instanceof C3393j0)) {
            return new C3392j(obj, interfaceC3400l1 instanceof C3393j0 ? (C3393j0) interfaceC3400l1 : null, function1, (CancellationException) null, 16);
        }
        return obj;
    }

    @Override // p224v8.InterfaceC3374d
    /* JADX INFO: renamed from: a */
    public final C0061w mo2358a(Object obj, Function1 function1) {
        C0061w c0061w = AbstractC3366a0.f9841a;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9859h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof InterfaceC3400l1)) {
                return null;
            }
            Object objM5297z = m5297z((InterfaceC3400l1) obj2, obj, this.f9869d, function1);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objM5297z)) {
                    if (!m5311v()) {
                        m5304o();
                    }
                    return c0061w;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }

    @Override // p224v8.InterfaceC3427u1
    /* JADX INFO: renamed from: b */
    public final void mo2359b(AbstractC0059u abstractC0059u, int i10) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i11;
        do {
            atomicIntegerFieldUpdater = f9858g;
            i11 = atomicIntegerFieldUpdater.get(this);
            if ((i11 & 536870911) != 536870911) {
                C1929i.m3030l("invokeOnCancellation should be called at most once");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        m5310u(abstractC0059u);
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: c */
    public final void mo113c(Object obj, CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9859h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof InterfaceC3400l1) {
                C1929i.m3030l("Not completed");
                return;
            }
            if (obj2 instanceof C3395k) {
                return;
            }
            if (!(obj2 instanceof C3392j)) {
                cancellationException2 = cancellationException;
                C3392j c3392j = new C3392j(obj2, (C3393j0) null, (Function1) null, cancellationException2, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, c3392j)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    }
                }
                return;
            }
            C3392j c3392j2 = (C3392j) obj2;
            if (c3392j2.f9888e != null) {
                C1929i.m3030l("Must be called at most once");
                return;
            }
            C3392j c3392jM5344a = C3392j.m5344a(c3392j2, null, cancellationException, 15);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, c3392jM5344a)) {
                    C3393j0 c3393j0 = c3392j2.f9885b;
                    if (c3393j0 != null) {
                        m5300k(c3393j0, cancellationException);
                    }
                    Function1 function1 = c3392j2.f9886c;
                    if (function1 != null) {
                        m5301l(function1, cancellationException);
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
            cancellationException2 = cancellationException;
            cancellationException = cancellationException2;
        }
    }

    @Override // p224v8.InterfaceC3374d
    /* JADX INFO: renamed from: d */
    public final void mo2360d(Object obj, Function1 function1) {
        m5313y(obj, this.f9869d, function1);
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: e */
    public final Continuation mo114e() {
        return this.f9861e;
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: f */
    public final Throwable mo5298f(Object obj) {
        Throwable thMo5298f = super.mo5298f(obj);
        if (thMo5298f != null) {
            return thMo5298f;
        }
        return null;
    }

    @Override // p224v8.InterfaceC3374d
    /* JADX INFO: renamed from: g */
    public final void mo2361g(Object obj) {
        m5305p(this.f9869d);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f9861e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f9862f;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: h */
    public final Object mo5299h(Object obj) {
        return obj instanceof C3392j ? ((C3392j) obj).f9884a : obj;
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: j */
    public final Object mo115j() {
        return f9859h.get(this);
    }

    /* JADX INFO: renamed from: k */
    public final void m5300k(C3393j0 c3393j0, Throwable th) {
        try {
            c3393j0.m5345a(th);
        } catch (Throwable th2) {
            AbstractC3431w.m5357a(new C0029a("Exception in invokeOnCancellation handler for " + this, 6, th2), this.f9862f);
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m5301l(Function1 function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            AbstractC3431w.m5357a(new C0029a("Exception in resume onCancellation handler for " + this, 6, th2), this.f9862f);
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m5302m(AbstractC0059u abstractC0059u, Throwable th) {
        CoroutineContext coroutineContext = this.f9862f;
        int i10 = f9858g.get(this) & 536870911;
        if (i10 == 536870911) {
            C1929i.m3030l("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            abstractC0059u.mo140g(i10, coroutineContext);
        } catch (Throwable th2) {
            AbstractC3431w.m5357a(new C0029a("Exception in invokeOnCancellation handler for " + this, 6, th2), coroutineContext);
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m5303n(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9859h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof InterfaceC3400l1)) {
                return;
            }
            C3380f c3380f = new C3380f(this, th, (obj instanceof C3393j0) || (obj instanceof AbstractC0059u));
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c3380f)) {
                    InterfaceC3400l1 interfaceC3400l1 = (InterfaceC3400l1) obj;
                    if (interfaceC3400l1 instanceof C3393j0) {
                        m5300k((C3393j0) obj, th);
                    } else if (interfaceC3400l1 instanceof AbstractC0059u) {
                        m5302m((AbstractC0059u) obj, th);
                    }
                    if (!m5311v()) {
                        m5304o();
                    }
                    m5305p(this.f9869d);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj);
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m5304o() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9860i;
        InterfaceC3390i0 interfaceC3390i0 = (InterfaceC3390i0) atomicReferenceFieldUpdater.get(this);
        if (interfaceC3390i0 == null) {
            return;
        }
        interfaceC3390i0.dispose();
        atomicReferenceFieldUpdater.set(this, C3397k1.f9894b);
    }

    /* JADX INFO: renamed from: p */
    public final void m5305p(int i10) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i11;
        do {
            atomicIntegerFieldUpdater = f9858g;
            i11 = atomicIntegerFieldUpdater.get(this);
            int i12 = i11 >> 29;
            if (i12 != 0) {
                if (i12 != 1) {
                    C1929i.m3030l("Already resumed");
                    return;
                }
                boolean z9 = i10 == 4;
                Continuation continuation = this.f9861e;
                if (!z9 && (continuation instanceof C0046h)) {
                    boolean z10 = i10 == 1 || i10 == 2;
                    int i13 = this.f9869d;
                    if (z10 == (i13 == 1 || i13 == 2)) {
                        C0046h c0046h = (C0046h) continuation;
                        AbstractC3422t abstractC3422t = c0046h.f121e;
                        CoroutineContext context = c0046h.f122f.get$context();
                        if (abstractC3422t.isDispatchNeeded(context)) {
                            abstractC3422t.dispatch(context, this);
                            return;
                        }
                        AbstractC3399l0 abstractC3399l0M5354a = AbstractC3415q1.m5354a();
                        if (abstractC3399l0M5354a.f9895b >= 4294967296L) {
                            ArrayDeque arrayDeque = abstractC3399l0M5354a.f9897d;
                            if (arrayDeque == null) {
                                arrayDeque = new ArrayDeque();
                                abstractC3399l0M5354a.f9897d = arrayDeque;
                            }
                            arrayDeque.addLast(this);
                            return;
                        }
                        abstractC3399l0M5354a.m5346S(true);
                        try {
                            AbstractC3384g0.m5320a(this, continuation, true);
                            do {
                            } while (abstractC3399l0M5354a.m5347V());
                        } catch (Throwable th) {
                            try {
                                m5314i(th, null);
                            } finally {
                                abstractC3399l0M5354a.m5348y();
                            }
                        }
                        return;
                    }
                }
                AbstractC3384g0.m5320a(this, continuation, z9);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, BasicMeasure.EXACTLY + (536870911 & i11)));
    }

    /* JADX INFO: renamed from: q */
    public final Object m5306q() throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i10;
        InterfaceC3439z0 interfaceC3439z0;
        boolean zM5311v = m5311v();
        do {
            atomicIntegerFieldUpdater = f9858g;
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 != 2) {
                    C1929i.m3030l("Already suspended");
                    return null;
                }
                if (zM5311v) {
                    m5312x();
                }
                Object obj = f9859h.get(this);
                if (obj instanceof C3395k) {
                    throw ((C3395k) obj).f9892a;
                }
                int i12 = this.f9869d;
                if ((i12 != 1 && i12 != 2) || (interfaceC3439z0 = (InterfaceC3439z0) this.f9862f.get(C3437y0.f9916b)) == null || interfaceC3439z0.mo5329b()) {
                    return mo5299h(obj);
                }
                CancellationException cancellationExceptionM5339s = ((C3388h1) interfaceC3439z0).m5339s();
                mo113c(obj, cancellationExceptionM5339s);
                throw cancellationExceptionM5339s;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 536870912 + (536870911 & i10)));
        if (((InterfaceC3390i0) f9860i.get(this)) == null) {
            m5308s();
        }
        if (zM5311v) {
            m5312x();
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    /* JADX INFO: renamed from: r */
    public final void m5307r() {
        InterfaceC3390i0 interfaceC3390i0M5308s = m5308s();
        if (interfaceC3390i0M5308s == null || (f9859h.get(this) instanceof InterfaceC3400l1)) {
            return;
        }
        interfaceC3390i0M5308s.dispose();
        f9860i.set(this, C3397k1.f9894b);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable thM6091exceptionOrNullimpl = Result.m6091exceptionOrNullimpl(obj);
        if (thM6091exceptionOrNullimpl != null) {
            obj = new C3395k(false, thM6091exceptionOrNullimpl);
        }
        m5313y(obj, this.f9869d, null);
    }

    /* JADX INFO: renamed from: s */
    public final InterfaceC3390i0 m5308s() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) this.f9862f.get(C3437y0.f9916b);
        if (interfaceC3439z0 == null) {
            return null;
        }
        InterfaceC3390i0 interfaceC3390i0M5358a = AbstractC3435x0.m5358a(interfaceC3439z0, new C3383g(this), 2);
        do {
            atomicReferenceFieldUpdater = f9860i;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, interfaceC3390i0M5358a)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return interfaceC3390i0M5358a;
    }

    /* JADX INFO: renamed from: t */
    public final void m5309t(Function1 function1) {
        m5310u(function1 instanceof C3393j0 ? (C3393j0) function1 : new C3393j0(1, function1));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(AbstractC3366a0.m5285d(this.f9861e));
        sb.append("){");
        Object obj = f9859h.get(this);
        if (obj instanceof InterfaceC3400l1) {
            str = "Active";
        } else {
            str = obj instanceof C3380f ? "Cancelled" : "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(AbstractC3366a0.m5282a(this));
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m5310u(InterfaceC3400l1 interfaceC3400l1) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9859h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof C3368b) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, interfaceC3400l1)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                    }
                }
                return;
            }
            boolean z9 = true;
            if (obj instanceof C3393j0 ? true : obj instanceof AbstractC0059u) {
                m5296w(interfaceC3400l1, obj);
                throw null;
            }
            if (obj instanceof C3395k) {
                C3395k c3395k = (C3395k) obj;
                if (!C3395k.f9891b.compareAndSet(c3395k, 0, 1)) {
                    m5296w(interfaceC3400l1, obj);
                    throw null;
                }
                if (obj instanceof C3380f) {
                    Throwable th = c3395k.f9892a;
                    if (interfaceC3400l1 instanceof C3393j0) {
                        m5300k((C3393j0) interfaceC3400l1, th);
                        return;
                    } else {
                        m5302m((AbstractC0059u) interfaceC3400l1, th);
                        return;
                    }
                }
                return;
            }
            if (obj instanceof C3392j) {
                C3392j c3392j = (C3392j) obj;
                if (c3392j.f9885b != null) {
                    m5296w(interfaceC3400l1, obj);
                    throw null;
                }
                if (interfaceC3400l1 instanceof AbstractC0059u) {
                    return;
                }
                C3393j0 c3393j0 = (C3393j0) interfaceC3400l1;
                Throwable th2 = c3392j.f9888e;
                if (th2 != null) {
                    m5300k(c3393j0, th2);
                    return;
                }
                C3392j c3392jM5344a = C3392j.m5344a(c3392j, c3393j0, null, 29);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c3392jM5344a)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z9 = false;
                        break;
                    }
                }
                if (z9) {
                    return;
                }
            } else {
                if (interfaceC3400l1 instanceof AbstractC0059u) {
                    return;
                }
                C3392j c3392j2 = new C3392j(obj, (C3393j0) interfaceC3400l1, (Function1) null, (CancellationException) null, 28);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c3392j2)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z9 = false;
                        break;
                    }
                }
                if (z9) {
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: v */
    public final boolean m5311v() {
        if (this.f9869d != 2) {
            return false;
        }
        Continuation continuation = this.f9861e;
        continuation.getClass();
        C0046h c0046h = (C0046h) continuation;
        c0046h.getClass();
        return C0046h.f120i.get(c0046h) != null;
    }

    /* JADX INFO: renamed from: x */
    public final void m5312x() {
        Continuation continuation = this.f9861e;
        Throwable th = null;
        C0046h c0046h = continuation instanceof C0046h ? (C0046h) continuation : null;
        if (c0046h != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0046h.f120i;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(c0046h);
                C0061w c0061w = AbstractC0035a.f102c;
                if (obj != c0061w) {
                    if (!(obj instanceof Throwable)) {
                        C2930a.m4661c(obj, "Inconsistent state ");
                        return;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(c0046h, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(c0046h) != obj) {
                            C1929i.m3029k("Failed requirement.");
                            return;
                        }
                    }
                    th = (Throwable) obj;
                    break;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(c0046h, c0061w, this)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(c0046h) == c0061w);
            }
            if (th == null) {
                return;
            }
            m5304o();
            m5303n(th);
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m5313y(Object obj, int i10, Function1 function1) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9859h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof InterfaceC3400l1)) {
                if (obj2 instanceof C3380f) {
                    C3380f c3380f = (C3380f) obj2;
                    if (C3380f.f9868c.compareAndSet(c3380f, 0, 1)) {
                        if (function1 != null) {
                            m5301l(function1, c3380f.f9892a);
                            return;
                        }
                        return;
                    }
                }
                C2930a.m4661c(obj, "Already resumed, but proposed with update ");
                return;
            }
            Object objM5297z = m5297z((InterfaceC3400l1) obj2, obj, i10, function1);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objM5297z)) {
                    if (!m5311v()) {
                        m5304o();
                    }
                    m5305p(i10);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }
}
