package m8;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends AtomicReferenceArray implements Runnable, Callable, z7.a {
    public static final Object c = new Object();
    public static final Object d = new Object();
    public static final Object e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f3719f = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f3720b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(Runnable runnable, c8.c cVar) {
        super(3);
        this.f3720b = runnable;
        lazySet(0, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Future future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f3719f) {
                return;
            }
            if (obj == d) {
                future.cancel(false);
                return;
            } else if (obj == e) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        while (true) {
            Object obj6 = get(1);
            obj = f3719f;
            if (obj6 == obj || obj6 == (obj4 = d) || obj6 == (obj5 = e)) {
                break;
            }
            boolean z8 = get(2) != Thread.currentThread();
            if (z8) {
                obj4 = obj5;
            }
            if (compareAndSet(1, obj6, obj4)) {
                if (obj6 == null) {
                    break;
                }
                ((Future) obj6).cancel(z8);
                break;
            }
        }
        do {
            obj2 = get(0);
            if (obj2 == obj || obj2 == (obj3 = c) || obj2 == null) {
                return;
            }
        } while (!compareAndSet(0, obj2, obj3));
        ((c8.c) obj2).b(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2 = e;
        Object obj3 = d;
        Object obj4 = c;
        Object obj5 = f3719f;
        lazySet(2, Thread.currentThread());
        try {
            this.f3720b.run();
        } catch (Throwable th) {
            try {
                a.a.s(th);
            } finally {
                lazySet(2, null);
                Object obj6 = get(0);
                if (obj6 != obj4 && compareAndSet(0, obj6, obj5) && obj6 != null) {
                    ((c8.c) obj6).b(this);
                }
                do {
                    obj = get(1);
                    if (obj == obj3 || obj == obj2) {
                        break;
                    }
                } while (!compareAndSet(1, obj, obj5));
            }
        }
        lazySet(2, null);
        Object obj7 = get(0);
        if (obj7 != obj4 && compareAndSet(0, obj7, obj5) && obj7 != null) {
            ((c8.c) obj7).b(this);
        }
        while (r2 != obj3 && r2 != obj2 && !compareAndSet(1, get(1), obj5)) {
        }
    }
}
