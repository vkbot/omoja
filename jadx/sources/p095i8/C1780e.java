package p095i8;

import com.bumptech.glide.AbstractC1031d;
import p023b8.InterfaceC0930d;
import p033c8.EnumC1011a;
import p242x7.InterfaceC3589f;
import p242x7.InterfaceC3596m;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1780e implements InterfaceC3589f, InterfaceC3762a, InterfaceC3596m {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4674b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3589f f4675c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC0930d f4676d;

    /* JADX INFO: renamed from: e */
    public InterfaceC3762a f4677e;

    public /* synthetic */ C1780e(InterfaceC3589f interfaceC3589f, InterfaceC0930d interfaceC0930d, int i10) {
        this.f4674b = i10;
        this.f4675c = interfaceC3589f;
        this.f4676d = interfaceC0930d;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public void mo237a() {
        this.f4675c.mo237a();
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        switch (this.f4674b) {
            case 0:
                if (EnumC1011a.m1219e(this.f4677e, interfaceC3762a)) {
                    this.f4677e = interfaceC3762a;
                    this.f4675c.mo238b(this);
                }
                break;
            default:
                if (EnumC1011a.m1219e(this.f4677e, interfaceC3762a)) {
                    this.f4677e = interfaceC3762a;
                    this.f4675c.mo238b(this);
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        switch (this.f4674b) {
            case 0:
                InterfaceC3589f interfaceC3589f = this.f4675c;
                try {
                    if (!this.f4676d.test(obj)) {
                        interfaceC3589f.mo237a();
                    } else {
                        interfaceC3589f.mo239c(obj);
                    }
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    interfaceC3589f.onError(th);
                    return;
                }
                break;
            default:
                InterfaceC3589f interfaceC3589f2 = this.f4675c;
                try {
                    if (!this.f4676d.test(obj)) {
                        interfaceC3589f2.mo237a();
                    } else {
                        interfaceC3589f2.mo239c(obj);
                    }
                } catch (Throwable th2) {
                    AbstractC1031d.m1292v(th2);
                    interfaceC3589f2.onError(th2);
                }
                break;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        switch (this.f4674b) {
            case 0:
                InterfaceC3762a interfaceC3762a = this.f4677e;
                this.f4677e = EnumC1011a.f1013b;
                interfaceC3762a.dispose();
                break;
            default:
                InterfaceC3762a interfaceC3762a2 = this.f4677e;
                this.f4677e = EnumC1011a.f1013b;
                interfaceC3762a2.dispose();
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        switch (this.f4674b) {
            case 0:
                this.f4675c.onError(th);
                break;
            default:
                this.f4675c.onError(th);
                break;
        }
    }
}
