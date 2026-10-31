package p046d9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import p010a9.AbstractC0059u;
import p010a9.C0061w;
import p224v8.C3377e;
import p224v8.InterfaceC3374d;
import p224v8.InterfaceC3427u1;

/* JADX INFO: renamed from: d9.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1317c implements InterfaceC3374d, InterfaceC3427u1 {

    /* JADX INFO: renamed from: b */
    public final C3377e f3140b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1319e f3141c;

    public C1317c(C1319e c1319e, C3377e c3377e) {
        this.f3141c = c1319e;
        this.f3140b = c3377e;
    }

    @Override // p224v8.InterfaceC3374d
    /* JADX INFO: renamed from: a */
    public final C0061w mo2358a(Object obj, Function1 function1) {
        C1319e c1319e = this.f3141c;
        C1316b c1316b = new C1316b(c1319e, this, 1);
        C0061w c0061wMo2358a = this.f3140b.mo2358a((Unit) obj, c1316b);
        if (c0061wMo2358a != null) {
            C1319e.f3143g.set(c1319e, null);
        }
        return c0061wMo2358a;
    }

    @Override // p224v8.InterfaceC3427u1
    /* JADX INFO: renamed from: b */
    public final void mo2359b(AbstractC0059u abstractC0059u, int i10) {
        this.f3140b.mo2359b(abstractC0059u, i10);
    }

    @Override // p224v8.InterfaceC3374d
    /* JADX INFO: renamed from: d */
    public final void mo2360d(Object obj, Function1 function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1319e.f3143g;
        C1319e c1319e = this.f3141c;
        atomicReferenceFieldUpdater.set(c1319e, null);
        C1316b c1316b = new C1316b(c1319e, this, 0);
        this.f3140b.mo2360d((Unit) obj, c1316b);
    }

    @Override // p224v8.InterfaceC3374d
    /* JADX INFO: renamed from: g */
    public final void mo2361g(Object obj) {
        this.f3140b.mo2361g(obj);
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext */
    public final CoroutineContext get$context() {
        return this.f3140b.f9862f;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        this.f3140b.resumeWith(obj);
    }
}
