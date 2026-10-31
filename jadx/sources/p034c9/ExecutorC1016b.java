package p034c9;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1034g;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import p010a9.C0057s;
import p010a9.C0061w;
import p130l9.C2237i;
import p224v8.AbstractC3366a0;

/* JADX INFO: renamed from: c9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ExecutorC1016b implements Executor, Closeable {

    /* JADX INFO: renamed from: i */
    public static final AtomicLongFieldUpdater f1030i = AtomicLongFieldUpdater.newUpdater(ExecutorC1016b.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: j */
    public static final AtomicLongFieldUpdater f1031j = AtomicLongFieldUpdater.newUpdater(ExecutorC1016b.class, "controlState");

    /* JADX INFO: renamed from: k */
    public static final AtomicIntegerFieldUpdater f1032k = AtomicIntegerFieldUpdater.newUpdater(ExecutorC1016b.class, "_isTerminated");

    /* JADX INFO: renamed from: l */
    public static final C0061w f1033l = new C0061w("NOT_IN_STACK", 0);

    @Volatile
    private volatile int _isTerminated;

    /* JADX INFO: renamed from: b */
    public final int f1034b;

    /* JADX INFO: renamed from: c */
    public final int f1035c;

    @Volatile
    private volatile long controlState;

    /* JADX INFO: renamed from: d */
    public final long f1036d;

    /* JADX INFO: renamed from: e */
    public final String f1037e;

    /* JADX INFO: renamed from: f */
    public final C1019e f1038f;

    /* JADX INFO: renamed from: g */
    public final C1019e f1039g;

    /* JADX INFO: renamed from: h */
    public final C0057s f1040h;

    @Volatile
    private volatile long parkedWorkersStack;

    public ExecutorC1016b(int i10, int i11, long j10, String str) {
        this.f1034b = i10;
        this.f1035c = i11;
        this.f1036d = j10;
        this.f1037e = str;
        if (i10 < 1) {
            C2237i.m3597d(AbstractC0074a.m155f(i10, "Core pool size ", " should be at least 1"));
            throw null;
        }
        if (i11 < i10) {
            C2237i.m3597d(AbstractC0074a.m156g(i11, "Max pool size ", " should be greater than or equals to core pool size ", i10));
            throw null;
        }
        if (i11 > 2097150) {
            C2237i.m3597d(AbstractC0074a.m155f(i11, "Max pool size ", " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j10 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f1038f = new C1019e();
        this.f1039g = new C1019e();
        this.f1040h = new C0057s((i10 + 1) * 2);
        this.controlState = ((long) i10) << 42;
        this._isTerminated = 0;
    }

    /* JADX INFO: renamed from: y */
    public static /* synthetic */ void m1235y(ExecutorC1016b executorC1016b, Runnable runnable, int i10) {
        executorC1016b.m1239c(runnable, AbstractC1025k.f1056g, (i10 & 4) == 0);
    }

    /* JADX INFO: renamed from: S */
    public final void m1236S(C1015a c1015a, int i10, int i11) {
        while (true) {
            long j10 = f1030i.get(this);
            int i12 = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (i12 == i10) {
                if (i11 == 0) {
                    Object objM1228c = c1015a.m1228c();
                    while (true) {
                        if (objM1228c == f1033l) {
                            i12 = -1;
                            break;
                        }
                        if (objM1228c == null) {
                            i12 = 0;
                            break;
                        }
                        C1015a c1015a2 = (C1015a) objM1228c;
                        int iM1227b = c1015a2.m1227b();
                        if (iM1227b != 0) {
                            i12 = iM1227b;
                            break;
                        }
                        objM1228c = c1015a2.m1228c();
                    }
                } else {
                    i12 = i11;
                }
            }
            if (i12 >= 0) {
                if (f1030i.compareAndSet(this, j10, ((long) i12) | j11)) {
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: V */
    public final boolean m1237V(long j10) {
        int iCoerceAtLeast = RangesKt.coerceAtLeast(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0);
        int i10 = this.f1034b;
        if (iCoerceAtLeast < i10) {
            int iM1238b = m1238b();
            if (iM1238b == 1 && i10 > 1) {
                m1238b();
            }
            if (iM1238b > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public final int m1238b() {
        synchronized (this.f1040h) {
            try {
                if (f1032k.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f1031j;
                long j10 = atomicLongFieldUpdater.get(this);
                int i10 = (int) (j10 & 2097151);
                int iCoerceAtLeast = RangesKt.coerceAtLeast(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
                if (iCoerceAtLeast >= this.f1034b) {
                    return 0;
                }
                if (i10 >= this.f1035c) {
                    return 0;
                }
                int i11 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i11 <= 0 || this.f1040h.m133b(i11) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                C1015a c1015a = new C1015a(this, i11);
                this.f1040h.m134c(i11, c1015a);
                if (i11 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i12 = iCoerceAtLeast + 1;
                c1015a.start();
                return i12;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1239c(Runnable runnable, C1023i c1023i, boolean z9) {
        AbstractRunnableC1022h c1024j;
        int i10;
        AbstractC1025k.f1055f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof AbstractRunnableC1022h) {
            c1024j = (AbstractRunnableC1022h) runnable;
            c1024j.f1046b = jNanoTime;
            c1024j.f1047c = c1023i;
        } else {
            c1024j = new C1024j(runnable, jNanoTime, c1023i);
        }
        boolean z10 = false;
        boolean z11 = c1024j.f1047c.f1048b == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f1031j;
        long jAddAndGet = z11 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        C1015a c1015a = threadCurrentThread instanceof C1015a ? (C1015a) threadCurrentThread : null;
        if (c1015a == null || !Intrinsics.areEqual(c1015a.f1029i, this)) {
            c1015a = null;
        }
        if (c1015a != null && (i10 = c1015a.f1024d) != 5 && (c1024j.f1047c.f1048b != 0 || i10 != 2)) {
            c1015a.f1028h = true;
            C1027m c1027m = c1015a.f1022b;
            if (z9) {
                c1024j = c1027m.m1243a(c1024j);
            } else {
                c1027m.getClass();
                AbstractRunnableC1022h abstractRunnableC1022h = (AbstractRunnableC1022h) C1027m.f1059b.getAndSet(c1027m, c1024j);
                c1024j = abstractRunnableC1022h == null ? null : c1027m.m1243a(abstractRunnableC1022h);
            }
        }
        if (c1024j != null) {
            if (!(c1024j.f1047c.f1048b == 1 ? this.f1039g.m124a(c1024j) : this.f1038f.m124a(c1024j))) {
                throw new RejectedExecutionException(AbstractC0074a.m165p(new StringBuilder(), this.f1037e, " was terminated"));
            }
        }
        if (z9 && c1015a != null) {
            z10 = true;
        }
        if (z11) {
            if (z10 || m1240c0() || m1237V(jAddAndGet)) {
                return;
            }
            m1240c0();
            return;
        }
        if (z10 || m1240c0() || m1237V(atomicLongFieldUpdater.get(this))) {
            return;
        }
        m1240c0();
    }

    /* JADX INFO: renamed from: c0 */
    public final boolean m1240c0() {
        C0061w c0061w;
        int iM1227b;
        while (true) {
            long j10 = f1030i.get(this);
            C1015a c1015a = (C1015a) this.f1040h.m133b((int) (2097151 & j10));
            if (c1015a == null) {
                c1015a = null;
            } else {
                long j11 = (2097152 + j10) & (-2097152);
                Object objM1228c = c1015a.m1228c();
                while (true) {
                    c0061w = f1033l;
                    if (objM1228c == c0061w) {
                        iM1227b = -1;
                        break;
                    }
                    if (objM1228c == null) {
                        iM1227b = 0;
                        break;
                    }
                    C1015a c1015a2 = (C1015a) objM1228c;
                    iM1227b = c1015a2.m1227b();
                    if (iM1227b != 0) {
                        break;
                    }
                    objM1228c = c1015a2.m1228c();
                }
                if (iM1227b >= 0) {
                    if (f1030i.compareAndSet(this, j10, ((long) iM1227b) | j11)) {
                        c1015a.m1232g(c0061w);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (c1015a == null) {
                return false;
            }
            if (C1015a.f1021j.compareAndSet(c1015a, -1, 0)) {
                LockSupport.unpark(c1015a);
                return true;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i10;
        AbstractRunnableC1022h abstractRunnableC1022hM1226a;
        if (f1032k.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            C1015a c1015a = threadCurrentThread instanceof C1015a ? (C1015a) threadCurrentThread : null;
            if (c1015a == null || !Intrinsics.areEqual(c1015a.f1029i, this)) {
                c1015a = null;
            }
            synchronized (this.f1040h) {
                i10 = (int) (f1031j.get(this) & 2097151);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    Object objM133b = this.f1040h.m133b(i11);
                    objM133b.getClass();
                    C1015a c1015a2 = (C1015a) objM133b;
                    if (c1015a2 != c1015a) {
                        while (c1015a2.isAlive()) {
                            LockSupport.unpark(c1015a2);
                            c1015a2.join(10000L);
                        }
                        C1027m c1027m = c1015a2.f1022b;
                        C1019e c1019e = this.f1039g;
                        c1027m.getClass();
                        AbstractRunnableC1022h abstractRunnableC1022h = (AbstractRunnableC1022h) C1027m.f1059b.getAndSet(c1027m, null);
                        if (abstractRunnableC1022h != null) {
                            c1019e.m124a(abstractRunnableC1022h);
                        }
                        while (true) {
                            AbstractRunnableC1022h abstractRunnableC1022hM1244b = c1027m.m1244b();
                            if (abstractRunnableC1022hM1244b == null) {
                                break;
                            } else {
                                c1019e.m124a(abstractRunnableC1022hM1244b);
                            }
                        }
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.f1039g.m125b();
            this.f1038f.m125b();
            while (true) {
                if (c1015a != null) {
                    abstractRunnableC1022hM1226a = c1015a.m1226a(true);
                    if (abstractRunnableC1022hM1226a == null) {
                        abstractRunnableC1022hM1226a = (AbstractRunnableC1022h) this.f1038f.m127d();
                        if (abstractRunnableC1022hM1226a == null) {
                            break;
                            break;
                        }
                    }
                } else {
                    abstractRunnableC1022hM1226a = (AbstractRunnableC1022h) this.f1038f.m127d();
                    if (abstractRunnableC1022hM1226a == null && (abstractRunnableC1022hM1226a = (AbstractRunnableC1022h) this.f1039g.m127d()) == null) {
                        break;
                    }
                }
                try {
                    abstractRunnableC1022hM1226a.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (c1015a != null) {
                c1015a.m1233h(5);
            }
            f1030i.set(this, 0L);
            f1031j.set(this, 0L);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m1235y(this, runnable, 6);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        C0057s c0057s = this.f1040h;
        int iM132a = c0057s.m132a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iM132a; i15++) {
            C1015a c1015a = (C1015a) c0057s.m133b(i15);
            if (c1015a != null) {
                C1027m c1027m = c1015a.f1022b;
                c1027m.getClass();
                int i16 = C1027m.f1059b.get(c1027m) != null ? (C1027m.f1060c.get(c1027m) - C1027m.f1061d.get(c1027m)) + 1 : C1027m.f1060c.get(c1027m) - C1027m.f1061d.get(c1027m);
                int iM1296c = AbstractC1034g.m1296c(c1015a.f1024d);
                if (iM1296c == 0) {
                    i10++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i16);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iM1296c == 1) {
                    i11++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i16);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iM1296c == 2) {
                    i12++;
                } else if (iM1296c == 3) {
                    i13++;
                    if (i16 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i16);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iM1296c == 4) {
                    i14++;
                }
            }
        }
        long j10 = f1031j.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f1037e);
        sb4.append('@');
        sb4.append(AbstractC3366a0.m5282a(this));
        sb4.append("[Pool Size {core = ");
        int i17 = this.f1034b;
        sb4.append(i17);
        sb4.append(", max = ");
        sb4.append(this.f1035c);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i10);
        sb4.append(", blocking = ");
        sb4.append(i11);
        sb4.append(", parked = ");
        sb4.append(i12);
        sb4.append(", dormant = ");
        sb4.append(i13);
        sb4.append(", terminated = ");
        sb4.append(i14);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f1038f.m126c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f1039g.m126c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j10));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j10) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i17 - ((int) ((j10 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
