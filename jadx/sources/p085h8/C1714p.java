package p085h8;

import p000a.AbstractC0000a;
import p150n9.InterfaceC2561b;
import p158o8.AbstractC2754c;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1714p extends AbstractC2754c implements InterfaceC3587d {

    /* JADX INFO: renamed from: d */
    public InterfaceC2561b f4455d;

    /* JADX INFO: renamed from: e */
    public long f4456e;

    /* JADX INFO: renamed from: f */
    public boolean f4457f;

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        if (this.f4457f) {
            return;
        }
        this.f4457f = true;
        this.f7918b.mo2804a();
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        set(4);
        this.f7919c = null;
        this.f4455d.cancel();
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4457f) {
            return;
        }
        long j10 = this.f4456e;
        if (j10 != 0) {
            this.f4456e = j10 + 1;
            return;
        }
        this.f4457f = true;
        this.f4455d.cancel();
        m4273i(obj);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4455d, interfaceC2561b)) {
            this.f4455d = interfaceC2561b;
            this.f7918b.mo2808f(this);
            interfaceC2561b.mo2811d(Long.MAX_VALUE);
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        if (this.f4457f) {
            AbstractC0000a.m18s(th);
        } else {
            this.f4457f = true;
            this.f7918b.onError(th);
        }
    }
}
