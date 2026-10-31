package m8;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends x7.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f3712b;
    public static final k c;
    public static final g d;
    public static final e e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f3713a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        g gVar = new g(new k("RxCachedThreadSchedulerShutdown"));
        d = gVar;
        gVar.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        k kVar = new k("RxCachedThreadScheduler", iMax, false);
        f3712b = kVar;
        c = new k("RxCachedWorkerPoolEvictor", iMax, false);
        e eVar = new e(0L, null, kVar);
        e = eVar;
        eVar.d.dispose();
        ScheduledFuture scheduledFuture = eVar.f3709f;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = eVar.e;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h() {
        e eVar = e;
        AtomicReference atomicReference = new AtomicReference(eVar);
        this.f3713a = atomicReference;
        e eVar2 = new e(60L, TimeUnit.SECONDS, f3712b);
        while (!atomicReference.compareAndSet(eVar, eVar2)) {
            if (atomicReference.get() != eVar) {
                eVar2.d.dispose();
                ScheduledFuture scheduledFuture = eVar2.f3709f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                ScheduledExecutorService scheduledExecutorService = eVar2.e;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                    return;
                }
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.k
    public final x7.j a() {
        return new f((e) this.f3713a.get());
    }
}
