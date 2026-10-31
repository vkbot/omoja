package p034c9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: c9.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1027m {

    /* JADX INFO: renamed from: b */
    public static final AtomicReferenceFieldUpdater f1059b = AtomicReferenceFieldUpdater.newUpdater(C1027m.class, Object.class, "lastScheduledTask");

    /* JADX INFO: renamed from: c */
    public static final AtomicIntegerFieldUpdater f1060c = AtomicIntegerFieldUpdater.newUpdater(C1027m.class, "producerIndex");

    /* JADX INFO: renamed from: d */
    public static final AtomicIntegerFieldUpdater f1061d = AtomicIntegerFieldUpdater.newUpdater(C1027m.class, "consumerIndex");

    /* JADX INFO: renamed from: e */
    public static final AtomicIntegerFieldUpdater f1062e = AtomicIntegerFieldUpdater.newUpdater(C1027m.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a */
    public final AtomicReferenceArray f1063a = new AtomicReferenceArray(128);

    @Volatile
    private volatile int blockingTasksInBuffer;

    @Volatile
    private volatile int consumerIndex;

    @Volatile
    private volatile Object lastScheduledTask;

    @Volatile
    private volatile int producerIndex;

    /* JADX INFO: renamed from: a */
    public final AbstractRunnableC1022h m1243a(AbstractRunnableC1022h abstractRunnableC1022h) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f1060c;
        if (atomicIntegerFieldUpdater.get(this) - f1061d.get(this) == 127) {
            return abstractRunnableC1022h;
        }
        if (abstractRunnableC1022h.f1047c.f1048b == 1) {
            f1062e.incrementAndGet(this);
        }
        int i10 = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f1063a;
            if (atomicReferenceArray.get(i10) == null) {
                atomicReferenceArray.lazySet(i10, abstractRunnableC1022h);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    /* JADX INFO: renamed from: b */
    public final AbstractRunnableC1022h m1244b() {
        AbstractRunnableC1022h abstractRunnableC1022h;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f1061d;
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 - f1060c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 + 1) && (abstractRunnableC1022h = (AbstractRunnableC1022h) this.f1063a.getAndSet(i11, null)) != null) {
                if (abstractRunnableC1022h.f1047c.f1048b == 1) {
                    f1062e.decrementAndGet(this);
                }
                return abstractRunnableC1022h;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final AbstractRunnableC1022h m1245c(int i10, boolean z9) {
        int i11 = i10 & 127;
        AtomicReferenceArray atomicReferenceArray = this.f1063a;
        AbstractRunnableC1022h abstractRunnableC1022h = (AbstractRunnableC1022h) atomicReferenceArray.get(i11);
        if (abstractRunnableC1022h != null) {
            if ((abstractRunnableC1022h.f1047c.f1048b == 1) == z9) {
                while (!atomicReferenceArray.compareAndSet(i11, abstractRunnableC1022h, null)) {
                    if (atomicReferenceArray.get(i11) != abstractRunnableC1022h) {
                    }
                }
                if (z9) {
                    f1062e.decrementAndGet(this);
                }
                return abstractRunnableC1022h;
            }
        }
        return null;
    }
}
