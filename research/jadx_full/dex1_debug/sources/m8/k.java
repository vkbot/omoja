package m8;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends AtomicLong implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3717b;
    public final int c;
    public final boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(String str, int i9, boolean z8) {
        this.f3717b = str;
        this.c = i9;
        this.d = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f3717b + '-' + incrementAndGet();
        Thread aVar = this.d ? new m.a(str, runnable) : new Thread(runnable, str);
        aVar.setPriority(this.c);
        aVar.setDaemon(true);
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return ai.onnxruntime.a.p(new StringBuilder("RxThreadFactory["), this.f3717b, "]");
    }

    public k(String str) {
        this(str, 5, false);
    }
}
