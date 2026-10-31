package c9;

import a9.s;
import a9.w;
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
import v8.a0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b implements Executor, Closeable {
    public static final AtomicLongFieldUpdater i = AtomicLongFieldUpdater.newUpdater(b.class, "parkedWorkersStack");
    public static final AtomicLongFieldUpdater j = AtomicLongFieldUpdater.newUpdater(b.class, "controlState");
    public static final AtomicIntegerFieldUpdater k = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isTerminated");
    public static final w l = new w("NOT_IN_STACK", 0);

    @Volatile
    private volatile int _isTerminated;
    public final int b;
    public final int c;

    @Volatile
    private volatile long controlState;
    public final long d;
    public final String e;
    public final e f;
    public final e g;
    public final s h;

    @Volatile
    private volatile long parkedWorkersStack;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i2, int i3, long j2, String str) {
        this.b = i2;
        this.c = i3;
        this.d = j2;
        this.e = str;
        if (i2 < 1) {
            l9.i.d(ai.onnxruntime.a.f(i2, "Core pool size ", " should be at least 1"));
            throw null;
        }
        if (i3 < i2) {
            l9.i.d(ai.onnxruntime.a.g(i3, "Max pool size ", " should be greater than or equals to core pool size ", i2));
            throw null;
        }
        if (i3 > 2097150) {
            l9.i.d(ai.onnxruntime.a.f(i3, "Max pool size ", " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f = new e();
        this.g = new e();
        this.h = new s((i2 + 1) * 2);
        this.controlState = ((long) i2) << 42;
        this._isTerminated = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(b bVar, Runnable runnable, int i2) {
        bVar.c(runnable, k.g, (i2 & 4) == 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void S(a aVar, int i2, int i3) {
        while (true) {
            long j2 = i.get(this);
            int i4 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & (-2097152);
            if (i4 == i2) {
                if (i3 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == l) {
                            i4 = -1;
                            break;
                        }
                        if (objC == null) {
                            i4 = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        int iB = aVar2.b();
                        if (iB != 0) {
                            i4 = iB;
                            break;
                        }
                        objC = aVar2.c();
                    }
                } else {
                    i4 = i3;
                }
            }
            if (i4 >= 0) {
                if (i.compareAndSet(this, j2, ((long) i4) | j3)) {
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean V(long j2) {
        int iCoerceAtLeast = RangesKt.coerceAtLeast(((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)), 0);
        int i2 = this.b;
        if (iCoerceAtLeast < i2) {
            int iB = b();
            if (iB == 1 && i2 > 1) {
                b();
            }
            if (iB > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b() {
        synchronized (this.h) {
            try {
                if (k.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = j;
                long j2 = atomicLongFieldUpdater.get(this);
                int i2 = (int) (j2 & 2097151);
                int iCoerceAtLeast = RangesKt.coerceAtLeast(i2 - ((int) ((j2 & 4398044413952L) >> 21)), 0);
                if (iCoerceAtLeast >= this.b) {
                    return 0;
                }
                if (i2 >= this.c) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.h.b(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                a aVar = new a(this, i3);
                this.h.c(i3, aVar);
                if (i3 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = iCoerceAtLeast + 1;
                aVar.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(Runnable runnable, i iVar, boolean z) {
        h jVar;
        int i2;
        k.f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof h) {
            jVar = (h) runnable;
            jVar.b = jNanoTime;
            jVar.c = iVar;
        } else {
            jVar = new j(runnable, jNanoTime, iVar);
        }
        boolean z2 = false;
        boolean z3 = jVar.c.b == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = j;
        long jAddAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !Intrinsics.areEqual(aVar.i, this)) {
            aVar = null;
        }
        if (aVar != null && (i2 = aVar.d) != 5 && (jVar.c.b != 0 || i2 != 2)) {
            aVar.h = true;
            m mVar = aVar.b;
            if (z) {
                jVar = mVar.a(jVar);
            } else {
                mVar.getClass();
                h hVar = (h) m.b.getAndSet(mVar, jVar);
                jVar = hVar == null ? null : mVar.a(hVar);
            }
        }
        if (jVar != null) {
            if (!(jVar.c.b == 1 ? this.g.a(jVar) : this.f.a(jVar))) {
                throw new RejectedExecutionException(ai.onnxruntime.a.p(new StringBuilder(), this.e, " was terminated"));
            }
        }
        if (z && aVar != null) {
            z2 = true;
        }
        if (z3) {
            if (z2 || c0() || V(jAddAndGet)) {
                return;
            }
            c0();
            return;
        }
        if (z2 || c0() || V(atomicLongFieldUpdater.get(this))) {
            return;
        }
        c0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c0() {
        w wVar;
        int iB;
        while (true) {
            long j2 = i.get(this);
            a aVar = (a) this.h.b((int) (2097151 & j2));
            if (aVar == null) {
                aVar = null;
            } else {
                long j3 = (2097152 + j2) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    wVar = l;
                    if (objC == wVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0) {
                    if (i.compareAndSet(this, j2, ((long) iB) | j3)) {
                        aVar.g(wVar);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.j.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i2;
        h hVarA;
        if (k.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
            if (aVar == null || !Intrinsics.areEqual(aVar.i, this)) {
                aVar = null;
            }
            synchronized (this.h) {
                i2 = (int) (j.get(this) & 2097151);
            }
            if (1 <= i2) {
                int i3 = 1;
                while (true) {
                    Object objB = this.h.b(i3);
                    objB.getClass();
                    a aVar2 = (a) objB;
                    if (aVar2 != aVar) {
                        while (aVar2.isAlive()) {
                            LockSupport.unpark(aVar2);
                            aVar2.join(10000L);
                        }
                        m mVar = aVar2.b;
                        e eVar = this.g;
                        mVar.getClass();
                        h hVar = (h) m.b.getAndSet(mVar, null);
                        if (hVar != null) {
                            eVar.a(hVar);
                        }
                        while (true) {
                            h hVarB = mVar.b();
                            if (hVarB == null) {
                                break;
                            } else {
                                eVar.a(hVarB);
                            }
                        }
                    }
                    if (i3 == i2) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.g.b();
            this.f.b();
            while (true) {
                if (aVar != null) {
                    hVarA = aVar.a(true);
                    if (hVarA == null) {
                        hVarA = (h) this.f.d();
                        if (hVarA == null) {
                            break;
                            break;
                        }
                    }
                } else {
                    hVarA = (h) this.f.d();
                    if (hVarA == null && (hVarA = (h) this.g.d()) == null) {
                        break;
                    }
                }
                try {
                    hVarA.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (aVar != null) {
                aVar.h(5);
            }
            i.set(this, 0L);
            j.set(this, 0L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        y(this, runnable, 6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: r12v5, 100 */
    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: r12v5, 98 */
    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: r12v5, 99 */
    public final String toString() {
        ArrayList arrayList = new ArrayList();
        s sVar = this.h;
        int iA = sVar.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < iA; i7++) {
            a aVar = (a) sVar.b(i7);
            if (aVar != null) {
                m mVar = aVar.b;
                mVar.getClass();
                int i8 = m.b.get(mVar) != null ? (m.c.get(mVar) - m.d.get(mVar)) + 1 : m.c.get(mVar) - m.d.get(mVar);
                int iC = com.bumptech.glide.g.c(aVar.d);
                if (iC == 0) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i8);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iC == 1) {
                    i3++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i8);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iC == 2) {
                    i4++;
                } else if (iC == 3) {
                    i5++;
                    if (i8 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i8);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iC == 4) {
                    i6++;
                }
            }
        }
        long j2 = j.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.e);
        sb4.append('@');
        sb4.append(a0.a(this));
        sb4.append("[Pool Size {core = ");
        int i10 = this.b;
        sb4.append(i10);
        sb4.append(", max = ");
        sb4.append(this.c);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i2);
        sb4.append(", blocking = ");
        sb4.append(i3);
        sb4.append(", parked = ");
        sb4.append(i4);
        sb4.append(", dormant = ");
        sb4.append(i5);
        sb4.append(", terminated = ");
        sb4.append(i6);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.g.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j2));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j2) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i10 - ((int) ((j2 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
