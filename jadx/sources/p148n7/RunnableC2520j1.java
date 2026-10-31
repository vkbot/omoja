package p148n7;

/* JADX INFO: renamed from: n7.j1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2520j1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final Runnable f6979b;

    /* JADX INFO: renamed from: c */
    public boolean f6980c;

    /* JADX INFO: renamed from: d */
    public boolean f6981d;

    public RunnableC2520j1(Runnable runnable) {
        this.f6979b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f6980c) {
            return;
        }
        this.f6981d = true;
        this.f6979b.run();
    }
}
