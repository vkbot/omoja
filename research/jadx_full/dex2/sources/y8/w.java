package y8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class w extends z8.c {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(w.class, Object.class, "_state");

    @Volatile
    private volatile Object _state;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z8.c
    public final boolean a(z8.a aVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        atomicReferenceFieldUpdater.set(this, r.b);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z8.c
    public final Continuation[] b(z8.a aVar) {
        a.set(this, null);
        return z8.b.a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c(u uVar) throws Throwable {
        v8.e eVar = new v8.e(1, IntrinsicsKt.intercepted(uVar));
        eVar.r();
        a9.w wVar = r.b;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
            if (atomicReferenceFieldUpdater.compareAndSet(this, wVar, eVar)) {
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != wVar) {
                Result$Companion result$Companion = Result.Companion;
                eVar.resumeWith(Result.constructor-impl(Unit.INSTANCE));
                break;
            }
        }
        Object objQ = eVar.q();
        if (objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(uVar);
        }
        return objQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objQ : Unit.INSTANCE;
    }
}
