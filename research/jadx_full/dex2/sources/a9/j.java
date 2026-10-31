package a9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class j extends v8.t implements v8.d0 {
    public static final AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(j.class, "runningWorkers");
    public final v8.t b;
    public final int c;
    public final n d;
    public final Object e;

    @Volatile
    private volatile int runningWorkers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: v8.t */
    /* JADX WARN: Multi-variable type inference failed */
    public j(v8.t tVar, int i) {
        this.b = tVar;
        this.c = i;
        if ((tVar instanceof v8.d0 ? (v8.d0) tVar : null) == null) {
            int i2 = v8.c0.a;
        }
        this.d = new n();
        this.e = new Object();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean S() {
        synchronized (this.e) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f;
            if (atomicIntegerFieldUpdater.get(this) >= this.c) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableY;
        this.d.a(runnable);
        if (f.get(this) >= this.c || !S() || (runnableY = y()) == null) {
            return;
        }
        this.b.dispatch(this, new i(0, this, runnableY));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableY;
        this.d.a(runnable);
        if (f.get(this) >= this.c || !S() || (runnableY = y()) == null) {
            return;
        }
        this.b.dispatchYield(this, new i(0, this, runnableY));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.t
    public final v8.t limitedParallelism(int i) {
        a.a(i);
        return i >= this.c ? this : super.limitedParallelism(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Runnable y() {
        while (true) {
            Runnable runnable = (Runnable) this.d.d();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.e) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.d.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
