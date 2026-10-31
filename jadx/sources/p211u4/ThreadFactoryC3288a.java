package p211u4;

import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import p190s1.RunnableC3180x0;

/* JADX INFO: renamed from: u4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC3288a implements ThreadFactory {

    /* JADX INFO: renamed from: f */
    public static final ThreadFactory f9620f = Executors.defaultThreadFactory();

    /* JADX INFO: renamed from: b */
    public final AtomicLong f9621b = new AtomicLong();

    /* JADX INFO: renamed from: c */
    public final String f9622c;

    /* JADX INFO: renamed from: d */
    public final int f9623d;

    /* JADX INFO: renamed from: e */
    public final StrictMode.ThreadPolicy f9624e;

    public ThreadFactoryC3288a(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        this.f9622c = str;
        this.f9623d = i10;
        this.f9624e = threadPolicy;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = f9620f.newThread(new RunnableC3180x0(7, this, runnable));
        Locale locale = Locale.ROOT;
        threadNewThread.setName(this.f9622c + " Thread #" + this.f9621b.getAndIncrement());
        return threadNewThread;
    }
}
