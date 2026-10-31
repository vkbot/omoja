package androidx.arch.core.executor;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultTaskExecutor$1 implements ThreadFactory {
    private static final String THREAD_NAME_STEM = "arch_disk_io_";
    private final AtomicInteger mThreadId = new AtomicInteger(0);
    final /* synthetic */ DefaultTaskExecutor this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultTaskExecutor$1(DefaultTaskExecutor defaultTaskExecutor) {
        this.this$0 = defaultTaskExecutor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName(THREAD_NAME_STEM + this.mThreadId.getAndIncrement());
        return thread;
    }
}
