package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import p000a.AbstractC0000a;
import p045d8.AbstractC1314b;
import p062f5.C1567q;
import p150n9.InterfaceC2560a;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1688c extends AbstractC1686b {

    /* JADX INFO: renamed from: n */
    public final InterfaceC3587d f4357n;

    /* JADX INFO: renamed from: o */
    public final boolean f4358o;

    public C1688c(InterfaceC3587d interfaceC3587d, C1567q c1567q, int i10, boolean z9) {
        super(c1567q, i10);
        this.f4357n = interfaceC3587d;
        this.f4358o = z9;
    }

    @Override // p085h8.AbstractC1686b
    /* JADX INFO: renamed from: b */
    public final void mo2805b() {
        if (getAndIncrement() == 0) {
            while (!this.f4340j) {
                if (!this.f4342l) {
                    boolean z9 = this.f4339i;
                    if (z9 && !this.f4358o && ((Throwable) this.f4341k.get()) != null) {
                        InterfaceC3587d interfaceC3587d = this.f4357n;
                        C3000b c3000b = this.f4341k;
                        c3000b.getClass();
                        interfaceC3587d.onError(AbstractC3002d.m4814b(c3000b));
                        return;
                    }
                    try {
                        Object objPoll = this.f4338h.poll();
                        boolean z10 = objPoll == null;
                        if (z9 && z10) {
                            C3000b c3000b2 = this.f4341k;
                            c3000b2.getClass();
                            Throwable thM4814b = AbstractC3002d.m4814b(c3000b2);
                            InterfaceC3587d interfaceC3587d2 = this.f4357n;
                            if (thM4814b != null) {
                                interfaceC3587d2.onError(thM4814b);
                                return;
                            } else {
                                interfaceC3587d2.mo2804a();
                                return;
                            }
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
                                        } else if (this.f4332b.f4377h) {
                                            this.f4357n.mo2807e(objCall);
                                        } else {
                                            this.f4342l = true;
                                            C1692e c1692e = this.f4332b;
                                            c1692e.m2817i(new C1694f(objCall, c1692e));
                                        }
                                    } catch (Throwable th) {
                                        AbstractC1031d.m1292v(th);
                                        this.f4336f.cancel();
                                        C3000b c3000b3 = this.f4341k;
                                        c3000b3.getClass();
                                        AbstractC3002d.m4813a(c3000b3, th);
                                        InterfaceC3587d interfaceC3587d3 = this.f4357n;
                                        C3000b c3000b4 = this.f4341k;
                                        c3000b4.getClass();
                                        interfaceC3587d3.onError(AbstractC3002d.m4814b(c3000b4));
                                        return;
                                    }
                                } else {
                                    this.f4342l = true;
                                    interfaceC2560a.mo2835a(this.f4332b);
                                }
                            } catch (Throwable th2) {
                                AbstractC1031d.m1292v(th2);
                                this.f4336f.cancel();
                                C3000b c3000b5 = this.f4341k;
                                c3000b5.getClass();
                                AbstractC3002d.m4813a(c3000b5, th2);
                                InterfaceC3587d interfaceC3587d4 = this.f4357n;
                                C3000b c3000b6 = this.f4341k;
                                c3000b6.getClass();
                                interfaceC3587d4.onError(AbstractC3002d.m4814b(c3000b6));
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        AbstractC1031d.m1292v(th3);
                        this.f4336f.cancel();
                        C3000b c3000b7 = this.f4341k;
                        c3000b7.getClass();
                        AbstractC3002d.m4813a(c3000b7, th3);
                        InterfaceC3587d interfaceC3587d5 = this.f4357n;
                        C3000b c3000b8 = this.f4341k;
                        c3000b8.getClass();
                        interfaceC3587d5.onError(AbstractC3002d.m4814b(c3000b8));
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
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
        if (!this.f4358o) {
            this.f4336f.cancel();
            this.f4339i = true;
        }
        this.f4342l = false;
        mo2805b();
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
        this.f4357n.mo2807e(obj);
    }

    @Override // p085h8.AbstractC1686b
    /* JADX INFO: renamed from: i */
    public final void mo2810i() {
        this.f4357n.mo2808f(this);
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        C3000b c3000b = this.f4341k;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
        } else {
            this.f4339i = true;
            mo2805b();
        }
    }
}
