package p242x7;

import java.util.concurrent.TimeUnit;
import p095i8.RunnableC1791p;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: x7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3594k {
    static {
        TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15L).longValue());
    }

    /* JADX INFO: renamed from: a */
    public abstract AbstractC3593j mo3780a();

    /* JADX INFO: renamed from: b */
    public InterfaceC3762a m5720b(RunnableC1791p runnableC1791p) {
        return mo3781c(runnableC1791p);
    }

    /* JADX INFO: renamed from: c */
    public InterfaceC3762a mo3781c(RunnableC1791p runnableC1791p) {
        AbstractC3593j abstractC3593jMo3780a = mo3780a();
        RunnableC3592i runnableC3592i = new RunnableC3592i(runnableC1791p, abstractC3593jMo3780a);
        abstractC3593jMo3780a.mo3778a(runnableC3592i, TimeUnit.NANOSECONDS);
        return runnableC3592i;
    }
}
