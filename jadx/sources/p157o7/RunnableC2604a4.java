package p157o7;

import com.bumptech.glide.RunnableC1054m;
import p148n7.C2537q0;

/* JADX INFO: renamed from: o7.a4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2604a4 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7270b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2616c4 f7271c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2736w4 f7272d;

    public /* synthetic */ RunnableC2604a4(C2736w4 c2736w4, C2616c4 c2616c4, int i10) {
        this.f7270b = i10;
        this.f7272d = c2736w4;
        this.f7271c = c2616c4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f7270b;
        C2736w4 c2736w4 = this.f7272d;
        switch (i10) {
            case 0:
                ((C2727v1) c2736w4.f7860d).f7816c.execute(new RunnableC1054m(21, this));
                break;
            default:
                C2727v1 c2727v1 = (C2727v1) c2736w4.f7860d;
                C2537q0 c2537q0 = C2727v1.f7806F;
                c2727v1.m4251p(this.f7271c);
                break;
        }
    }
}
