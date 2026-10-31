package p253y8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import p010a9.C0061w;
import p224v8.C3377e;
import p263z8.AbstractC3763a;
import p263z8.AbstractC3764b;
import p263z8.AbstractC3765c;

/* JADX INFO: renamed from: y8.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3686w extends AbstractC3765c {

    /* JADX INFO: renamed from: a */
    public static final AtomicReferenceFieldUpdater f10916a = AtomicReferenceFieldUpdater.newUpdater(C3686w.class, Object.class, "_state");

    @Volatile
    private volatile Object _state;

    @Override // p263z8.AbstractC3765c
    /* JADX INFO: renamed from: a */
    public final boolean mo5907a(AbstractC3763a abstractC3763a) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10916a;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        atomicReferenceFieldUpdater.set(this, AbstractC3681r.f10902b);
        return true;
    }

    @Override // p263z8.AbstractC3765c
    /* JADX INFO: renamed from: b */
    public final Continuation[] mo5908b(AbstractC3763a abstractC3763a) {
        f10916a.set(this, null);
        return AbstractC3764b.f11220a;
    }

    /* JADX INFO: renamed from: c */
    public final Object m5910c(C3684u c3684u) throws Throwable {
        C3377e c3377e = new C3377e(1, IntrinsicsKt.intercepted(c3684u));
        c3377e.m5307r();
        C0061w c0061w = AbstractC3681r.f10902b;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10916a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, c0061w, c3377e)) {
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != c0061w) {
                Result.Companion companion = Result.INSTANCE;
                c3377e.resumeWith(Result.m6088constructorimpl(Unit.INSTANCE));
                break;
            }
        }
        Object objM5306q = c3377e.m5306q();
        if (objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(c3684u);
        }
        return objM5306q == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM5306q : Unit.INSTANCE;
    }
}
