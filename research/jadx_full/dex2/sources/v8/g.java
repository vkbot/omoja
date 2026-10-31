package v8;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class g extends b1 {
    public final e f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(e eVar) {
        this.f = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        j((Throwable) obj);
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d1
    public final void j(Throwable th) {
        CancellationException cancellationExceptionS = i().s();
        e eVar = this.f;
        if (eVar.v()) {
            Continuation continuation = eVar.e;
            continuation.getClass();
            a9.h hVar = (a9.h) continuation;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.h.i;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(hVar);
                a9.w wVar = a9.a.c;
                if (Intrinsics.areEqual(obj, wVar)) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(hVar, wVar, cancellationExceptionS)) {
                        if (atomicReferenceFieldUpdater.get(hVar) != wVar) {
                        }
                    }
                    return;
                } else {
                    if (obj instanceof Throwable) {
                        return;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(hVar, obj, null)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(hVar) == obj);
                }
            }
        }
        eVar.n(cancellationExceptionS);
        if (eVar.v()) {
            return;
        }
        eVar.o();
    }
}
