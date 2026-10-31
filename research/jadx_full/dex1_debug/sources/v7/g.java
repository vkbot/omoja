package v7;

import java.util.IdentityHashMap;
import java.util.Map$Entry;
import n7.i0;
import n7.j0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends b {
    public final n7.t d;
    public final i0 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(n7.t tVar, i0 i0Var) {
        o4.b.i(tVar, "delegate");
        this.d = tVar;
        o4.b.i(i0Var, "healthListener");
        this.e = i0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final n7.b d() {
        n7.b bVarD = this.d.d();
        bVarD.getClass();
        Boolean bool = Boolean.TRUE;
        IdentityHashMap identityHashMap = new IdentityHashMap(1);
        identityHashMap.put(j0.d, bool);
        for (Map$Entry map$Entry : bVarD.f3887a.entrySet()) {
            if (!identityHashMap.containsKey(map$Entry.getKey())) {
                identityHashMap.put((n7.a) map$Entry.getKey(), map$Entry.getValue());
            }
        }
        return new n7.b(identityHashMap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void p(i0 i0Var) {
        this.d.p(new f(this, i0Var, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.b
    public final n7.t r() {
        return this.d;
    }
}
