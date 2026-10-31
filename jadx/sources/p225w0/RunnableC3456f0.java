package p225w0;

/* JADX INFO: renamed from: w0.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3456f0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9956b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3474l0 f9957c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f9958d;

    public /* synthetic */ RunnableC3456f0(C3474l0 c3474l0, int i10, int i11) {
        this.f9956b = i11;
        this.f9957c = c3474l0;
        this.f9958d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9956b) {
            case 0:
                C3474l0 c3474l0 = this.f9957c;
                if (this.f9958d == c3474l0.f10087h.get()) {
                    c3474l0.m5438c0();
                }
                break;
            default:
                C3474l0 c3474l1 = this.f9957c;
                if (this.f9958d == c3474l1.f10087h.get()) {
                    c3474l1.m5438c0();
                    c3474l1.m5434S();
                }
                break;
        }
    }
}
