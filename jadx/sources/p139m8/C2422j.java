package p139m8;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p000a.AbstractC0000a;
import p033c8.C1013c;
import p033c8.EnumC1012b;
import p085h8.AbstractRunnableC1699h0;
import p242x7.AbstractC3593j;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2422j extends AbstractC3593j {

    /* JADX INFO: renamed from: b */
    public final ScheduledExecutorService f6572b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f6573c;

    public C2422j(ThreadFactory threadFactory) {
        boolean z9 = AbstractC2426n.f6586a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (AbstractC2426n.f6586a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            AbstractC2426n.f6589d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.f6572b = scheduledExecutorServiceNewScheduledThreadPool;
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: a */
    public final InterfaceC3762a mo3778a(Runnable runnable, TimeUnit timeUnit) {
        return this.f6573c ? EnumC1012b.f1015b : m3782c(runnable, timeUnit, null);
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: b */
    public final void mo3779b(AbstractRunnableC1699h0 abstractRunnableC1699h0) {
        mo3778a(abstractRunnableC1699h0, null);
    }

    /* JADX INFO: renamed from: c */
    public final RunnableC2425m m3782c(Runnable runnable, TimeUnit timeUnit, C1013c c1013c) {
        RunnableC2425m runnableC2425m = new RunnableC2425m(runnable, c1013c);
        if (c1013c != null && !c1013c.m1221a(runnableC2425m)) {
            return runnableC2425m;
        }
        try {
            runnableC2425m.m3784a(this.f6572b.submit((Callable) runnableC2425m));
            return runnableC2425m;
        } catch (RejectedExecutionException e) {
            if (c1013c != null) {
                c1013c.m1223c(runnableC2425m);
            }
            AbstractC0000a.m18s(e);
            return runnableC2425m;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f6573c) {
            return;
        }
        this.f6573c = true;
        this.f6572b.shutdownNow();
    }
}
