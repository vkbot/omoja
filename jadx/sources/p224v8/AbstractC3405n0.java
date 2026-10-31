package p224v8;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import p010a9.C0054p;
import p010a9.C0061w;

/* JADX INFO: renamed from: v8.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3405n0 extends AbstractC3408o0 implements InterfaceC3375d0 {

    /* JADX INFO: renamed from: e */
    public static final AtomicReferenceFieldUpdater f9899e = AtomicReferenceFieldUpdater.newUpdater(AbstractC3405n0.class, Object.class, "_queue");

    /* JADX INFO: renamed from: f */
    public static final AtomicReferenceFieldUpdater f9900f = AtomicReferenceFieldUpdater.newUpdater(AbstractC3405n0.class, Object.class, "_delayed");

    /* JADX INFO: renamed from: g */
    public static final AtomicIntegerFieldUpdater f9901g = AtomicIntegerFieldUpdater.newUpdater(AbstractC3405n0.class, "_isCompleted");

    @Volatile
    private volatile Object _delayed;

    @Volatile
    private volatile int _isCompleted = 0;

    @Volatile
    private volatile Object _queue;

    /* JADX INFO: renamed from: d0 */
    public void mo5288d0(Runnable runnable) {
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9899e;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (f9901g.get(this) == 0) {
                if (obj == null) {
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == null);
                } else if (obj instanceof C0054p) {
                    C0054p c0054p = (C0054p) obj;
                    int iM128a = c0054p.m128a(runnable);
                    if (iM128a == 0) {
                        break;
                    }
                    if (iM128a == 1) {
                        C0054p c0054pM130c = c0054p.m130c();
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0054pM130c) && atomicReferenceFieldUpdater.get(this) == obj) {
                        }
                    } else if (iM128a != 2) {
                    }
                } else if (obj != AbstractC3366a0.f9842b) {
                    C0054p c0054p2 = new C0054p(8, true);
                    c0054p2.m128a((Runnable) obj);
                    c0054p2.m128a(runnable);
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0054p2)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == obj);
                }
            }
            RunnableC3369b0.f9852h.mo5288d0(runnable);
            return;
        }
        Thread threadMo5287c0 = mo5287c0();
        if (Thread.currentThread() != threadMo5287c0) {
            LockSupport.unpark(threadMo5287c0);
        }
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        mo5288d0(runnable);
    }

    /* JADX INFO: renamed from: e0 */
    public final boolean m5350e0() {
        ArrayDeque arrayDeque = this.f9897d;
        if (arrayDeque != null ? arrayDeque.isEmpty() : true) {
            Object obj = f9899e.get(this);
            if (obj != null) {
                if (obj instanceof C0054p) {
                    long j10 = C0054p.f139f.get((C0054p) obj);
                    return ((int) (1073741823 & j10)) == ((int) ((j10 & 1152921503533105152L) >> 30));
                }
                if (obj == AbstractC3366a0.f9842b) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: f0 */
    public final long m5351f0() {
        Runnable runnable;
        if (!m5347V()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9899e;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                runnable = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof C0054p) {
                    C0054p c0054p = (C0054p) obj;
                    Object objM131d = c0054p.m131d();
                    if (objM131d != C0054p.f140g) {
                        runnable = (Runnable) objM131d;
                        break;
                    }
                    C0054p c0054pM130c = c0054p.m130c();
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0054pM130c) && atomicReferenceFieldUpdater.get(this) == obj) {
                    }
                } else {
                    if (obj == AbstractC3366a0.f9842b) {
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
            ArrayDeque arrayDeque = this.f9897d;
            if (((arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
                Object obj2 = f9899e.get(this);
                if (obj2 == null) {
                } else if (obj2 instanceof C0054p) {
                    long j10 = C0054p.f139f.get((C0054p) obj2);
                    if (((int) (1073741823 & j10)) != ((int) ((j10 & 1152921503533105152L) >> 30))) {
                        return 0L;
                    }
                } else if (obj2 == AbstractC3366a0.f9842b) {
                }
                return Long.MAX_VALUE;
            }
        }
        return 0L;
    }

    @Override // p224v8.AbstractC3399l0
    public void shutdown() {
        ThreadLocal threadLocal = AbstractC3415q1.f9904a;
        AbstractC3415q1.f9904a.set(null);
        f9901g.set(this, 1);
        C0061w c0061w = AbstractC3366a0.f9842b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9899e;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, c0061w)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
            } else if (obj instanceof C0054p) {
                ((C0054p) obj).m129b();
                break;
            } else {
                if (obj == c0061w) {
                    break;
                }
                C0054p c0054p = new C0054p(8, true);
                c0054p.m128a((Runnable) obj);
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0054p)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == obj);
            }
        }
        while (m5351f0() <= 0) {
        }
        System.nanoTime();
    }
}
