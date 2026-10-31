package v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.ContinuationInterceptor$DefaultImpls;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext$Element;
import kotlin.coroutines.CoroutineContext$Key;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class t extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final s Key = new s(ContinuationInterceptor.Key, r.b);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t() {
        super(ContinuationInterceptor.Key);
    }

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        dispatch(coroutineContext, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <E extends CoroutineContext$Element> E get(CoroutineContext$Key<E> coroutineContext$Key) {
        return (E) ContinuationInterceptor$DefaultImpls.get(this, coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <T> Continuation<T> interceptContinuation(Continuation<? super T> continuation) {
        return new a9.h(this, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return !(this instanceof r1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t limitedParallelism(int i) {
        a9.a.a(i);
        return new a9.j(this, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CoroutineContext minusKey(CoroutineContext$Key<?> coroutineContext$Key) {
        return ContinuationInterceptor$DefaultImpls.minusKey(this, coroutineContext$Key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void releaseInterceptedContinuation(Continuation<?> continuation) {
        continuation.getClass();
        a9.h hVar = (a9.h) continuation;
        hVar.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.h.i;
        while (atomicReferenceFieldUpdater.get(hVar) == a9.a.c) {
        }
        Object obj = atomicReferenceFieldUpdater.get(hVar);
        e eVar = obj instanceof e ? (e) obj : null;
        if (eVar != null) {
            eVar.o();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return getClass().getSimpleName() + '@' + a0.a(this);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    public final t plus(t tVar) {
        return tVar;
    }
}
