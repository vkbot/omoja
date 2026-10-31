package p148n7;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p028c3.RunnableC0979e;
import p120l.C2187d;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.k1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC2523k1 implements Executor {

    /* JADX INFO: renamed from: b */
    public final Thread.UncaughtExceptionHandler f6984b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentLinkedQueue f6985c = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: d */
    public final AtomicReference f6986d = new AtomicReference();

    public ExecutorC2523k1(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f6984b = uncaughtExceptionHandler;
    }

    /* JADX INFO: renamed from: a */
    public final void m3954a() {
        AtomicReference atomicReference;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.f6985c;
        do {
            Thread threadCurrentThread = Thread.currentThread();
            do {
                atomicReference = this.f6986d;
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
                                this.f6984b.uncaughtException(Thread.currentThread(), th);
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

    /* JADX INFO: renamed from: b */
    public final void m3955b(Runnable runnable) {
        AbstractC2587b.m4042i(runnable, "runnable is null");
        this.f6985c.add(runnable);
    }

    /* JADX INFO: renamed from: c */
    public final C2187d m3956c(Runnable runnable, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        RunnableC2520j1 runnableC2520j1 = new RunnableC2520j1(runnable);
        return new C2187d(runnableC2520j1, scheduledExecutorService.schedule(new RunnableC0979e(this, runnableC2520j1, runnable, 1), j10, timeUnit));
    }

    /* JADX INFO: renamed from: d */
    public final void m3957d() {
        AbstractC2587b.m4046m(Thread.currentThread() == this.f6986d.get(), "Not called from the SynchronizationContext");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m3955b(runnable);
        m3954a();
    }
}
