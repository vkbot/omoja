package p085h8;

import p000a.AbstractC0000a;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: h8.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1718r implements InterfaceC3587d, InterfaceC3762a {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3589f f4464b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2561b f4465c;

    /* JADX INFO: renamed from: d */
    public long f4466d;

    /* JADX INFO: renamed from: e */
    public boolean f4467e;

    public C1718r(InterfaceC3589f interfaceC3589f) {
        this.f4464b = interfaceC3589f;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        this.f4465c = EnumC2757f.f7924b;
        if (this.f4467e) {
            return;
        }
        this.f4467e = true;
        this.f4464b.mo237a();
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        this.f4465c.cancel();
        this.f4465c = EnumC2757f.f7924b;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4467e) {
            return;
        }
        long j10 = this.f4466d;
        if (j10 != 0) {
            this.f4466d = j10 + 1;
            return;
        }
        this.f4467e = true;
        this.f4465c.cancel();
        this.f4465c = EnumC2757f.f7924b;
        this.f4464b.mo239c(obj);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4465c, interfaceC2561b)) {
            this.f4465c = interfaceC2561b;
            this.f4464b.mo238b(this);
            interfaceC2561b.mo2811d(Long.MAX_VALUE);
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        if (this.f4467e) {
            AbstractC0000a.m18s(th);
            return;
        }
        this.f4467e = true;
        this.f4465c = EnumC2757f.f7924b;
        this.f4464b.onError(th);
    }
}
