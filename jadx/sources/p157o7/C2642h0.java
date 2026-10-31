package p157o7;

import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2547v0;

/* JADX INFO: renamed from: o7.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2642h0 extends AbstractRunnableC2618d0 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f7493d = 0;

    /* JADX INFO: renamed from: e */
    public final AbstractC2503e f7494e;

    /* JADX INFO: renamed from: f */
    public final C2508f1 f7495f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2642h0(C2733w1 c2733w1, AbstractC2503e abstractC2503e, C2508f1 c2508f1) {
        super(0, c2733w1.f7848h);
        this.f7494e = abstractC2503e;
        this.f7495f = c2508f1;
    }

    @Override // p157o7.AbstractRunnableC2618d0
    /* JADX INFO: renamed from: b */
    public final void mo4133b() {
        switch (this.f7493d) {
            case 0:
                this.f7494e.mo3907o(this.f7495f, new C2547v0());
                break;
            default:
                this.f7494e.mo3907o(this.f7495f, new C2547v0());
                break;
        }
    }

    public C2642h0(C2608b2 c2608b2, AbstractC2503e abstractC2503e, C2508f1 c2508f1) {
        super(0, c2608b2.f7313f);
        this.f7494e = abstractC2503e;
        this.f7495f = c2508f1;
    }
}
