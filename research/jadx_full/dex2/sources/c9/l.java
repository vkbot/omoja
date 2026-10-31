package c9;

import kotlin.coroutines.CoroutineContext;
import v8.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class l extends t {
    public static final l b = new l();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        d dVar = d.c;
        dVar.b.c(runnable, k.h, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        d dVar = d.c;
        dVar.b.c(runnable, k.h, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final t limitedParallelism(int i) {
        a9.a.a(i);
        return i >= k.d ? this : super.limitedParallelism(i);
    }
}
