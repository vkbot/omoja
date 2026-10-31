package p139m8;

import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p000a.AbstractC0000a;
import p033c8.C1013c;
import p033c8.EnumC1012b;
import p242x7.AbstractC3593j;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2427o extends AbstractC3593j {

    /* JADX INFO: renamed from: b */
    public final ScheduledExecutorService f6590b;

    /* JADX INFO: renamed from: c */
    public final C1013c f6591c = new C1013c(1);

    /* JADX INFO: renamed from: d */
    public volatile boolean f6592d;

    public C2427o(ScheduledExecutorService scheduledExecutorService) {
        this.f6590b = scheduledExecutorService;
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: a */
    public final InterfaceC3762a mo3778a(Runnable runnable, TimeUnit timeUnit) {
        EnumC1012b enumC1012b = EnumC1012b.f1015b;
        if (this.f6592d) {
            return enumC1012b;
        }
        RunnableC2425m runnableC2425m = new RunnableC2425m(runnable, this.f6591c);
        this.f6591c.m1221a(runnableC2425m);
        try {
            runnableC2425m.m3784a(this.f6590b.submit((Callable) runnableC2425m));
            return runnableC2425m;
        } catch (RejectedExecutionException e) {
            dispose();
            AbstractC0000a.m18s(e);
            return enumC1012b;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f6592d) {
            return;
        }
        this.f6592d = true;
        this.f6591c.dispose();
    }
}
