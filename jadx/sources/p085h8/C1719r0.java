package p085h8;

import java.util.Collection;
import p150n9.InterfaceC2561b;
import p158o8.AbstractC2754c;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.r0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1719r0 extends AbstractC2754c implements InterfaceC3587d, InterfaceC2561b {

    /* JADX INFO: renamed from: d */
    public InterfaceC2561b f4468d;

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        m4273i(this.f7919c);
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        set(4);
        this.f7919c = null;
        this.f4468d.cancel();
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        Collection collection = (Collection) this.f7919c;
        if (collection != null) {
            collection.add(obj);
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4468d, interfaceC2561b)) {
            this.f4468d = interfaceC2561b;
            this.f7918b.mo2808f(this);
            interfaceC2561b.mo2811d(Long.MAX_VALUE);
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        this.f7919c = null;
        this.f7918b.onError(th);
    }
}
