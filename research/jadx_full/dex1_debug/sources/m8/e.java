package m8;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3708b;
    public final ConcurrentLinkedQueue c;
    public final c8.c d;
    public final ScheduledExecutorService e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledFuture f3709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ThreadFactory f3710g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(long j9, TimeUnit timeUnit, ThreadFactory threadFactory) {
        e eVar;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
        ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
        long nanos = timeUnit != null ? timeUnit.toNanos(j9) : 0L;
        this.f3708b = nanos;
        this.c = new ConcurrentLinkedQueue();
        this.d = new c8.c(1);
        this.f3710g = threadFactory;
        if (timeUnit != null) {
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, h.c);
            eVar = this;
            scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(eVar, nanos, nanos, TimeUnit.NANOSECONDS);
        } else {
            eVar = this;
            scheduledExecutorServiceNewScheduledThreadPool = null;
            scheduledFutureScheduleWithFixedDelay = null;
        }
        eVar.e = scheduledExecutorServiceNewScheduledThreadPool;
        eVar.f3709f = scheduledFutureScheduleWithFixedDelay;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        ConcurrentLinkedQueue<g> concurrentLinkedQueue = this.c;
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        long jNanoTime = System.nanoTime();
        for (g gVar : concurrentLinkedQueue) {
            if (gVar.d > jNanoTime) {
                return;
            }
            if (concurrentLinkedQueue.remove(gVar)) {
                this.d.c(gVar);
            }
        }
    }
}
