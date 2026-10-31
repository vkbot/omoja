package p157o7;

/* JADX INFO: renamed from: o7.m0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2672m0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7622b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2660k0 f7623c;

    public /* synthetic */ RunnableC2672m0(C2660k0 c2660k0, int i10) {
        this.f7622b = i10;
        this.f7623c = c2660k0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7622b) {
            case 0:
                this.f7623c.f7557d.request();
                break;
            case 1:
                this.f7623c.f7557d.mo4101o();
                break;
            case 2:
                this.f7623c.m4172j();
                break;
            case 3:
                this.f7623c.f7557d.flush();
                break;
            default:
                this.f7623c.f7557d.mo4098i();
                break;
        }
    }
}
