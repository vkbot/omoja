package p034c9;

import kotlin.coroutines.CoroutineContext;
import p224v8.AbstractC3417r0;

/* JADX INFO: renamed from: c9.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1021g extends AbstractC3417r0 {

    /* JADX INFO: renamed from: b */
    public ExecutorC1016b f1045b;

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        ExecutorC1016b.m1235y(this.f1045b, runnable, 6);
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        ExecutorC1016b.m1235y(this.f1045b, runnable, 2);
    }
}
