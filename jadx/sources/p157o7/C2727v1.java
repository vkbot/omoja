package p157o7;

import com.bumptech.glide.manager.C1074t;
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
import p006a5.C0023h;
import p016b1.C0872m;
import p025c0.C0939h;
import p027c2.C0961k;
import p094i7.C1760i;
import p132m0.RunnableC2345r0;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2541s0;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2530n;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2537q0;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;
import p203t7.C3265a;
import p203t7.C3266b;
import p250y5.C3652g;

/* JADX INFO: renamed from: o7.v1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2727v1 implements InterfaceC2719u {

    /* JADX INFO: renamed from: F */
    public static final C2537q0 f7806F;

    /* JADX INFO: renamed from: G */
    public static final C2537q0 f7807G;

    /* JADX INFO: renamed from: H */
    public static final C2508f1 f7808H;

    /* JADX INFO: renamed from: I */
    public static final Random f7809I;

    /* JADX INFO: renamed from: A */
    public boolean f7810A;

    /* JADX INFO: renamed from: B */
    public final /* synthetic */ C2551x0 f7811B;

    /* JADX INFO: renamed from: C */
    public final /* synthetic */ C2497c f7812C;

    /* JADX INFO: renamed from: D */
    public final /* synthetic */ C2530n f7813D;

    /* JADX INFO: renamed from: E */
    public final /* synthetic */ C0939h f7814E;

    /* JADX INFO: renamed from: b */
    public final C2551x0 f7815b;

    /* JADX INFO: renamed from: c */
    public final Executor f7816c;

    /* JADX INFO: renamed from: d */
    public final ExecutorC2523k1 f7817d;

    /* JADX INFO: renamed from: e */
    public final ScheduledExecutorService f7818e;

    /* JADX INFO: renamed from: f */
    public final C2547v0 f7819f;

    /* JADX INFO: renamed from: g */
    public final C2628e4 f7820g;

    /* JADX INFO: renamed from: h */
    public final C2601a1 f7821h;

    /* JADX INFO: renamed from: i */
    public final boolean f7822i;

    /* JADX INFO: renamed from: j */
    public final Object f7823j;

    /* JADX INFO: renamed from: k */
    public final C2629f f7824k;

    /* JADX INFO: renamed from: l */
    public final long f7825l;

    /* JADX INFO: renamed from: m */
    public final long f7826m;

    /* JADX INFO: renamed from: n */
    public final C2622d4 f7827n;

    /* JADX INFO: renamed from: o */
    public final C1760i f7828o;

    /* JADX INFO: renamed from: p */
    public volatile C2751z3 f7829p;

    /* JADX INFO: renamed from: q */
    public final AtomicBoolean f7830q;

    /* JADX INFO: renamed from: r */
    public final AtomicInteger f7831r;

    /* JADX INFO: renamed from: s */
    public final AtomicInteger f7832s;

    /* JADX INFO: renamed from: t */
    public C0023h f7833t;

    /* JADX INFO: renamed from: u */
    public long f7834u;

    /* JADX INFO: renamed from: v */
    public InterfaceC2731w f7835v;

    /* JADX INFO: renamed from: w */
    public C1074t f7836w;

    /* JADX INFO: renamed from: x */
    public C1074t f7837x;

    /* JADX INFO: renamed from: y */
    public long f7838y;

    /* JADX INFO: renamed from: z */
    public C2508f1 f7839z;

    static {
        C2512h c2512h = C2547v0.f7038d;
        BitSet bitSet = AbstractC2541s0.f7020d;
        f7806F = new C2537q0("grpc-previous-rpc-attempts", c2512h);
        f7807G = new C2537q0("grpc-retry-pushback-ms", c2512h);
        f7808H = C2508f1.f6938f.m3934h("Stream thrown away because RetriableStream committed");
        f7809I = new Random();
    }

    public C2727v1(C0939h c0939h, C2551x0 c2551x0, C2547v0 c2547v0, C2497c c2497c, C2628e4 c2628e4, C2601a1 c2601a1, C2530n c2530n) {
        this.f7814E = c0939h;
        this.f7811B = c2551x0;
        this.f7812C = c2497c;
        this.f7813D = c2530n;
        C2632f2 c2632f2 = (C2632f2) c0939h.f796b;
        C2629f c2629f = c2632f2.f7416T;
        long j10 = c2632f2.f7417U;
        long j11 = c2632f2.f7418V;
        Executor executor = c2497c.f6892b;
        executor = executor == null ? c2632f2.f7432h : executor;
        ScheduledExecutorService scheduledExecutorService = c2632f2.f7430f.f7595b.f8315e;
        C2622d4 c2622d4 = (C2622d4) c0939h.f797c;
        this.f7817d = new ExecutorC2523k1(new C2687o3());
        this.f7823j = new Object();
        this.f7828o = new C1760i(1);
        this.f7829p = new C2751z3(new ArrayList(8), Collections.EMPTY_LIST, null, null, false, false, false, 0);
        this.f7830q = new AtomicBoolean();
        this.f7831r = new AtomicInteger();
        this.f7832s = new AtomicInteger();
        this.f7815b = c2551x0;
        this.f7824k = c2629f;
        this.f7825l = j10;
        this.f7826m = j11;
        this.f7816c = executor;
        this.f7818e = scheduledExecutorService;
        this.f7819f = c2547v0;
        this.f7820g = c2628e4;
        if (c2628e4 != null) {
            this.f7838y = c2628e4.f7380b;
        }
        this.f7821h = c2601a1;
        AbstractC2587b.m4037d("Should not provide both retryPolicy and hedgingPolicy", c2628e4 == null || c2601a1 == null);
        this.f7822i = c2601a1 != null;
        this.f7827n = c2622d4;
    }

    /* JADX INFO: renamed from: b */
    public static void m4247b(C2727v1 c2727v1, Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            c2727v1.m4252q();
            return;
        }
        synchronized (c2727v1.f7823j) {
            try {
                C1074t c1074t = c2727v1.f7837x;
                if (c1074t == null) {
                    return;
                }
                c1074t.f1183c = true;
                Future future = (Future) c1074t.f1185e;
                C1074t c1074t2 = new C1074t(c2727v1.f7823j);
                c2727v1.f7837x = c1074t2;
                if (future != null) {
                    future.cancel(false);
                }
                c1074t2.m1363i(c2727v1.f7818e.schedule(new RunnableC2624e0(22, c2727v1, c1074t2), num.intValue(), TimeUnit.MILLISECONDS));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: a */
    public final void mo4090a(C2512h c2512h) {
        m4250l(new C2699q3(0, c2512h));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: c */
    public final void mo4092c(int i10) {
        m4250l(new C2711s3(i10, 1));
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0068 A[Catch: all -> 0x0072, TryCatch #0 {all -> 0x0072, blocks: (B:27:0x0047, B:29:0x0057, B:31:0x005b, B:35:0x0068, B:38:0x0074), top: B:50:0x0047 }] */
    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: d */
    public final void mo4093d(InterfaceC2731w interfaceC2731w) {
        C2508f1 c2508f1;
        C1074t c1074t;
        this.f7835v = interfaceC2731w;
        C0872m c0872m = ((C2632f2) this.f7814E.f796b).f7402F;
        synchronized (c0872m.f601c) {
            try {
                c2508f1 = (C2508f1) c0872m.f603e;
                c1074t = null;
                if (c2508f1 == null) {
                    ((HashSet) c0872m.f602d).add(this);
                    c2508f1 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c2508f1 != null) {
            mo4097h(c2508f1);
            return;
        }
        synchronized (this.f7823j) {
            this.f7829p.f7911b.add(new C2746y3(this));
        }
        C2616c4 c2616c4M4249k = m4249k(0, false);
        if (c2616c4M4249k == null) {
            return;
        }
        if (this.f7822i) {
            synchronized (this.f7823j) {
                try {
                    this.f7829p = this.f7829p.m4267a(c2616c4M4249k);
                    if (m4253r(this.f7829p)) {
                        C2622d4 c2622d4 = this.f7827n;
                        if (c2622d4 == null) {
                            c1074t = new C1074t(this.f7823j);
                            this.f7837x = c1074t;
                        } else {
                            if (c2622d4.f7357d.get() > c2622d4.f7355b) {
                                c1074t = new C1074t(this.f7823j);
                                this.f7837x = c1074t;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (c1074t != null) {
                c1074t.m1363i(this.f7818e.schedule(new RunnableC2624e0(22, this, c1074t), this.f7821h.f7257b, TimeUnit.NANOSECONDS));
            }
        }
        m4251p(c2616c4M4249k);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: e */
    public final void mo4094e(C1760i c1760i) {
        C2751z3 c2751z3;
        synchronized (this.f7823j) {
            c1760i.m2884b(this.f7828o, "closed");
            c2751z3 = this.f7829p;
        }
        if (c2751z3.f7915f != null) {
            C1760i c1760i2 = new C1760i(1);
            c2751z3.f7915f.f7336a.mo4094e(c1760i2);
            c1760i.m2884b(c1760i2, "committed");
            return;
        }
        C1760i c1760i3 = new C1760i(1);
        for (C2616c4 c2616c4 : c2751z3.f7912c) {
            C1760i c1760i4 = new C1760i(1);
            c2616c4.f7336a.mo4094e(c1760i4);
            c1760i3.f4603b.add(String.valueOf(c1760i4));
        }
        c1760i.m2884b(c1760i3, "open");
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: f */
    public final void mo4095f(C3265a c3265a) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    @Override // p157o7.InterfaceC2724u4
    public final void flush() {
        C2751z3 c2751z3 = this.f7829p;
        if (c2751z3.f7910a) {
            c2751z3.f7915f.f7336a.flush();
        } else {
            m4250l(new C2705r3(0));
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: g */
    public final void mo4096g(C2536q c2536q) {
        m4250l(new C2699q3(2, c2536q));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: h */
    public final void mo4097h(C2508f1 c2508f1) {
        C2616c4 c2616c4;
        C2616c4 c2616c5 = new C2616c4(0);
        c2616c5.f7336a = new C2722u2(0);
        RunnableC2693p3 runnableC2693p3M4248j = m4248j(c2616c5);
        Object obj = this.f7823j;
        if (runnableC2693p3M4248j != null) {
            synchronized (obj) {
                this.f7829p = this.f7829p.m4271e(c2616c5);
            }
            runnableC2693p3M4248j.run();
            m4254s(c2508f1, EnumC2725v.f7801b, new C2547v0());
            return;
        }
        synchronized (obj) {
            try {
                if (this.f7829p.f7912c.contains(this.f7829p.f7915f)) {
                    c2616c4 = this.f7829p.f7915f;
                } else {
                    this.f7839z = c2508f1;
                    c2616c4 = null;
                }
                C2751z3 c2751z3 = this.f7829p;
                this.f7829p = new C2751z3(c2751z3.f7911b, c2751z3.f7912c, c2751z3.f7913d, c2751z3.f7915f, true, c2751z3.f7910a, c2751z3.f7917h, c2751z3.f7914e);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c2616c4 != null) {
            c2616c4.f7336a.mo4097h(c2508f1);
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: i */
    public final void mo4098i() {
        m4250l(new C2705r3(1));
    }

    @Override // p157o7.InterfaceC2724u4
    public final boolean isReady() {
        Iterator it = this.f7829p.f7912c.iterator();
        while (it.hasNext()) {
            if (((C2616c4) it.next()).f7336a.isReady()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: j */
    public final RunnableC2693p3 m4248j(C2616c4 c2616c4) {
        List list;
        boolean z9;
        Collection collectionSingleton;
        Future future;
        Future future2;
        synchronized (this.f7823j) {
            try {
                if (this.f7829p.f7915f != null) {
                    return null;
                }
                Collection collection = this.f7829p.f7912c;
                C2751z3 c2751z3 = this.f7829p;
                AbstractC2587b.m4046m(c2751z3.f7915f == null, "Already committed");
                List list2 = c2751z3.f7911b;
                if (c2751z3.f7912c.contains(c2616c4)) {
                    list = null;
                    collectionSingleton = Collections.singleton(c2616c4);
                    z9 = true;
                } else {
                    list = list2;
                    z9 = false;
                    collectionSingleton = Collections.EMPTY_LIST;
                }
                this.f7829p = new C2751z3(list, collectionSingleton, c2751z3.f7913d, c2616c4, c2751z3.f7916g, z9, c2751z3.f7917h, c2751z3.f7914e);
                this.f7824k.f7385a.addAndGet(-this.f7834u);
                C1074t c1074t = this.f7836w;
                if (c1074t != null) {
                    c1074t.f1183c = true;
                    Future future3 = (Future) c1074t.f1185e;
                    this.f7836w = null;
                    future = future3;
                } else {
                    future = null;
                }
                C1074t c1074t2 = this.f7837x;
                if (c1074t2 != null) {
                    c1074t2.f1183c = true;
                    Future future4 = (Future) c1074t2.f1185e;
                    this.f7837x = null;
                    future2 = future4;
                } else {
                    future2 = null;
                }
                return new RunnableC2693p3(this, collection, c2616c4, future, future2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final C2616c4 m4249k(int i10, boolean z9) {
        AtomicInteger atomicInteger;
        int i11;
        do {
            atomicInteger = this.f7832s;
            i11 = atomicInteger.get();
            if (i11 < 0) {
                return null;
            }
        } while (!atomicInteger.compareAndSet(i11, i11 + 1));
        C2616c4 c2616c4 = new C2616c4(i10);
        C2723u3 c2723u3 = new C2723u3(new C2735w3(this, c2616c4));
        C2547v0 c2547v0 = new C2547v0();
        c2547v0.m3990d(this.f7819f);
        if (i10 > 0) {
            c2547v0.m3991e(f7806F, String.valueOf(i10));
        }
        C2497c c2497c = this.f7812C;
        c2497c.getClass();
        List list = c2497c.f6894d;
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.addAll(list);
        arrayList.add(c2723u3);
        C0961k c0961kM3884b = C2497c.m3884b(c2497c);
        c0961kM3884b.f876g = Collections.unmodifiableList(arrayList);
        C2497c c2497c2 = new C2497c(c0961kM3884b);
        AbstractC2503e[] abstractC2503eArrM4259c = AbstractC2743y0.m4259c(c2497c2, c2547v0, i10, z9);
        C2551x0 c2551x0 = this.f7811B;
        InterfaceC2737x interfaceC2737xM1074b = this.f7814E.m1074b(new C2639g3(c2551x0, c2547v0, c2497c2));
        C2530n c2530n = this.f7813D;
        C2530n c2530nM3962a = c2530n.m3962a();
        try {
            InterfaceC2719u interfaceC2719uMo4156d = interfaceC2737xM1074b.mo4156d(c2551x0, c2547v0, c2497c2, abstractC2503eArrM4259c);
            c2530n.m3963c(c2530nM3962a);
            c2616c4.f7336a = interfaceC2719uMo4156d;
            return c2616c4;
        } catch (Throwable th) {
            c2530n.m3963c(c2530nM3962a);
            throw th;
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m4250l(InterfaceC2729v3 interfaceC2729v3) {
        Collection collection;
        synchronized (this.f7823j) {
            try {
                if (!this.f7829p.f7910a) {
                    this.f7829p.f7911b.add(interfaceC2729v3);
                }
                collection = this.f7829p.f7912c;
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            interfaceC2729v3.mo4229a((C2616c4) it.next());
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: m */
    public final void mo4099m(int i10) {
        m4250l(new C2711s3(i10, 0));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: n */
    public final void mo4100n(C2532o c2532o) {
        m4250l(new C2699q3(1, c2532o));
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: o */
    public final void mo4101o() {
        m4250l(new C2705r3(2));
    }

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
        r6 = (p157o7.InterfaceC2729v3) r6;
        r6.mo4229a(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a0, code lost:
    
        if ((r6 instanceof p157o7.C2746y3) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a2, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        r6 = r9.f7829p;
        r8 = r6.f7915f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a7, code lost:
    
        if (r8 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a9, code lost:
    
        if (r8 == r10) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ae, code lost:
    
        if (r6.f7916g == false) goto L66;
     */
    /* JADX INFO: renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m4251p(p157o7.C2616c4 r10) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            r2 = r0
            r4 = r2
            r3 = r1
        L5:
            java.lang.Object r5 = r9.f7823j
            monitor-enter(r5)
            o7.z3 r6 = r9.f7829p     // Catch: java.lang.Throwable -> L12
            o7.c4 r7 = r6.f7915f     // Catch: java.lang.Throwable -> L12
            if (r7 == 0) goto L15
            if (r7 == r10) goto L15
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            goto L39
        L12:
            r10 = move-exception
            goto Lb3
        L15:
            boolean r7 = r6.f7916g     // Catch: java.lang.Throwable -> L12
            if (r7 == 0) goto L1b
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            goto L39
        L1b:
            java.util.List r7 = r6.f7911b     // Catch: java.lang.Throwable -> L12
            int r7 = r7.size()     // Catch: java.lang.Throwable -> L12
            if (r2 != r7) goto L5f
            o7.z3 r0 = r6.m4271e(r10)     // Catch: java.lang.Throwable -> L12
            r9.f7829p = r0     // Catch: java.lang.Throwable -> L12
            boolean r0 = r9.isReady()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L31
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L31:
            com.bumptech.glide.m r1 = new com.bumptech.glide.m     // Catch: java.lang.Throwable -> L12
            r0 = 20
            r1.<init>(r0, r9)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
        L39:
            if (r1 == 0) goto L41
            n7.k1 r10 = r9.f7817d
            r10.execute(r1)
            return
        L41:
            if (r4 != 0) goto L4e
            o7.u r0 = r10.f7336a
            o7.w4 r1 = new o7.w4
            r2 = 5
            r1.<init>(r2, r9, r10)
            r0.mo4093d(r1)
        L4e:
            o7.u r0 = r10.f7336a
            o7.z3 r1 = r9.f7829p
            o7.c4 r1 = r1.f7915f
            if (r1 != r10) goto L59
            n7.f1 r10 = r9.f7839z
            goto L5b
        L59:
            n7.f1 r10 = p157o7.C2727v1.f7808H
        L5b:
            r0.mo4097h(r10)
            return
        L5f:
            boolean r7 = r10.f7337b     // Catch: java.lang.Throwable -> L12
            if (r7 == 0) goto L65
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            return
        L65:
            int r7 = r2 + 128
            java.util.List r8 = r6.f7911b     // Catch: java.lang.Throwable -> L12
            int r8 = r8.size()     // Catch: java.lang.Throwable -> L12
            int r7 = java.lang.Math.min(r7, r8)     // Catch: java.lang.Throwable -> L12
            if (r3 != 0) goto L7f
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L12
            java.util.List r6 = r6.f7911b     // Catch: java.lang.Throwable -> L12
            java.util.List r2 = r6.subList(r2, r7)     // Catch: java.lang.Throwable -> L12
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L12
            goto L8b
        L7f:
            r3.clear()     // Catch: java.lang.Throwable -> L12
            java.util.List r6 = r6.f7911b     // Catch: java.lang.Throwable -> L12
            java.util.List r2 = r6.subList(r2, r7)     // Catch: java.lang.Throwable -> L12
            r3.addAll(r2)     // Catch: java.lang.Throwable -> L12
        L8b:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            int r2 = r3.size()
            r5 = r0
        L91:
            if (r5 >= r2) goto Lb0
            java.lang.Object r6 = r3.get(r5)
            int r5 = r5 + 1
            o7.v3 r6 = (p157o7.InterfaceC2729v3) r6
            r6.mo4229a(r10)
            boolean r6 = r6 instanceof p157o7.C2746y3
            if (r6 == 0) goto La3
            r4 = 1
        La3:
            o7.z3 r6 = r9.f7829p
            o7.c4 r8 = r6.f7915f
            if (r8 == 0) goto Lac
            if (r8 == r10) goto Lac
            goto Lb0
        Lac:
            boolean r6 = r6.f7916g
            if (r6 == 0) goto L91
        Lb0:
            r2 = r7
            goto L5
        Lb3:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L12
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p157o7.C2727v1.m4251p(o7.c4):void");
    }

    /* JADX INFO: renamed from: q */
    public final void m4252q() {
        Future future;
        synchronized (this.f7823j) {
            try {
                C1074t c1074t = this.f7837x;
                future = null;
                if (c1074t != null) {
                    c1074t.f1183c = true;
                    Future future2 = (Future) c1074t.f1185e;
                    this.f7837x = null;
                    future = future2;
                }
                C2751z3 c2751z3 = this.f7829p;
                if (!c2751z3.f7917h) {
                    c2751z3 = new C2751z3(c2751z3.f7911b, c2751z3.f7912c, c2751z3.f7913d, c2751z3.f7915f, c2751z3.f7916g, c2751z3.f7910a, true, c2751z3.f7914e);
                }
                this.f7829p = c2751z3;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    /* JADX INFO: renamed from: r */
    public final boolean m4253r(C2751z3 c2751z3) {
        return c2751z3.f7915f == null && c2751z3.f7914e < this.f7821h.f7256a && !c2751z3.f7917h;
    }

    @Override // p157o7.InterfaceC2724u4
    public final void request() {
        C2751z3 c2751z3 = this.f7829p;
        if (c2751z3.f7910a) {
            c2751z3.f7915f.f7336a.request();
        } else {
            m4250l(new C2705r3(3));
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m4254s(C2508f1 c2508f1, EnumC2725v enumC2725v, C2547v0 c2547v0) {
        this.f7833t = new C0023h(c2508f1, enumC2725v, c2547v0, 20);
        if (this.f7832s.addAndGet(Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.f7817d.execute(new RunnableC2345r0(3, this, c2508f1, enumC2725v, c2547v0));
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m4255t(C3652g c3652g) {
        C2751z3 c2751z3 = this.f7829p;
        if (!c2751z3.f7910a) {
            m4250l(new C2717t3(this, c3652g));
            return;
        }
        InterfaceC2719u interfaceC2719u = c2751z3.f7915f.f7336a;
        C3266b c3266b = this.f7815b.f7057d;
        c3266b.getClass();
        interfaceC2719u.mo4095f(new C3265a(c3652g, c3266b.f9559a));
    }
}
