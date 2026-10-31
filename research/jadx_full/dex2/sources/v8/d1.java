package v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class d1 extends a9.m implements i0, u0, Function1 {
    public h1 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.u0
    public final boolean b() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.u0
    public final j1 c() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.i0
    public final void dispose() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        h1 h1VarI = i();
        while (true) {
            Object objW = h1VarI.w();
            if (objW instanceof d1) {
                if (objW != this) {
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = h1.b;
                k0 k0Var = a0.i;
                while (!atomicReferenceFieldUpdater2.compareAndSet(h1VarI, objW, k0Var)) {
                    if (atomicReferenceFieldUpdater2.get(h1VarI) != objW) {
                    }
                }
                return;
            }
            if (!(objW instanceof u0) || ((u0) objW).c() == null) {
                return;
            }
            while (true) {
                Object objF = f();
                if (objF instanceof a9.r) {
                    return;
                }
                if (objF == this) {
                    return;
                }
                objF.getClass();
                a9.m mVar = (a9.m) objF;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = a9.m.d;
                a9.r rVar = (a9.r) atomicReferenceFieldUpdater3.get(mVar);
                if (rVar == null) {
                    rVar = new a9.r(mVar);
                    atomicReferenceFieldUpdater3.lazySet(mVar, rVar);
                }
                do {
                    atomicReferenceFieldUpdater = a9.m.b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, objF, rVar)) {
                        mVar.d();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == objF);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z0 getParent() {
        return i();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h1 i() {
        h1 h1Var = this.e;
        if (h1Var != null) {
            return h1Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    public abstract void j(Throwable th);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a9.m
    public final String toString() {
        return getClass().getSimpleName() + '@' + a0.a(this) + "[job@" + a0.a(i()) + ']';
    }
}
