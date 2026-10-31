package o7;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g4 extends n7.t {
    public final n7.t d;
    public final /* synthetic */ h4 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g4(h4 h4Var, n7.t tVar) {
        this.e = h4Var;
        this.d = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void i(n7.f1 f1Var) {
        this.d.i(f1Var);
        this.e.d.execute(new f5.j(11, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void j(n7.z0 z0Var) {
        n7.b bVar = z0Var.f3991b;
        IdentityHashMap identityHashMap = bVar.f3887a;
        n7.a aVar = h4.e;
        if (identityHashMap.get(aVar) != null) {
            j1.i.l("RetryingNameResolver can only be used once to wrap a NameResolver");
            return;
        }
        List list = Collections.EMPTY_LIST;
        n7.b bVar2 = n7.b.f3886b;
        List list2 = z0Var.f3990a;
        n7.y0 y0Var = z0Var.c;
        bVar.getClass();
        f4 f4Var = new f4(this.e);
        IdentityHashMap identityHashMap2 = new IdentityHashMap(1);
        identityHashMap2.put(aVar, f4Var);
        for (Map$Entry map$Entry : bVar.f3887a.entrySet()) {
            if (!identityHashMap2.containsKey(map$Entry.getKey())) {
                identityHashMap2.put((n7.a) map$Entry.getKey(), map$Entry.getValue());
            }
        }
        this.d.j(new n7.z0(list2, new n7.b(identityHashMap2), y0Var));
    }
}
