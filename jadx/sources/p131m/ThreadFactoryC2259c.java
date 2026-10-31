package p131m;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p010a9.RunnableC0047i;

/* JADX INFO: renamed from: m.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC2259c implements ThreadFactory {

    /* JADX INFO: renamed from: b */
    public final ThreadFactoryC2258b f5912b;

    /* JADX INFO: renamed from: c */
    public final String f5913c;

    /* JADX INFO: renamed from: e */
    public final boolean f5915e;

    /* JADX INFO: renamed from: f */
    public final AtomicInteger f5916f = new AtomicInteger();

    /* JADX INFO: renamed from: d */
    public final C2260d f5914d = C2260d.f5917a;

    public ThreadFactoryC2259c(ThreadFactoryC2258b threadFactoryC2258b, String str, boolean z9) {
        this.f5912b = threadFactoryC2258b;
        this.f5913c = str;
        this.f5915e = z9;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        RunnableC0047i runnableC0047i = new RunnableC0047i(1, this, runnable);
        this.f5912b.getClass();
        C2257a c2257a = new C2257a(runnableC0047i);
        c2257a.setName("glide-" + this.f5913c + "-thread-" + this.f5916f.getAndIncrement());
        return c2257a;
    }
}
