package o7;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v1 implements u {
    public static final n7.q0 F;
    public static final n7.q0 G;
    public static final n7.f1 H;
    public static final Random I;
    public boolean A;
    public final /* synthetic */ n7.x0 B;
    public final /* synthetic */ n7.c C;
    public final /* synthetic */ n7.n D;
    public final /* synthetic */ c0.h E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.x0 f4464b;
    public final Executor c;
    public final n7.k1 d;
    public final ScheduledExecutorService e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n7.v0 f4465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e4 f4466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a1 f4467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f4468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f4469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final f f4470k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f4471l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f4472m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final d4 f4473n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final i7.i f4474o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile z3 f4475p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AtomicBoolean f4476q;
    public final AtomicInteger r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final AtomicInteger f4477s;
    public a5.h t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f4478u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public w f4479v;
    public com.bumptech.glide.manager.t w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.bumptech.glide.manager.t f4480x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f4481y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public n7.f1 f4482z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        n7.h hVar = n7.v0.d;
        BitSet bitSet = n7.s0.d;
        F = new n7.q0("grpc-previous-rpc-attempts", hVar);
        G = new n7.q0("grpc-retry-pushback-ms", hVar);
        H = n7.f1.f3923f.h("Stream thrown away because RetriableStream committed");
        I = new Random();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v1(c0.h hVar, n7.x0 x0Var, n7.v0 v0Var, n7.c cVar, e4 e4Var, a1 a1Var, n7.n nVar) {
        this.E = hVar;
        this.B = x0Var;
        this.C = cVar;
        this.D = nVar;
        f2 f2Var = (f2) hVar.f400b;
        f fVar = f2Var.T;
        long j9 = f2Var.U;
        long j10 = f2Var.V;
        Executor executor = cVar.f3894b;
        executor = executor == null ? f2Var.f4224h : executor;
        ScheduledExecutorService scheduledExecutorService = f2Var.f4222f.f4326b.e;
        d4 d4Var = (d4) hVar.c;
        this.d = new n7.k1(new o3());
        this.f4469j = new Object();
        this.f4474o = new i7.i(1);
        this.f4475p = new z3(new ArrayList(8), Collections.EMPTY_LIST, null, null, false, false, false, 0);
        this.f4476q = new AtomicBoolean();
        this.r = new AtomicInteger();
        this.f4477s = new AtomicInteger();
        this.f4464b = x0Var;
        this.f4470k = fVar;
        this.f4471l = j9;
        this.f4472m = j10;
        this.c = executor;
        this.e = scheduledExecutorService;
        this.f4465f = v0Var;
        this.f4466g = e4Var;
        if (e4Var != null) {
            this.f4481y = e4Var.f4206b;
        }
        this.f4467h = a1Var;
        o4.b.d("Should not provide both retryPolicy and hedgingPolicy", e4Var == null || a1Var == null);
        this.f4468i = a1Var != null;
        this.f4473n = d4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(v1 v1Var, Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            v1Var.q();
            return;
        }
        synchronized (v1Var.f4469j) {
            try {
                com.bumptech.glide.manager.t tVar = v1Var.f4480x;
                if (tVar == null) {
                    return;
                }
                tVar.c = true;
                Future future = (Future) tVar.e;
                com.bumptech.glide.manager.t tVar2 = new com.bumptech.glide.manager.t(v1Var.f4469j);
                v1Var.f4480x = tVar2;
                if (future != null) {
                    future.cancel(false);
                }
                tVar2.i(v1Var.e.schedule(new e0(22, v1Var, tVar2), num.intValue(), TimeUnit.MILLISECONDS));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void a(n7.h hVar) {
        l(new q3(0, hVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void c(int i9) {
        l(new s3(i9, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:35:0x0068 A[Catch: all -> 0x0072, TryCatch #0 {all -> 0x0072, blocks: (B:27:0x0047, B:29:0x0057, B:31:0x005b, B:35:0x0068, B:38:0x0074), top: B:50:0x0047 }] */
    @Override // o7.u
    public final void d(w wVar) {
        n7.f1 f1Var;
        com.bumptech.glide.manager.t tVar;
        this.f4479v = wVar;
        b1.m mVar = ((f2) this.E.f400b).F;
        synchronized (mVar.c) {
            try {
                f1Var = (n7.f1) mVar.e;
                tVar = null;
                if (f1Var == null) {
                    ((HashSet) mVar.d).add(this);
                    f1Var = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (f1Var != null) {
            h(f1Var);
            return;
        }
        synchronized (this.f4469j) {
            this.f4475p.f4528b.add(new y3(this));
        }
        c4 c4VarK = k(0, false);
        if (c4VarK == null) {
            return;
        }
        if (this.f4468i) {
            synchronized (this.f4469j) {
                try {
                    this.f4475p = this.f4475p.a(c4VarK);
                    if (r(this.f4475p)) {
                        d4 d4Var = this.f4473n;
                        if (d4Var == null) {
                            tVar = new com.bumptech.glide.manager.t(this.f4469j);
                            this.f4480x = tVar;
                        } else {
                            if (d4Var.d.get() > d4Var.f4190b) {
                                tVar = new com.bumptech.glide.manager.t(this.f4469j);
                                this.f4480x = tVar;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (tVar != null) {
                tVar.i(this.e.schedule(new e0(22, this, tVar), this.f4467h.f4119b, TimeUnit.NANOSECONDS));
            }
        }
        p(c4VarK);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void e(i7.i iVar) {
        z3 z3Var;
        synchronized (this.f4469j) {
            iVar.b(this.f4474o, "closed");
            z3Var = this.f4475p;
        }
        if (z3Var.f4529f != null) {
            i7.i iVar2 = new i7.i(1);
            z3Var.f4529f.f4177a.e(iVar2);
            iVar.b(iVar2, "committed");
            return;
        }
        i7.i iVar3 = new i7.i(1);
        for (c4 c4Var : z3Var.c) {
            i7.i iVar4 = new i7.i(1);
            c4Var.f4177a.e(iVar4);
            iVar3.f2690b.add(String.valueOf(iVar4));
        }
        iVar.b(iVar3, "open");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void f(t7.a aVar) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void flush() {
        z3 z3Var = this.f4475p;
        if (z3Var.f4527a) {
            z3Var.f4529f.f4177a.flush();
        } else {
            l(new r3(0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void g(n7.q qVar) {
        l(new q3(2, qVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void h(n7.f1 f1Var) {
        c4 c4Var;
        c4 c4Var2 = new c4(0);
        c4Var2.f4177a = new u2(0);
        p3 p3VarJ = j(c4Var2);
        Object obj = this.f4469j;
        if (p3VarJ != null) {
            synchronized (obj) {
                this.f4475p = this.f4475p.e(c4Var2);
            }
            p3VarJ.run();
            s(f1Var, v.f4462b, new n7.v0());
            return;
        }
        synchronized (obj) {
            try {
                if (this.f4475p.c.contains(this.f4475p.f4529f)) {
                    c4Var = this.f4475p.f4529f;
                } else {
                    this.f4482z = f1Var;
                    c4Var = null;
                }
                z3 z3Var = this.f4475p;
                this.f4475p = new z3(z3Var.f4528b, z3Var.c, z3Var.d, z3Var.f4529f, true, z3Var.f4527a, z3Var.f4531h, z3Var.e);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c4Var != null) {
            c4Var.f4177a.h(f1Var);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void i() {
        l(new r3(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final boolean isReady() {
        Iterator it = this.f4475p.c.iterator();
        while (it.hasNext()) {
            if (((c4) it.next()).f4177a.isReady()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final p3 j(c4 c4Var) {
        List list;
        boolean z8;
        Collection collectionSingleton;
        Future future;
        Future future2;
        synchronized (this.f4469j) {
            try {
                if (this.f4475p.f4529f != null) {
                    return null;
                }
                Collection collection = this.f4475p.c;
                z3 z3Var = this.f4475p;
                o4.b.m(z3Var.f4529f == null, "Already committed");
                List list2 = z3Var.f4528b;
                if (z3Var.c.contains(c4Var)) {
                    list = null;
                    collectionSingleton = Collections.singleton(c4Var);
                    z8 = true;
                } else {
                    list = list2;
                    z8 = false;
                    collectionSingleton = Collections.EMPTY_LIST;
                }
                this.f4475p = new z3(list, collectionSingleton, z3Var.d, c4Var, z3Var.f4530g, z8, z3Var.f4531h, z3Var.e);
                this.f4470k.f4208a.addAndGet(-this.f4478u);
                com.bumptech.glide.manager.t tVar = this.w;
                if (tVar != null) {
                    tVar.c = true;
                    Future future3 = (Future) tVar.e;
                    this.w = null;
                    future = future3;
                } else {
                    future = null;
                }
                com.bumptech.glide.manager.t tVar2 = this.f4480x;
                if (tVar2 != null) {
                    tVar2.c = true;
                    Future future4 = (Future) tVar2.e;
                    this.f4480x = null;
                    future2 = future4;
                } else {
                    future2 = null;
                }
                return new p3(this, collection, c4Var, future, future2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c4 k(int i9, boolean z8) {
        AtomicInteger atomicInteger;
        int i10;
        do {
            atomicInteger = this.f4477s;
            i10 = atomicInteger.get();
            if (i10 < 0) {
                return null;
            }
        } while (!atomicInteger.compareAndSet(i10, i10 + 1));
        c4 c4Var = new c4(i9);
        u3 u3Var = new u3(new w3(this, c4Var));
        n7.v0 v0Var = new n7.v0();
        v0Var.d(this.f4465f);
        if (i9 > 0) {
            v0Var.e(F, String.valueOf(i9));
        }
        n7.c cVar = this.C;
        cVar.getClass();
        List list = cVar.d;
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.addAll(list);
        arrayList.add(u3Var);
        c2.k kVarB = n7.c.b(cVar);
        kVarB.f456g = Collections.unmodifiableList(arrayList);
        n7.c cVar2 = new n7.c(kVarB);
        n7.e[] eVarArrC = y0.c(cVar2, v0Var, i9, z8);
        n7.x0 x0Var = this.B;
        x xVarB = this.E.b(new g3(x0Var, v0Var, cVar2));
        n7.n nVar = this.D;
        n7.n nVarA = nVar.a();
        try {
            u uVarD = xVarB.d(x0Var, v0Var, cVar2, eVarArrC);
            nVar.c(nVarA);
            c4Var.f4177a = uVarD;
            return c4Var;
        } catch (Throwable th) {
            nVar.c(nVarA);
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(v3 v3Var) {
        Collection collection;
        synchronized (this.f4469j) {
            try {
                if (!this.f4475p.f4527a) {
                    this.f4475p.f4528b.add(v3Var);
                }
                collection = this.f4475p.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            v3Var.a((c4) it.next());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void m(int i9) {
        l(new s3(i9, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void n(n7.o oVar) {
        l(new q3(1, oVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void o() {
        l(new r3(2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
    
        r2 = r3.size();
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        if (r5 >= r2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
    
        r6 = r3.get(r5);
        r5 = r5 + 1;
        r6 = (o7.v3) r6;
        r6.a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a0, code lost:
    
        if ((r6 instanceof o7.y3) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a2, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        r6 = r9.f4475p;
        r8 = r6.f4529f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a7, code lost:
    
        if (r8 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a9, code lost:
    
        if (r8 == r10) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ae, code lost:
    
        if (r6.f4530g == false) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(c4 c4Var) {
        int iMin;
        com.bumptech.glide.m mVar = null;
        int i9 = 0;
        boolean z8 = false;
        ArrayList arrayList = null;
        while (true) {
            synchronized (this.f4469j) {
                try {
                    z3 z3Var = this.f4475p;
                    c4 c4Var2 = z3Var.f4529f;
                    if (c4Var2 == null || c4Var2 == c4Var) {
                        if (!z3Var.f4530g) {
                            if (i9 == z3Var.f4528b.size()) {
                                this.f4475p = z3Var.e(c4Var);
                                if (!isReady()) {
                                    return;
                                } else {
                                    mVar = new com.bumptech.glide.m(20, this);
                                }
                            } else {
                                if (c4Var.f4178b) {
                                    return;
                                }
                                iMin = Math.min(i9 + 128, z3Var.f4528b.size());
                                if (arrayList == null) {
                                    arrayList = new ArrayList(z3Var.f4528b.subList(i9, iMin));
                                } else {
                                    arrayList.clear();
                                    arrayList.addAll(z3Var.f4528b.subList(i9, iMin));
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i9 = iMin;
        }
        if (mVar != null) {
            this.d.execute(mVar);
            return;
        }
        if (!z8) {
            c4Var.f4177a.d(new w4(5, this, c4Var));
        }
        c4Var.f4177a.h(this.f4475p.f4529f == c4Var ? this.f4482z : H);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void q() {
        Future future;
        synchronized (this.f4469j) {
            try {
                com.bumptech.glide.manager.t tVar = this.f4480x;
                future = null;
                if (tVar != null) {
                    tVar.c = true;
                    Future future2 = (Future) tVar.e;
                    this.f4480x = null;
                    future = future2;
                }
                z3 z3Var = this.f4475p;
                if (!z3Var.f4531h) {
                    z3Var = new z3(z3Var.f4528b, z3Var.c, z3Var.d, z3Var.f4529f, z3Var.f4530g, z3Var.f4527a, true, z3Var.e);
                }
                this.f4475p = z3Var;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean r(z3 z3Var) {
        return z3Var.f4529f == null && z3Var.e < this.f4467h.f4118a && !z3Var.f4531h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void request() {
        z3 z3Var = this.f4475p;
        if (z3Var.f4527a) {
            z3Var.f4529f.f4177a.request();
        } else {
            l(new r3(3));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(n7.f1 f1Var, v vVar, n7.v0 v0Var) {
        this.t = new a5.h(f1Var, vVar, v0Var, 20);
        if (this.f4477s.addAndGet(Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.d.execute(new m0.r0(3, this, f1Var, vVar, v0Var));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(y5.g gVar) {
        z3 z3Var = this.f4475p;
        if (!z3Var.f4527a) {
            l(new t3(this, gVar));
            return;
        }
        u uVar = z3Var.f4529f.f4177a;
        t7.b bVar = this.f4464b.d;
        bVar.getClass();
        uVar.f(new t7.a(gVar, bVar.f5416a));
    }
}
