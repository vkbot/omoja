package p085h8;

import com.bumptech.glide.AbstractC1031d;
import p000a.AbstractC0000a;
import p009a8.C0031c;
import p023b8.InterfaceC0927a;
import p023b8.InterfaceC0928b;
import p047e0.C1357g;
import p054e8.InterfaceC1498a;
import p149n8.AbstractC2556a;
import p171p8.AbstractC3002d;
import p171p8.C3001c;
import p232w7.C3537c;
import p258z3.C3720f;

/* JADX INFO: renamed from: h8.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1708m extends AbstractC2556a {

    /* JADX INFO: renamed from: g */
    public final InterfaceC0928b f4428g;

    /* JADX INFO: renamed from: h */
    public final InterfaceC0928b f4429h;

    /* JADX INFO: renamed from: i */
    public final InterfaceC0927a f4430i;

    /* JADX INFO: renamed from: j */
    public final InterfaceC0927a f4431j;

    public C1708m(InterfaceC1498a interfaceC1498a, C1357g c1357g, C3720f c3720f, C3537c c3537c, C3537c c3537c2) {
        super(interfaceC1498a);
        this.f4428g = c1357g;
        this.f4429h = c3720f;
        this.f4430i = c3537c;
        this.f4431j = c3537c2;
    }

    @Override // p149n8.AbstractC2556a, p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        if (this.f7069e) {
            return;
        }
        try {
            this.f4430i.run();
            this.f7069e = true;
            this.f7066b.mo2804a();
            try {
                this.f4431j.run();
            } catch (Throwable th) {
                AbstractC1031d.m1292v(th);
                AbstractC0000a.m18s(th);
            }
        } catch (Throwable th2) {
            m3996b(th2);
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f7069e) {
            return;
        }
        int i10 = this.f7070f;
        InterfaceC1498a interfaceC1498a = this.f7066b;
        if (i10 != 0) {
            interfaceC1498a.mo2807e(null);
            return;
        }
        try {
            this.f4428g.accept(obj);
            interfaceC1498a.mo2807e(obj);
        } catch (Throwable th) {
            m3996b(th);
        }
    }

    @Override // p054e8.InterfaceC1498a
    /* JADX INFO: renamed from: g */
    public final boolean mo2580g(Object obj) {
        if (this.f7069e) {
            return false;
        }
        try {
            this.f4428g.accept(obj);
            return this.f7066b.mo2580g(obj);
        } catch (Throwable th) {
            m3996b(th);
            return false;
        }
    }

    @Override // p149n8.AbstractC2556a, p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        InterfaceC1498a interfaceC1498a = this.f7066b;
        if (this.f7069e) {
            AbstractC0000a.m18s(th);
            return;
        }
        this.f7069e = true;
        try {
            this.f4429h.accept(th);
            interfaceC1498a.onError(th);
        } catch (Throwable th2) {
            AbstractC1031d.m1292v(th2);
            interfaceC1498a.onError(new C0031c(th, th2));
        }
        try {
            this.f4431j.run();
        } catch (Throwable th3) {
            AbstractC1031d.m1292v(th3);
            AbstractC0000a.m18s(th3);
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() throws Exception {
        InterfaceC0928b interfaceC0928b = this.f4429h;
        try {
            Object objPoll = this.f7068d.poll();
            InterfaceC0927a interfaceC0927a = this.f4431j;
            if (objPoll == null) {
                if (this.f7070f == 1) {
                    this.f4430i.run();
                    interfaceC0927a.run();
                }
                return objPoll;
            }
            try {
                this.f4428g.accept(objPoll);
                interfaceC0927a.run();
                return objPoll;
            } catch (Throwable th) {
                try {
                    AbstractC1031d.m1292v(th);
                    try {
                        interfaceC0928b.accept(th);
                        C3001c c3001c = AbstractC3002d.f8445a;
                        if (th instanceof Exception) {
                            throw th;
                        }
                        throw th;
                    } catch (Throwable th2) {
                        throw new C0031c(th, th2);
                    }
                } catch (Throwable th3) {
                    interfaceC0927a.run();
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            AbstractC1031d.m1292v(th4);
            try {
                interfaceC0928b.accept(th4);
                C3001c c3001c2 = AbstractC3002d.f8445a;
                if (th4 instanceof Exception) {
                    throw th4;
                }
                throw th4;
            } catch (Throwable th5) {
                throw new C0031c(th4, th5);
            }
        }
    }
}
