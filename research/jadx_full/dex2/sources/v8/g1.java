package v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class g1 extends a9.b {
    public final d1 b;
    public j1 c;
    public final /* synthetic */ h1 d;
    public final /* synthetic */ u0 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g1(d1 d1Var, h1 h1Var, u0 u0Var) {
        this.d = h1Var;
        this.e = u0Var;
        this.b = d1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a9.b
    public final void a(Object obj, Object obj2) {
        a9.m mVar = (a9.m) obj;
        boolean z = obj2 == null;
        d1 d1Var = this.b;
        Object obj3 = z ? d1Var : this.c;
        if (obj3 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a9.m.b;
            while (!atomicReferenceFieldUpdater.compareAndSet(mVar, this, obj3)) {
                if (atomicReferenceFieldUpdater.get(mVar) != this) {
                    return;
                }
            }
            if (z) {
                j1 j1Var = this.c;
                j1Var.getClass();
                d1Var.e(j1Var);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a9.b
    public final a9.w c(Object obj) {
        if (this.d.w() == this.e) {
            return null;
        }
        return a9.a.d;
    }
}
