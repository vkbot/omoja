package p139m8;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p033c8.C1013c;

/* JADX INFO: renamed from: m8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2417e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final long f6554b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentLinkedQueue f6555c;

    /* JADX INFO: renamed from: d */
    public final C1013c f6556d;

    /* JADX INFO: renamed from: e */
    public final ScheduledExecutorService f6557e;

    /* JADX INFO: renamed from: f */
    public final ScheduledFuture f6558f;

    /* JADX INFO: renamed from: g */
    public final ThreadFactory f6559g;

    public RunnableC2417e(long j10, TimeUnit timeUnit, ThreadFactory threadFactory) {
        RunnableC2417e runnableC2417e;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
        ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
        long nanos = timeUnit != null ? timeUnit.toNanos(j10) : 0L;
        this.f6554b = nanos;
        this.f6555c = new ConcurrentLinkedQueue();
        this.f6556d = new C1013c(1);
        this.f6559g = threadFactory;
        if (timeUnit != null) {
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, C2420h.f6566c);
            runnableC2417e = this;
            scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(runnableC2417e, nanos, nanos, TimeUnit.NANOSECONDS);
        } else {
            runnableC2417e = this;
            scheduledExecutorServiceNewScheduledThreadPool = null;
            scheduledFutureScheduleWithFixedDelay = null;
        }
        runnableC2417e.f6557e = scheduledExecutorServiceNewScheduledThreadPool;
        runnableC2417e.f6558f = scheduledFutureScheduleWithFixedDelay;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConcurrentLinkedQueue<C2419g> concurrentLinkedQueue = this.f6555c;
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        long jNanoTime = System.nanoTime();
        for (C2419g c2419g : concurrentLinkedQueue) {
            if (c2419g.f6564d > jNanoTime) {
                return;
            }
            if (concurrentLinkedQueue.remove(c2419g)) {
                this.f6556d.m1223c(c2419g);
            }
        }
    }
}
