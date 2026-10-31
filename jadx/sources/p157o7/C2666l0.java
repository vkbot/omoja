package p157o7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import p141n.C2455p;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.C2492a0;
import p148n7.C2497c;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p148n7.C2530n;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2666l0 implements InterfaceC2680n2 {

    /* JADX INFO: renamed from: c */
    public final Executor f7598c;

    /* JADX INFO: renamed from: d */
    public final ExecutorC2523k1 f7599d;

    /* JADX INFO: renamed from: e */
    public RunnableC2654j0 f7600e;

    /* JADX INFO: renamed from: f */
    public RunnableC2654j0 f7601f;

    /* JADX INFO: renamed from: g */
    public RunnableC2654j0 f7602g;

    /* JADX INFO: renamed from: h */
    public C2455p f7603h;

    /* JADX INFO: renamed from: j */
    public C2508f1 f7605j;

    /* JADX INFO: renamed from: k */
    public AbstractC2513h0 f7606k;

    /* JADX INFO: renamed from: l */
    public long f7607l;

    /* JADX INFO: renamed from: a */
    public final C2492a0 f7596a = C2492a0.m3881a(C2666l0.class, null);

    /* JADX INFO: renamed from: b */
    public final Object f7597b = new Object();

    /* JADX INFO: renamed from: i */
    public Collection f7604i = new LinkedHashSet();

    public C2666l0(Executor executor, ExecutorC2523k1 executorC2523k1) {
        this.f7598c = executor;
        this.f7599d = executorC2523k1;
    }

    @Override // p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: a */
    public final void mo4170a(C2508f1 c2508f1) {
        RunnableC2654j0 runnableC2654j0;
        synchronized (this.f7597b) {
            try {
                if (this.f7605j != null) {
                    return;
                }
                this.f7605j = c2508f1;
                this.f7599d.m3955b(new RunnableC2624e0(5, this, c2508f1));
                if (!m4183f() && (runnableC2654j0 = this.f7602g) != null) {
                    this.f7599d.m3955b(runnableC2654j0);
                    this.f7602g = null;
                }
                this.f7599d.m3954a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: b */
    public final Runnable mo4181b(InterfaceC2674m2 interfaceC2674m2) {
        C2455p c2455p = (C2455p) interfaceC2674m2;
        this.f7603h = c2455p;
        this.f7600e = new RunnableC2654j0(c2455p, 0);
        this.f7601f = new RunnableC2654j0(c2455p, 1);
        this.f7602g = new RunnableC2654j0(c2455p, 2);
        return null;
    }

    @Override // p148n7.InterfaceC2554z
    /* JADX INFO: renamed from: c */
    public final C2492a0 mo3995c() {
        return this.f7596a;
    }

    @Override // p157o7.InterfaceC2737x
    /* JADX INFO: renamed from: d */
    public final InterfaceC2719u mo4156d(C2551x0 c2551x0, C2547v0 c2547v0, C2497c c2497c, AbstractC2503e[] abstractC2503eArr) {
        InterfaceC2719u c2708s0;
        try {
            C2639g3 c2639g3 = new C2639g3(c2551x0, c2547v0, c2497c);
            AbstractC2513h0 abstractC2513h0 = null;
            long j10 = -1;
            while (true) {
                synchronized (this.f7597b) {
                    C2508f1 c2508f1 = this.f7605j;
                    if (c2508f1 == null) {
                        AbstractC2513h0 abstractC2513h1 = this.f7606k;
                        if (abstractC2513h1 != null) {
                            if (abstractC2513h0 != null && j10 == this.f7607l) {
                                c2708s0 = m4182e(c2639g3, abstractC2503eArr);
                                break;
                            }
                            j10 = this.f7607l;
                            InterfaceC2737x interfaceC2737xM4262f = AbstractC2743y0.m4262f(abstractC2513h1.mo3942a(c2639g3), Boolean.TRUE.equals(c2497c.f6895e));
                            if (interfaceC2737xM4262f != null) {
                                c2708s0 = interfaceC2737xM4262f.mo4156d(c2639g3.f7490c, c2639g3.f7489b, c2639g3.f7488a, abstractC2503eArr);
                                break;
                            }
                            abstractC2513h0 = abstractC2513h1;
                        } else {
                            c2708s0 = m4182e(c2639g3, abstractC2503eArr);
                            break;
                        }
                    } else {
                        c2708s0 = new C2708s0(c2508f1, EnumC2725v.f7801b, abstractC2503eArr);
                        break;
                    }
                }
            }
            this.f7599d.m3954a();
            return c2708s0;
        } catch (Throwable th) {
            this.f7599d.m3954a();
            throw th;
        }
    }

    /* JADX INFO: renamed from: e */
    public final C2660k0 m4182e(C2639g3 c2639g3, AbstractC2503e[] abstractC2503eArr) {
        int size;
        C2660k0 c2660k0 = new C2660k0(this, c2639g3, abstractC2503eArr);
        this.f7604i.add(c2660k0);
        synchronized (this.f7597b) {
            size = this.f7604i.size();
        }
        if (size == 1) {
            this.f7599d.m3955b(this.f7600e);
        }
        for (AbstractC2503e abstractC2503e : abstractC2503eArr) {
            abstractC2503e.mo3893a();
        }
        return c2660k0;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m4183f() {
        boolean z9;
        synchronized (this.f7597b) {
            z9 = !this.f7604i.isEmpty();
        }
        return z9;
    }

    /* JADX INFO: renamed from: g */
    public final void m4184g(AbstractC2513h0 abstractC2513h0) {
        RunnableC2654j0 runnableC2654j0;
        RunnableC2672m0 runnableC2672m0;
        synchronized (this.f7597b) {
            this.f7606k = abstractC2513h0;
            this.f7607l++;
            if (abstractC2513h0 != null && m4183f()) {
                ArrayList arrayList = new ArrayList(this.f7604i);
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    C2660k0 c2660k0 = (C2660k0) obj;
                    C2507f0 c2507f0Mo3942a = abstractC2513h0.mo3942a(c2660k0.f7564k);
                    C2497c c2497c = c2660k0.f7564k.f7488a;
                    InterfaceC2737x interfaceC2737xM4262f = AbstractC2743y0.m4262f(c2507f0Mo3942a, Boolean.TRUE.equals(c2497c.f6895e));
                    if (interfaceC2737xM4262f != null) {
                        Executor executor = this.f7598c;
                        Executor executor2 = c2497c.f6892b;
                        if (executor2 != null) {
                            executor = executor2;
                        }
                        C2530n c2530n = c2660k0.f7565l;
                        C2530n c2530nM3962a = c2530n.m3962a();
                        try {
                            C2639g3 c2639g3 = c2660k0.f7564k;
                            InterfaceC2719u interfaceC2719uMo4156d = interfaceC2737xM4262f.mo4156d(c2639g3.f7490c, c2639g3.f7489b, c2639g3.f7488a, c2660k0.f7566m);
                            c2530n.m3963c(c2530nM3962a);
                            synchronized (c2660k0) {
                                try {
                                    runnableC2672m0 = null;
                                    if (c2660k0.f7557d == null) {
                                        AbstractC2587b.m4042i(interfaceC2719uMo4156d, "stream");
                                        InterfaceC2719u interfaceC2719u = c2660k0.f7557d;
                                        AbstractC2587b.m4045l("realStream already set to %s", interfaceC2719u == null, interfaceC2719u);
                                        c2660k0.f7557d = interfaceC2719uMo4156d;
                                        c2660k0.f7562i = System.nanoTime();
                                        InterfaceC2731w interfaceC2731w = c2660k0.f7556c;
                                        if (interfaceC2731w == null) {
                                            c2660k0.f7559f = null;
                                            c2660k0.f7555b = true;
                                        }
                                        if (interfaceC2731w != null) {
                                            c2660k0.m4173k(interfaceC2731w);
                                            runnableC2672m0 = new RunnableC2672m0(c2660k0, 2);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (runnableC2672m0 != null) {
                                executor.execute(runnableC2672m0);
                            }
                            arrayList2.add(c2660k0);
                        } catch (Throwable th2) {
                            c2530n.m3963c(c2530nM3962a);
                            throw th2;
                        }
                    }
                }
                synchronized (this.f7597b) {
                    try {
                        if (m4183f()) {
                            this.f7604i.removeAll(arrayList2);
                            if (this.f7604i.isEmpty()) {
                                this.f7604i = new LinkedHashSet();
                            }
                            if (!m4183f()) {
                                this.f7599d.m3955b(this.f7601f);
                                if (this.f7605j != null && (runnableC2654j0 = this.f7602g) != null) {
                                    this.f7599d.m3955b(runnableC2654j0);
                                    this.f7602g = null;
                                }
                            }
                            this.f7599d.m3954a();
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }
}
