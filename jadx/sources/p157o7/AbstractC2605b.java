package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.logging.Logger;
import p030c5.C0990e;
import p094i7.C1760i;
import p130l9.C2242l;
import p141n.C2455p;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2537q0;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p170p7.C2985j;
import p170p7.C2986k;
import p170p7.C2996u;
import p203t7.C3265a;
import p232w7.AbstractC3536b;

/* JADX INFO: renamed from: o7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2605b implements InterfaceC2719u, InterfaceC2724u4 {

    /* JADX INFO: renamed from: h */
    public static final Logger f7273h = Logger.getLogger(AbstractC2605b.class.getName());

    /* JADX INFO: renamed from: b */
    public final C2736w4 f7274b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2726v0 f7275c;

    /* JADX INFO: renamed from: d */
    public final boolean f7276d;

    /* JADX INFO: renamed from: e */
    public final boolean f7277e;

    /* JADX INFO: renamed from: f */
    public C2547v0 f7278f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f7279g;

    public AbstractC2605b(C0990e c0990e, C2718t4 c2718t4, C2736w4 c2736w4, C2547v0 c2547v0, C2497c c2497c, boolean z9) {
        AbstractC2587b.m4042i(c2547v0, "headers");
        AbstractC2587b.m4042i(c2736w4, "transportTracer");
        this.f7274b = c2736w4;
        this.f7276d = !Boolean.TRUE.equals(c2497c.m3885a(AbstractC2743y0.f7888n));
        this.f7277e = z9;
        if (z9) {
            this.f7275c = new C2599a(this, c2547v0, c2718t4);
        } else {
            this.f7275c = new C2716t2(this, c0990e, c2718t4);
            this.f7278f = c2547v0;
        }
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: a */
    public final void mo4090a(C2512h c2512h) {
        this.f7275c.mo4076a(c2512h);
    }

    /* JADX INFO: renamed from: b */
    public final void m4091b(C2996u c2996u, boolean z9, boolean z10, int i10) {
        C2242l c2242l;
        AbstractC2587b.m4037d("null frame before EOS", c2996u != null || z9);
        C2455p c2455p = ((C2986k) this).f8363n;
        c2455p.getClass();
        AbstractC3536b.m5642c();
        try {
            if (c2996u == null) {
                c2242l = C2986k.f8357q;
            } else {
                c2242l = c2996u.f8433a;
                int i11 = (int) c2242l.f5878c;
                if (i11 > 0) {
                    C2985j c2985j = ((C2986k) c2455p.f6648c).f8362m;
                    synchronized (c2985j.f7291b) {
                        c2985j.f7294e += i11;
                    }
                }
            }
            synchronized (((C2986k) c2455p.f6648c).f8362m.f8353w) {
                C2985j.m4780k(((C2986k) c2455p.f6648c).f8362m, c2242l, z9, z10);
                C2736w4 c2736w4 = ((C2986k) c2455p.f6648c).f7274b;
                if (i10 == 0) {
                    c2736w4.getClass();
                } else {
                    c2736w4.getClass();
                    ((C2722u2) c2736w4.f7859c).m4245q();
                }
            }
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: c */
    public final void mo4092c(int i10) {
        this.f7275c.mo4078c(i10);
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: d */
    public final void mo4093d(InterfaceC2731w interfaceC2731w) {
        C2986k c2986k = (C2986k) this;
        C2985j c2985j = c2986k.f8362m;
        AbstractC2587b.m4046m(c2985j.f7299j == null, "Already called setListener");
        AbstractC2587b.m4042i(interfaceC2731w, "listener");
        c2985j.f7299j = interfaceC2731w;
        if (this.f7277e) {
            return;
        }
        c2986k.f8363n.m3813l(this.f7278f, null);
        this.f7278f = null;
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: e */
    public final void mo4094e(C1760i c1760i) {
        c1760i.m2884b(((C2986k) this).f8364o.f6882a.get(AbstractC2542t.f7024a), "remote_addr");
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: f */
    public final void mo4095f(C3265a c3265a) {
        InterfaceC2726v0 interfaceC2726v0 = this.f7275c;
        try {
            if (!interfaceC2726v0.isClosed()) {
                interfaceC2726v0.mo4077b(c3265a);
            }
        } finally {
            AbstractC2743y0.m4258b(c3265a);
        }
    }

    @Override // p157o7.InterfaceC2724u4
    public final void flush() {
        InterfaceC2726v0 interfaceC2726v0 = this.f7275c;
        if (interfaceC2726v0.isClosed()) {
            return;
        }
        interfaceC2726v0.flush();
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: g */
    public final void mo4096g(C2536q c2536q) {
        C2985j c2985j = ((C2986k) this).f8362m;
        AbstractC2587b.m4046m(c2985j.f7299j == null, "Already called start");
        AbstractC2587b.m4042i(c2536q, "decompressorRegistry");
        c2985j.f7300k = c2536q;
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: h */
    public final void mo4097h(C2508f1 c2508f1) {
        AbstractC2587b.m4037d("Should not cancel with OK status", !c2508f1.m3932f());
        this.f7279g = true;
        C2455p c2455p = ((C2986k) this).f8363n;
        c2455p.getClass();
        AbstractC3536b.m5642c();
        try {
            synchronized (((C2986k) c2455p.f6648c).f8362m.f8353w) {
                ((C2986k) c2455p.f6648c).f8362m.m4781l(c2508f1, true, null);
            }
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: i */
    public final void mo4098i() {
        C2986k c2986k = (C2986k) this;
        if (c2986k.f8362m.f7303n) {
            return;
        }
        c2986k.f8362m.f7303n = true;
        this.f7275c.close();
    }

    @Override // p157o7.InterfaceC2724u4
    public final boolean isReady() {
        return ((C2986k) this).f8362m.m4122f() && !this.f7279g;
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: m */
    public final void mo4099m(int i10) {
        ((C2986k) this).f8362m.f7290a.f7712c = i10;
    }

    @Override // p157o7.InterfaceC2719u
    /* JADX INFO: renamed from: n */
    public final void mo4100n(C2532o c2532o) {
        C2547v0 c2547v0 = this.f7278f;
        C2537q0 c2537q0 = AbstractC2743y0.f7877c;
        c2547v0.m3987a(c2537q0);
        this.f7278f.m3991e(c2537q0, Long.valueOf(Math.max(0L, c2532o.m3965b())));
    }

    @Override // p157o7.InterfaceC2724u4
    /* JADX INFO: renamed from: o */
    public final void mo4101o() {
        C2985j c2985j = ((C2986k) this).f8362m;
        C2698q2 c2698q2 = c2985j.f7293d;
        c2698q2.f7711b = c2985j;
        c2985j.f7290a = c2698q2;
    }

    @Override // p157o7.InterfaceC2724u4
    public final void request() {
        C2985j c2985j = ((C2986k) this).f8362m;
        c2985j.getClass();
        AbstractC3536b.m5641b();
        RunnableC1054m runnableC1054m = new RunnableC1054m(9, c2985j);
        synchronized (c2985j.f8353w) {
            runnableC1054m.run();
        }
    }
}
