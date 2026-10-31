package x8;

import a9.w;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import v8.a1;
import v8.f1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class g extends v8.a implements f {
    public final b e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(CoroutineContext coroutineContext, b bVar) {
        super(coroutineContext, true);
        this.e = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void M(d9.h hVar) {
        b bVar = this.e;
        bVar.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b.k;
        while (!atomicReferenceFieldUpdater.compareAndSet(bVar, null, hVar)) {
            if (atomicReferenceFieldUpdater.get(bVar) != null) {
                while (true) {
                    Object obj = atomicReferenceFieldUpdater.get(bVar);
                    w wVar = d.q;
                    if (obj != wVar) {
                        if (obj == d.r) {
                            j1.i.l("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            org.apache.commons.net.ftp.a.c(obj, "Another handler is already registered: ");
                            return;
                        }
                    }
                    w wVar2 = d.r;
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(bVar, wVar, wVar2)) {
                            hVar.invoke(bVar.m());
                            return;
                        }
                    } while (atomicReferenceFieldUpdater.get(bVar) == wVar);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    @Override // v8.h1, v8.z0
    public final void c(CancellationException cancellationException) throws a8.a {
        Object objW = w();
        if (objW instanceof v8.k) {
            return;
        }
        if ((objW instanceof f1) && ((f1) objW).e()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new a1(n(), null, this);
        }
        l(cancellationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x8.r
    public final Object e(Object obj) {
        return this.e.e(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x8.r
    public final Object f(Object obj, Continuation continuation) {
        return this.e.f(obj, continuation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    @Override // v8.h1
    public final void l(CancellationException cancellationException) throws a8.a {
        this.e.h(true, cancellationException);
        k(cancellationException);
    }
}
