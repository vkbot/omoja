package m;

import a9.i;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3323b;
    public final String c;
    public final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f3324f = new AtomicInteger();
    public final d d = d.f3325a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(b bVar, String str, boolean z8) {
        this.f3323b = bVar;
        this.c = str;
        this.e = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        i iVar = new i(1, this, runnable);
        this.f3323b.getClass();
        a aVar = new a(iVar);
        aVar.setName("glide-" + this.c + "-thread-" + this.f3324f.getAndIncrement());
        return aVar;
    }
}
