package p157o7;

import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: o7.m3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2675m3 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7625b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2681n3 f7626c;

    public /* synthetic */ RunnableC2675m3(C2681n3 c2681n3, int i10) {
        this.f7625b = i10;
        this.f7626c = c2681n3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7625b) {
            case 0:
                C2681n3 c2681n3 = this.f7626c;
                if (!c2681n3.f7642f) {
                    c2681n3.f7643g = null;
                } else {
                    long jM2872a = c2681n3.f7641e - c2681n3.f7640d.m2872a();
                    if (jM2872a <= 0) {
                        c2681n3.f7642f = false;
                        c2681n3.f7643g = null;
                        c2681n3.f7639c.run();
                    } else {
                        c2681n3.f7643g = c2681n3.f7637a.schedule(new RunnableC2675m3(c2681n3, 1), jM2872a, TimeUnit.NANOSECONDS);
                    }
                }
                break;
            default:
                C2681n3 c2681n4 = this.f7626c;
                c2681n4.f7638b.execute(new RunnableC2675m3(c2681n4, 0));
                break;
        }
    }
}
