package o7;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q1 implements Runnable {
    public static final Logger c = Logger.getLogger(q1.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f4397b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q1(Runnable runnable) {
        this.f4397b = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f4397b;
        try {
            runnable.run();
        } catch (Throwable th) {
            c.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            Object obj = i4.g.f2663a;
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (th instanceof Error) {
                throw ((Error) th);
            }
            j1.i.e(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "LogExceptionRunnable(" + this.f4397b + ")";
    }
}
