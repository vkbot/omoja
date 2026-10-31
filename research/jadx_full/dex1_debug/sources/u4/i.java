package u4;

import d2.o;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements Executor {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Logger f5468g = Logger.getLogger(i.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f5469b;
    public final ArrayDeque c = new ArrayDeque();
    public int d = 1;
    public long e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a9.i f5470f = new a9.i(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Executor executor) {
        r2.a.b(executor);
        this.f5469b = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        r2.a.b(runnable);
        synchronized (this.c) {
            int i9 = this.d;
            if (i9 != 4 && i9 != 3) {
                long j9 = this.e;
                o oVar = new o(runnable, 2);
                this.c.add(oVar);
                this.d = 2;
                try {
                    this.f5469b.execute(this.f5470f);
                    if (this.d != 2) {
                        return;
                    }
                    synchronized (this.c) {
                        try {
                            if (this.e == j9 && this.d == 2) {
                                this.d = 3;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.c) {
                        try {
                            int i10 = this.d;
                            boolean z8 = true;
                            if ((i10 != 1 && i10 != 2) || !this.c.removeLastOccurrence(oVar)) {
                                z8 = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z8) {
                                throw e;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                }
            }
            this.c.add(runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f5469b + "}";
    }
}
