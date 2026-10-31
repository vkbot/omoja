package y7;

import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements Runnable, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f6143b;
    public final Runnable c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Handler handler, Runnable runnable) {
        this.f6143b = handler;
        this.c = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        this.f6143b.removeCallbacks(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.c.run();
        } catch (Throwable th) {
            a.a.s(th);
        }
    }
}
