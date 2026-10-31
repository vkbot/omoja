package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import com.bumptech.glide.manager.C1074t;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;
import p016b1.C0872m;
import p094i7.C1760i;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2525l0;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2537q0;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p203t7.C3265a;

/* JADX INFO: renamed from: o7.w4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2736w4 implements InterfaceC2731w, InterfaceC2719u {

    /* JADX INFO: renamed from: e */
    public static final C2722u2 f7857e = new C2722u2(20);

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7858b;

    /* JADX INFO: renamed from: c */
    public final Object f7859c;

    /* JADX INFO: renamed from: d */
    public final Object f7860d;

    public C2736w4(String str) {
        this.f7858b = 1;
        C2525l0 c2525l0M3958a = C2525l0.m3958a();
        AbstractC2587b.m4042i(c2525l0M3958a, "registry");
        this.f7859c = c2525l0M3958a;
        AbstractC2587b.m4042i(str, "defaultPolicy");
        this.f7860d = str;
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: a */
    public void mo4090a(C2512h c2512h) {
        ((InterfaceC2719u) this.f7859c).mo4090a(c2512h);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0228  */
    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: b */
    public void mo68b(C2508f1 c2508f1, EnumC2725v enumC2725v, C2547v0 c2547v0) {
        boolean z9;
        C2741x3 c2741x3;
        C2727v1 c2727v1;
        C1074t c1074t;
        switch (this.f7858b) {
            case 2:
                C0872m c0872m = ((C2637g1) ((C2736w4) this.f7860d).f7860d).f7456b;
                if (c2508f1.m3932f()) {
                    ((InterfaceC2703r1) c0872m.f603e).mo4136a();
                } else {
                    ((InterfaceC2703r1) c0872m.f604f).mo4136a();
                }
                ((InterfaceC2731w) this.f7859c).mo68b(c2508f1, enumC2725v, c2547v0);
                return;
            default:
                Integer numValueOf = -1;
                synchronized (((C2727v1) this.f7860d).f7823j) {
                    C2727v1 c2727v2 = (C2727v1) this.f7860d;
                    c2727v2.f7829p = c2727v2.f7829p.m4270d((C2616c4) this.f7859c);
                    ((C2727v1) this.f7860d).f7828o.f4603b.add(String.valueOf(c2508f1.f6948a));
                    break;
                }
                if (((C2727v1) this.f7860d).f7832s.decrementAndGet() == Integer.MIN_VALUE) {
                    ((C2727v1) this.f7860d).f7817d.execute(new RunnableC2610b4(this, 0));
                    return;
                }
                C2616c4 c2616c4 = (C2616c4) this.f7859c;
                if (c2616c4.f7338c) {
                    C2727v1 c2727v3 = (C2727v1) this.f7860d;
                    RunnableC2693p3 runnableC2693p3M4248j = c2727v3.m4248j(c2616c4);
                    if (runnableC2693p3M4248j != null) {
                        c2727v3.f7816c.execute(runnableC2693p3M4248j);
                    }
                    if (((C2727v1) this.f7860d).f7829p.f7915f == ((C2616c4) this.f7859c)) {
                        ((C2727v1) this.f7860d).m4254s(c2508f1, enumC2725v, c2547v0);
                        return;
                    }
                    return;
                }
                EnumC2725v enumC2725v2 = EnumC2725v.f7804e;
                if (enumC2725v == enumC2725v2 && ((C2727v1) this.f7860d).f7831r.incrementAndGet() > 1000) {
                    C2727v1 c2727v4 = (C2727v1) this.f7860d;
                    RunnableC2693p3 runnableC2693p3M4248j2 = c2727v4.m4248j((C2616c4) this.f7859c);
                    if (runnableC2693p3M4248j2 != null) {
                        c2727v4.f7816c.execute(runnableC2693p3M4248j2);
                    }
                    if (((C2727v1) this.f7860d).f7829p.f7915f == ((C2616c4) this.f7859c)) {
                        ((C2727v1) this.f7860d).m4254s(C2508f1.f6944l.m3934h("Too many transparent retries. Might be a bug in gRPC").m3933g(c2508f1.m3930a()), enumC2725v, c2547v0);
                        return;
                    }
                    return;
                }
                if (((C2727v1) this.f7860d).f7829p.f7915f == null) {
                    if (enumC2725v == enumC2725v2 || (enumC2725v == EnumC2725v.f7802c && ((C2727v1) this.f7860d).f7830q.compareAndSet(false, true))) {
                        C2616c4 c2616c4M4249k = ((C2727v1) this.f7860d).m4249k(((C2616c4) this.f7859c).f7339d, true);
                        if (c2616c4M4249k == null) {
                            return;
                        }
                        C2727v1 c2727v5 = (C2727v1) this.f7860d;
                        if (c2727v5.f7822i) {
                            synchronized (c2727v5.f7823j) {
                                C2727v1 c2727v6 = (C2727v1) this.f7860d;
                                c2727v6.f7829p = c2727v6.f7829p.m4269c((C2616c4) this.f7859c, c2616c4M4249k);
                                break;
                            }
                        }
                        ((C2727v1) this.f7860d).f7816c.execute(new RunnableC2604a4(this, c2616c4M4249k, 1));
                        return;
                    }
                    EnumC2725v enumC2725v3 = EnumC2725v.f7803d;
                    C2727v1 c2727v7 = (C2727v1) this.f7860d;
                    if (enumC2725v != enumC2725v3) {
                        c2727v7.f7830q.set(true);
                        C2727v1 c2727v8 = (C2727v1) this.f7860d;
                        if (c2727v8.f7822i) {
                            String str = (String) c2547v0.m3989c(C2727v1.f7807G);
                            if (str != null) {
                                try {
                                    numValueOf = Integer.valueOf(str);
                                    break;
                                } catch (NumberFormatException unused) {
                                }
                            } else {
                                numValueOf = null;
                            }
                            C2727v1 c2727v9 = (C2727v1) this.f7860d;
                            boolean zContains = c2727v9.f7821h.f7258c.contains(c2508f1.f6948a);
                            boolean z10 = (c2727v9.f7827n == null || (!zContains && (numValueOf == null || numValueOf.intValue() >= 0))) ? false : !c2727v9.f7827n.m4134a();
                            if (zContains && !z10 && !c2508f1.m3932f() && numValueOf != null && numValueOf.intValue() > 0) {
                                numValueOf = 0;
                            }
                            boolean z11 = zContains && !z10;
                            if (z11) {
                                C2727v1.m4247b((C2727v1) this.f7860d, numValueOf);
                            }
                            synchronized (((C2727v1) this.f7860d).f7823j) {
                                try {
                                    C2727v1 c2727v10 = (C2727v1) this.f7860d;
                                    c2727v10.f7829p = c2727v10.f7829p.m4268b((C2616c4) this.f7859c);
                                    if (z11) {
                                        C2727v1 c2727v11 = (C2727v1) this.f7860d;
                                        if (!c2727v11.m4253r(c2727v11.f7829p)) {
                                            if (!((C2727v1) this.f7860d).f7829p.f7913d.isEmpty()) {
                                            }
                                        }
                                        return;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } else {
                            C2628e4 c2628e4 = c2727v8.f7820g;
                            long nanos = 0;
                            if (c2628e4 == null) {
                                c2741x3 = new C2741x3(0L, false);
                            } else {
                                boolean zContains2 = c2628e4.f7384f.contains(c2508f1.f6948a);
                                String str2 = (String) c2547v0.m3989c(C2727v1.f7807G);
                                if (str2 != null) {
                                    try {
                                        numValueOf = Integer.valueOf(str2);
                                        break;
                                    } catch (NumberFormatException unused2) {
                                    }
                                } else {
                                    numValueOf = null;
                                }
                                boolean z12 = (c2727v8.f7827n == null || (!zContains2 && (numValueOf == null || numValueOf.intValue() >= 0))) ? false : !c2727v8.f7827n.m4134a();
                                if (c2727v8.f7820g.f7379a <= ((C2616c4) this.f7859c).f7339d + 1 || z12) {
                                    z9 = false;
                                } else if (numValueOf == null) {
                                    if (zContains2) {
                                        nanos = (long) (C2727v1.f7809I.nextDouble() * c2727v8.f7838y);
                                        double d = c2727v8.f7838y;
                                        C2628e4 c2628e5 = c2727v8.f7820g;
                                        c2727v8.f7838y = Math.min((long) (d * c2628e5.f7382d), c2628e5.f7381c);
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                } else if (numValueOf.intValue() >= 0) {
                                    nanos = TimeUnit.MILLISECONDS.toNanos(numValueOf.intValue());
                                    c2727v8.f7838y = c2727v8.f7820g.f7380b;
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                c2741x3 = new C2741x3(nanos, z9);
                            }
                            if (c2741x3.f7870a) {
                                C2616c4 c2616c4M4249k2 = ((C2727v1) this.f7860d).m4249k(((C2616c4) this.f7859c).f7339d + 1, false);
                                if (c2616c4M4249k2 == null) {
                                    return;
                                }
                                synchronized (((C2727v1) this.f7860d).f7823j) {
                                    c2727v1 = (C2727v1) this.f7860d;
                                    c1074t = new C1074t(c2727v1.f7823j);
                                    c2727v1.f7836w = c1074t;
                                    break;
                                }
                                c1074t.m1363i(c2727v1.f7818e.schedule(new RunnableC2604a4(this, c2616c4M4249k2, 0), c2741x3.f7871b, TimeUnit.NANOSECONDS));
                                return;
                            }
                        }
                    } else if (c2727v7.f7822i) {
                        c2727v7.m4252q();
                    }
                }
                C2727v1 c2727v12 = (C2727v1) this.f7860d;
                RunnableC2693p3 runnableC2693p3M4248j3 = c2727v12.m4248j((C2616c4) this.f7859c);
                if (runnableC2693p3M4248j3 != null) {
                    c2727v12.f7816c.execute(runnableC2693p3M4248j3);
                }
                if (((C2727v1) this.f7860d).f7829p.f7915f == ((C2616c4) this.f7859c)) {
                    ((C2727v1) this.f7860d).m4254s(c2508f1, enumC2725v, c2547v0);
                    return;
                }
                return;
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: c */
    public void mo4092c(int i10) {
        ((InterfaceC2719u) this.f7859c).mo4092c(i10);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: d */
    public void mo4093d(InterfaceC2731w interfaceC2731w) {
        C0872m c0872m = ((C2637g1) this.f7860d).f7456b;
        ((InterfaceC2703r1) c0872m.f602d).mo4136a();
        ((C2722u2) c0872m.f601c).m4245q();
        ((InterfaceC2719u) this.f7859c).mo4093d(new C2736w4(2, this, interfaceC2731w));
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: e */
    public void mo4094e(C1760i c1760i) {
        ((InterfaceC2719u) this.f7859c).mo4094e(c1760i);
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: f */
    public void mo4095f(C3265a c3265a) {
        ((InterfaceC2719u) this.f7859c).mo4095f(c3265a);
    }

    @Override // p157o7.InterfaceC2724u4
    public void flush() {
        ((InterfaceC2719u) this.f7859c).flush();
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: g */
    public void mo4096g(C2536q c2536q) {
        ((InterfaceC2719u) this.f7859c).mo4096g(c2536q);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: h */
    public void mo4097h(C2508f1 c2508f1) {
        ((InterfaceC2719u) this.f7859c).mo4097h(c2508f1);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: i */
    public void mo4098i() {
        ((InterfaceC2719u) this.f7859c).mo4098i();
    }

    @Override // p157o7.InterfaceC2724u4
    public boolean isReady() {
        return ((InterfaceC2719u) this.f7859c).isReady();
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: j */
    public void mo75j() {
        switch (this.f7858b) {
            case 2:
                ((InterfaceC2731w) this.f7859c).mo75j();
                break;
            default:
                C2727v1 c2727v1 = (C2727v1) this.f7860d;
                if (c2727v1.isReady()) {
                    c2727v1.f7817d.execute(new RunnableC2610b4(this, 1));
                    break;
                }
                break;
        }
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: k */
    public void mo76k(C2686o2 c2686o2) {
        switch (this.f7858b) {
            case 2:
                ((InterfaceC2731w) this.f7859c).mo76k(c2686o2);
                break;
            default:
                C2751z3 c2751z3 = ((C2727v1) this.f7860d).f7829p;
                AbstractC2587b.m4046m(c2751z3.f7915f != null, "Headers should be received prior to messages.");
                if (c2751z3.f7915f == ((C2616c4) this.f7859c)) {
                    ((C2727v1) this.f7860d).f7817d.execute(new RunnableC2624e0(24, this, c2686o2));
                } else {
                    Logger logger = AbstractC2743y0.f7875a;
                    while (true) {
                        InputStream inputStreamM4194a = c2686o2.m4194a();
                        if (inputStreamM4194a != null) {
                            AbstractC2743y0.m4258b(inputStreamM4194a);
                        }
                    }
                }
                break;
        }
    }

    @Override // p157o7.InterfaceC2731w
    /* JADX INFO: renamed from: l */
    public void mo77l(C2547v0 c2547v0) {
        int i10;
        int i11;
        switch (this.f7858b) {
            case 2:
                ((InterfaceC2731w) this.f7859c).mo77l(c2547v0);
                break;
            default:
                if (((C2616c4) this.f7859c).f7339d > 0) {
                    C2537q0 c2537q0 = C2727v1.f7806F;
                    c2547v0.m3987a(c2537q0);
                    c2547v0.m3991e(c2537q0, String.valueOf(((C2616c4) this.f7859c).f7339d));
                }
                C2727v1 c2727v1 = (C2727v1) this.f7860d;
                C2616c4 c2616c4 = (C2616c4) this.f7859c;
                C2537q0 c2537q1 = C2727v1.f7806F;
                RunnableC2693p3 runnableC2693p3M4248j = c2727v1.m4248j(c2616c4);
                if (runnableC2693p3M4248j != null) {
                    c2727v1.f7816c.execute(runnableC2693p3M4248j);
                }
                if (((C2727v1) this.f7860d).f7829p.f7915f == ((C2616c4) this.f7859c)) {
                    C2622d4 c2622d4 = ((C2727v1) this.f7860d).f7827n;
                    if (c2622d4 != null) {
                        AtomicInteger atomicInteger = c2622d4.f7357d;
                        do {
                            i10 = atomicInteger.get();
                            i11 = c2622d4.f7354a;
                            if (i10 == i11) {
                            }
                        } while (!atomicInteger.compareAndSet(i10, Math.min(c2622d4.f7356c + i10, i11)));
                    }
                    ((C2727v1) this.f7860d).f7817d.execute(new RunnableC2624e0(23, this, c2547v0));
                }
                break;
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: m */
    public void mo4099m(int i10) {
        ((InterfaceC2719u) this.f7859c).mo4099m(i10);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: n */
    public void mo4100n(C2532o c2532o) {
        ((InterfaceC2719u) this.f7859c).mo4100n(c2532o);
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: o */
    public void mo4101o() {
        ((InterfaceC2719u) this.f7859c).mo4101o();
    }

    @Override // p157o7.InterfaceC2724u4
    public void request() {
        ((InterfaceC2719u) this.f7859c).request();
    }

    public String toString() {
        switch (this.f7858b) {
            case 2:
                C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
                c1073sM1263t.m1347c((InterfaceC2731w) this.f7859c, "delegate");
                return c1073sM1263t.toString();
            case 3:
                C1073s c1073sM1263t2 = AbstractC1030c.m1263t(this);
                c1073sM1263t2.m1347c((InterfaceC2719u) this.f7859c, "delegate");
                return c1073sM1263t2.toString();
            default:
                return super.toString();
        }
    }

    public C2736w4() {
        this.f7858b = 0;
        C2722u2 c2722u2 = C2722u2.f7798d;
        this.f7860d = AbstractC2694p4.m4208b();
        this.f7859c = c2722u2;
    }

    public /* synthetic */ C2736w4(int i10, Object obj, Object obj2) {
        this.f7858b = i10;
        this.f7860d = obj;
        this.f7859c = obj2;
    }
}
