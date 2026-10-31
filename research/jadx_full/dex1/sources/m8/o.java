package m8;

import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o extends x7.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f3723b;
    public final c8.c c = new c8.c(1);
    public volatile boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(ScheduledExecutorService scheduledExecutorService) {
        this.f3723b = scheduledExecutorService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final z7.a a(Runnable runnable, TimeUnit timeUnit) {
        c8.b bVar = c8.b.f543b;
        if (this.d) {
            return bVar;
        }
        m mVar = new m(runnable, this.c);
        this.c.a(mVar);
        try {
            mVar.a(this.f3723b.submit((Callable) mVar));
            return mVar;
        } catch (RejectedExecutionException e) {
            dispose();
            a.a.s(e);
            return bVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.c.dispose();
    }
}
