package p224v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0035a;
import p010a9.C0046h;
import p010a9.C0048j;

/* JADX INFO: renamed from: v8.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3422t extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final C3419s Key = new C3419s(ContinuationInterceptor.INSTANCE, C3416r.f9905b);

    public AbstractC3422t() {
        super(ContinuationInterceptor.INSTANCE);
    }

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        dispatch(coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final <T> Continuation<T> interceptContinuation(Continuation<? super T> continuation) {
        return new C0046h(this, continuation);
    }

    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return !(this instanceof C3418r1);
    }

    public AbstractC3422t limitedParallelism(int i10) {
        AbstractC0035a.m94a(i10);
        return new C0048j(this, i10);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(Continuation<?> continuation) {
        continuation.getClass();
        C0046h c0046h = (C0046h) continuation;
        c0046h.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0046h.f120i;
        while (atomicReferenceFieldUpdater.get(c0046h) == AbstractC0035a.f102c) {
        }
        Object obj = atomicReferenceFieldUpdater.get(c0046h);
        C3377e c3377e = obj instanceof C3377e ? (C3377e) obj : null;
        if (c3377e != null) {
            c3377e.m5304o();
        }
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + AbstractC3366a0.m5282a(this);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    public final AbstractC3422t plus(AbstractC3422t abstractC3422t) {
        return abstractC3422t;
    }
}
