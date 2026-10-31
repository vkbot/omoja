package p085h8;

import com.bumptech.glide.AbstractC1031d;
import p054e8.InterfaceC1498a;
import p054e8.InterfaceC1501d;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p242x7.AbstractC3593j;

/* JADX INFO: renamed from: h8.i0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1701i0 extends AbstractRunnableC1699h0 {

    /* JADX INFO: renamed from: n */
    public final InterfaceC1498a f4411n;

    /* JADX INFO: renamed from: o */
    public long f4412o;

    public C1701i0(InterfaceC1498a interfaceC1498a, AbstractC3593j abstractC3593j, int i10) {
        super(abstractC3593j, i10);
        this.f4411n = interfaceC1498a;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4398f, interfaceC2561b)) {
            this.f4398f = interfaceC2561b;
            if (interfaceC2561b instanceof InterfaceC1501d) {
                InterfaceC1501d interfaceC1501d = (InterfaceC1501d) interfaceC2561b;
                int iMo1220h = interfaceC1501d.mo1220h(7);
                if (iMo1220h == 1) {
                    this.f4403k = 1;
                    this.f4399g = interfaceC1501d;
                    this.f4401i = true;
                    this.f4411n.mo2808f(this);
                    return;
                }
                if (iMo1220h == 2) {
                    this.f4403k = 2;
                    this.f4399g = interfaceC1501d;
                    this.f4411n.mo2808f(this);
                    interfaceC2561b.mo2811d(this.f4395c);
                    return;
                }
            }
            this.f4399g = new C2219a(this.f4395c);
            this.f4411n.mo2808f(this);
            interfaceC2561b.mo2811d(this.f4395c);
        }
    }

    @Override // p085h8.AbstractRunnableC1699h0
    /* JADX INFO: renamed from: j */
    public final void mo2827j() {
        InterfaceC1498a interfaceC1498a = this.f4411n;
        InterfaceC1504g interfaceC1504g = this.f4399g;
        long j10 = this.f4404l;
        long j11 = this.f4412o;
        int iAddAndGet = 1;
        while (true) {
            long j12 = this.f4397e.get();
            while (j10 != j12) {
                boolean z9 = this.f4401i;
                try {
                    Object objPoll = interfaceC1504g.poll();
                    boolean z10 = objPoll == null;
                    if (m2826i(z9, z10, interfaceC1498a)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    if (interfaceC1498a.mo2580g(objPoll)) {
                        j10++;
                    }
                    j11++;
                    if (j11 == this.f4396d) {
                        this.f4398f.mo2811d(j11);
                        j11 = 0;
                    }
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    this.f4398f.cancel();
                    interfaceC1504g.clear();
                    interfaceC1498a.onError(th);
                    this.f4394b.dispose();
                    return;
                }
            }
            if (j10 == j12 && m2826i(this.f4401i, interfaceC1504g.isEmpty(), interfaceC1498a)) {
                return;
            }
            int i10 = get();
            if (iAddAndGet == i10) {
                this.f4404l = j10;
                this.f4412o = j11;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i10;
            }
        }
    }

    @Override // p085h8.AbstractRunnableC1699h0
    /* JADX INFO: renamed from: k */
    public final void mo2828k() {
        int iAddAndGet = 1;
        while (!this.f4400h) {
            boolean z9 = this.f4401i;
            this.f4411n.mo2807e(null);
            if (z9) {
                Throwable th = this.f4402j;
                InterfaceC1498a interfaceC1498a = this.f4411n;
                if (th != null) {
                    interfaceC1498a.onError(th);
                } else {
                    interfaceC1498a.mo2804a();
                }
                this.f4394b.dispose();
                return;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override // p085h8.AbstractRunnableC1699h0
    /* JADX INFO: renamed from: l */
    public final void mo2829l() {
        InterfaceC1498a interfaceC1498a = this.f4411n;
        InterfaceC1504g interfaceC1504g = this.f4399g;
        long j10 = this.f4404l;
        int iAddAndGet = 1;
        while (true) {
            long j11 = this.f4397e.get();
            while (j10 != j11) {
                try {
                    Object objPoll = interfaceC1504g.poll();
                    if (this.f4400h) {
                        return;
                    }
                    if (objPoll == null) {
                        interfaceC1498a.mo2804a();
                        this.f4394b.dispose();
                        return;
                    } else if (interfaceC1498a.mo2580g(objPoll)) {
                        j10++;
                    }
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    this.f4398f.cancel();
                    interfaceC1498a.onError(th);
                    this.f4394b.dispose();
                    return;
                }
            }
            if (this.f4400h) {
                return;
            }
            if (interfaceC1504g.isEmpty()) {
                interfaceC1498a.mo2804a();
                this.f4394b.dispose();
                return;
            }
            int i10 = get();
            if (iAddAndGet == i10) {
                this.f4404l = j10;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i10;
            }
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        Object objPoll = this.f4399g.poll();
        if (objPoll != null && this.f4403k != 1) {
            long j10 = this.f4412o + 1;
            if (j10 == this.f4396d) {
                this.f4412o = 0L;
                this.f4398f.mo2811d(j10);
                return objPoll;
            }
            this.f4412o = j10;
        }
        return objPoll;
    }
}
