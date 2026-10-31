package p190s1;

/* JADX INFO: renamed from: s1.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3143f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9001b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3153k f9002c;

    public /* synthetic */ RunnableC3143f(C3153k c3153k, int i10) {
        this.f9001b = i10;
        this.f9002c = c3153k;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9001b) {
            case 0:
                C3153k c3153k = this.f9002c;
                c3153k.m4993d();
                if (!c3153k.f9054b.m5083f()) {
                    c3153k.m5012y();
                } else {
                    c3153k.m5000l();
                }
                break;
            case 1:
                this.f9002c.m5000l();
                break;
            default:
                this.f9002c.m5013z();
                break;
        }
    }
}
