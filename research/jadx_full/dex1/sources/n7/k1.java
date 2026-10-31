package n7;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k1 implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Thread$UncaughtExceptionHandler f3951b;
    public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    public final AtomicReference d = new AtomicReference();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k1(Thread$UncaughtExceptionHandler thread$UncaughtExceptionHandler) {
        this.f3951b = thread$UncaughtExceptionHandler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        AtomicReference atomicReference;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.c;
        do {
            Thread threadCurrentThread = Thread.currentThread();
            do {
                atomicReference = this.d;
                if (atomicReference.compareAndSet(null, threadCurrentThread)) {
                    while (true) {
                        try {
                            Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
                            if (runnable == null) {
                                break;
                            }
                            try {
                                runnable.run();
                            } catch (Throwable th) {
                                this.f3951b.uncaughtException(Thread.currentThread(), th);
                            }
                        } catch (Throwable th2) {
                            atomicReference.set(null);
                            throw th2;
                        }
                    }
                    atomicReference.set(null);
                }
            } while (atomicReference.get() == null);
            return;
        } while (!concurrentLinkedQueue.isEmpty());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Runnable runnable) {
        o4.b.i(runnable, "runnable is null");
        this.c.add(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l.d c(Runnable runnable, long j9, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        j1 j1Var = new j1(runnable);
        return new l.d(j1Var, scheduledExecutorService.schedule(new c3.e(this, j1Var, runnable, 1), j9, timeUnit));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        o4.b.m(Thread.currentThread() == this.d.get(), "Not called from the SynchronizationContext");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable);
        a();
    }
}
