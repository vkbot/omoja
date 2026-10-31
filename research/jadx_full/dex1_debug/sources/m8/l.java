package m8;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends AtomicReference implements Callable, z7.a {
    public static final FutureTask d;
    public static final FutureTask e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i8.p f3718b;
    public Thread c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        b4.e eVar = d8.b.f1796b;
        d = new FutureTask(eVar, null);
        e = new FutureTask(eVar, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(i8.p pVar) {
        this.f3718b = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Future future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 == d) {
                return;
            }
            if (future2 == e) {
                future.cancel(this.c != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        FutureTask futureTask = d;
        this.c = Thread.currentThread();
        try {
            this.f3718b.run();
            return null;
        } finally {
            lazySet(futureTask);
            this.c = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        FutureTask futureTask;
        Future future = (Future) get();
        if (future == d || future == (futureTask = e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.c != Thread.currentThread());
    }
}
