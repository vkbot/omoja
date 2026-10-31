package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.atomic.AtomicLong;
import p009a8.C0032d;
import p023b8.InterfaceC0927a;
import p050e3.C1461d;
import p054e8.InterfaceC1503f;
import p129l8.C2219a;
import p129l8.C2220b;
import p150n9.InterfaceC2561b;
import p158o8.AbstractC2752a;
import p158o8.EnumC2757f;
import p232w7.C3537c;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1705k0 extends AbstractC2752a implements InterfaceC3587d {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4414b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1503f f4415c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC0927a f4416d;

    /* JADX INFO: renamed from: e */
    public InterfaceC2561b f4417e;

    /* JADX INFO: renamed from: f */
    public volatile boolean f4418f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f4419g;

    /* JADX INFO: renamed from: h */
    public Throwable f4420h;

    /* JADX INFO: renamed from: i */
    public final AtomicLong f4421i = new AtomicLong();

    /* JADX INFO: renamed from: j */
    public boolean f4422j;

    public C1705k0(InterfaceC3587d interfaceC3587d, int i10, boolean z9, C3537c c3537c) {
        this.f4414b = interfaceC3587d;
        this.f4416d = c3537c;
        this.f4415c = z9 ? new C2220b(i10) : new C2219a(i10);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        this.f4419g = true;
        if (this.f4422j) {
            this.f4414b.mo2804a();
        } else {
            m2833j();
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        if (this.f4418f) {
            return;
        }
        this.f4418f = true;
        this.f4417e.cancel();
        if (getAndIncrement() == 0) {
            this.f4415c.clear();
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f4415c.clear();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (this.f4422j || !EnumC2757f.m4278c(j10)) {
            return;
        }
        C1461d.m2502a(this.f4421i, j10);
        m2833j();
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4415c.offer(obj)) {
            if (this.f4422j) {
                this.f4414b.mo2807e(null);
                return;
            } else {
                m2833j();
                return;
            }
        }
        this.f4417e.cancel();
        C0032d c0032d = new C0032d("Buffer is full");
        try {
            this.f4416d.run();
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            c0032d.initCause(th);
        }
        onError(c0032d);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4417e, interfaceC2561b)) {
            this.f4417e = interfaceC2561b;
            this.f4414b.mo2808f(this);
            interfaceC2561b.mo2811d(Long.MAX_VALUE);
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        this.f4422j = true;
        return 2;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m2832i(boolean z9, boolean z10, InterfaceC3587d interfaceC3587d) {
        if (this.f4418f) {
            this.f4415c.clear();
            return true;
        }
        if (!z9) {
            return false;
        }
        Throwable th = this.f4420h;
        if (th != null) {
            this.f4415c.clear();
            interfaceC3587d.onError(th);
            return true;
        }
        if (!z10) {
            return false;
        }
        interfaceC3587d.mo2804a();
        return true;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f4415c.isEmpty();
    }

    /* JADX INFO: renamed from: j */
    public final void m2833j() {
        if (getAndIncrement() == 0) {
            InterfaceC1503f interfaceC1503f = this.f4415c;
            InterfaceC3587d interfaceC3587d = this.f4414b;
            int iAddAndGet = 1;
            while (!m2832i(this.f4419g, interfaceC1503f.isEmpty(), interfaceC3587d)) {
                long j10 = this.f4421i.get();
                long j11 = 0;
                while (j11 != j10) {
                    boolean z9 = this.f4419g;
                    Object objPoll = interfaceC1503f.poll();
                    boolean z10 = objPoll == null;
                    if (m2832i(z9, z10, interfaceC3587d)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    interfaceC3587d.mo2807e(objPoll);
                    j11++;
                }
                if (j11 == j10 && m2832i(this.f4419g, interfaceC1503f.isEmpty(), interfaceC3587d)) {
                    return;
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f4421i.addAndGet(-j11);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        this.f4420h = th;
        this.f4419g = true;
        if (this.f4422j) {
            this.f4414b.onError(th);
        } else {
            m2833j();
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        return this.f4415c.poll();
    }
}
