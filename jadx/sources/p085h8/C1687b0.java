package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0032d;
import p023b8.InterfaceC0929c;
import p030c5.C0990e;
import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p054e8.InterfaceC1501d;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p150n9.InterfaceC2561b;
import p158o8.AbstractC2752a;
import p158o8.EnumC2757f;
import p171p8.AbstractC3002d;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1687b0 extends AbstractC2752a implements InterfaceC3587d {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4344b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC0929c f4345c;

    /* JADX INFO: renamed from: d */
    public final int f4346d;

    /* JADX INFO: renamed from: e */
    public final int f4347e;

    /* JADX INFO: renamed from: g */
    public InterfaceC2561b f4349g;

    /* JADX INFO: renamed from: h */
    public InterfaceC1504g f4350h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f4351i;

    /* JADX INFO: renamed from: j */
    public volatile boolean f4352j;

    /* JADX INFO: renamed from: l */
    public Iterator f4354l;

    /* JADX INFO: renamed from: m */
    public int f4355m;

    /* JADX INFO: renamed from: n */
    public int f4356n;

    /* JADX INFO: renamed from: k */
    public final AtomicReference f4353k = new AtomicReference();

    /* JADX INFO: renamed from: f */
    public final AtomicLong f4348f = new AtomicLong();

    public C1687b0(InterfaceC3587d interfaceC3587d, C0990e c0990e, int i10) {
        this.f4344b = interfaceC3587d;
        this.f4345c = c0990e;
        this.f4346d = i10;
        this.f4347e = i10 - (i10 >> 2);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        if (this.f4351i) {
            return;
        }
        this.f4351i = true;
        m2813j();
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        if (this.f4352j) {
            return;
        }
        this.f4352j = true;
        this.f4349g.cancel();
        if (getAndIncrement() == 0) {
            this.f4350h.clear();
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f4354l = null;
        this.f4350h.clear();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10)) {
            C1461d.m2502a(this.f4348f, j10);
            m2813j();
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4351i) {
            return;
        }
        if (this.f4356n != 0 || this.f4350h.offer(obj)) {
            m2813j();
        } else {
            onError(new C0032d("Queue is full?!"));
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4349g, interfaceC2561b)) {
            this.f4349g = interfaceC2561b;
            if (interfaceC2561b instanceof InterfaceC1501d) {
                InterfaceC1501d interfaceC1501d = (InterfaceC1501d) interfaceC2561b;
                int iMo1220h = interfaceC1501d.mo1220h(3);
                if (iMo1220h == 1) {
                    this.f4356n = iMo1220h;
                    this.f4350h = interfaceC1501d;
                    this.f4351i = true;
                    this.f4344b.mo2808f(this);
                    return;
                }
                if (iMo1220h == 2) {
                    this.f4356n = iMo1220h;
                    this.f4350h = interfaceC1501d;
                    this.f4344b.mo2808f(this);
                    interfaceC2561b.mo2811d(this.f4346d);
                    return;
                }
            }
            this.f4350h = new C2219a(this.f4346d);
            this.f4344b.mo2808f(this);
            interfaceC2561b.mo2811d(this.f4346d);
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        return this.f4356n == 1 ? 1 : 0;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m2812i(boolean z9, boolean z10, InterfaceC3587d interfaceC3587d, InterfaceC1504g interfaceC1504g) {
        if (this.f4352j) {
            this.f4354l = null;
            interfaceC1504g.clear();
            return true;
        }
        if (!z9) {
            return false;
        }
        if (((Throwable) this.f4353k.get()) == null) {
            if (!z10) {
                return false;
            }
            interfaceC3587d.mo2804a();
            return true;
        }
        Throwable thM4814b = AbstractC3002d.m4814b(this.f4353k);
        this.f4354l = null;
        interfaceC1504g.clear();
        interfaceC3587d.onError(thM4814b);
        return true;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f4354l == null && this.f4350h.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: j */
    public final void m2813j() {
        int i10;
        if (getAndIncrement() != 0) {
            return;
        }
        InterfaceC3587d interfaceC3587d = this.f4344b;
        InterfaceC1504g interfaceC1504g = this.f4350h;
        boolean z9 = false;
        int i11 = 1;
        byte b10 = this.f4356n != 1;
        Iterator it = this.f4354l;
        int iAddAndGet = 1;
        while (true) {
            if (it == null) {
                boolean z10 = this.f4351i;
                try {
                    Object objPoll = interfaceC1504g.poll();
                    if (m2812i(z10, objPoll == null ? i11 : z9 ? 1 : 0, interfaceC3587d, interfaceC1504g)) {
                        return;
                    }
                    if (objPoll != null) {
                        try {
                            it = ((Iterable) this.f4345c.apply(objPoll)).iterator();
                            if (it.hasNext()) {
                                this.f4354l = it;
                            } else {
                                if (b10 != false) {
                                    int i12 = this.f4355m + i11;
                                    if (i12 == this.f4347e) {
                                        this.f4355m = z9 ? 1 : 0;
                                        this.f4349g.mo2811d(i12);
                                    } else {
                                        this.f4355m = i12;
                                    }
                                }
                                it = null;
                            }
                        } catch (Throwable th) {
                            AbstractC1031d.m1292v(th);
                            this.f4349g.cancel();
                            AbstractC3002d.m4813a(this.f4353k, th);
                            interfaceC3587d.onError(AbstractC3002d.m4814b(this.f4353k));
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    AbstractC1031d.m1292v(th2);
                    this.f4349g.cancel();
                    AbstractC3002d.m4813a(this.f4353k, th2);
                    Throwable thM4814b = AbstractC3002d.m4814b(this.f4353k);
                    this.f4354l = null;
                    interfaceC1504g.clear();
                    interfaceC3587d.onError(thM4814b);
                    return;
                }
            }
            if (it != null) {
                long j10 = this.f4348f.get();
                long j11 = 0;
                while (true) {
                    if (j11 == j10) {
                        i10 = i11;
                        break;
                    }
                    if (m2812i(this.f4351i, z9, interfaceC3587d, interfaceC1504g)) {
                        return;
                    }
                    try {
                        Object next = it.next();
                        i10 = i11;
                        AbstractC1314b.m2356a(next, "The iterator returned a null value");
                        interfaceC3587d.mo2807e(next);
                        if (m2812i(this.f4351i, z9, interfaceC3587d, interfaceC1504g)) {
                            return;
                        }
                        j11++;
                        try {
                            if (!it.hasNext()) {
                                if (b10 != false) {
                                    int i13 = this.f4355m + 1;
                                    if (i13 == this.f4347e) {
                                        this.f4355m = z9 ? 1 : 0;
                                        this.f4349g.mo2811d(i13);
                                    } else {
                                        this.f4355m = i13;
                                    }
                                }
                                this.f4354l = null;
                                it = null;
                                break;
                            }
                            i11 = i10;
                        } catch (Throwable th3) {
                            AbstractC1031d.m1292v(th3);
                            this.f4354l = null;
                            this.f4349g.cancel();
                            AbstractC3002d.m4813a(this.f4353k, th3);
                            interfaceC3587d.onError(AbstractC3002d.m4814b(this.f4353k));
                            return;
                        }
                    } catch (Throwable th4) {
                        AbstractC1031d.m1292v(th4);
                        this.f4354l = null;
                        this.f4349g.cancel();
                        AbstractC3002d.m4813a(this.f4353k, th4);
                        interfaceC3587d.onError(AbstractC3002d.m4814b(this.f4353k));
                        return;
                    }
                }
                if (j11 == j10) {
                    if (m2812i(this.f4351i, (interfaceC1504g.isEmpty() && it == null) ? i10 : 0, interfaceC3587d, interfaceC1504g)) {
                        return;
                    }
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f4348f.addAndGet(-j11);
                }
                if (it != null) {
                }
                i11 = i10;
                z9 = false;
            } else {
                i10 = i11;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            i11 = i10;
            z9 = false;
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        if (this.f4351i || !AbstractC3002d.m4813a(this.f4353k, th)) {
            AbstractC0000a.m18s(th);
        } else {
            this.f4351i = true;
            m2813j();
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        Iterator it = this.f4354l;
        while (it == null) {
            Object objPoll = this.f4350h.poll();
            if (objPoll != null) {
                it = ((Iterable) this.f4345c.apply(objPoll)).iterator();
                if (it.hasNext()) {
                    this.f4354l = it;
                    break;
                }
                it = null;
            } else {
                return null;
            }
        }
        Object next = it.next();
        AbstractC1314b.m2356a(next, "The iterator returned a null value");
        if (!it.hasNext()) {
            this.f4354l = null;
        }
        return next;
    }
}
