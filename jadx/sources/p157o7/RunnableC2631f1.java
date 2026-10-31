package p157o7;

import p148n7.EnumC2518j;

/* JADX INFO: renamed from: o7.f1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2631f1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7388b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2661k1 f7389c;

    public /* synthetic */ RunnableC2631f1(C2661k1 c2661k1, int i10) {
        this.f7388b = i10;
        this.f7389c = c2661k1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7388b) {
            case 0:
                C2661k1 c2661k1 = this.f7389c;
                c2661k1.f7583p = null;
                c2661k1.f7576i.mo3905m(2, "CONNECTING after backoff");
                C2661k1.m4174e(c2661k1, EnumC2518j.f6968b);
                C2661k1.m4175f(c2661k1);
                break;
            case 1:
                if (this.f7389c.f7590w.f6982a == EnumC2518j.f6971e) {
                    this.f7389c.f7576i.mo3905m(2, "CONNECTING as requested");
                    C2661k1.m4174e(this.f7389c, EnumC2518j.f6968b);
                    C2661k1.m4175f(this.f7389c);
                }
                break;
            default:
                C2661k1 c2661k2 = this.f7389c;
                c2661k2.f7576i.mo3905m(2, "Terminated");
                C2632f2 c2632f2 = ((C2626e2) c2661k2.f7571d.f7860d).f7375m;
                c2632f2.f7397A.remove(c2661k2);
                C2632f2.m4137g(c2632f2);
                break;
        }
    }
}
