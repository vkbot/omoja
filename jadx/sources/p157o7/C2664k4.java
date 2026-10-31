package p157o7;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: renamed from: o7.k4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2664k4 extends AbstractC2694p4 {

    /* JADX INFO: renamed from: c */
    public final AtomicIntegerFieldUpdater f7594c;

    public C2664k4(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        this.f7594c = atomicIntegerFieldUpdater;
    }

    @Override // p157o7.AbstractC2694p4
    /* JADX INFO: renamed from: p */
    public final boolean mo4178p(ExecutorC2676m4 executorC2676m4) {
        return this.f7594c.compareAndSet(executorC2676m4, 0, -1);
    }

    @Override // p157o7.AbstractC2694p4
    /* JADX INFO: renamed from: q */
    public final void mo4179q(ExecutorC2676m4 executorC2676m4) {
        this.f7594c.set(executorC2676m4, 0);
    }
}
