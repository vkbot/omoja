package p224v8;

import kotlin.collections.ArrayDeque;
import p010a9.AbstractC0035a;

/* JADX INFO: renamed from: v8.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3399l0 extends AbstractC3422t {

    /* JADX INFO: renamed from: b */
    public long f9895b;

    /* JADX INFO: renamed from: c */
    public boolean f9896c;

    /* JADX INFO: renamed from: d */
    public ArrayDeque f9897d;

    /* JADX INFO: renamed from: S */
    public final void m5346S(boolean z9) {
        this.f9895b = (z9 ? 4294967296L : 1L) + this.f9895b;
        if (z9) {
            return;
        }
        this.f9896c = true;
    }

    /* JADX INFO: renamed from: V */
    public final boolean m5347V() {
        AbstractC3381f0 abstractC3381f0;
        ArrayDeque arrayDeque = this.f9897d;
        if (arrayDeque == null || (abstractC3381f0 = (AbstractC3381f0) arrayDeque.removeFirstOrNull()) == null) {
            return false;
        }
        abstractC3381f0.run();
        return true;
    }

    @Override // p224v8.AbstractC3422t
    public final AbstractC3422t limitedParallelism(int i10) {
        AbstractC0035a.m94a(i10);
        return this;
    }

    public abstract void shutdown();

    /* JADX INFO: renamed from: y */
    public final void m5348y() {
        long j10 = this.f9895b - 4294967296L;
        this.f9895b = j10;
        if (j10 <= 0 && this.f9896c) {
            shutdown();
        }
    }
}
