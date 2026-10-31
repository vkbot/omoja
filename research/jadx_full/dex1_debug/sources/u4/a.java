package u4;

import android.os.StrictMode$ThreadPolicy;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import s1.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ThreadFactory f5458f = Executors.defaultThreadFactory();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f5459b = new AtomicLong();
    public final String c;
    public final int d;
    public final StrictMode$ThreadPolicy e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, int i9, StrictMode$ThreadPolicy strictMode$ThreadPolicy) {
        this.c = str;
        this.d = i9;
        this.e = strictMode$ThreadPolicy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = f5458f.newThread(new x0(7, this, runnable));
        Locale locale = Locale.ROOT;
        threadNewThread.setName(this.c + " Thread #" + this.f5459b.getAndIncrement());
        return threadNewThread;
    }
}
