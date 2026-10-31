package p224v8;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: renamed from: v8.r1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3418r1 extends AbstractC3422t {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f9906b = 0;

    static {
        new C3418r1();
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (coroutineContext.get(AbstractC3433w1.f9915b) != null) {
            throw new ClassCastException();
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // p224v8.AbstractC3422t
    public final AbstractC3422t limitedParallelism(int i10) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // p224v8.AbstractC3422t
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
