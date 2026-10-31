package v8;

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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class e extends f0 implements d, CoroutineStackFrame, u1 {
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(e.class, "_decisionAndIndex");
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_state");
    public static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_parentHandle");

    @Volatile
    private volatile int _decisionAndIndex;

    @Volatile
    private volatile Object _parentHandle;

    @Volatile
    private volatile Object _state;
    public final Continuation e;
    public final CoroutineContext f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(int i2, Continuation continuation) {
        super(i2);
        this.e = continuation;
        this.f = continuation.getContext();
        this._decisionAndIndex = 536870911;
        this._state = b.b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void w(l1 l1Var, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + l1Var + ", already has " + obj).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object z(l1 l1Var, Object obj, int i2, Function1 function1) {
        if (obj instanceof k) {
            return obj;
        }
        if (i2 != 1 && i2 != 2) {
            return obj;
        }
        if (function1 != null || (l1Var instanceof j0)) {
            return new j(obj, l1Var instanceof j0 ? (j0) l1Var : null, function1, (CancellationException) null, 16);
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d
    public final a9.w a(Object obj, Function1 function1) {
        a9.w wVar = a0.a;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof l1)) {
                return null;
            }
            Object objZ = z((l1) obj2, obj, this.d, function1);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objZ)) {
                    if (!v()) {
                        o();
                    }
                    return wVar;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.u1
    public final void b(a9.u uVar, int i2) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i3;
        do {
            atomicIntegerFieldUpdater = g;
            i3 = atomicIntegerFieldUpdater.get(this);
            if ((i3 & 536870911) != 536870911) {
                j1.i.l("invokeOnCancellation should be called at most once");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, ((i3 >> 29) << 29) + i2));
        u(uVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final void c(Object obj, CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof l1) {
                j1.i.l("Not completed");
                return;
            }
            if (obj2 instanceof k) {
                return;
            }
            if (!(obj2 instanceof j)) {
                cancellationException2 = cancellationException;
                j jVar = new j(obj2, (j0) null, (Function1) null, cancellationException2, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, jVar)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    }
                }
                return;
            }
            j jVar2 = (j) obj2;
            if (jVar2.e != null) {
                j1.i.l("Must be called at most once");
                return;
            }
            j jVarA = j.a(jVar2, null, cancellationException, 15);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, jVarA)) {
                    j0 j0Var = jVar2.b;
                    if (j0Var != null) {
                        k(j0Var, cancellationException);
                    }
                    Function1 function1 = jVar2.c;
                    if (function1 != null) {
                        l(function1, cancellationException);
                        return;
                    }
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
            cancellationException2 = cancellationException;
            cancellationException = cancellationException2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d
    public final void d(Object obj, Function1 function1) {
        y(obj, this.d, function1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final Continuation e() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final Throwable f(Object obj) {
        Throwable thF = super.f(obj);
        if (thF != null) {
            return thF;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d
    public final void g(Object obj) {
        p(this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineStackFrame getCallerFrame() {
        CoroutineStackFrame coroutineStackFrame = this.e;
        if (coroutineStackFrame instanceof CoroutineStackFrame) {
            return coroutineStackFrame;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext getContext() {
        return this.f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final Object h(Object obj) {
        return obj instanceof j ? ((j) obj).a : obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final Object j() {
        return h.get(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(j0 j0Var, Throwable th) {
        try {
            j0Var.a(th);
        } catch (Throwable th2) {
            w.a(new a8.a("Exception in invokeOnCancellation handler for " + this, 6, th2), this.f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(Function1 function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            w.a(new a8.a("Exception in resume onCancellation handler for " + this, 6, th2), this.f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(a9.u uVar, Throwable th) {
        CoroutineContext coroutineContext = this.f;
        int i2 = g.get(this) & 536870911;
        if (i2 == 536870911) {
            j1.i.l("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            uVar.g(i2, coroutineContext);
        } catch (Throwable th2) {
            w.a(new a8.a("Exception in invokeOnCancellation handler for " + this, 6, th2), coroutineContext);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof l1)) {
                return;
            }
            f fVar = new f(this, th, (obj instanceof j0) || (obj instanceof a9.u));
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, fVar)) {
                    l1 l1Var = (l1) obj;
                    if (l1Var instanceof j0) {
                        k((j0) obj, th);
                    } else if (l1Var instanceof a9.u) {
                        m((a9.u) obj, th);
                    }
                    if (!v()) {
                        o();
                    }
                    p(this.d);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void o() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
        i0 i0Var = (i0) atomicReferenceFieldUpdater.get(this);
        if (i0Var == null) {
            return;
        }
        i0Var.dispose();
        atomicReferenceFieldUpdater.set(this, k1.b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void p(int i2) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i3;
        do {
            atomicIntegerFieldUpdater = g;
            i3 = atomicIntegerFieldUpdater.get(this);
            int i4 = i3 >> 29;
            if (i4 != 0) {
                if (i4 != 1) {
                    j1.i.l("Already resumed");
                    return;
                }
                boolean z = i2 == 4;
                Continuation continuation = this.e;
                if (!z && (continuation instanceof a9.h)) {
                    boolean z2 = i2 == 1 || i2 == 2;
                    int i5 = this.d;
                    if (z2 == (i5 == 1 || i5 == 2)) {
                        a9.h hVar = (a9.h) continuation;
                        t tVar = hVar.e;
                        CoroutineContext context = hVar.f.getContext();
                        if (tVar.isDispatchNeeded(context)) {
                            tVar.dispatch(context, this);
                            return;
                        }
                        l0 l0VarA = q1.a();
                        if (l0VarA.b >= 4294967296L) {
                            ArrayDeque arrayDeque = l0VarA.d;
                            if (arrayDeque == null) {
                                arrayDeque = new ArrayDeque();
                                l0VarA.d = arrayDeque;
                            }
                            arrayDeque.addLast(this);
                            return;
                        }
                        l0VarA.S(true);
                        try {
                            g0.a(this, continuation, true);
                            do {
                            } while (l0VarA.V());
                        } catch (Throwable th) {
                            try {
                                i(th, null);
                            } finally {
                                l0VarA.y();
                            }
                        }
                        return;
                    }
                }
                g0.a(this, continuation, z);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i3, 1073741824 + (536870911 & i3)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object q() throws Throwable {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        z0 z0Var;
        boolean zV = v();
        do {
            atomicIntegerFieldUpdater = g;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 2) {
                    j1.i.l("Already suspended");
                    return null;
                }
                if (zV) {
                    x();
                }
                Object obj = h.get(this);
                if (obj instanceof k) {
                    throw ((k) obj).a;
                }
                int i4 = this.d;
                if ((i4 != 1 && i4 != 2) || (z0Var = (z0) this.f.get(y0.b)) == null || z0Var.b()) {
                    return h(obj);
                }
                CancellationException cancellationExceptionS = ((h1) z0Var).s();
                c(obj, cancellationExceptionS);
                throw cancellationExceptionS;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 536870912 + (536870911 & i2)));
        if (((i0) i.get(this)) == null) {
            s();
        }
        if (zV) {
            x();
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r() {
        i0 i0VarS = s();
        if (i0VarS == null || (h.get(this) instanceof l1)) {
            return;
        }
        i0VarS.dispose();
        i.set(this, k1.b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void resumeWith(Object obj) {
        Throwable th = Result.exceptionOrNull-impl(obj);
        if (th != null) {
            obj = new k(false, th);
        }
        y(obj, this.d, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final i0 s() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        z0 z0Var = (z0) this.f.get(y0.b);
        if (z0Var == null) {
            return null;
        }
        i0 i0VarA = x0.a(z0Var, new g(this), 2);
        do {
            atomicReferenceFieldUpdater = i;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, i0VarA)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return i0VarA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(Function1 function1) {
        u(function1 instanceof j0 ? (j0) function1 : new j0(1, function1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(a0.d(this.e));
        sb.append("){");
        Object obj = h.get(this);
        if (obj instanceof l1) {
            str = "Active";
        } else {
            str = obj instanceof f ? "Cancelled" : "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(a0.a(this));
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(l1 l1Var) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof b) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, l1Var)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                    }
                }
                return;
            }
            boolean z = true;
            if (obj instanceof j0 ? true : obj instanceof a9.u) {
                w(l1Var, obj);
                throw null;
            }
            if (obj instanceof k) {
                k kVar = (k) obj;
                if (!k.b.compareAndSet(kVar, 0, 1)) {
                    w(l1Var, obj);
                    throw null;
                }
                if (obj instanceof f) {
                    Throwable th = kVar.a;
                    if (l1Var instanceof j0) {
                        k((j0) l1Var, th);
                        return;
                    } else {
                        m((a9.u) l1Var, th);
                        return;
                    }
                }
                return;
            }
            if (obj instanceof j) {
                j jVar = (j) obj;
                if (jVar.b != null) {
                    w(l1Var, obj);
                    throw null;
                }
                if (l1Var instanceof a9.u) {
                    return;
                }
                j0 j0Var = (j0) l1Var;
                Throwable th2 = jVar.e;
                if (th2 != null) {
                    k(j0Var, th2);
                    return;
                }
                j jVarA = j.a(jVar, j0Var, null, 29);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, jVarA)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    return;
                }
            } else {
                if (l1Var instanceof a9.u) {
                    return;
                }
                j jVar2 = new j(obj, (j0) l1Var, (Function1) null, (CancellationException) null, 28);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, jVar2)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean v() {
        if (this.d != 2) {
            return false;
        }
        Continuation continuation = this.e;
        continuation.getClass();
        a9.h hVar = (a9.h) continuation;
        hVar.getClass();
        return a9.h.i.get(hVar) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void x() {
        Continuation continuation = this.e;
        Throwable th = null;
        a9.h hVar = continuation instanceof a9.h ? (a9.h) continuation : null;
        if (hVar != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.h.i;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(hVar);
                a9.w wVar = a9.a.c;
                if (obj != wVar) {
                    if (!(obj instanceof Throwable)) {
                        org.apache.commons.net.ftp.a.c(obj, "Inconsistent state ");
                        return;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(hVar, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(hVar) != obj) {
                            j1.i.k("Failed requirement.");
                            return;
                        }
                    }
                    th = (Throwable) obj;
                    break;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(hVar, wVar, this)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(hVar) == wVar);
            }
            if (th == null) {
                return;
            }
            o();
            n(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(Object obj, int i2, Function1 function1) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof l1)) {
                if (obj2 instanceof f) {
                    f fVar = (f) obj2;
                    if (f.c.compareAndSet(fVar, 0, 1)) {
                        if (function1 != null) {
                            l(function1, fVar.a);
                            return;
                        }
                        return;
                    }
                }
                org.apache.commons.net.ftp.a.c(obj, "Already resumed, but proposed with update ");
                return;
            }
            Object objZ = z((l1) obj2, obj, i2, function1);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, objZ)) {
                    if (!v()) {
                        o();
                    }
                    p(i2);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }
}
