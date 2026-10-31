package p148n7;

/* JADX INFO: renamed from: n7.g1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2511g1 extends Exception {

    /* JADX INFO: renamed from: b */
    public final C2508f1 f6954b;

    /* JADX INFO: renamed from: c */
    public final boolean f6955c;

    public C2511g1(C2508f1 c2508f1) {
        super(C2508f1.m3927c(c2508f1), c2508f1.f6950c);
        this.f6954b = c2508f1;
        this.f6955c = true;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this.f6955c ? super.fillInStackTrace() : this;
    }
}
