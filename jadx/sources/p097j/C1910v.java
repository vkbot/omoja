package p097j;

import androidx.core.util.Pools;
import com.bumptech.glide.C1033f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p025c0.AbstractC0938g;
import p037d0.C1236d;
import p037d0.C1240h;
import p037d0.InterfaceC1237e;
import p131m.ExecutorServiceC2261e;
import p165p2.C2962e;
import p244y.C3621f;

/* JADX INFO: renamed from: j.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1910v implements InterfaceC1237e {

    /* JADX INFO: renamed from: w */
    public static final C2962e f5000w = new C2962e(11);

    /* JADX INFO: renamed from: d */
    public final C1906r f5003d;

    /* JADX INFO: renamed from: e */
    public final Pools.Pool f5004e;

    /* JADX INFO: renamed from: g */
    public final C1906r f5006g;

    /* JADX INFO: renamed from: h */
    public final ExecutorServiceC2261e f5007h;

    /* JADX INFO: renamed from: i */
    public final ExecutorServiceC2261e f5008i;

    /* JADX INFO: renamed from: j */
    public final ExecutorServiceC2261e f5009j;

    /* JADX INFO: renamed from: l */
    public C1911w f5011l;

    /* JADX INFO: renamed from: m */
    public boolean f5012m;

    /* JADX INFO: renamed from: n */
    public boolean f5013n;

    /* JADX INFO: renamed from: o */
    public InterfaceC1889d0 f5014o;

    /* JADX INFO: renamed from: p */
    public int f5015p;

    /* JADX INFO: renamed from: q */
    public boolean f5016q;

    /* JADX INFO: renamed from: r */
    public C1914z f5017r;

    /* JADX INFO: renamed from: s */
    public boolean f5018s;

    /* JADX INFO: renamed from: t */
    public C1912x f5019t;

    /* JADX INFO: renamed from: u */
    public RunnableC1899k f5020u;

    /* JADX INFO: renamed from: v */
    public volatile boolean f5021v;

    /* JADX INFO: renamed from: b */
    public final C1909u f5001b = new C1909u(new ArrayList(2));

    /* JADX INFO: renamed from: c */
    public final C1240h f5002c = new C1240h();

    /* JADX INFO: renamed from: k */
    public final AtomicInteger f5010k = new AtomicInteger();

    /* JADX INFO: renamed from: f */
    public final C2962e f5005f = f5000w;

    public C1910v(ExecutorServiceC2261e executorServiceC2261e, ExecutorServiceC2261e executorServiceC2261e2, ExecutorServiceC2261e executorServiceC2261e3, ExecutorServiceC2261e executorServiceC2261e4, C1906r c1906r, C1906r c1906r2, C1236d c1236d) {
        this.f5007h = executorServiceC2261e;
        this.f5008i = executorServiceC2261e2;
        this.f5009j = executorServiceC2261e4;
        this.f5006g = c1906r;
        this.f5003d = c1906r2;
        this.f5004e = c1236d;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2968a(C3621f c3621f, Executor executor) {
        try {
            this.f5002c.m2224a();
            this.f5001b.f4999b.add(new C1908t(c3621f, executor));
            if (this.f5016q) {
                m2970d(1);
                executor.execute(new RunnableC1907s(this, c3621f, 1));
            } else if (this.f5018s) {
                m2970d(1);
                executor.execute(new RunnableC1907s(this, c3621f, 0));
            } else {
                AbstractC0938g.m1070a("Cannot add callbacks to a cancelled EngineJob", !this.f5021v);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2969b() {
        C1912x c1912x;
        synchronized (this) {
            try {
                this.f5002c.m2224a();
                AbstractC0938g.m1070a("Not yet complete!", m2971e());
                int iDecrementAndGet = this.f5010k.decrementAndGet();
                AbstractC0938g.m1070a("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    c1912x = this.f5019t;
                    m2972f();
                } else {
                    c1912x = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c1912x != null) {
            c1912x.m2975c();
        }
    }

    @Override // p037d0.InterfaceC1237e
    /* JADX INFO: renamed from: c */
    public final C1240h mo2222c() {
        return this.f5002c;
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m2970d(int i10) {
        C1912x c1912x;
        AbstractC0938g.m1070a("Not yet complete!", m2971e());
        if (this.f5010k.getAndAdd(i10) == 0 && (c1912x = this.f5019t) != null) {
            c1912x.m2974a();
        }
    }

    /* JADX INFO: renamed from: e */
    public final boolean m2971e() {
        return this.f5018s || this.f5016q || this.f5021v;
    }

    /* JADX INFO: renamed from: f */
    public final synchronized void m2972f() {
        boolean zM2945a;
        if (this.f5011l == null) {
            throw new IllegalArgumentException();
        }
        this.f5001b.f4999b.clear();
        this.f5011l = null;
        this.f5019t = null;
        this.f5014o = null;
        this.f5018s = false;
        this.f5021v = false;
        this.f5016q = false;
        RunnableC1899k runnableC1899k = this.f5020u;
        C1898j c1898j = runnableC1899k.f4946h;
        synchronized (c1898j) {
            c1898j.f4931a = true;
            zM2945a = c1898j.m2945a();
        }
        if (zM2945a) {
            runnableC1899k.m2953k();
        }
        this.f5020u = null;
        this.f5017r = null;
        this.f5015p = 0;
        this.f5004e.release(this);
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m2973g(C3621f c3621f) {
        try {
            this.f5002c.m2224a();
            this.f5001b.f4999b.remove(new C1908t(c3621f, AbstractC0938g.f795b));
            if (this.f5001b.f4999b.isEmpty()) {
                if (!m2971e()) {
                    this.f5021v = true;
                    RunnableC1899k runnableC1899k = this.f5020u;
                    runnableC1899k.f4935B = true;
                    InterfaceC1894g interfaceC1894g = runnableC1899k.f4964z;
                    if (interfaceC1894g != null) {
                        interfaceC1894g.cancel();
                    }
                    C1906r c1906r = this.f5006g;
                    C1911w c1911w = this.f5011l;
                    synchronized (c1906r) {
                        C1033f c1033f = c1906r.f4987a;
                        c1033f.getClass();
                        HashMap map = c1033f.f1089a;
                        if (equals(map.get(c1911w))) {
                            map.remove(c1911w);
                        }
                    }
                }
                if (this.f5016q || this.f5018s) {
                    if (this.f5010k.get() == 0) {
                        m2972f();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
