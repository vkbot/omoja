package c9;

import a9.w;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.random.Random;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class a extends Thread {
    public static final AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");
    public final m b;
    public final Ref$ObjectRef c;
    public int d;
    public long e;
    public long f;
    public int g;
    public boolean h;
    public final /* synthetic */ b i;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;

    @Volatile
    private volatile int workerCtl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(b bVar, int i) {
        this.i = bVar;
        setDaemon(true);
        this.b = new m();
        this.c = new Ref$ObjectRef();
        this.d = 4;
        this.nextParkedWorker = b.l;
        this.g = Random.Default.nextInt();
        f(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h a(boolean z) {
        h hVarE;
        h hVarE2;
        long j2;
        int i = this.d;
        b bVar = this.i;
        h hVar = null;
        m mVar = this.b;
        if (i != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = b.j;
            do {
                j2 = atomicLongFieldUpdater.get(bVar);
                if (((int) ((9223367638808264704L & j2) >> 42)) == 0) {
                    mVar.getClass();
                    loop1: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m.b;
                        h hVar2 = (h) atomicReferenceFieldUpdater.get(mVar);
                        if (hVar2 == null || hVar2.c.b != 1) {
                            int i2 = m.d.get(mVar);
                            int i3 = m.c.get(mVar);
                            while (i2 != i3 && m.e.get(mVar) != 0) {
                                i3--;
                                h hVarC = mVar.c(i3, true);
                                if (hVarC != null) {
                                    hVar = hVarC;
                                    break;
                                }
                            }
                            break;
                        }
                        do {
                            if (atomicReferenceFieldUpdater.compareAndSet(mVar, hVar2, null)) {
                                hVar = hVar2;
                                break loop1;
                            }
                        } while (atomicReferenceFieldUpdater.get(mVar) == hVar2);
                    }
                    if (hVar != null) {
                        return hVar;
                    }
                    h hVar3 = (h) bVar.g.d();
                    return hVar3 == null ? i(1) : hVar3;
                }
            } while (!b.j.compareAndSet(bVar, j2, j2 - 4398046511104L));
            this.d = 1;
        }
        if (z) {
            boolean z2 = d(bVar.b * 2) == 0;
            if (z2 && (hVarE2 = e()) != null) {
                return hVarE2;
            }
            mVar.getClass();
            h hVarB = (h) m.b.getAndSet(mVar, null);
            if (hVarB == null) {
                hVarB = mVar.b();
            }
            if (hVarB != null) {
                return hVarB;
            }
            if (!z2 && (hVarE = e()) != null) {
                return hVarE;
            }
        } else {
            h hVarE3 = e();
            if (hVarE3 != null) {
                return hVarE3;
            }
        }
        return i(3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b() {
        return this.indexInArray;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c() {
        return this.nextParkedWorker;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int d(int i) {
        int i2 = this.g;
        int i3 = i2 ^ (i2 << 13);
        int i4 = i3 ^ (i3 >> 17);
        int i5 = i4 ^ (i4 << 5);
        this.g = i5;
        int i6 = i - 1;
        return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h e() {
        int iD = d(2);
        b bVar = this.i;
        e eVar = bVar.g;
        e eVar2 = bVar.f;
        if (iD == 0) {
            h hVar = (h) eVar2.d();
            return hVar != null ? hVar : (h) eVar.d();
        }
        h hVar2 = (h) eVar.d();
        return hVar2 != null ? hVar2 : (h) eVar2.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.i.e);
        sb.append("-worker-");
        sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
        setName(sb.toString());
        this.indexInArray = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean h(int i) {
        int i2 = this.d;
        boolean z = i2 == 1;
        if (z) {
            b.j.addAndGet(this.i, 4398046511104L);
        }
        if (i2 != i) {
            this.d = i;
        }
        return z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h i(int i) {
        long j2;
        h hVarC;
        long j3;
        long j4;
        h hVar;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b.j;
        b bVar = this.i;
        int i2 = (int) (atomicLongFieldUpdater.get(bVar) & 2097151);
        h hVar2 = null;
        if (i2 < 2) {
            return null;
        }
        int iD = d(i2);
        int i3 = 0;
        long jMin = Long.MAX_VALUE;
        while (i3 < i2) {
            iD++;
            if (iD > i2) {
                iD = 1;
            }
            a aVar = (a) bVar.h.b(iD);
            if (aVar != null && aVar != this) {
                m mVar = aVar.b;
                if (i != 3) {
                    mVar.getClass();
                    int i4 = m.d.get(mVar);
                    int i5 = m.c.get(mVar);
                    boolean z = i == 1;
                    while (true) {
                        if (i4 != i5) {
                            j2 = 0;
                            if (!z || m.e.get(mVar) != 0) {
                                int i6 = i4 + 1;
                                hVarC = mVar.c(i4, z);
                                if (hVarC != null) {
                                    break;
                                }
                                i4 = i6;
                            }
                        } else {
                            j2 = 0;
                        }
                        hVarC = hVar2;
                        break;
                    }
                } else {
                    hVarC = mVar.b();
                    j2 = 0;
                }
                Ref$ObjectRef ref$ObjectRef = this.c;
                if (hVarC == null) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m.b;
                        h hVar3 = (h) atomicReferenceFieldUpdater.get(mVar);
                        if (hVar3 == null) {
                            j3 = -1;
                        } else {
                            j3 = -1;
                            if (((hVar3.c.b == 1 ? 1 : 2) & i) != 0) {
                                k.f.getClass();
                                m mVar2 = mVar;
                                long jNanoTime = System.nanoTime() - hVar3.b;
                                long j5 = k.b;
                                if (jNanoTime < j5) {
                                    j4 = j5 - jNanoTime;
                                    hVar = null;
                                    break;
                                }
                                do {
                                    hVar = null;
                                    if (atomicReferenceFieldUpdater.compareAndSet(mVar2, hVar3, null)) {
                                        ref$ObjectRef.element = hVar3;
                                        j4 = -1;
                                        break;
                                    }
                                } while (atomicReferenceFieldUpdater.get(mVar2) == hVar3);
                                mVar = mVar2;
                                hVar2 = null;
                            }
                        }
                        j4 = -2;
                        hVar = hVar2;
                        break;
                    }
                } else {
                    ref$ObjectRef.element = hVarC;
                    hVar = hVar2;
                    j4 = -1;
                    j3 = -1;
                }
                if (j4 == j3) {
                    h hVar4 = (h) ref$ObjectRef.element;
                    ref$ObjectRef.element = hVar;
                    return hVar4;
                }
                if (j4 > j2) {
                    jMin = Math.min(jMin, j4);
                }
            }
            i3++;
            hVar2 = null;
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f = jMin;
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long j2;
        loop0: while (true) {
            boolean z = false;
            while (true) {
                if (b.k.get(this.i) != 0 || this.d == 5) {
                    break loop0;
                }
                h hVarA = a(this.h);
                if (hVarA != null) {
                    this.f = 0L;
                    b bVar = this.i;
                    int i = hVarA.c.b;
                    this.e = 0L;
                    if (this.d == 3) {
                        this.d = 2;
                    }
                    if (i != 0 && h(2) && !bVar.c0() && !bVar.V(b.j.get(bVar))) {
                        bVar.c0();
                    }
                    try {
                        hVarA.run();
                    } catch (Throwable th) {
                        Thread threadCurrentThread = Thread.currentThread();
                        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                    }
                    if (i != 0) {
                        b.j.addAndGet(bVar, -2097152L);
                        if (this.d == 5) {
                            break;
                        }
                        this.d = 4;
                        break;
                    }
                    break;
                }
                this.h = false;
                if (this.f == 0) {
                    Object obj = this.nextParkedWorker;
                    w wVar = b.l;
                    if (obj != wVar) {
                        j.set(this, -1);
                        while (this.nextParkedWorker != b.l) {
                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = j;
                            if (atomicIntegerFieldUpdater.get(this) != -1) {
                                break;
                            }
                            b bVar2 = this.i;
                            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = b.k;
                            if (atomicIntegerFieldUpdater2.get(bVar2) != 0 || this.d == 5) {
                                break;
                            }
                            h(3);
                            Thread.interrupted();
                            if (this.e == 0) {
                                j2 = 2097151;
                                this.e = System.nanoTime() + this.i.d;
                            } else {
                                j2 = 2097151;
                            }
                            LockSupport.parkNanos(this.i.d);
                            if (System.nanoTime() - this.e >= 0) {
                                this.e = 0L;
                                b bVar3 = this.i;
                                synchronized (bVar3.h) {
                                    try {
                                        if (!(atomicIntegerFieldUpdater2.get(bVar3) != 0)) {
                                            AtomicLongFieldUpdater atomicLongFieldUpdater = b.j;
                                            if (((int) (atomicLongFieldUpdater.get(bVar3) & j2)) > bVar3.b) {
                                                if (atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                    int i2 = this.indexInArray;
                                                    f(0);
                                                    bVar3.S(this, i2, 0);
                                                    int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(bVar3) & j2);
                                                    if (andDecrement != i2) {
                                                        Object objB = bVar3.h.b(andDecrement);
                                                        objB.getClass();
                                                        a aVar = (a) objB;
                                                        bVar3.h.c(i2, aVar);
                                                        aVar.f(i2);
                                                        bVar3.S(aVar, andDecrement, i2);
                                                    }
                                                    bVar3.h.c(andDecrement, null);
                                                    Unit unit = Unit.INSTANCE;
                                                    this.d = 5;
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
                        b bVar4 = this.i;
                        if (this.nextParkedWorker == wVar) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater2 = b.i;
                            while (true) {
                                long j3 = atomicLongFieldUpdater2.get(bVar4);
                                int i3 = this.indexInArray;
                                this.nextParkedWorker = bVar4.h.b((int) (j3 & 2097151));
                                b bVar5 = bVar4;
                                if (b.i.compareAndSet(bVar5, j3, ((j3 + 2097152) & (-2097152)) | ((long) i3))) {
                                    break;
                                } else {
                                    bVar4 = bVar5;
                                }
                            }
                        }
                    }
                } else {
                    if (z) {
                        h(3);
                        Thread.interrupted();
                        LockSupport.parkNanos(this.f);
                        this.f = 0L;
                        break;
                    }
                    z = true;
                }
            }
        }
        h(5);
    }
}
