package p034c9;

import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0035a;
import p224v8.AbstractC3422t;

/* JADX INFO: renamed from: c9.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1026l extends AbstractC3422t {

    /* JADX INFO: renamed from: b */
    public static final C1026l f1058b = new C1026l();

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        C1018d c1018d = C1018d.f1043c;
        c1018d.f1045b.m1239c(runnable, AbstractC1025k.f1057h, false);
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        C1018d c1018d = C1018d.f1043c;
        c1018d.f1045b.m1239c(runnable, AbstractC1025k.f1057h, true);
    }

    @Override // p224v8.AbstractC3422t
    public final AbstractC3422t limitedParallelism(int i10) {
        AbstractC0035a.m94a(i10);
        return i10 >= AbstractC1025k.f1053d ? this : super.limitedParallelism(i10);
    }
}
