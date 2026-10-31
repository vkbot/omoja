package p085h8;

import com.bumptech.glide.AbstractC1031d;
import p023b8.InterfaceC0929c;
import p045d8.AbstractC1314b;
import p149n8.AbstractC2557b;
import p184r5.C3105c;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1697g0 extends AbstractC2557b {

    /* JADX INFO: renamed from: g */
    public final InterfaceC0929c f4391g;

    public C1697g0(InterfaceC3587d interfaceC3587d, C3105c c3105c) {
        super(interfaceC3587d);
        this.f4391g = c3105c;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f7074e) {
            return;
        }
        int i10 = this.f7075f;
        InterfaceC3587d interfaceC3587d = this.f7071b;
        if (i10 != 0) {
            interfaceC3587d.mo2807e(null);
            return;
        }
        try {
            Object objApply = this.f4391g.apply(obj);
            AbstractC1314b.m2356a(objApply, "The mapper function returned a null value.");
            interfaceC3587d.mo2807e(objApply);
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            this.f7072c.cancel();
            onError(th);
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        Object objPoll = this.f7073d.poll();
        if (objPoll == null) {
            return null;
        }
        Object objApply = this.f4391g.apply(objPoll);
        AbstractC1314b.m2356a(objApply, "The mapper function returned a null value.");
        return objApply;
    }
}
