package o7;

import java.util.concurrent.ScheduledFuture;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u1 implements Thread$UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f2 f4459a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u1(f2 f2Var) {
        this.f4459a = f2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread$UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Logger logger = f2.f4211c0;
        Level level = Level.SEVERE;
        StringBuilder sb = new StringBuilder("[");
        f2 f2Var = this.f4459a;
        sb.append(f2Var.f4218a);
        sb.append("] Uncaught exception in the SynchronizationContext. Panic!");
        logger.log(level, sb.toString(), th);
        if (f2Var.f4239z) {
            return;
        }
        f2Var.f4239z = true;
        n3 n3Var = f2Var.f4219a0;
        n3Var.f4352f = false;
        ScheduledFuture scheduledFuture = n3Var.f4353g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            n3Var.f4353g = null;
        }
        f2Var.k(false);
        t1 t1Var = new t1(th);
        f2Var.f4238y = t1Var;
        f2Var.E.g(t1Var);
        f2Var.P.h(null);
        f2Var.N.m(4, "PANIC! Entering TRANSIENT_FAILURE");
        f2Var.r.c(n7.j.d);
    }
}
