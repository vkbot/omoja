package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p023b8.InterfaceC0929c;
import p033c8.C1013c;
import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p095i8.C1777b;
import p129l8.C2220b;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.AbstractC3585b;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1727z extends AtomicInteger implements InterfaceC3587d, InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4502b;

    /* JADX INFO: renamed from: c */
    public final int f4503c;

    /* JADX INFO: renamed from: h */
    public final InterfaceC0929c f4508h;

    /* JADX INFO: renamed from: j */
    public InterfaceC2561b f4510j;

    /* JADX INFO: renamed from: k */
    public volatile boolean f4511k;

    /* JADX INFO: renamed from: d */
    public final AtomicLong f4504d = new AtomicLong();

    /* JADX INFO: renamed from: e */
    public final C1013c f4505e = new C1013c(1);

    /* JADX INFO: renamed from: g */
    public final C3000b f4507g = new C3000b();

    /* JADX INFO: renamed from: f */
    public final AtomicInteger f4506f = new AtomicInteger(1);

    /* JADX INFO: renamed from: i */
    public final AtomicReference f4509i = new AtomicReference();

    public C1727z(InterfaceC3587d interfaceC3587d, InterfaceC0929c interfaceC0929c, int i10) {
        this.f4502b = interfaceC3587d;
        this.f4508h = interfaceC0929c;
        this.f4503c = i10;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        this.f4506f.decrementAndGet();
        m2850c();
    }

    /* JADX INFO: renamed from: b */
    public final void m2849b() {
        C2220b c2220b = (C2220b) this.f4509i.get();
        if (c2220b != null) {
            c2220b.clear();
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2850c() {
        if (getAndIncrement() == 0) {
            m2851h();
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        this.f4511k = true;
        this.f4510j.cancel();
        this.f4505e.dispose();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10)) {
            C1461d.m2502a(this.f4504d, j10);
            m2850c();
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        try {
            Object objApply = this.f4508h.apply(obj);
            AbstractC1314b.m2356a(objApply, "The mapper returned a null MaybeSource");
            AbstractC3588e abstractC3588e = (AbstractC3588e) objApply;
            this.f4506f.getAndIncrement();
            C1777b c1777b = new C1777b(this);
            if (this.f4511k || !this.f4505e.m1221a(c1777b)) {
                return;
            }
            abstractC3588e.m5717c(c1777b);
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            this.f4510j.cancel();
            onError(th);
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4510j, interfaceC2561b)) {
            this.f4510j = interfaceC2561b;
            this.f4502b.mo2808f(this);
            int i10 = this.f4503c;
            if (i10 == Integer.MAX_VALUE) {
                interfaceC2561b.mo2811d(Long.MAX_VALUE);
            } else {
                interfaceC2561b.mo2811d(i10);
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m2851h() {
        InterfaceC3587d interfaceC3587d = this.f4502b;
        AtomicInteger atomicInteger = this.f4506f;
        AtomicReference atomicReference = this.f4509i;
        int iAddAndGet = 1;
        do {
            long j10 = this.f4504d.get();
            long j11 = 0;
            while (true) {
                if (j11 == j10) {
                    break;
                }
                if (this.f4511k) {
                    m2849b();
                    return;
                }
                if (((Throwable) this.f4507g.get()) != null) {
                    C3000b c3000b = this.f4507g;
                    c3000b.getClass();
                    Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
                    m2849b();
                    interfaceC3587d.onError(thM4814b);
                    return;
                }
                boolean z9 = atomicInteger.get() == 0;
                C2220b c2220b = (C2220b) atomicReference.get();
                Object objPoll = c2220b != null ? c2220b.poll() : null;
                boolean z10 = objPoll == null;
                if (z9 && z10) {
                    C3000b c3000b2 = this.f4507g;
                    c3000b2.getClass();
                    Throwable thM4814b2 = AbstractC3002d.m4814b(c3000b2);
                    if (thM4814b2 != null) {
                        interfaceC3587d.onError(thM4814b2);
                        return;
                    } else {
                        interfaceC3587d.mo2804a();
                        return;
                    }
                }
                if (z10) {
                    break;
                }
                interfaceC3587d.mo2807e(objPoll);
                j11++;
            }
            if (j11 == j10) {
                if (this.f4511k) {
                    m2849b();
                    return;
                }
                if (((Throwable) this.f4507g.get()) != null) {
                    C3000b c3000b3 = this.f4507g;
                    c3000b3.getClass();
                    Throwable thM4814b3 = AbstractC3002d.m4814b(c3000b3);
                    m2849b();
                    interfaceC3587d.onError(thM4814b3);
                    return;
                }
                boolean z11 = atomicInteger.get() == 0;
                C2220b c2220b2 = (C2220b) atomicReference.get();
                boolean z12 = c2220b2 == null || c2220b2.isEmpty();
                if (z11 && z12) {
                    C3000b c3000b4 = this.f4507g;
                    c3000b4.getClass();
                    Throwable thM4814b4 = AbstractC3002d.m4814b(c3000b4);
                    if (thM4814b4 != null) {
                        interfaceC3587d.onError(thM4814b4);
                        return;
                    } else {
                        interfaceC3587d.mo2804a();
                        return;
                    }
                }
            }
            if (j11 != 0) {
                C1461d.m2516p(this.f4504d, j11);
                if (this.f4503c != Integer.MAX_VALUE) {
                    this.f4510j.mo2811d(j11);
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    /* JADX INFO: renamed from: i */
    public final C2220b m2852i() {
        while (true) {
            AtomicReference atomicReference = this.f4509i;
            C2220b c2220b = (C2220b) atomicReference.get();
            if (c2220b != null) {
                return c2220b;
            }
            C2220b c2220b2 = new C2220b(AbstractC3585b.f10653b);
            while (!atomicReference.compareAndSet(null, c2220b2)) {
                if (atomicReference.get() != null) {
                }
            }
            return c2220b2;
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        this.f4506f.decrementAndGet();
        C3000b c3000b = this.f4507g;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
        } else {
            this.f4505e.dispose();
            m2850c();
        }
    }
}
