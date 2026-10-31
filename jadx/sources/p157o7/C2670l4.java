package p157o7;

/* JADX INFO: renamed from: o7.l4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2670l4 extends AbstractC2694p4 {
    @Override // p157o7.AbstractC2694p4
    /* JADX INFO: renamed from: p */
    public final boolean mo4178p(ExecutorC2676m4 executorC2676m4) {
        synchronized (executorC2676m4) {
            try {
                if (executorC2676m4.f7631d != 0) {
                    return false;
                }
                executorC2676m4.f7631d = -1;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.AbstractC2694p4
    /* JADX INFO: renamed from: q */
    public final void mo4179q(ExecutorC2676m4 executorC2676m4) {
        synchronized (executorC2676m4) {
            executorC2676m4.f7631d = 0;
        }
    }
}
