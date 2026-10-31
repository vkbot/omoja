package p085h8;

import p150n9.InterfaceC2561b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1694f implements InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4382b;

    /* JADX INFO: renamed from: c */
    public final Object f4383c;

    /* JADX INFO: renamed from: d */
    public boolean f4384d;

    public C1694f(Object obj, InterfaceC3587d interfaceC3587d) {
        this.f4383c = obj;
        this.f4382b = interfaceC3587d;
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (j10 <= 0 || this.f4384d) {
            return;
        }
        this.f4384d = true;
        Object obj = this.f4383c;
        InterfaceC3587d interfaceC3587d = this.f4382b;
        interfaceC3587d.mo2807e(obj);
        interfaceC3587d.mo2804a();
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
    }
}
