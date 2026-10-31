package a9;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.Volatile;
import v8.f0;
import v8.l0;
import v8.q1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class h extends f0 implements CoroutineStackFrame, Continuation {
    public static final AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_reusableCancellableContinuation");

    @Volatile
    private volatile Object _reusableCancellableContinuation;
    public final v8.t e;
    public final Continuation f;
    public Object g;
    public final Object h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(v8.t tVar, Continuation continuation) {
        super(-1);
        this.e = tVar;
        this.f = continuation;
        this.g = a.b;
        Object objFold = continuation.getContext().fold(0, b0.b);
        objFold.getClass();
        this.h = objFold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final void c(Object obj, CancellationException cancellationException) {
        if (obj instanceof v8.l) {
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineStackFrame getCallerFrame() {
        CoroutineStackFrame coroutineStackFrame = this.f;
        if (coroutineStackFrame instanceof CoroutineStackFrame) {
            return coroutineStackFrame;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext getContext() {
        return this.f.getContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.f0
    public final Object j() {
        Object obj = this.g;
        this.g = a.b;
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void resumeWith(Object obj) {
        Continuation continuation = this.f;
        CoroutineContext context = continuation.getContext();
        Throwable th = Result.exceptionOrNull-impl(obj);
        Object kVar = th == null ? obj : new v8.k(false, th);
        v8.t tVar = this.e;
        if (tVar.isDispatchNeeded(context)) {
            this.g = kVar;
            this.d = 0;
            tVar.dispatch(context, this);
            return;
        }
        l0 l0VarA = q1.a();
        if (l0VarA.b >= 4294967296L) {
            this.g = kVar;
            this.d = 0;
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
            CoroutineContext context2 = continuation.getContext();
            Object objB = b0.b(context2, this.h);
            try {
                continuation.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                b0.a(context2, objB);
                while (l0VarA.V()) {
                }
            } catch (Throwable th2) {
                b0.a(context2, objB);
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                i(th3, null);
            } finally {
                l0VarA.y();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "DispatchedContinuation[" + this.e + ", " + v8.a0.d(this.f) + ']';
    }

    @Override // v8.f0
    public final Continuation e() {
        return this;
    }
}
