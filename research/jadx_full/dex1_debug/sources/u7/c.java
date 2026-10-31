package u7;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends ConcurrentLinkedQueue implements Executor {
    public static final Logger c = Logger.getLogger(c.class.getName());
    public static final Object d = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f5490b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Runnable runnable = (Runnable) poll();
        if (runnable == null) {
            this.f5490b = Thread.currentThread();
            while (true) {
                try {
                    Runnable runnable2 = (Runnable) poll();
                    if (runnable2 != null) {
                        this.f5490b = null;
                        runnable = runnable2;
                        break;
                    } else {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            throw new InterruptedException();
                        }
                    }
                } catch (Throwable th) {
                    this.f5490b = null;
                    throw th;
                }
            }
        }
        do {
            try {
                runnable.run();
            } catch (Throwable th2) {
                c.log(Level.WARNING, "Runnable threw exception", th2);
            }
            runnable = (Runnable) poll();
        } while (runnable != null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        add(runnable);
        Object obj = this.f5490b;
        if (obj != d) {
            LockSupport.unpark((Thread) obj);
        } else if (remove(runnable) && e.f5493b) {
            throw new RejectedExecutionException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void shutdown() {
        this.f5490b = d;
        while (true) {
            Runnable runnable = (Runnable) poll();
            if (runnable == null) {
                return;
            }
            try {
                runnable.run();
            } catch (Throwable th) {
                c.log(Level.WARNING, "Runnable threw exception", th);
            }
        }
    }
}
