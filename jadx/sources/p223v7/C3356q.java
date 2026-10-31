package p223v7;

import java.util.concurrent.atomic.AtomicLong;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;

/* JADX INFO: renamed from: v7.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3356q extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3357r f9809b;

    public C3356q(C3357r c3357r) {
        this.f9809b = c3357r;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: B */
    public final void mo3890B(C2508f1 c2508f1) {
        C3350k c3350k = this.f9809b.f9810a;
        boolean zM3932f = c2508f1.m3932f();
        C3354o c3354o = c3350k.f9786a;
        if (c3354o.f9804e == null && c3354o.f9805f == null) {
            return;
        }
        C2187d c2187d = c3350k.f9787b;
        if (zM3932f) {
            ((AtomicLong) c2187d.f5705c).getAndIncrement();
        } else {
            ((AtomicLong) c2187d.f5706d).getAndIncrement();
        }
    }
}
