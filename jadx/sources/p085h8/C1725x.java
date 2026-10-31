package p085h8;

import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0032d;
import p054e8.InterfaceC1501d;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: h8.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1725x extends AtomicReference implements InterfaceC3587d, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final long f4476b;

    /* JADX INFO: renamed from: c */
    public final C1726y f4477c;

    /* JADX INFO: renamed from: d */
    public final int f4478d;

    /* JADX INFO: renamed from: e */
    public final int f4479e;

    /* JADX INFO: renamed from: f */
    public volatile boolean f4480f;

    /* JADX INFO: renamed from: g */
    public volatile InterfaceC1504g f4481g;

    /* JADX INFO: renamed from: h */
    public long f4482h;

    /* JADX INFO: renamed from: i */
    public int f4483i;

    public C1725x(C1726y c1726y, long j10) {
        this.f4476b = j10;
        this.f4477c = c1726y;
        int i10 = c1726y.f4489e;
        this.f4479e = i10;
        this.f4478d = i10 >> 2;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        this.f4480f = true;
        this.f4477c.m2845c();
    }

    /* JADX INFO: renamed from: b */
    public final void m2843b(long j10) {
        if (this.f4483i != 1) {
            long j11 = this.f4482h + j10;
            if (j11 < this.f4478d) {
                this.f4482h = j11;
            } else {
                this.f4482h = 0L;
                ((InterfaceC2561b) get()).mo2811d(j11);
            }
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        EnumC2757f.m4276a(this);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        int i10 = this.f4483i;
        C1726y c1726y = this.f4477c;
        if (i10 == 2) {
            c1726y.m2845c();
            return;
        }
        if (c1726y.get() == 0 && c1726y.compareAndSet(0, 1)) {
            long j10 = c1726y.f4495k.get();
            InterfaceC1504g c2219a = this.f4481g;
            if (j10 == 0 || !(c2219a == null || c2219a.isEmpty())) {
                if (c2219a == null && (c2219a = this.f4481g) == null) {
                    c2219a = new C2219a(c1726y.f4489e);
                    this.f4481g = c2219a;
                }
                if (!c2219a.offer(obj)) {
                    c1726y.onError(new C0032d("Inner queue full?!"));
                    return;
                }
            } else {
                c1726y.f4486b.mo2807e(obj);
                if (j10 != Long.MAX_VALUE) {
                    c1726y.f4495k.decrementAndGet();
                }
                m2843b(1L);
            }
            if (c1726y.decrementAndGet() == 0) {
                return;
            }
        } else {
            InterfaceC1504g c2219a2 = this.f4481g;
            if (c2219a2 == null) {
                c2219a2 = new C2219a(c1726y.f4489e);
                this.f4481g = c2219a2;
            }
            if (!c2219a2.offer(obj)) {
                c1726y.onError(new C0032d("Inner queue full?!"));
                return;
            } else if (c1726y.getAndIncrement() != 0) {
                return;
            }
        }
        c1726y.m2846h();
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4277b(this, interfaceC2561b)) {
            if (interfaceC2561b instanceof InterfaceC1501d) {
                InterfaceC1501d interfaceC1501d = (InterfaceC1501d) interfaceC2561b;
                int iMo1220h = interfaceC1501d.mo1220h(7);
                if (iMo1220h == 1) {
                    this.f4483i = iMo1220h;
                    this.f4481g = interfaceC1501d;
                    this.f4480f = true;
                    this.f4477c.m2845c();
                    return;
                }
                if (iMo1220h == 2) {
                    this.f4483i = iMo1220h;
                    this.f4481g = interfaceC1501d;
                }
            }
            interfaceC2561b.mo2811d(this.f4479e);
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        lazySet(EnumC2757f.f7924b);
        C1726y c1726y = this.f4477c;
        C3000b c3000b = c1726y.f4492h;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
            return;
        }
        this.f4480f = true;
        c1726y.f4496l.cancel();
        for (C1725x c1725x : (C1725x[]) c1726y.f4494j.getAndSet(C1726y.f4485s)) {
            c1725x.getClass();
            EnumC2757f.m4276a(c1725x);
        }
        c1726y.m2845c();
    }
}
