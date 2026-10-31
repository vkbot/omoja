package p139m8;

import ai.onnxruntime.AbstractC0074a;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import p131m.C2257a;

/* JADX INFO: renamed from: m8.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC2423k extends AtomicLong implements ThreadFactory {

    /* JADX INFO: renamed from: b */
    public final String f6574b;

    /* JADX INFO: renamed from: c */
    public final int f6575c;

    /* JADX INFO: renamed from: d */
    public final boolean f6576d;

    public ThreadFactoryC2423k(String str, int i10, boolean z9) {
        this.f6574b = str;
        this.f6575c = i10;
        this.f6576d = z9;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f6574b + '-' + incrementAndGet();
        Thread c2257a = this.f6576d ? new C2257a(str, runnable) : new Thread(runnable, str);
        c2257a.setPriority(this.f6575c);
        c2257a.setDaemon(true);
        return c2257a;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return AbstractC0074a.m165p(new StringBuilder("RxThreadFactory["), this.f6574b, "]");
    }

    public ThreadFactoryC2423k(String str) {
        this(str, 5, false);
    }
}
