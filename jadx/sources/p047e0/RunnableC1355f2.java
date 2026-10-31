package p047e0;

/* JADX INFO: renamed from: e0.f2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1355f2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3228b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1360g2 f3229c;

    public /* synthetic */ RunnableC1355f2(C1360g2 c1360g2, int i10) {
        this.f3228b = i10;
        this.f3229c = c1360g2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3228b) {
            case 0:
                this.f3229c.f3243f.setVisibility(0);
                break;
            default:
                this.f3229c.f3241d.setVisibility(4);
                break;
        }
    }
}
