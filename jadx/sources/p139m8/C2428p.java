package p139m8;

import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p033c8.EnumC1012b;
import p095i8.RunnableC1791p;
import p242x7.AbstractC3593j;
import p242x7.AbstractC3594k;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2428p extends AbstractC3594k {

    /* JADX INFO: renamed from: b */
    public static final ThreadFactoryC2423k f6593b;

    /* JADX INFO: renamed from: c */
    public static final ScheduledExecutorService f6594c;

    /* JADX INFO: renamed from: a */
    public final AtomicReference f6595a;

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f6594c = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f6593b = new ThreadFactoryC2423k("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public C2428p() {
        AtomicReference atomicReference = new AtomicReference();
        this.f6595a = atomicReference;
        boolean z9 = AbstractC2426n.f6586a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, f6593b);
        if (AbstractC2426n.f6586a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            AbstractC2426n.f6589d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        atomicReference.lazySet(scheduledExecutorServiceNewScheduledThreadPool);
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: a */
    public final AbstractC3593j mo3780a() {
        return new C2427o((ScheduledExecutorService) this.f6595a.get());
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: c */
    public final InterfaceC3762a mo3781c(RunnableC1791p runnableC1791p) {
        CallableC2424l callableC2424l = new CallableC2424l(runnableC1791p);
        try {
            callableC2424l.m3783a(((ScheduledExecutorService) this.f6595a.get()).submit(callableC2424l));
            return callableC2424l;
        } catch (RejectedExecutionException e) {
            AbstractC0000a.m18s(e);
            return EnumC1012b.f1015b;
        }
    }
}
