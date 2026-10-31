package androidx.appcompat.app;

import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegate$SerialExecutor implements Executor {
    Runnable mActive;
    final Executor mExecutor;
    private final Object mLock = new Object();
    final Queue<Runnable> mTasks = new ArrayDeque();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegate$SerialExecutor(Executor executor) {
        this.mExecutor = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(AppCompatDelegate$SerialExecutor appCompatDelegate$SerialExecutor, Runnable runnable) {
        appCompatDelegate$SerialExecutor.lambda$execute$0(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$execute$0(Runnable runnable) {
        try {
            runnable.run();
        } finally {
            scheduleNext();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.mLock) {
            try {
                this.mTasks.add(new b(this, runnable));
                if (this.mActive == null) {
                    scheduleNext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scheduleNext() {
        synchronized (this.mLock) {
            try {
                Runnable runnablePoll = this.mTasks.poll();
                this.mActive = runnablePoll;
                if (runnablePoll != null) {
                    this.mExecutor.execute(runnablePoll);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
