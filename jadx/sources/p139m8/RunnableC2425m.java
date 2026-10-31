package p139m8;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p000a.AbstractC0000a;
import p033c8.C1013c;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2425m extends AtomicReferenceArray implements Runnable, Callable, InterfaceC3762a {

    /* JADX INFO: renamed from: c */
    public static final Object f6581c = new Object();

    /* JADX INFO: renamed from: d */
    public static final Object f6582d = new Object();

    /* JADX INFO: renamed from: e */
    public static final Object f6583e = new Object();

    /* JADX INFO: renamed from: f */
    public static final Object f6584f = new Object();

    /* JADX INFO: renamed from: b */
    public final Runnable f6585b;

    public RunnableC2425m(Runnable runnable, C1013c c1013c) {
        super(3);
        this.f6585b = runnable;
        lazySet(0, c1013c);
    }

    /* JADX INFO: renamed from: a */
    public final void m3784a(Future future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f6584f) {
                return;
            }
            if (obj == f6582d) {
                future.cancel(false);
                return;
            } else if (obj == f6583e) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        while (true) {
            Object obj6 = get(1);
            obj = f6584f;
            if (obj6 == obj || obj6 == (obj4 = f6582d) || obj6 == (obj5 = f6583e)) {
                break;
            }
            boolean z9 = get(2) != Thread.currentThread();
            if (z9) {
                obj4 = obj5;
            }
            if (compareAndSet(1, obj6, obj4)) {
                if (obj6 == null) {
                    break;
                }
                ((Future) obj6).cancel(z9);
                break;
            }
        }
        do {
            obj2 = get(0);
            if (obj2 == obj || obj2 == (obj3 = f6581c) || obj2 == null) {
                return;
            }
        } while (!compareAndSet(0, obj2, obj3));
        ((C1013c) obj2).m1222b(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2 = f6583e;
        Object obj3 = f6582d;
        Object obj4 = f6581c;
        Object obj5 = f6584f;
        lazySet(2, Thread.currentThread());
        try {
            this.f6585b.run();
        } catch (Throwable th) {
            try {
                AbstractC0000a.m18s(th);
            } finally {
                lazySet(2, null);
                Object obj6 = get(0);
                if (obj6 != obj4 && compareAndSet(0, obj6, obj5) && obj6 != null) {
                    ((C1013c) obj6).m1222b(this);
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
            ((C1013c) obj7).m1222b(this);
        }
        while (r2 != obj3 && r2 != obj2 && !compareAndSet(1, get(i), obj5)) {
        }
    }
}
