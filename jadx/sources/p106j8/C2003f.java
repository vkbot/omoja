package p106j8;

import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p033c8.EnumC1011a;
import p054e8.InterfaceC1499b;
import p054e8.InterfaceC1504g;
import p129l8.C2220b;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: j8.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2003f extends AtomicReference implements InterfaceC3591h {

    /* JADX INFO: renamed from: b */
    public final long f5454b;

    /* JADX INFO: renamed from: c */
    public final C2004g f5455c;

    /* JADX INFO: renamed from: d */
    public volatile boolean f5456d;

    /* JADX INFO: renamed from: e */
    public volatile InterfaceC1504g f5457e;

    /* JADX INFO: renamed from: f */
    public int f5458f;

    public C2003f(C2004g c2004g, long j10) {
        this.f5454b = j10;
        this.f5455c = c2004g;
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: a */
    public final void mo2818a() {
        this.f5456d = true;
        this.f5455c.m3092f();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: b */
    public final void mo2819b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1218d(this, interfaceC3762a) && (interfaceC3762a instanceof InterfaceC1499b)) {
            InterfaceC1499b interfaceC1499b = (InterfaceC1499b) interfaceC3762a;
            int iMo1220h = interfaceC1499b.mo1220h(7);
            if (iMo1220h == 1) {
                this.f5458f = iMo1220h;
                this.f5457e = interfaceC1499b;
                this.f5456d = true;
                this.f5455c.m3092f();
                return;
            }
            if (iMo1220h == 2) {
                this.f5458f = iMo1220h;
                this.f5457e = interfaceC1499b;
            }
        }
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: e */
    public final void mo2820e(Object obj) {
        int i10 = this.f5458f;
        C2004g c2004g = this.f5455c;
        if (i10 != 0) {
            c2004g.m3092f();
            return;
        }
        if (c2004g.get() == 0 && c2004g.compareAndSet(0, 1)) {
            c2004g.f5461b.mo2820e(obj);
            if (c2004g.decrementAndGet() == 0) {
                return;
            }
        } else {
            InterfaceC1504g c2220b = this.f5457e;
            if (c2220b == null) {
                c2220b = new C2220b(c2004g.f5464e);
                this.f5457e = c2220b;
            }
            c2220b.offer(obj);
            if (c2004g.getAndIncrement() != 0) {
                return;
            }
        }
        c2004g.m3093g();
    }

    @Override // p242x7.InterfaceC3591h
    public final void onError(Throwable th) {
        C3000b c3000b = this.f5455c.f5467h;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
            return;
        }
        C2004g c2004g = this.f5455c;
        c2004g.getClass();
        c2004g.m3091d();
        this.f5456d = true;
        this.f5455c.m3092f();
    }
}
