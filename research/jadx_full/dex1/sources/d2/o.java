package d2;

import android.os.Process;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1692b;
    public final Runnable c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(Runnable runnable, int i9) {
        this.f1692b = i9;
        this.c = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1692b) {
            case 0:
                try {
                    this.c.run();
                } catch (Exception e) {
                    e3.d.f("Executor", "Background execution failure.", e);
                    return;
                }
                break;
            case 1:
                Process.setThreadPriority(10);
                this.c.run();
                break;
            default:
                this.c.run();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f1692b) {
            case 2:
                return this.c.toString();
            default:
                return super.toString();
        }
    }
}
