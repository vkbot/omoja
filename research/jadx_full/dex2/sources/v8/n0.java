package v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class n0 extends o0 implements d0 {
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(n0.class, Object.class, "_queue");
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(n0.class, Object.class, "_delayed");
    public static final AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(n0.class, "_isCompleted");

    @Volatile
    private volatile Object _delayed;

    @Volatile
    private volatile int _isCompleted = 0;

    @Volatile
    private volatile Object _queue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d0(Runnable runnable) {
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (g.get(this) == 0) {
                if (obj == null) {
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == null);
                } else if (obj instanceof a9.p) {
                    a9.p pVar = (a9.p) obj;
                    int iA = pVar.a(runnable);
                    if (iA == 0) {
                        break;
                    }
                    if (iA == 1) {
                        a9.p pVarC = pVar.c();
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, pVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
                        }
                    } else if (iA != 2) {
                    }
                } else if (obj != a0.b) {
                    a9.p pVar2 = new a9.p(8, true);
                    pVar2.a((Runnable) obj);
                    pVar2.a(runnable);
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj, pVar2)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == obj);
                }
            }
            b0.h.d0(runnable);
            return;
        }
        Thread threadC0 = c0();
        if (Thread.currentThread() != threadC0) {
            LockSupport.unpark(threadC0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        d0(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e0() {
        ArrayDeque arrayDeque = this.d;
        if (arrayDeque != null ? arrayDeque.isEmpty() : true) {
            Object obj = e.get(this);
            if (obj != null) {
                if (obj instanceof a9.p) {
                    long j = a9.p.f.get((a9.p) obj);
                    return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
                }
                if (obj == a0.b) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long f0() {
        Runnable runnable;
        if (!V()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                runnable = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof a9.p) {
                    a9.p pVar = (a9.p) obj;
                    Object objD = pVar.d();
                    if (objD != a9.p.g) {
                        runnable = (Runnable) objD;
                        break;
                    }
                    a9.p pVarC = pVar.c();
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, pVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
                    }
                } else {
                    if (obj == a0.b) {
                        break;
                    }
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                            runnable = (Runnable) obj;
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == obj);
                }
            }
            if (runnable != null) {
                runnable.run();
                return 0L;
            }
            ArrayDeque arrayDeque = this.d;
            if (((arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
                Object obj2 = e.get(this);
                if (obj2 == null) {
                } else if (obj2 instanceof a9.p) {
                    long j = a9.p.f.get((a9.p) obj2);
                    if (((int) (1073741823 & j)) != ((int) ((j & 1152921503533105152L) >> 30))) {
                        return 0L;
                    }
                } else if (obj2 == a0.b) {
                }
                return Long.MAX_VALUE;
            }
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.l0
    public void shutdown() {
        ThreadLocal threadLocal = q1.a;
        q1.a.set(null);
        g.set(this, 1);
        a9.w wVar = a0.b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, wVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
            } else if (obj instanceof a9.p) {
                ((a9.p) obj).b();
                break;
            } else {
                if (obj == wVar) {
                    break;
                }
                a9.p pVar = new a9.p(8, true);
                pVar.a((Runnable) obj);
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, pVar)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj);
            }
        }
        while (f0() <= 0) {
        }
        System.nanoTime();
    }
}
