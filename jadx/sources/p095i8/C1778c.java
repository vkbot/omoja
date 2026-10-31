package p095i8;

import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1074t;
import java.util.concurrent.Executor;
import p062f5.C1548f;
import p062f5.C1568r;
import p157o7.C2599a;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3589f;
import p257z2.C3709e;
import p257z2.InterfaceC3705a;
import p257z2.InterfaceC3706b;

/* JADX INFO: renamed from: i8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1778c extends AbstractC3588e {

    /* JADX INFO: renamed from: b */
    public final C1548f f4672b;

    public C1778c(C1548f c1548f) {
        this.f4672b = c1548f;
    }

    @Override // p242x7.AbstractC3588e
    /* JADX INFO: renamed from: d */
    public final void mo2841d(InterfaceC3589f interfaceC3589f) {
        C1777b c1777b = new C1777b(interfaceC3589f);
        interfaceC3589f.mo238b(c1777b);
        try {
            C1548f c1548f = this.f4672b;
            C2599a c2599a = (C2599a) c1548f.f3805c;
            Executor executor = (Executor) c1548f.f3806d;
            C1568r c1568r = new C1568r(c1777b);
            c2599a.getClass();
            C1074t c1074t = (C1074t) c2599a.f7253c;
            c1074t.m1367m(new C3709e(executor, (InterfaceC3706b) c1568r));
            c2599a.m4084i();
            c1074t.m1367m(new C3709e(executor, (InterfaceC3705a) new C1568r(c1777b)));
            c2599a.m4084i();
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            c1777b.onError(th);
        }
    }
}
