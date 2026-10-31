package p047e0;

import p190s1.C3174u0;

/* JADX INFO: renamed from: e0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1347e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3208b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3174u0 f3209c;

    public /* synthetic */ RunnableC1347e(C3174u0 c3174u0, int i10) {
        this.f3208b = i10;
        this.f3209c = c3174u0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3208b) {
            case 0:
                C3174u0 c3174u0 = this.f3209c;
                boolean z9 = c3174u0.f9231n;
                c3174u0.f9231n = !z9;
                if (z9) {
                    c3174u0.m5092g();
                } else {
                    c3174u0.m5097l();
                }
                c3174u0.f9220c.setVisibility(c3174u0.f9231n ? 0 : 8);
                c3174u0.m5088c();
                c3174u0.m5093h();
                break;
            case 1:
                C3174u0 c3174u1 = this.f3209c;
                c3174u1.m5093h();
                c3174u1.setAlpha(c3174u1.f9231n ? 1.0f : 0.5f);
                break;
            case 2:
                this.f3209c.m5093h();
                break;
            default:
                C3174u0 c3174u2 = this.f3209c;
                c3174u2.m5093h();
                if (c3174u2.f9223f && !c3174u2.f9226i.isEmpty()) {
                    c3174u2.m5095j();
                    break;
                }
                break;
        }
    }
}
