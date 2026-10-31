package p085h8;

import java.util.concurrent.atomic.AtomicInteger;
import p023b8.InterfaceC0929c;
import p054e8.InterfaceC1501d;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1686b extends AtomicInteger implements InterfaceC3587d, InterfaceC2561b {

    /* JADX INFO: renamed from: c */
    public final InterfaceC0929c f4333c;

    /* JADX INFO: renamed from: d */
    public final int f4334d;

    /* JADX INFO: renamed from: e */
    public final int f4335e;

    /* JADX INFO: renamed from: f */
    public InterfaceC2561b f4336f;

    /* JADX INFO: renamed from: g */
    public int f4337g;

    /* JADX INFO: renamed from: h */
    public InterfaceC1504g f4338h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f4339i;

    /* JADX INFO: renamed from: j */
    public volatile boolean f4340j;

    /* JADX INFO: renamed from: l */
    public volatile boolean f4342l;

    /* JADX INFO: renamed from: m */
    public int f4343m;

    /* JADX INFO: renamed from: b */
    public final C1692e f4332b = new C1692e(this);

    /* JADX INFO: renamed from: k */
    public final C3000b f4341k = new C3000b();

    public AbstractC1686b(InterfaceC0929c interfaceC0929c, int i10) {
        this.f4333c = interfaceC0929c;
        this.f4334d = i10;
        this.f4335e = i10;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        this.f4339i = true;
        mo2805b();
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo2805b();

    /* JADX INFO: renamed from: c */
    public abstract void mo2806c(Throwable th);

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4343m == 2 || this.f4338h.offer(obj)) {
            mo2805b();
        } else {
            this.f4336f.cancel();
            onError(new IllegalStateException("Queue full?!"));
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4336f, interfaceC2561b)) {
            this.f4336f = interfaceC2561b;
            if (interfaceC2561b instanceof InterfaceC1501d) {
                InterfaceC1501d interfaceC1501d = (InterfaceC1501d) interfaceC2561b;
                int iMo1220h = interfaceC1501d.mo1220h(3);
                if (iMo1220h == 1) {
                    this.f4343m = iMo1220h;
                    this.f4338h = interfaceC1501d;
                    this.f4339i = true;
                    mo2810i();
                    mo2805b();
                    return;
                }
                if (iMo1220h == 2) {
                    this.f4343m = iMo1220h;
                    this.f4338h = interfaceC1501d;
                    mo2810i();
                    interfaceC2561b.mo2811d(this.f4334d);
                    return;
                }
            }
            this.f4338h = new C2219a(this.f4334d);
            mo2810i();
            interfaceC2561b.mo2811d(this.f4334d);
        }
    }

    /* JADX INFO: renamed from: h */
    public abstract void mo2809h(Object obj);

    /* JADX INFO: renamed from: i */
    public abstract void mo2810i();
}
