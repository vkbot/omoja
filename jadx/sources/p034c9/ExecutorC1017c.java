package p034c9;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0062x;
import p224v8.AbstractC3417r0;
import p224v8.AbstractC3422t;

/* JADX INFO: renamed from: c9.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ExecutorC1017c extends AbstractC3417r0 implements Executor {

    /* JADX INFO: renamed from: b */
    public static final ExecutorC1017c f1041b = new ExecutorC1017c();

    /* JADX INFO: renamed from: c */
    public static final AbstractC3422t f1042c = C1026l.f1058b.limitedParallelism(AbstractC0035a.m102i(RangesKt.coerceAtLeast(64, AbstractC0062x.f153a), 12, "kotlinx.coroutines.io.parallelism"));

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        f1042c.dispatch(coroutineContext, runnable);
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        f1042c.dispatchYield(coroutineContext, runnable);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override // p224v8.AbstractC3422t
    public final AbstractC3422t limitedParallelism(int i10) {
        return C1026l.f1058b.limitedParallelism(i10);
    }

    @Override // p224v8.AbstractC3422t
    public final String toString() {
        return "Dispatchers.IO";
    }
}
