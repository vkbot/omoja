package d9;

import a9.u;
import a9.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import v8.u1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class c implements v8.d, u1 {
    public final v8.e b;
    public final /* synthetic */ e c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(e eVar, v8.e eVar2) {
        this.c = eVar;
        this.b = eVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d
    public final w a(Object obj, Function1 function1) {
        e eVar = this.c;
        b bVar = new b(eVar, this, 1);
        w wVarA = this.b.a((Unit) obj, bVar);
        if (wVarA != null) {
            e.g.set(eVar, null);
        }
        return wVarA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.u1
    public final void b(u uVar, int i) {
        this.b.b(uVar, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d
    public final void d(Object obj, Function1 function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e.g;
        e eVar = this.c;
        atomicReferenceFieldUpdater.set(eVar, null);
        b bVar = new b(eVar, this, 0);
        this.b.d((Unit) obj, bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d
    public final void g(Object obj) {
        this.b.g(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CoroutineContext getContext() {
        return this.b.f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void resumeWith(Object obj) {
        this.b.resumeWith(obj);
    }
}
