package p010a9;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.Volatile;
import p224v8.AbstractC3366a0;
import p224v8.AbstractC3381f0;
import p224v8.AbstractC3398l;
import p224v8.AbstractC3399l0;
import p224v8.AbstractC3415q1;
import p224v8.AbstractC3422t;
import p224v8.C3395k;

/* JADX INFO: renamed from: a9.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C0046h extends AbstractC3381f0 implements CoroutineStackFrame, Continuation {

    /* JADX INFO: renamed from: i */
    public static final AtomicReferenceFieldUpdater f120i = AtomicReferenceFieldUpdater.newUpdater(C0046h.class, Object.class, "_reusableCancellableContinuation");

    @Volatile
    private volatile Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: e */
    public final AbstractC3422t f121e;

    /* JADX INFO: renamed from: f */
    public final Continuation f122f;

    /* JADX INFO: renamed from: g */
    public Object f123g;

    /* JADX INFO: renamed from: h */
    public final Object f124h;

    public C0046h(AbstractC3422t abstractC3422t, Continuation continuation) {
        super(-1);
        this.f121e = abstractC3422t;
        this.f122f = continuation;
        this.f123g = AbstractC0035a.f101b;
        Object objFold = continuation.get$context().fold(0, AbstractC0038b0.f107b);
        objFold.getClass();
        this.f124h = objFold;
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: c */
    public final void mo113c(Object obj, CancellationException cancellationException) {
        if (obj instanceof AbstractC3398l) {
            throw null;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f122f;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f122f.get$context();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: j */
    public final Object mo115j() {
        Object obj = this.f123g;
        this.f123g = AbstractC0035a.f101b;
        return obj;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Continuation continuation = this.f122f;
        CoroutineContext context = continuation.get$context();
        Throwable thM6091exceptionOrNullimpl = Result.m6091exceptionOrNullimpl(obj);
        Object c3395k = thM6091exceptionOrNullimpl == null ? obj : new C3395k(false, thM6091exceptionOrNullimpl);
        AbstractC3422t abstractC3422t = this.f121e;
        if (abstractC3422t.isDispatchNeeded(context)) {
            this.f123g = c3395k;
            this.f9869d = 0;
            abstractC3422t.dispatch(context, this);
            return;
        }
        AbstractC3399l0 abstractC3399l0M5354a = AbstractC3415q1.m5354a();
        if (abstractC3399l0M5354a.f9895b >= 4294967296L) {
            this.f123g = c3395k;
            this.f9869d = 0;
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
            CoroutineContext context2 = continuation.get$context();
            Object objM107b = AbstractC0038b0.m107b(context2, this.f124h);
            try {
                continuation.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                AbstractC0038b0.m106a(context2, objM107b);
                while (abstractC3399l0M5354a.m5347V()) {
                }
            } catch (Throwable th) {
                AbstractC0038b0.m106a(context2, objM107b);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                m5314i(th2, null);
            } finally {
                abstractC3399l0M5354a.m5348y();
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f121e + ", " + AbstractC3366a0.m5285d(this.f122f) + ']';
    }

    @Override // p224v8.AbstractC3381f0
    /* JADX INFO: renamed from: e */
    public final Continuation mo114e() {
        return this;
    }
}
