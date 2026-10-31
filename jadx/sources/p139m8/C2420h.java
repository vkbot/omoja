package p139m8;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p242x7.AbstractC3593j;
import p242x7.AbstractC3594k;

/* JADX INFO: renamed from: m8.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2420h extends AbstractC3594k {

    /* JADX INFO: renamed from: b */
    public static final ThreadFactoryC2423k f6565b;

    /* JADX INFO: renamed from: c */
    public static final ThreadFactoryC2423k f6566c;

    /* JADX INFO: renamed from: d */
    public static final C2419g f6567d;

    /* JADX INFO: renamed from: e */
    public static final RunnableC2417e f6568e;

    /* JADX INFO: renamed from: a */
    public final AtomicReference f6569a;

    static {
        C2419g c2419g = new C2419g(new ThreadFactoryC2423k("RxCachedThreadSchedulerShutdown"));
        f6567d = c2419g;
        c2419g.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        ThreadFactoryC2423k threadFactoryC2423k = new ThreadFactoryC2423k("RxCachedThreadScheduler", iMax, false);
        f6565b = threadFactoryC2423k;
        f6566c = new ThreadFactoryC2423k("RxCachedWorkerPoolEvictor", iMax, false);
        RunnableC2417e runnableC2417e = new RunnableC2417e(0L, null, threadFactoryC2423k);
        f6568e = runnableC2417e;
        runnableC2417e.f6556d.dispose();
        ScheduledFuture scheduledFuture = runnableC2417e.f6558f;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = runnableC2417e.f6557e;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public C2420h() {
        RunnableC2417e runnableC2417e = f6568e;
        AtomicReference atomicReference = new AtomicReference(runnableC2417e);
        this.f6569a = atomicReference;
        RunnableC2417e runnableC2417e2 = new RunnableC2417e(60L, TimeUnit.SECONDS, f6565b);
        while (!atomicReference.compareAndSet(runnableC2417e, runnableC2417e2)) {
            if (atomicReference.get() != runnableC2417e) {
                runnableC2417e2.f6556d.dispose();
                ScheduledFuture scheduledFuture = runnableC2417e2.f6558f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                ScheduledExecutorService scheduledExecutorService = runnableC2417e2.f6557e;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    return;
                }
                return;
            }
        }
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: a */
    public final AbstractC3593j mo3780a() {
        return new C2418f((RunnableC2417e) this.f6569a.get());
    }
}
