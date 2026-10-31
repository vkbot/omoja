package v8;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class s1 extends a9.t {
    public final ThreadLocal f;
    private volatile boolean threadLocalIsSet;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Illegal instructions before constructor call */
    public s1(Continuation continuation, CoroutineContext coroutineContext) {
        t1 t1Var = t1.b;
        super(continuation, coroutineContext.get(t1Var) == null ? coroutineContext.plus(t1Var) : coroutineContext);
        this.f = new ThreadLocal();
        if (continuation.getContext().get(ContinuationInterceptor.Key) instanceof t) {
            return;
        }
        Object objB = a9.b0.b(coroutineContext, null);
        a9.b0.a(coroutineContext, objB);
        N(coroutineContext, objB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean M() {
        boolean z = this.threadLocalIsSet && this.f.get() == null;
        this.f.remove();
        return !z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void N(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.f.set(TuplesKt.to(coroutineContext, obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a9.t, v8.h1
    public final void j(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f.get();
            if (pair != null) {
                a9.b0.a((CoroutineContext) pair.component1(), pair.component2());
            }
            this.f.remove();
        }
        Object objA = m.a(obj);
        Continuation continuation = this.e;
        CoroutineContext context = continuation.getContext();
        Object objB = a9.b0.b(context, null);
        s1 s1VarB = objB != a9.b0.a ? q.b(continuation, context, objB) : null;
        try {
            this.e.resumeWith(objA);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (s1VarB == null || s1VarB.M()) {
                a9.b0.a(context, objB);
            }
        }
    }
}
