package m8;

import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends x7.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f3724b;
    public static final ScheduledExecutorService c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f3725a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        c = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f3724b = new k("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p() {
        AtomicReference atomicReference = new AtomicReference();
        this.f3725a = atomicReference;
        boolean z8 = n.f3721a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, f3724b);
        if (n.f3721a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            n.d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        atomicReference.lazySet(scheduledExecutorServiceNewScheduledThreadPool);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final x7.j a() {
        return new o((ScheduledExecutorService) this.f3725a.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final z7.a c(i8.p pVar) {
        l lVar = new l(pVar);
        try {
            lVar.a(((ScheduledExecutorService) this.f3725a.get()).submit(lVar));
            return lVar;
        } catch (RejectedExecutionException e) {
            a.a.s(e);
            return c8.b.f543b;
        }
    }
}
