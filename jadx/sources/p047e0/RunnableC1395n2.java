package p047e0;

/* JADX INFO: renamed from: e0.n2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1395n2 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final Runnable f3341b;

    /* JADX INFO: renamed from: c */
    public volatile String f3342c;

    public RunnableC1395n2(Runnable runnable) {
        this.f3341b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3342c = Thread.currentThread().getName();
        this.f3341b.run();
    }
}
