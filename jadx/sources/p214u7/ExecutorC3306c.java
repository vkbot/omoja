package p214u7;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: u7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC3306c extends ConcurrentLinkedQueue implements Executor {

    /* JADX INFO: renamed from: c */
    public static final Logger f9684c = Logger.getLogger(ExecutorC3306c.class.getName());

    /* JADX INFO: renamed from: d */
    public static final Object f9685d = new Object();

    /* JADX INFO: renamed from: b */
    public volatile Object f9686b;

    /* JADX INFO: renamed from: a */
    public final void m5233a() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Runnable runnable = (Runnable) poll();
        if (runnable == null) {
            this.f9686b = Thread.currentThread();
            while (true) {
                try {
                    Runnable runnable2 = (Runnable) poll();
                    if (runnable2 != null) {
                        this.f9686b = null;
                        runnable = runnable2;
                        break;
                    } else {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            throw new InterruptedException();
                        }
                    }
                } catch (Throwable th) {
                    this.f9686b = null;
                    throw th;
                }
            }
        }
        do {
            try {
                runnable.run();
            } catch (Throwable th2) {
                f9684c.log(Level.WARNING, "Runnable threw exception", th2);
            }
            runnable = (Runnable) poll();
        } while (runnable != null);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        add(runnable);
        Object obj = this.f9686b;
        if (obj != f9685d) {
            LockSupport.unpark((Thread) obj);
        } else if (remove(runnable) && AbstractC3308e.f9691b) {
            throw new RejectedExecutionException();
        }
    }

    public final void shutdown() {
        this.f9686b = f9685d;
        while (true) {
            Runnable runnable = (Runnable) poll();
            if (runnable == null) {
                return;
            }
            try {
                runnable.run();
            } catch (Throwable th) {
                f9684c.log(Level.WARNING, "Runnable threw exception", th);
            }
        }
    }
}
