package p157o7;

import java.util.concurrent.ScheduledFuture;
import java.util.logging.Level;
import java.util.logging.Logger;
import p148n7.EnumC2518j;

/* JADX INFO: renamed from: o7.u1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2721u1 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2632f2 f7796a;

    public C2721u1(C2632f2 c2632f2) {
        this.f7796a = c2632f2;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Logger logger = C2632f2.f7390c0;
        Level level = Level.SEVERE;
        StringBuilder sb = new StringBuilder("[");
        C2632f2 c2632f2 = this.f7796a;
        sb.append(c2632f2.f7423a);
        sb.append("] Uncaught exception in the SynchronizationContext. Panic!");
        logger.log(level, sb.toString(), th);
        if (c2632f2.f7450z) {
            return;
        }
        c2632f2.f7450z = true;
        C2681n3 c2681n3 = c2632f2.f7424a0;
        c2681n3.f7642f = false;
        ScheduledFuture scheduledFuture = c2681n3.f7643g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            c2681n3.f7643g = null;
        }
        c2632f2.m4141k(false);
        C2715t1 c2715t1 = new C2715t1(th);
        c2632f2.f7449y = c2715t1;
        c2632f2.f7401E.m4184g(c2715t1);
        c2632f2.f7412P.m4131h(null);
        c2632f2.f7410N.mo3905m(4, "PANIC! Entering TRANSIENT_FAILURE");
        c2632f2.f7442r.m1075c(EnumC2518j.f6970d);
    }
}
