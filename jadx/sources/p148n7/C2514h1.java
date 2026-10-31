package p148n7;

/* JADX INFO: renamed from: n7.h1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2514h1 extends RuntimeException {

    /* JADX INFO: renamed from: b */
    public final C2508f1 f6959b;

    /* JADX INFO: renamed from: c */
    public final C2547v0 f6960c;

    /* JADX INFO: renamed from: d */
    public final boolean f6961d;

    public C2514h1(C2508f1 c2508f1, C2547v0 c2547v0) {
        super(C2508f1.m3927c(c2508f1), c2508f1.f6950c);
        this.f6959b = c2508f1;
        this.f6960c = c2547v0;
        this.f6961d = true;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this.f6961d ? super.fillInStackTrace() : this;
    }
}
