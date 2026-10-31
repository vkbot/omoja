package p132m0;

/* JADX INFO: renamed from: m0.c1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2274c1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5952b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2284e1 f5953c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2299h1 f5954d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ String f5955e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f5956f;

    public /* synthetic */ RunnableC2274c1(C2284e1 c2284e1, C2299h1 c2299h1, String str, int i10, int i11) {
        this.f5952b = i11;
        this.f5953c = c2284e1;
        this.f5954d = c2299h1;
        this.f5955e = str;
        this.f5956f = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5952b) {
            case 0:
                C2299h1 c2299h1 = this.f5954d;
                c2299h1.f6114i = false;
                c2299h1.f6115j = this.f5955e;
                C2304i1.m3695v((C2304i1) this.f5953c.f6048i, this.f5956f);
                break;
            case 1:
                this.f5954d.f6115j = this.f5955e;
                C2304i1.m3695v((C2304i1) this.f5953c.f6048i, this.f5956f);
                break;
            default:
                this.f5954d.f6115j = this.f5955e;
                C2304i1.m3695v((C2304i1) this.f5953c.f6048i, this.f5956f);
                break;
        }
    }
}
