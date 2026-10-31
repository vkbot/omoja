package c9;

import a9.x;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import v8.r0;
import v8.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class c extends r0 implements Executor {
    public static final c b = new c();
    public static final t c = l.b.limitedParallelism(a9.a.i(RangesKt.coerceAtLeast(64, x.a), 12, "kotlinx.coroutines.io.parallelism"));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        c.dispatch(coroutineContext, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        c.dispatchYield(coroutineContext, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final t limitedParallelism(int i) {
        return l.b.limitedParallelism(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final String toString() {
        return "Dispatchers.IO";
    }
}
