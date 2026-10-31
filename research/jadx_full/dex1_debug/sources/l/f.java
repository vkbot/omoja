package l;

import c0.l;
import j.d0;
import j.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends l {
    public r d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c0.l
    public final int b(Object obj) {
        d0 d0Var = (d0) obj;
        if (d0Var == null) {
            return 1;
        }
        return d0Var.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // c0.l
    public final void c(Object obj, Object obj2) {
        d0 d0Var = (d0) obj2;
        r rVar = this.d;
        if (rVar == null || d0Var == null) {
            return;
        }
        rVar.e.b(d0Var, true);
    }
}
