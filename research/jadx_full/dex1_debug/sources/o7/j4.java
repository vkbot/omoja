package o7;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j4 implements Executor {
    public static final Logger d = Logger.getLogger(j4.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4293b;
    public ArrayDeque c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        while (true) {
            Runnable runnable = (Runnable) this.c.poll();
            if (runnable == null) {
                return;
            }
            try {
                runnable.run();
            } catch (Throwable th) {
                d.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        o4.b.i(runnable, "'task' must not be null.");
        if (this.f4293b) {
            if (this.c == null) {
                this.c = new ArrayDeque(4);
            }
            this.c.add(runnable);
            return;
        }
        this.f4293b = true;
        try {
            runnable.run();
            if (this.c != null) {
                a();
            }
            this.f4293b = false;
        } catch (Throwable th) {
            try {
                d.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            } finally {
                if (this.c != null) {
                    a();
                }
                this.f4293b = false;
            }
        }
    }
}
