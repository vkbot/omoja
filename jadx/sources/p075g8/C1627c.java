package p075g8;

import com.bumptech.glide.AbstractC1031d;
import p000a.AbstractC0000a;
import p009a8.C0031c;
import p023b8.InterfaceC0929c;
import p033c8.EnumC1011a;
import p045d8.AbstractC1314b;
import p095i8.C1793r;
import p242x7.InterfaceC3584a;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: g8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1627c implements InterfaceC3584a, InterfaceC3762a, InterfaceC3589f {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4122b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3762a f4123c;

    /* JADX INFO: renamed from: d */
    public final Object f4124d;

    /* JADX INFO: renamed from: e */
    public final Object f4125e;

    public C1627c(C1628d c1628d, InterfaceC3584a interfaceC3584a) {
        this.f4122b = 0;
        this.f4125e = c1628d;
        this.f4124d = interfaceC3584a;
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        switch (this.f4122b) {
            case 0:
                InterfaceC3584a interfaceC3584a = (InterfaceC3584a) this.f4124d;
                C1628d c1628d = (C1628d) this.f4125e;
                if (this.f4123c != EnumC1011a.f1013b) {
                    try {
                        c1628d.f4128d.run();
                        interfaceC3584a.mo237a();
                    } catch (Throwable th) {
                        AbstractC1031d.m1292v(th);
                        interfaceC3584a.onError(th);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                ((InterfaceC3589f) this.f4124d).mo237a();
                break;
            default:
                InterfaceC3762a interfaceC3762a = this.f4123c;
                EnumC1011a enumC1011a = EnumC1011a.f1013b;
                if (interfaceC3762a != enumC1011a) {
                    this.f4123c = enumC1011a;
                    ((InterfaceC3589f) this.f4124d).mo237a();
                    break;
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        switch (this.f4122b) {
            case 0:
                InterfaceC3584a interfaceC3584a = (InterfaceC3584a) this.f4124d;
                if (EnumC1011a.m1219e(this.f4123c, interfaceC3762a)) {
                    this.f4123c = interfaceC3762a;
                    interfaceC3584a.mo238b(this);
                }
                break;
            case 1:
                if (EnumC1011a.m1219e(this.f4123c, interfaceC3762a)) {
                    this.f4123c = interfaceC3762a;
                    ((InterfaceC3589f) this.f4124d).mo238b(this);
                }
                break;
            default:
                InterfaceC3589f interfaceC3589f = (InterfaceC3589f) this.f4124d;
                if (EnumC1011a.m1219e(this.f4123c, interfaceC3762a)) {
                    this.f4123c = interfaceC3762a;
                    interfaceC3589f.mo238b(this);
                }
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public void mo239c(Object obj) {
        switch (this.f4122b) {
            case 1:
                InterfaceC3589f interfaceC3589f = (InterfaceC3589f) this.f4124d;
                try {
                    Object objApply = ((InterfaceC0929c) this.f4125e).apply(obj);
                    AbstractC1314b.m2356a(objApply, "The mapper returned a null item");
                    interfaceC3589f.mo239c(objApply);
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    interfaceC3589f.onError(th);
                    return;
                }
                break;
            default:
                InterfaceC3762a interfaceC3762a = this.f4123c;
                EnumC1011a enumC1011a = EnumC1011a.f1013b;
                if (interfaceC3762a != enumC1011a) {
                    try {
                        ((C1793r) this.f4125e).f4705c.accept(obj);
                        this.f4123c = enumC1011a;
                        ((InterfaceC3589f) this.f4124d).mo239c(obj);
                    } catch (Throwable th2) {
                        AbstractC1031d.m1292v(th2);
                        m2715d(th2);
                    }
                    break;
                }
                break;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m2715d(Throwable th) {
        try {
            ((C1793r) this.f4125e).f4706d.accept(th);
        } catch (Throwable th2) {
            AbstractC1031d.m1292v(th2);
            th = new C0031c(th, th2);
        }
        this.f4123c = EnumC1011a.f1013b;
        ((InterfaceC3589f) this.f4124d).onError(th);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        switch (this.f4122b) {
            case 0:
                this.f4123c.dispose();
                break;
            case 1:
                InterfaceC3762a interfaceC3762a = this.f4123c;
                this.f4123c = EnumC1011a.f1013b;
                interfaceC3762a.dispose();
                break;
            default:
                this.f4123c.dispose();
                this.f4123c = EnumC1011a.f1013b;
                break;
        }
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        switch (this.f4122b) {
            case 0:
                C1628d c1628d = (C1628d) this.f4125e;
                if (this.f4123c != EnumC1011a.f1013b) {
                    try {
                        c1628d.f4127c.accept(th);
                    } catch (Throwable th2) {
                        AbstractC1031d.m1292v(th2);
                        th = new C0031c(th, th2);
                    }
                    ((InterfaceC3584a) this.f4124d).onError(th);
                } else {
                    AbstractC0000a.m18s(th);
                }
                break;
            case 1:
                ((InterfaceC3589f) this.f4124d).onError(th);
                break;
            default:
                if (this.f4123c != EnumC1011a.f1013b) {
                    m2715d(th);
                } else {
                    AbstractC0000a.m18s(th);
                }
                break;
        }
    }

    public /* synthetic */ C1627c(InterfaceC3589f interfaceC3589f, Object obj, int i10) {
        this.f4122b = i10;
        this.f4124d = interfaceC3589f;
        this.f4125e = obj;
    }
}
