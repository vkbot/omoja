package p075g8;

import android.support.v4.media.C0090h;
import com.bumptech.glide.AbstractC1031d;
import p016b1.AbstractC0880u;
import p033c8.C1014d;
import p045d8.AbstractC1314b;
import p047e0.C1357g;
import p062f5.CallableC1574x;
import p242x7.InterfaceC3584a;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: g8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1626b extends AbstractC0880u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4120b = 0;

    /* JADX INFO: renamed from: c */
    public final Object f4121c;

    public C1626b(CallableC1574x callableC1574x) {
        this.f4121c = callableC1574x;
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: B */
    public final void mo1009B(InterfaceC3584a interfaceC3584a) {
        switch (this.f4120b) {
            case 0:
                C1014d c1014d = new C1014d(AbstractC1314b.f3134b);
                interfaceC3584a.mo238b(c1014d);
                try {
                    ((CallableC1574x) this.f4121c).call();
                    if (!c1014d.m1224c()) {
                        interfaceC3584a.mo237a();
                    }
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    if (c1014d.m1224c()) {
                        return;
                    }
                    interfaceC3584a.onError(th);
                    return;
                }
                break;
            default:
                InterfaceC3762a c1014d2 = new C1014d(0);
                interfaceC3584a.mo238b(c1014d2);
                ((C1628d) this.f4121c).m1008A(new C0090h(this, interfaceC3584a, c1014d2, 12));
                break;
        }
    }

    public C1626b(C1628d c1628d, C1357g c1357g) {
        this.f4121c = c1628d;
    }
}
