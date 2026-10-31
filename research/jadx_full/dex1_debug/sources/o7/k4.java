package o7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k4 extends p4 {
    public final AtomicIntegerFieldUpdater c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k4(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.c = atomicIntegerFieldUpdater;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.p4
    public final boolean p(m4 m4Var) {
        return this.c.compareAndSet(m4Var, 0, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.p4
    public final void q(m4 m4Var) {
        this.c.set(m4Var, 0);
    }
}
