package n7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f3948b;
    public boolean c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j1(Runnable runnable) {
        this.f3948b = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        if (this.c) {
            return;
        }
        this.d = true;
        this.f3948b.run();
    }
}
