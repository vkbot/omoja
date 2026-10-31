package p211u4;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p141n.C2455p;

/* JADX INFO: renamed from: u4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3290c implements InterfaceC3294g {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9628b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ScheduledExecutorServiceC3293f f9629c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Runnable f9630d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ long f9631e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ long f9632f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ TimeUnit f9633g;

    public /* synthetic */ C3290c(ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f, Runnable runnable, long j10, long j11, TimeUnit timeUnit, int i10) {
        this.f9628b = i10;
        this.f9629c = scheduledExecutorServiceC3293f;
        this.f9630d = runnable;
        this.f9631e = j10;
        this.f9632f = j11;
        this.f9633g = timeUnit;
    }

    @Override // p211u4.InterfaceC3294g
    /* JADX INFO: renamed from: a */
    public final ScheduledFuture mo3050a(C2455p c2455p) {
        switch (this.f9628b) {
            case 0:
                ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f = this.f9629c;
                return scheduledExecutorServiceC3293f.f9642c.scheduleAtFixedRate(new RunnableC3291d(scheduledExecutorServiceC3293f, this.f9630d, c2455p, 0), this.f9631e, this.f9632f, this.f9633g);
            default:
                ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f2 = this.f9629c;
                return scheduledExecutorServiceC3293f2.f9642c.scheduleWithFixedDelay(new RunnableC3291d(scheduledExecutorServiceC3293f2, this.f9630d, c2455p, 2), this.f9631e, this.f9632f, this.f9633g);
        }
    }
}
