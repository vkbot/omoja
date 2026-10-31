package p085h8;

import java.util.concurrent.atomic.AtomicLong;
import p000a.AbstractC0000a;
import p009a8.C0032d;
import p050e3.C1461d;
import p054e8.InterfaceC1504g;
import p150n9.InterfaceC2561b;
import p158o8.AbstractC2752a;
import p158o8.EnumC2757f;
import p242x7.AbstractC3593j;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractRunnableC1699h0 extends AbstractC2752a implements InterfaceC3587d, Runnable {

    /* JADX INFO: renamed from: b */
    public final AbstractC3593j f4394b;

    /* JADX INFO: renamed from: c */
    public final int f4395c;

    /* JADX INFO: renamed from: d */
    public final int f4396d;

    /* JADX INFO: renamed from: e */
    public final AtomicLong f4397e = new AtomicLong();

    /* JADX INFO: renamed from: f */
    public InterfaceC2561b f4398f;

    /* JADX INFO: renamed from: g */
    public InterfaceC1504g f4399g;

    /* JADX INFO: renamed from: h */
    public volatile boolean f4400h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f4401i;

    /* JADX INFO: renamed from: j */
    public Throwable f4402j;

    /* JADX INFO: renamed from: k */
    public int f4403k;

    /* JADX INFO: renamed from: l */
    public long f4404l;

    /* JADX INFO: renamed from: m */
    public boolean f4405m;

    public AbstractRunnableC1699h0(AbstractC3593j abstractC3593j, int i10) {
        this.f4394b = abstractC3593j;
        this.f4395c = i10;
        this.f4396d = i10 - (i10 >> 2);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        if (this.f4401i) {
            return;
        }
        this.f4401i = true;
        m2830m();
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        if (this.f4400h) {
            return;
        }
        this.f4400h = true;
        this.f4398f.cancel();
        this.f4394b.dispose();
        if (getAndIncrement() == 0) {
            this.f4399g.clear();
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f4399g.clear();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10)) {
            C1461d.m2502a(this.f4397e, j10);
            m2830m();
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4401i) {
            return;
        }
        if (this.f4403k == 2) {
            m2830m();
            return;
        }
        if (!this.f4399g.offer(obj)) {
            this.f4398f.cancel();
            this.f4402j = new C0032d("Queue is full?!");
            this.f4401i = true;
        }
        m2830m();
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        this.f4405m = true;
        return 2;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m2826i(boolean z9, boolean z10, InterfaceC3587d interfaceC3587d) {
        if (this.f4400h) {
            clear();
            return true;
        }
        if (!z9) {
            return false;
        }
        Throwable th = this.f4402j;
        if (th != null) {
            clear();
            interfaceC3587d.onError(th);
            this.f4394b.dispose();
            return true;
        }
        if (!z10) {
            return false;
        }
        interfaceC3587d.mo2804a();
        this.f4394b.dispose();
        return true;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f4399g.isEmpty();
    }

    /* JADX INFO: renamed from: j */
    public abstract void mo2827j();

    /* JADX INFO: renamed from: k */
    public abstract void mo2828k();

    /* JADX INFO: renamed from: l */
    public abstract void mo2829l();

    /* JADX INFO: renamed from: m */
    public final void m2830m() {
        if (getAndIncrement() != 0) {
            return;
        }
        this.f4394b.mo3779b(this);
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        if (this.f4401i) {
            AbstractC0000a.m18s(th);
            return;
        }
        this.f4402j = th;
        this.f4401i = true;
        m2830m();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4405m) {
            mo2828k();
        } else if (this.f4403k == 1) {
            mo2829l();
        } else {
            mo2827j();
        }
    }
}
