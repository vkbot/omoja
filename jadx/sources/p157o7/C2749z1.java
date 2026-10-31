package p157o7;

import p148n7.AbstractC2503e;
import p148n7.AbstractC2542t;
import p148n7.C2508f1;
import p148n7.C2555z0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.z1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2749z1 extends AbstractC2542t {

    /* JADX INFO: renamed from: d */
    public final C2744y1 f7903d;

    /* JADX INFO: renamed from: e */
    public final AbstractC2503e f7904e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ C2632f2 f7905f;

    public C2749z1(C2632f2 c2632f2, C2744y1 c2744y1, C2646h4 c2646h4) {
        this.f7905f = c2632f2;
        this.f7903d = c2744y1;
        AbstractC2587b.m4042i(c2646h4, "resolver");
        this.f7904e = c2646h4;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: i */
    public final void mo3980i(C2508f1 c2508f1) {
        AbstractC2587b.m4037d("the error status must not be OK", !c2508f1.m3932f());
        this.f7905f.f7437m.execute(new RunnableC2624e0(17, this, c2508f1));
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: j */
    public final void mo3981j(C2555z0 c2555z0) {
        this.f7905f.f7437m.execute(new RunnableC2624e0(18, this, c2555z0));
    }
}
