package p224v8;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0038b0;
import p010a9.C0058t;

/* JADX INFO: renamed from: v8.s1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3421s1 extends C0058t {

    /* JADX INFO: renamed from: f */
    public final ThreadLocal f9908f;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public C3421s1(Continuation continuation, CoroutineContext coroutineContext) {
        C3424t1 c3424t1 = C3424t1.f9910b;
        super(continuation, coroutineContext.get(c3424t1) == null ? coroutineContext.plus(c3424t1) : coroutineContext);
        this.f9908f = new ThreadLocal();
        if (continuation.get$context().get(ContinuationInterceptor.INSTANCE) instanceof AbstractC3422t) {
            return;
        }
        Object objM107b = AbstractC0038b0.m107b(coroutineContext, null);
        AbstractC0038b0.m106a(coroutineContext, objM107b);
        m5356N(coroutineContext, objM107b);
    }

    /* JADX INFO: renamed from: M */
    public final boolean m5355M() {
        boolean z9 = this.threadLocalIsSet && this.f9908f.get() == null;
        this.f9908f.remove();
        return !z9;
    }

    /* JADX INFO: renamed from: N */
    public final void m5356N(CoroutineContext coroutineContext, Object obj) {
        this.threadLocalIsSet = true;
        this.f9908f.set(TuplesKt.m3166to(coroutineContext, obj));
    }

    @Override // p010a9.C0058t, p224v8.C3388h1
    /* JADX INFO: renamed from: j */
    public final void mo137j(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.f9908f.get();
            if (pair != null) {
                AbstractC0038b0.m106a((CoroutineContext) pair.component1(), pair.component2());
            }
            this.f9908f.remove();
        }
        Object objM5349a = AbstractC3401m.m5349a(obj);
        Continuation continuation = this.f147e;
        CoroutineContext coroutineContext = continuation.get$context();
        Object objM107b = AbstractC0038b0.m107b(coroutineContext, null);
        C3421s1 c3421s1M5353b = objM107b != AbstractC0038b0.f106a ? AbstractC3413q.m5353b(continuation, coroutineContext, objM107b) : null;
        try {
            this.f147e.resumeWith(objM5349a);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (c3421s1M5353b == null || c3421s1M5353b.m5355M()) {
                AbstractC0038b0.m106a(coroutineContext, objM107b);
            }
        }
    }
}
