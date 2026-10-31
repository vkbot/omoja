package e0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f1906b;
    public volatile String c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n2(Runnable runnable) {
        this.f1906b = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        this.c = Thread.currentThread().getName();
        this.f1906b.run();
    }
}
