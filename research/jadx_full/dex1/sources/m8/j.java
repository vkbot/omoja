package m8;

import h8.h0;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class j extends x7.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f3716b;
    public volatile boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(ThreadFactory threadFactory) {
        boolean z8 = n.f3721a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (n.f3721a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            n.d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.f3716b = scheduledExecutorServiceNewScheduledThreadPool;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final z7.a a(Runnable runnable, TimeUnit timeUnit) {
        return this.c ? c8.b.f543b : c(runnable, timeUnit, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final void b(h0 h0Var) {
        a(h0Var, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m c(Runnable runnable, TimeUnit timeUnit, c8.c cVar) {
        m mVar = new m(runnable, cVar);
        if (cVar != null && !cVar.a(mVar)) {
            return mVar;
        }
        try {
            mVar.a(this.f3716b.submit((Callable) mVar));
            return mVar;
        } catch (RejectedExecutionException e) {
            if (cVar != null) {
                cVar.c(mVar);
            }
            a.a.s(e);
            return mVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.f3716b.shutdownNow();
    }
}
