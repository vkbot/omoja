package p157o7;

import com.bumptech.glide.manager.C1073s;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2542t;
import p148n7.C2494b;
import p148n7.C2507f0;
import p155o4.AbstractC2587b;
import p223v7.C3350k;
import p223v7.C3357r;
import p223v7.C3359t;

/* JADX INFO: renamed from: o7.d3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2621d3 extends AbstractC2513h0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7352a = 0;

    /* JADX INFO: renamed from: b */
    public final Object f7353b;

    public C2621d3(C2507f0 c2507f0) {
        AbstractC2587b.m4042i(c2507f0, "result");
        this.f7353b = c2507f0;
    }

    @Override // p148n7.AbstractC2513h0
    /* JADX INFO: renamed from: a */
    public final C2507f0 mo3942a(C2639g3 c2639g3) {
        switch (this.f7352a) {
            case 0:
                return (C2507f0) this.f7353b;
            default:
                C2507f0 c2507f0Mo3942a = ((AbstractC2513h0) this.f7353b).mo3942a(c2639g3);
                AbstractC2542t abstractC2542t = c2507f0Mo3942a.f6932a;
                if (abstractC2542t == null) {
                    return c2507f0Mo3942a;
                }
                C2494b c2494bMo3977d = abstractC2542t.mo3977d();
                return C2507f0.m3926b(abstractC2542t, new C3357r((C3350k) c2494bMo3977d.f6882a.get(C3359t.f9819n), c2507f0Mo3942a.f6933b));
        }
    }

    public String toString() {
        switch (this.f7352a) {
            case 0:
                C1073s c1073s = new C1073s(C2621d3.class.getSimpleName());
                c1073s.m1347c((C2507f0) this.f7353b, "result");
                return c1073s.toString();
            default:
                return super.toString();
        }
    }

    public C2621d3(AbstractC2513h0 abstractC2513h0) {
        this.f7353b = abstractC2513h0;
    }
}
