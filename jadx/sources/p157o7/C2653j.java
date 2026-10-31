package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p120l.C2187d;
import p148n7.ExecutorC2523k1;
import p148n7.RunnableC2520j1;

/* JADX INFO: renamed from: o7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2653j {

    /* JADX INFO: renamed from: e */
    public static final Logger f7530e = Logger.getLogger(C2653j.class.getName());

    /* JADX INFO: renamed from: a */
    public final ScheduledExecutorService f7531a;

    /* JADX INFO: renamed from: b */
    public final ExecutorC2523k1 f7532b;

    /* JADX INFO: renamed from: c */
    public C2702r0 f7533c;

    /* JADX INFO: renamed from: d */
    public C2187d f7534d;

    public C2653j(C2722u2 c2722u2, ScheduledExecutorServiceC2620d2 scheduledExecutorServiceC2620d2, ExecutorC2523k1 executorC2523k1) {
        this.f7531a = scheduledExecutorServiceC2620d2;
        this.f7532b = executorC2523k1;
    }

    /* JADX INFO: renamed from: a */
    public final void m4168a(RunnableC1054m runnableC1054m) {
        this.f7532b.m3957d();
        if (this.f7533c == null) {
            this.f7533c = C2722u2.m4244s();
        }
        C2187d c2187d = this.f7534d;
        if (c2187d != null) {
            RunnableC2520j1 runnableC2520j1 = (RunnableC2520j1) c2187d.f5705c;
            if (!runnableC2520j1.f6981d && !runnableC2520j1.f6980c) {
                return;
            }
        }
        long jM4230a = this.f7533c.m4230a();
        this.f7534d = this.f7532b.m3956c(runnableC1054m, jM4230a, TimeUnit.NANOSECONDS, this.f7531a);
        f7530e.log(Level.FINE, "Scheduling DNS resolution backoff for {0}ns", Long.valueOf(jM4230a));
    }
}
