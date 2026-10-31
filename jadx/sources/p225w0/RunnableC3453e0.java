package p225w0;

/* JADX INFO: renamed from: w0.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3453e0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9952b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3474l0 f9953c;

    public /* synthetic */ RunnableC3453e0(C3474l0 c3474l0, int i10) {
        this.f9952b = i10;
        this.f9953c = c3474l0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9952b) {
            case 0:
                C3474l0 c3474l0 = this.f9953c;
                c3474l0.m5438c0();
                c3474l0.f10083d.shutdownNow();
                break;
            case 1:
                C3474l0 c3474l1 = this.f9953c;
                c3474l1.f10096q = -1;
                c3474l1.f10085f.m5460c();
                break;
            default:
                C3474l0 c3474l2 = this.f9953c;
                if (!c3474l2.f10093n.isEmpty() && !c3474l2.m5445j0()) {
                    c3474l2.m5438c0();
                    c3474l2.f10085f.m5460c();
                    c3474l2.f10088i = false;
                }
                c3474l2.m5434S();
                break;
        }
    }
}
