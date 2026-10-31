package o7;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m4 implements Executor, Runnable {
    public static final Logger e = Logger.getLogger(m4.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p4 f4346f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f4347b;
    public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    public volatile int d = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        p4 l4Var;
        try {
            l4Var = new k4(AtomicIntegerFieldUpdater.newUpdater(m4.class, "d"));
        } catch (Throwable th) {
            e.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th);
            l4Var = new l4();
        }
        f4346f = l4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m4(Executor executor) {
        o4.b.i(executor, "'executor' must not be null.");
        this.f4347b = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Runnable runnable) {
        p4 p4Var = f4346f;
        if (p4Var.p(this)) {
            try {
                this.f4347b.execute(this);
            } catch (Throwable th) {
                if (runnable != null) {
                    this.c.remove(runnable);
                }
                p4Var.q(this);
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        o4.b.i(runnable, "'r' must not be null.");
        this.c.add(runnable);
        a(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        p4 p4Var = f4346f;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.c;
        while (true) {
            try {
                Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
                if (runnable == null) {
                    break;
                }
                try {
                    runnable.run();
                } catch (RuntimeException e6) {
                    e.log(Level.SEVERE, "Exception while executing runnable " + runnable, (Throwable) e6);
                }
            } catch (Throwable th) {
                p4Var.q(this);
                throw th;
            }
        }
        p4Var.q(this);
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        a(null);
    }
}
