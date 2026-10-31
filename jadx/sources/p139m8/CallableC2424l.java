package p139m8;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
import p019b4.RunnableC0894e;
import p045d8.AbstractC1314b;
import p095i8.RunnableC1791p;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC2424l extends AtomicReference implements Callable, InterfaceC3762a {

    /* JADX INFO: renamed from: d */
    public static final FutureTask f6577d;

    /* JADX INFO: renamed from: e */
    public static final FutureTask f6578e;

    /* JADX INFO: renamed from: b */
    public final RunnableC1791p f6579b;

    /* JADX INFO: renamed from: c */
    public Thread f6580c;

    static {
        RunnableC0894e runnableC0894e = AbstractC1314b.f3134b;
        f6577d = new FutureTask(runnableC0894e, null);
        f6578e = new FutureTask(runnableC0894e, null);
    }

    public CallableC2424l(RunnableC1791p runnableC1791p) {
        this.f6579b = runnableC1791p;
    }

    /* JADX INFO: renamed from: a */
    public final void m3783a(Future future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 == f6577d) {
                return;
            }
            if (future2 == f6578e) {
                future.cancel(this.f6580c != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        FutureTask futureTask = f6577d;
        this.f6580c = Thread.currentThread();
        try {
            this.f6579b.run();
            return null;
        } finally {
            lazySet(futureTask);
            this.f6580c = null;
        }
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        FutureTask futureTask;
        Future future = (Future) get();
        if (future == f6577d || future == (futureTask = f6578e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f6580c != Thread.currentThread());
    }
}
