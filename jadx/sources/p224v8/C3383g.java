package p224v8;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import p010a9.AbstractC0035a;
import p010a9.C0046h;
import p010a9.C0061w;

/* JADX INFO: renamed from: v8.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3383g extends AbstractC3370b1 {

    /* JADX INFO: renamed from: f */
    public final C3377e f9874f;

    public C3383g(C3377e c3377e) {
        this.f9874f = c3377e;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        mo5295j((Throwable) obj);
        return Unit.INSTANCE;
    }

    @Override // p224v8.AbstractC3376d1
    /* JADX INFO: renamed from: j */
    public final void mo5295j(Throwable th) {
        CancellationException cancellationExceptionM5339s = m5294i().m5339s();
        C3377e c3377e = this.f9874f;
        if (c3377e.m5311v()) {
            Continuation continuation = c3377e.f9861e;
            continuation.getClass();
            C0046h c0046h = (C0046h) continuation;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0046h.f120i;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(c0046h);
                C0061w c0061w = AbstractC0035a.f102c;
                if (Intrinsics.areEqual(obj, c0061w)) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(c0046h, c0061w, cancellationExceptionM5339s)) {
                        if (atomicReferenceFieldUpdater.get(c0046h) != c0061w) {
                        }
                    }
                    return;
                } else {
                    if (obj instanceof Throwable) {
                        return;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(c0046h, obj, null)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(c0046h) == obj);
                }
            }
        }
        c3377e.m5303n(cancellationExceptionM5339s);
        if (c3377e.m5311v()) {
            return;
        }
        c3377e.m5304o();
    }
}
