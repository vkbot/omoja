package p225w0;

/* JADX INFO: renamed from: w0.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3486r implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10193b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3498x f10194c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f10195d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f10196e;

    public /* synthetic */ RunnableC3486r(C3498x c3498x, String str, int i10, int i11) {
        this.f10193b = i11;
        this.f10194c = c3498x;
        this.f10195d = str;
        this.f10196e = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10193b) {
            case 0:
                String str = this.f10195d;
                this.f10194c.m5537Z(this.f10196e, str);
                break;
            default:
                String str2 = this.f10195d;
                this.f10194c.m5537Z(this.f10196e, str2);
                break;
        }
    }
}
