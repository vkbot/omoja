package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p000a.AbstractC0000a;
import p045d8.AbstractC1314b;
import p062f5.C1567q;
import p150n9.InterfaceC2560a;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1690d extends AbstractC1686b {

    /* JADX INFO: renamed from: n */
    public final InterfaceC3587d f4364n;

    /* JADX INFO: renamed from: o */
    public final AtomicInteger f4365o;

    public C1690d(InterfaceC3587d interfaceC3587d, C1567q c1567q, int i10) {
        super(c1567q, i10);
        this.f4364n = interfaceC3587d;
        this.f4365o = new AtomicInteger();
    }

    @Override // p085h8.AbstractC1686b
    /* JADX INFO: renamed from: b */
    public final void mo2805b() {
        if (this.f4365o.getAndIncrement() == 0) {
            while (!this.f4340j) {
                if (!this.f4342l) {
                    boolean z9 = this.f4339i;
                    try {
                        Object objPoll = this.f4338h.poll();
                        boolean z10 = objPoll == null;
                        if (z9 && z10) {
                            this.f4364n.mo2804a();
                            return;
                        }
                        if (!z10) {
                            try {
                                Object objApply = this.f4333c.apply(objPoll);
                                AbstractC1314b.m2356a(objApply, "The mapper returned a null Publisher");
                                InterfaceC2560a interfaceC2560a = (InterfaceC2560a) objApply;
                                if (this.f4343m != 1) {
                                    int i10 = this.f4337g + 1;
                                    if (i10 == this.f4335e) {
                                        this.f4337g = 0;
                                        this.f4336f.mo2811d(i10);
                                    } else {
                                        this.f4337g = i10;
                                    }
                                }
                                if (interfaceC2560a instanceof Callable) {
                                    try {
                                        Object objCall = ((Callable) interfaceC2560a).call();
                                        if (objCall == null) {
                                            continue;
                                        } else if (!this.f4332b.f4377h) {
                                            this.f4342l = true;
                                            C1692e c1692e = this.f4332b;
                                            c1692e.m2817i(new C1694f(objCall, c1692e));
                                        } else if (get() == 0 && compareAndSet(0, 1)) {
                                            this.f4364n.mo2807e(objCall);
                                            if (!compareAndSet(1, 0)) {
                                                InterfaceC3587d interfaceC3587d = this.f4364n;
                                                C3000b c3000b = this.f4341k;
                                                c3000b.getClass();
                                                interfaceC3587d.onError(AbstractC3002d.m4814b(c3000b));
                                                return;
                                            }
                                        }
                                    } catch (Throwable th) {
                                        AbstractC1031d.m1292v(th);
                                        this.f4336f.cancel();
                                        C3000b c3000b2 = this.f4341k;
                                        c3000b2.getClass();
                                        AbstractC3002d.m4813a(c3000b2, th);
                                        InterfaceC3587d interfaceC3587d2 = this.f4364n;
                                        C3000b c3000b3 = this.f4341k;
                                        c3000b3.getClass();
                                        interfaceC3587d2.onError(AbstractC3002d.m4814b(c3000b3));
                                        return;
                                    }
                                } else {
                                    this.f4342l = true;
                                    interfaceC2560a.mo2835a(this.f4332b);
                                }
                            } catch (Throwable th2) {
                                AbstractC1031d.m1292v(th2);
                                this.f4336f.cancel();
                                C3000b c3000b4 = this.f4341k;
                                c3000b4.getClass();
                                AbstractC3002d.m4813a(c3000b4, th2);
                                InterfaceC3587d interfaceC3587d3 = this.f4364n;
                                C3000b c3000b5 = this.f4341k;
                                c3000b5.getClass();
                                interfaceC3587d3.onError(AbstractC3002d.m4814b(c3000b5));
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        AbstractC1031d.m1292v(th3);
                        this.f4336f.cancel();
                        C3000b c3000b6 = this.f4341k;
                        c3000b6.getClass();
                        AbstractC3002d.m4813a(c3000b6, th3);
                        InterfaceC3587d interfaceC3587d4 = this.f4364n;
                        C3000b c3000b7 = this.f4341k;
                        c3000b7.getClass();
                        interfaceC3587d4.onError(AbstractC3002d.m4814b(c3000b7));
                        return;
                    }
                }
                if (this.f4365o.decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    @Override // p085h8.AbstractC1686b
    /* JADX INFO: renamed from: c */
    public final void mo2806c(Throwable th) {
        C3000b c3000b = this.f4341k;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
            return;
        }
        this.f4336f.cancel();
        if (getAndIncrement() == 0) {
            this.f4364n.onError(AbstractC3002d.m4814b(c3000b));
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        if (this.f4340j) {
            return;
        }
        this.f4340j = true;
        this.f4332b.cancel();
        this.f4336f.cancel();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        this.f4332b.mo2811d(j10);
    }

    @Override // p085h8.AbstractC1686b
    /* JADX INFO: renamed from: h */
    public final void mo2809h(Object obj) {
        if (get() == 0 && compareAndSet(0, 1)) {
            InterfaceC3587d interfaceC3587d = this.f4364n;
            interfaceC3587d.mo2807e(obj);
            if (compareAndSet(1, 0)) {
                return;
            }
            C3000b c3000b = this.f4341k;
            c3000b.getClass();
            interfaceC3587d.onError(AbstractC3002d.m4814b(c3000b));
        }
    }

    @Override // p085h8.AbstractC1686b
    /* JADX INFO: renamed from: i */
    public final void mo2810i() {
        this.f4364n.mo2808f(this);
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        C3000b c3000b = this.f4341k;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
            return;
        }
        this.f4332b.cancel();
        if (getAndIncrement() == 0) {
            c3000b.getClass();
            this.f4364n.onError(AbstractC3002d.m4814b(c3000b));
        }
    }
}
