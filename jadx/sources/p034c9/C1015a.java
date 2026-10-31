package p034c9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Ref;
import kotlin.random.Random;
import p010a9.C0061w;

/* JADX INFO: renamed from: c9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1015a extends Thread {

    /* JADX INFO: renamed from: j */
    public static final AtomicIntegerFieldUpdater f1021j = AtomicIntegerFieldUpdater.newUpdater(C1015a.class, "workerCtl");

    /* JADX INFO: renamed from: b */
    public final C1027m f1022b;

    /* JADX INFO: renamed from: c */
    public final Ref.ObjectRef f1023c;

    /* JADX INFO: renamed from: d */
    public int f1024d;

    /* JADX INFO: renamed from: e */
    public long f1025e;

    /* JADX INFO: renamed from: f */
    public long f1026f;

    /* JADX INFO: renamed from: g */
    public int f1027g;

    /* JADX INFO: renamed from: h */
    public boolean f1028h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ ExecutorC1016b f1029i;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;

    @Volatile
    private volatile int workerCtl;

    public C1015a(ExecutorC1016b executorC1016b, int i10) {
        this.f1029i = executorC1016b;
        setDaemon(true);
        this.f1022b = new C1027m();
        this.f1023c = new Ref.ObjectRef();
        this.f1024d = 4;
        this.nextParkedWorker = ExecutorC1016b.f1033l;
        this.f1027g = Random.INSTANCE.nextInt();
        m1231f(i10);
    }

    /* JADX INFO: renamed from: a */
    public final AbstractRunnableC1022h m1226a(boolean z9) {
        AbstractRunnableC1022h abstractRunnableC1022hM1230e;
        AbstractRunnableC1022h abstractRunnableC1022hM1230e2;
        long j10;
        int i10 = this.f1024d;
        ExecutorC1016b executorC1016b = this.f1029i;
        AbstractRunnableC1022h abstractRunnableC1022h = null;
        C1027m c1027m = this.f1022b;
        if (i10 != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC1016b.f1031j;
            do {
                j10 = atomicLongFieldUpdater.get(executorC1016b);
                if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                    c1027m.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1027m.f1059b;
                        AbstractRunnableC1022h abstractRunnableC1022h2 = (AbstractRunnableC1022h) atomicReferenceFieldUpdater.get(c1027m);
                        if (abstractRunnableC1022h2 == null || abstractRunnableC1022h2.f1047c.f1048b != 1) {
                            int i11 = C1027m.f1061d.get(c1027m);
                            int i12 = C1027m.f1060c.get(c1027m);
                            while (i11 != i12 && C1027m.f1062e.get(c1027m) != 0) {
                                i12--;
                                AbstractRunnableC1022h abstractRunnableC1022hM1245c = c1027m.m1245c(i12, true);
                                if (abstractRunnableC1022hM1245c != null) {
                                    abstractRunnableC1022h = abstractRunnableC1022hM1245c;
                                    break;
                                }
                            }
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(c1027m, abstractRunnableC1022h2, null)) {
                                abstractRunnableC1022h = abstractRunnableC1022h2;
                                break loop1;
                            }
                        } while (atomicReferenceFieldUpdater.get(c1027m) == abstractRunnableC1022h2);
                    }
                    if (abstractRunnableC1022h != null) {
                        return abstractRunnableC1022h;
                    }
                    AbstractRunnableC1022h abstractRunnableC1022h3 = (AbstractRunnableC1022h) executorC1016b.f1039g.m127d();
                    return abstractRunnableC1022h3 == null ? m1234i(1) : abstractRunnableC1022h3;
                }
            } while (!ExecutorC1016b.f1031j.compareAndSet(executorC1016b, j10, j10 - 4398046511104L));
            this.f1024d = 1;
        }
        if (z9) {
            boolean z10 = m1229d(executorC1016b.f1034b * 2) == 0;
            if (z10 && (abstractRunnableC1022hM1230e2 = m1230e()) != null) {
                return abstractRunnableC1022hM1230e2;
            }
            c1027m.getClass();
            AbstractRunnableC1022h abstractRunnableC1022hM1244b = (AbstractRunnableC1022h) C1027m.f1059b.getAndSet(c1027m, null);
            if (abstractRunnableC1022hM1244b == null) {
                abstractRunnableC1022hM1244b = c1027m.m1244b();
            }
            if (abstractRunnableC1022hM1244b != null) {
                return abstractRunnableC1022hM1244b;
            }
            if (!z10 && (abstractRunnableC1022hM1230e = m1230e()) != null) {
                return abstractRunnableC1022hM1230e;
            }
        } else {
            AbstractRunnableC1022h abstractRunnableC1022hM1230e3 = m1230e();
            if (abstractRunnableC1022hM1230e3 != null) {
                return abstractRunnableC1022hM1230e3;
            }
        }
        return m1234i(3);
    }

    /* JADX INFO: renamed from: b */
    public final int m1227b() {
        return this.indexInArray;
    }

    /* JADX INFO: renamed from: c */
    public final Object m1228c() {
        return this.nextParkedWorker;
    }

    /* JADX INFO: renamed from: d */
    public final int m1229d(int i10) {
        int i11 = this.f1027g;
        int i12 = i11 ^ (i11 << 13);
        int i13 = i12 ^ (i12 >> 17);
        int i14 = i13 ^ (i13 << 5);
        this.f1027g = i14;
        int i15 = i10 - 1;
        return (i15 & i10) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % i10;
    }

    /* JADX INFO: renamed from: e */
    public final AbstractRunnableC1022h m1230e() {
        int iM1229d = m1229d(2);
        ExecutorC1016b executorC1016b = this.f1029i;
        C1019e c1019e = executorC1016b.f1039g;
        C1019e c1019e2 = executorC1016b.f1038f;
        if (iM1229d == 0) {
            AbstractRunnableC1022h abstractRunnableC1022h = (AbstractRunnableC1022h) c1019e2.m127d();
            return abstractRunnableC1022h != null ? abstractRunnableC1022h : (AbstractRunnableC1022h) c1019e.m127d();
        }
        AbstractRunnableC1022h abstractRunnableC1022h2 = (AbstractRunnableC1022h) c1019e.m127d();
        return abstractRunnableC1022h2 != null ? abstractRunnableC1022h2 : (AbstractRunnableC1022h) c1019e2.m127d();
    }

    /* JADX INFO: renamed from: f */
    public final void m1231f(int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1029i.f1037e);
        sb.append("-worker-");
        sb.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
        setName(sb.toString());
        this.indexInArray = i10;
    }

    /* JADX INFO: renamed from: g */
    public final void m1232g(Object obj) {
        this.nextParkedWorker = obj;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m1233h(int i10) {
        int i11 = this.f1024d;
        boolean z9 = i11 == 1;
        if (z9) {
            ExecutorC1016b.f1031j.addAndGet(this.f1029i, 4398046511104L);
        }
        if (i11 != i10) {
            this.f1024d = i10;
        }
        return z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [T, c9.h, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14, types: [c9.h] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [c9.h] */
    /* JADX INFO: renamed from: i */
    public final AbstractRunnableC1022h m1234i(int i10) {
        long j10;
        T tM1245c;
        long j11;
        long j12;
        T t;
        AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC1016b.f1031j;
        ExecutorC1016b executorC1016b = this.f1029i;
        int i11 = (int) (atomicLongFieldUpdater.get(executorC1016b) & 2097151);
        Object obj = null;
        if (i11 < 2) {
            return null;
        }
        int iM1229d = m1229d(i11);
        int i12 = 0;
        long jMin = Long.MAX_VALUE;
        while (i12 < i11) {
            iM1229d++;
            if (iM1229d > i11) {
                iM1229d = 1;
            }
            C1015a c1015a = (C1015a) executorC1016b.f1040h.m133b(iM1229d);
            if (c1015a != null && c1015a != this) {
                C1027m c1027m = c1015a.f1022b;
                if (i10 != 3) {
                    c1027m.getClass();
                    int i13 = C1027m.f1061d.get(c1027m);
                    int i14 = C1027m.f1060c.get(c1027m);
                    boolean z9 = i10 == 1;
                    while (true) {
                        if (i13 != i14) {
                            j10 = 0;
                            if (!z9 || C1027m.f1062e.get(c1027m) != 0) {
                                int i15 = i13 + 1;
                                tM1245c = c1027m.m1245c(i13, z9);
                                if (tM1245c != 0) {
                                    break;
                                }
                                i13 = i15;
                            }
                        } else {
                            j10 = 0;
                        }
                        tM1245c = obj;
                        break;
                    }
                } else {
                    tM1245c = c1027m.m1244b();
                    j10 = 0;
                }
                Ref.ObjectRef objectRef = this.f1023c;
                if (tM1245c == 0) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1027m.f1059b;
                        ?? r14 = (AbstractRunnableC1022h) atomicReferenceFieldUpdater.get(c1027m);
                        if (r14 == 0) {
                            j11 = -1;
                        } else {
                            j11 = -1;
                            if (((r14.f1047c.f1048b == 1 ? 1 : 2) & i10) != 0) {
                                AbstractC1025k.f1055f.getClass();
                                C1027m c1027m2 = c1027m;
                                long jNanoTime = System.nanoTime() - r14.f1046b;
                                long j13 = AbstractC1025k.f1051b;
                                if (jNanoTime < j13) {
                                    j12 = j13 - jNanoTime;
                                    t = 0;
                                    break;
                                }
                                do {
                                    t = 0;
                                    if (atomicReferenceFieldUpdater.compareAndSet(c1027m2, r14, null)) {
                                        objectRef.element = r14;
                                        j12 = -1;
                                        break;
                                    }
                                } while (atomicReferenceFieldUpdater.get(c1027m2) == r14);
                                c1027m = c1027m2;
                                obj = null;
                            }
                        }
                        j12 = -2;
                        t = obj;
                        break;
                    }
                } else {
                    objectRef.element = tM1245c;
                    t = obj;
                    j12 = -1;
                    j11 = -1;
                }
                if (j12 == j11) {
                    AbstractRunnableC1022h abstractRunnableC1022h = (AbstractRunnableC1022h) objectRef.element;
                    objectRef.element = t;
                    return abstractRunnableC1022h;
                }
                if (j12 > j10) {
                    jMin = Math.min(jMin, j12);
                }
            }
            i12++;
            obj = null;
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f1026f = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long j10;
        loop0: while (true) {
            boolean z9 = false;
            while (true) {
                if (ExecutorC1016b.f1032k.get(this.f1029i) != 0 || this.f1024d == 5) {
                    break loop0;
                }
                AbstractRunnableC1022h abstractRunnableC1022hM1226a = m1226a(this.f1028h);
                if (abstractRunnableC1022hM1226a != null) {
                    this.f1026f = 0L;
                    ExecutorC1016b executorC1016b = this.f1029i;
                    int i10 = abstractRunnableC1022hM1226a.f1047c.f1048b;
                    this.f1025e = 0L;
                    if (this.f1024d == 3) {
                        this.f1024d = 2;
                    }
                    if (i10 != 0 && m1233h(2) && !executorC1016b.m1240c0() && !executorC1016b.m1237V(ExecutorC1016b.f1031j.get(executorC1016b))) {
                        executorC1016b.m1240c0();
                    }
                    try {
                        abstractRunnableC1022hM1226a.run();
                    } catch (Throwable th) {
                        Thread threadCurrentThread = Thread.currentThread();
                        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                    }
                    if (i10 != 0) {
                        ExecutorC1016b.f1031j.addAndGet(executorC1016b, -2097152L);
                        if (this.f1024d == 5) {
                            break;
                        }
                        this.f1024d = 4;
                        break;
                    }
                    break;
                }
                this.f1028h = false;
                if (this.f1026f == 0) {
                    Object obj = this.nextParkedWorker;
                    C0061w c0061w = ExecutorC1016b.f1033l;
                    if (obj != c0061w) {
                        f1021j.set(this, -1);
                        while (this.nextParkedWorker != ExecutorC1016b.f1033l) {
                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f1021j;
                            if (atomicIntegerFieldUpdater.get(this) != -1) {
                                break;
                            }
                            ExecutorC1016b executorC1016b2 = this.f1029i;
                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = ExecutorC1016b.f1032k;
                            if (atomicIntegerFieldUpdater2.get(executorC1016b2) != 0 || this.f1024d == 5) {
                                break;
                            }
                            m1233h(3);
                            Thread.interrupted();
                            if (this.f1025e == 0) {
                                j10 = 2097151;
                                this.f1025e = System.nanoTime() + this.f1029i.f1036d;
                            } else {
                                j10 = 2097151;
                            }
                            LockSupport.parkNanos(this.f1029i.f1036d);
                            if (System.nanoTime() - this.f1025e >= 0) {
                                this.f1025e = 0L;
                                ExecutorC1016b executorC1016b3 = this.f1029i;
                                synchronized (executorC1016b3.f1040h) {
                                    try {
                                        if (!(atomicIntegerFieldUpdater2.get(executorC1016b3) != 0)) {
                                            AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC1016b.f1031j;
                                            if (((int) (atomicLongFieldUpdater.get(executorC1016b3) & j10)) > executorC1016b3.f1034b) {
                                                if (atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                    int i11 = this.indexInArray;
                                                    m1231f(0);
                                                    executorC1016b3.m1236S(this, i11, 0);
                                                    int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(executorC1016b3) & j10);
                                                    if (andDecrement != i11) {
                                                        Object objM133b = executorC1016b3.f1040h.m133b(andDecrement);
                                                        objM133b.getClass();
                                                        C1015a c1015a = (C1015a) objM133b;
                                                        executorC1016b3.f1040h.m134c(i11, c1015a);
                                                        c1015a.m1231f(i11);
                                                        executorC1016b3.m1236S(c1015a, andDecrement, i11);
                                                    }
                                                    executorC1016b3.f1040h.m134c(andDecrement, null);
                                                    Unit unit = Unit.INSTANCE;
                                                    this.f1024d = 5;
                                                }
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                            }
                        }
                    } else {
                        ExecutorC1016b executorC1016b4 = this.f1029i;
                        if (this.nextParkedWorker == c0061w) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater2 = ExecutorC1016b.f1030i;
                            while (true) {
                                long j11 = atomicLongFieldUpdater2.get(executorC1016b4);
                                int i12 = this.indexInArray;
                                this.nextParkedWorker = executorC1016b4.f1040h.m133b((int) (j11 & 2097151));
                                ExecutorC1016b executorC1016b5 = executorC1016b4;
                                if (ExecutorC1016b.f1030i.compareAndSet(executorC1016b5, j11, ((j11 + 2097152) & (-2097152)) | ((long) i12))) {
                                    break;
                                } else {
                                    executorC1016b4 = executorC1016b5;
                                }
                            }
                        }
                    }
                } else {
                    if (z9) {
                        m1233h(3);
                        Thread.interrupted();
                        LockSupport.parkNanos(this.f1026f);
                        this.f1026f = 0L;
                        break;
                    }
                    z9 = true;
                }
            }
        }
        m1233h(5);
    }
}
