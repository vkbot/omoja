package p157o7;

import com.bumptech.glide.manager.C1073s;
import p148n7.AbstractC2513h0;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.t1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2715t1 extends AbstractC2513h0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7778a = 0;

    /* JADX INFO: renamed from: b */
    public final C2507f0 f7779b;

    public C2715t1(Throwable th) {
        C2508f1 c2508f1M3933g = C2508f1.f6944l.m3934h("Panic! This is a bug!").m3933g(th);
        C2507f0 c2507f0 = C2507f0.f6931e;
        AbstractC2587b.m4037d("drop status shouldn't be OK", !c2508f1M3933g.m3932f());
        this.f7779b = new C2507f0(null, null, c2508f1M3933g, true);
    }

    @Override // p148n7.AbstractC2513h0
    /* JADX INFO: renamed from: a */
    public final C2507f0 mo3942a(C2639g3 c2639g3) {
        switch (this.f7778a) {
            case 0:
                break;
        }
        return this.f7779b;
    }

    public final String toString() {
        switch (this.f7778a) {
            case 0:
                C1073s c1073s = new C1073s(C2715t1.class.getSimpleName());
                c1073s.m1347c(this.f7779b, "panicPickResult");
                return c1073s.toString();
            default:
                return "FixedResultPicker(" + this.f7779b + ")";
        }
    }

    public C2715t1(C2507f0 c2507f0) {
        AbstractC2587b.m4042i(c2507f0, "result");
        this.f7779b = c2507f0;
    }
}
