package p223v7;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p028c3.RunnableC0979e;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2519j0;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2510g0;
import p148n7.C2538r;
import p148n7.ExecutorC2523k1;
import p148n7.RunnableC2517i1;
import p148n7.RunnableC2520j1;
import p155o4.AbstractC2587b;
import p157o7.C2688o4;
import p157o7.C2722u2;

/* JADX INFO: renamed from: v7.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3359t extends AbstractC2519j0 {

    /* JADX INFO: renamed from: n */
    public static final C2491a f9819n = new C2491a("addressTrackerKey");

    /* JADX INFO: renamed from: f */
    public final C3351l f9820f;

    /* JADX INFO: renamed from: g */
    public final ExecutorC2523k1 f9821g;

    /* JADX INFO: renamed from: h */
    public final C3344e f9822h;

    /* JADX INFO: renamed from: i */
    public final C2722u2 f9823i;

    /* JADX INFO: renamed from: j */
    public final ScheduledExecutorService f9824j;

    /* JADX INFO: renamed from: k */
    public C2187d f9825k;

    /* JADX INFO: renamed from: l */
    public Long f9826l;

    /* JADX INFO: renamed from: m */
    public final AbstractC2503e f9827m;

    public C3359t(AbstractC2503e abstractC2503e) {
        C2722u2 c2722u2 = C2722u2.f7798d;
        AbstractC2503e abstractC2503eMo3895c = abstractC2503e.mo3895c();
        this.f9827m = abstractC2503eMo3895c;
        this.f9822h = new C3344e(new C3343d(this, abstractC2503e));
        this.f9820f = new C3351l();
        ExecutorC2523k1 executorC2523k1Mo3898f = abstractC2503e.mo3898f();
        AbstractC2587b.m4042i(executorC2523k1Mo3898f, "syncContext");
        this.f9821g = executorC2523k1Mo3898f;
        ScheduledExecutorService scheduledExecutorServiceMo3896d = abstractC2503e.mo3896d();
        AbstractC2587b.m4042i(scheduledExecutorServiceMo3896d, "timeService");
        this.f9824j = scheduledExecutorServiceMo3896d;
        this.f9823i = c2722u2;
        abstractC2503eMo3895c.mo3905m(1, "OutlierDetection lb created.");
    }

    /* JADX INFO: renamed from: g */
    public static boolean m5269g(List list) {
        Iterator it = list.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((C2538r) it.next()).f7017a.size();
            if (size > 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: h */
    public static ArrayList m5270h(C3351l c3351l, int i10) {
        ArrayList arrayList = new ArrayList();
        for (C3350k c3350k : c3351l.f9792b.values()) {
            if (c3350k.m5264c() >= i10) {
                arrayList.add(c3350k);
            }
        }
        return arrayList;
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: a */
    public final C2508f1 mo3944a(C2510g0 c2510g0) {
        C3344e c3344e = this.f9822h;
        C3351l c3351l = this.f9820f;
        AbstractC2503e abstractC2503e = this.f9827m;
        abstractC2503e.mo3906n(1, "Received resolution result: {0}", c2510g0);
        C3354o c3354o = (C3354o) c2510g0.f6953c;
        ArrayList arrayList = new ArrayList();
        Iterator it = c2510g0.f6951a.iterator();
        while (it.hasNext()) {
            arrayList.addAll(((C2538r) it.next()).f7017a);
        }
        c3351l.f9792b.keySet().retainAll(arrayList);
        Iterator it2 = c3351l.f9792b.values().iterator();
        while (it2.hasNext()) {
            ((C3350k) it2.next()).f9786a = c3354o;
        }
        HashMap map = c3351l.f9792b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            SocketAddress socketAddress = (SocketAddress) obj;
            if (!map.containsKey(socketAddress)) {
                map.put(socketAddress, new C3350k(c3354o));
            }
        }
        C2688o4 c2688o4 = c3354o.f9806g;
        Long l10 = c3354o.f9800a;
        c3344e.m5261i(c2688o4.f7654a);
        if (c3354o.f9804e == null && c3354o.f9805f == null) {
            C2187d c2187d = this.f9825k;
            if (c2187d != null) {
                c2187d.m3482j();
                this.f9826l = null;
                for (C3350k c3350k : c3351l.f9792b.values()) {
                    if (c3350k.m5265d()) {
                        c3350k.m5266e();
                    }
                    c3350k.f9790e = 0;
                }
            }
        } else {
            Long lValueOf = this.f9826l == null ? l10 : Long.valueOf(Math.max(0L, l10.longValue() - (this.f9823i.m4245q() - this.f9826l.longValue())));
            C2187d c2187d2 = this.f9825k;
            if (c2187d2 != null) {
                c2187d2.m3482j();
                for (C3350k c3350k2 : c3351l.f9792b.values()) {
                    C2187d c2187d3 = c3350k2.f9787b;
                    ((AtomicLong) c2187d3.f5705c).set(0L);
                    ((AtomicLong) c2187d3.f5706d).set(0L);
                    C2187d c2187d4 = c3350k2.f9788c;
                    ((AtomicLong) c2187d4.f5705c).set(0L);
                    ((AtomicLong) c2187d4.f5706d).set(0L);
                }
            }
            ExecutorC2523k1 executorC2523k1 = this.f9821g;
            RunnableC0979e runnableC0979e = new RunnableC0979e(this, c3354o, abstractC2503e, 6);
            long jLongValue = lValueOf.longValue();
            long jLongValue2 = l10.longValue();
            ScheduledExecutorService scheduledExecutorService = this.f9824j;
            executorC2523k1.getClass();
            RunnableC2520j1 runnableC2520j1 = new RunnableC2520j1(runnableC0979e);
            this.f9825k = new C2187d(runnableC2520j1, scheduledExecutorService.scheduleWithFixedDelay(new RunnableC2517i1(executorC2523k1, runnableC2520j1, runnableC0979e, jLongValue2), jLongValue, jLongValue2, TimeUnit.NANOSECONDS));
        }
        C2494b c2494b = C2494b.f6881b;
        c3344e.mo3947d(new C2510g0(c2510g0.f6951a, c2510g0.f6952b, c3354o.f9806g.f7655b));
        return C2508f1.f6937e;
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: c */
    public final void mo3946c(C2508f1 c2508f1) {
        this.f9822h.mo3946c(c2508f1);
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: f */
    public final void mo3949f() {
        this.f9822h.mo3949f();
    }
}
