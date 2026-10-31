package j;

import androidx.core.util.Pools$Pool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v implements d0.e {
    public static final p2.e w = new p2.e(11);
    public final r d;
    public final Pools$Pool e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r f2838g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m.e f2839h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m.e f2840i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final m.e f2841j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public w f2843l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2844m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2845n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public d0 f2846o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2847p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2848q;
    public z r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2849s;
    public x t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public k f2850u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile boolean f2851v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u f2836b = new u(new ArrayList(2));
    public final d0.h c = new d0.h();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f2842k = new AtomicInteger();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p2.e f2837f = w;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(m.e eVar, m.e eVar2, m.e eVar3, m.e eVar4, r rVar, r rVar2, d0.d dVar) {
        this.f2839h = eVar;
        this.f2840i = eVar2;
        this.f2841j = eVar4;
        this.f2838g = rVar;
        this.d = rVar2;
        this.e = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a(y.f fVar, Executor executor) {
        try {
            this.c.a();
            this.f2836b.f2835b.add(new t(fVar, executor));
            if (this.f2848q) {
                d(1);
                executor.execute(new s(this, fVar, 1));
            } else if (this.f2849s) {
                d(1);
                executor.execute(new s(this, fVar, 0));
            } else {
                c0.g.a("Cannot add callbacks to a cancelled EngineJob", !this.f2851v);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        x xVar;
        synchronized (this) {
            try {
                this.c.a();
                c0.g.a("Not yet complete!", e());
                int iDecrementAndGet = this.f2842k.decrementAndGet();
                c0.g.a("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    xVar = this.t;
                    f();
                } else {
                    xVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (xVar != null) {
            xVar.c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // d0.e
    public final d0.h c() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void d(int i9) {
        x xVar;
        c0.g.a("Not yet complete!", e());
        if (this.f2842k.getAndAdd(i9) == 0 && (xVar = this.t) != null) {
            xVar.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean e() {
        return this.f2849s || this.f2848q || this.f2851v;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void f() {
        boolean zA;
        if (this.f2843l == null) {
            throw new IllegalArgumentException();
        }
        this.f2836b.f2835b.clear();
        this.f2843l = null;
        this.t = null;
        this.f2846o = null;
        this.f2849s = false;
        this.f2851v = false;
        this.f2848q = false;
        k kVar = this.f2850u;
        j jVar = kVar.f2799h;
        synchronized (jVar) {
            jVar.f2794a = true;
            zA = jVar.a();
        }
        if (zA) {
            kVar.k();
        }
        this.f2850u = null;
        this.r = null;
        this.f2847p = 0;
        this.e.release(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void g(y.f fVar) {
        try {
            this.c.a();
            this.f2836b.f2835b.remove(new t(fVar, c0.g.f399b));
            if (this.f2836b.f2835b.isEmpty()) {
                if (!e()) {
                    this.f2851v = true;
                    k kVar = this.f2850u;
                    kVar.B = true;
                    g gVar = kVar.f2814z;
                    if (gVar != null) {
                        gVar.cancel();
                    }
                    r rVar = this.f2838g;
                    w wVar = this.f2843l;
                    synchronized (rVar) {
                        com.bumptech.glide.f fVar2 = rVar.f2828a;
                        fVar2.getClass();
                        HashMap map = fVar2.f564a;
                        if (equals(map.get(wVar))) {
                            map.remove(wVar);
                        }
                    }
                }
                if (this.f2848q || this.f2849s) {
                    if (this.f2842k.get() == 0) {
                        f();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
