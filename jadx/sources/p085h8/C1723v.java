package p085h8;

import com.bumptech.glide.AbstractC1031d;
import p023b8.InterfaceC0930d;
import p054e8.InterfaceC1498a;
import p054e8.InterfaceC1501d;
import p149n8.AbstractC2557b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1723v extends AbstractC2557b implements InterfaceC1498a {

    /* JADX INFO: renamed from: g */
    public final InterfaceC0930d f4473g;

    public C1723v(InterfaceC3587d interfaceC3587d, InterfaceC0930d interfaceC0930d) {
        super(interfaceC3587d);
        this.f4473g = interfaceC0930d;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (mo2580g(obj)) {
            return;
        }
        this.f7072c.mo2811d(1L);
    }

    @Override // p054e8.InterfaceC1498a
    /* JADX INFO: renamed from: g */
    public final boolean mo2580g(Object obj) {
        if (this.f7074e) {
            return false;
        }
        int i10 = this.f7075f;
        InterfaceC3587d interfaceC3587d = this.f7071b;
        if (i10 != 0) {
            interfaceC3587d.mo2807e(null);
            return true;
        }
        try {
            boolean zTest = this.f4473g.test(obj);
            if (zTest) {
                interfaceC3587d.mo2807e(obj);
            }
            return zTest;
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            this.f7072c.cancel();
            onError(th);
            return true;
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        InterfaceC1501d interfaceC1501d = this.f7073d;
        while (true) {
            Object objPoll = interfaceC1501d.poll();
            if (objPoll == null) {
                return null;
            }
            if (this.f4473g.test(objPoll)) {
                return objPoll;
            }
            if (this.f7075f == 2) {
                interfaceC1501d.mo2811d(1L);
            }
        }
    }
}
