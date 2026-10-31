package p139m8;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p033c8.EnumC1012b;
import p095i8.RunnableC1791p;
import p242x7.AbstractC3593j;
import p242x7.AbstractC3594k;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2416d extends AbstractC3594k {

    /* JADX INFO: renamed from: b */
    public static final C2414b f6549b;

    /* JADX INFO: renamed from: c */
    public static final ThreadFactoryC2423k f6550c;

    /* JADX INFO: renamed from: d */
    public static final int f6551d;

    /* JADX INFO: renamed from: e */
    public static final C2415c f6552e;

    /* JADX INFO: renamed from: a */
    public final AtomicReference f6553a;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        f6551d = iAvailableProcessors;
        C2415c c2415c = new C2415c(new ThreadFactoryC2423k("RxComputationShutdown"));
        f6552e = c2415c;
        c2415c.dispose();
        ThreadFactoryC2423k threadFactoryC2423k = new ThreadFactoryC2423k("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f6550c = threadFactoryC2423k;
        C2414b c2414b = new C2414b(0, threadFactoryC2423k);
        f6549b = c2414b;
        for (C2415c c2415c2 : c2414b.f6547b) {
            c2415c2.dispose();
        }
    }

    public C2416d() {
        C2414b c2414b = f6549b;
        AtomicReference atomicReference = new AtomicReference(c2414b);
        this.f6553a = atomicReference;
        C2414b c2414b2 = new C2414b(f6551d, f6550c);
        while (!atomicReference.compareAndSet(c2414b, c2414b2)) {
            if (atomicReference.get() != c2414b) {
                C2415c[] c2415cArr = c2414b2.f6547b;
                for (C2415c c2415c : c2415cArr) {
                    c2415c.dispose();
                }
                return;
            }
        }
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: a */
    public final AbstractC3593j mo3780a() {
        C2415c c2415c;
        C2414b c2414b = (C2414b) this.f6553a.get();
        int i10 = c2414b.f6546a;
        if (i10 == 0) {
            c2415c = f6552e;
        } else {
            C2415c[] c2415cArr = c2414b.f6547b;
            long j10 = c2414b.f6548c;
            c2414b.f6548c = 1 + j10;
            c2415c = c2415cArr[(int) (j10 % ((long) i10))];
        }
        return new C2413a(c2415c);
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: c */
    public final InterfaceC3762a mo3781c(RunnableC1791p runnableC1791p) {
        C2415c c2415c;
        C2414b c2414b = (C2414b) this.f6553a.get();
        int i10 = c2414b.f6546a;
        if (i10 == 0) {
            c2415c = f6552e;
        } else {
            C2415c[] c2415cArr = c2414b.f6547b;
            long j10 = c2414b.f6548c;
            c2414b.f6548c = 1 + j10;
            c2415c = c2415cArr[(int) (j10 % ((long) i10))];
        }
        c2415c.getClass();
        CallableC2424l callableC2424l = new CallableC2424l(runnableC1791p);
        try {
            callableC2424l.m3783a(c2415c.f6572b.submit(callableC2424l));
            return callableC2424l;
        } catch (RejectedExecutionException e) {
            AbstractC0000a.m18s(e);
            return EnumC1012b.f1015b;
        }
    }
}
