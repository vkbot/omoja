package p157o7;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p091i4.C1748f;
import p141n.C2455p;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.p1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2691p1 {

    /* JADX INFO: renamed from: a */
    public final ScheduledExecutorService f7683a;

    /* JADX INFO: renamed from: b */
    public final C1748f f7684b;

    /* JADX INFO: renamed from: c */
    public final C2455p f7685c;

    /* JADX INFO: renamed from: d */
    public int f7686d;

    /* JADX INFO: renamed from: e */
    public ScheduledFuture f7687e;

    /* JADX INFO: renamed from: f */
    public ScheduledFuture f7688f;

    /* JADX INFO: renamed from: g */
    public final RunnableC2697q1 f7689g;

    /* JADX INFO: renamed from: h */
    public final RunnableC2697q1 f7690h;

    /* JADX INFO: renamed from: i */
    public final long f7691i;

    /* JADX INFO: renamed from: j */
    public final long f7692j;

    public C2691p1(C2455p c2455p, ScheduledExecutorService scheduledExecutorService, long j10, long j11) {
        C1748f c1748f = new C1748f();
        this.f7686d = 1;
        this.f7689g = new RunnableC2697q1(new RunnableC2679n1(this, 0));
        this.f7690h = new RunnableC2697q1(new RunnableC2679n1(this, 1));
        this.f7685c = c2455p;
        AbstractC2587b.m4042i(scheduledExecutorService, "scheduler");
        this.f7683a = scheduledExecutorService;
        this.f7684b = c1748f;
        this.f7691i = j10;
        this.f7692j = j11;
        c1748f.f4562a = false;
        c1748f.m2873b();
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m4203a() {
        try {
            C1748f c1748f = this.f7684b;
            c1748f.f4562a = false;
            c1748f.m2873b();
            int i10 = this.f7686d;
            if (i10 == 2) {
                this.f7686d = 3;
            } else if (i10 == 4 || i10 == 5) {
                ScheduledFuture scheduledFuture = this.f7687e;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                if (this.f7686d == 5) {
                    this.f7686d = 1;
                } else {
                    this.f7686d = 2;
                    AbstractC2587b.m4046m(this.f7688f == null, "There should be no outstanding pingFuture");
                    this.f7688f = this.f7683a.schedule(this.f7690h, this.f7691i, TimeUnit.NANOSECONDS);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final synchronized void m4204b() {
        try {
            int i10 = this.f7686d;
            if (i10 == 1) {
                this.f7686d = 2;
                if (this.f7688f == null) {
                    ScheduledExecutorService scheduledExecutorService = this.f7683a;
                    RunnableC2697q1 runnableC2697q1 = this.f7690h;
                    long j10 = this.f7691i;
                    C1748f c1748f = this.f7684b;
                    this.f7688f = scheduledExecutorService.schedule(runnableC2697q1, j10 - c1748f.m2872a(), TimeUnit.NANOSECONDS);
                }
            } else if (i10 == 5) {
                this.f7686d = 4;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
