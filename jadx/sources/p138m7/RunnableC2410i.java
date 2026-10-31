package p138m7;

/* JADX INFO: renamed from: m7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2410i implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6523b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2411j f6524c;

    public /* synthetic */ RunnableC2410i(C2411j c2411j, int i10) {
        this.f6523b = i10;
        this.f6524c = c2411j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6523b) {
            case 0:
                this.f6524c.m3772d();
                break;
            default:
                this.f6524c.m3769a();
                break;
        }
    }
}
