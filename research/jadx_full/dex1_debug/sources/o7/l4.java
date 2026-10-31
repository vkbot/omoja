package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l4 extends p4 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.p4
    public final boolean p(m4 m4Var) {
        synchronized (m4Var) {
            try {
                if (m4Var.d != 0) {
                    return false;
                }
                m4Var.d = -1;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.p4
    public final void q(m4 m4Var) {
        synchronized (m4Var) {
            m4Var.d = 0;
        }
    }
}
