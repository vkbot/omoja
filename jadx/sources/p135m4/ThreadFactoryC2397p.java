package p135m4;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: renamed from: m4.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryC2397p implements ThreadFactory {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ThreadFactory f6479b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f6480c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AtomicLong f6481d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Boolean f6482e;

    public ThreadFactoryC2397p(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool) {
        this.f6479b = threadFactory;
        this.f6480c = str;
        this.f6481d = atomicLong;
        this.f6482e = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f6479b.newThread(runnable);
        Objects.requireNonNull(threadNewThread);
        AtomicLong atomicLong = this.f6481d;
        Objects.requireNonNull(atomicLong);
        threadNewThread.setName(String.format(Locale.ROOT, this.f6480c, Long.valueOf(atomicLong.getAndIncrement())));
        Boolean bool = this.f6482e;
        if (bool != null) {
            threadNewThread.setDaemon(bool.booleanValue());
        }
        return threadNewThread;
    }
}
