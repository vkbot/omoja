package p157o7;

import com.bumptech.glide.manager.C1074t;
import p148n7.EnumC2518j;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.i1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2649i1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7519b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1074t f7520c;

    public /* synthetic */ RunnableC2649i1(C1074t c1074t, int i10) {
        this.f7519b = i10;
        this.f7520c = c1074t;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7519b) {
            case 0:
                C1074t c1074t = this.f7520c;
                C2661k1 c2661k1 = (C2661k1) c1074t.f1185e;
                c2661k1.f7581n = null;
                if (c2661k1.f7591x == null) {
                    C2637g1 c2637g1 = c2661k1.f7588u;
                    C2637g1 c2637g2 = (C2637g1) c1074t.f1184d;
                    if (c2637g1 == c2637g2) {
                        c2661k1.f7589v = c2637g2;
                        C2661k1 c2661k2 = (C2661k1) this.f7520c.f1185e;
                        c2661k2.f7588u = null;
                        C2661k1.m4174e(c2661k2, EnumC2518j.f6969c);
                    }
                } else {
                    AbstractC2587b.m4046m(c2661k1.f7589v == null, "Unexpected non-null activeTransport");
                    C1074t c1074t2 = this.f7520c;
                    ((C2637g1) c1074t2.f1184d).mo4170a(((C2661k1) c1074t2.f1185e).f7591x);
                }
                break;
            default:
                C1074t c1074t3 = this.f7520c;
                ((C2661k1) c1074t3.f1185e).f7586s.remove((C2637g1) c1074t3.f1184d);
                if (((C2661k1) this.f7520c.f1185e).f7590w.f6982a == EnumC2518j.f6972f && ((C2661k1) this.f7520c.f1185e).f7586s.isEmpty()) {
                    C2661k1 c2661k3 = (C2661k1) this.f7520c.f1185e;
                    c2661k3.f7578k.execute(new RunnableC2631f1(c2661k3, 2));
                    break;
                }
                break;
        }
    }
}
