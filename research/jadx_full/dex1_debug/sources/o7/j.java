package o7;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {
    public static final Logger e = Logger.getLogger(j.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f4284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.k1 f4285b;
    public r0 c;
    public l.d d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(u2 u2Var, d2 d2Var, n7.k1 k1Var) {
        this.f4284a = d2Var;
        this.f4285b = k1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(com.bumptech.glide.m mVar) {
        this.f4285b.d();
        if (this.c == null) {
            this.c = u2.s();
        }
        l.d dVar = this.d;
        if (dVar != null) {
            n7.j1 j1Var = (n7.j1) dVar.c;
            if (!j1Var.d && !j1Var.c) {
                return;
            }
        }
        long jA = this.c.a();
        this.d = this.f4285b.c(mVar, jA, TimeUnit.NANOSECONDS, this.f4284a);
        e.log(Level.FINE, "Scheduling DNS resolution backoff for {0}ns", Long.valueOf(jA));
    }
}
