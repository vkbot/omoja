package p157o7;

import com.bumptech.glide.manager.C1073s;
import p148n7.AbstractC2513h0;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.x2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2740x2 extends AbstractC2513h0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7868a = 0;

    /* JADX INFO: renamed from: b */
    public final Object f7869b;

    public C2740x2(C2507f0 c2507f0) {
        AbstractC2587b.m4042i(c2507f0, "result");
        this.f7869b = c2507f0;
    }

    @Override // p148n7.AbstractC2513h0
    /* JADX INFO: renamed from: a */
    public final C2507f0 mo3942a(C2639g3 c2639g3) {
        switch (this.f7868a) {
            case 0:
                return (C2507f0) this.f7869b;
            default:
                return C2507f0.m3925a((C2508f1) this.f7869b);
        }
    }

    public String toString() {
        switch (this.f7868a) {
            case 0:
                C1073s c1073s = new C1073s(C2740x2.class.getSimpleName());
                c1073s.m1347c((C2507f0) this.f7869b, "result");
                return c1073s.toString();
            default:
                return super.toString();
        }
    }

    public C2740x2(C2508f1 c2508f1) {
        this.f7869b = c2508f1;
    }
}
