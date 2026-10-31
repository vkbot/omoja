package okhttp3.internal.concurrent;

import java.util.logging.Level;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"okhttp3/internal/concurrent/TaskRunner$runnable$1", "Ljava/lang/Runnable;", "run", HttpUrl.FRAGMENT_ENCODE_SET, "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$runnable$1\n+ 2 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n*L\n1#1,314:1\n35#2,19:315\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$runnable$1\n*L\n62#1:315,19\n*E\n"})
public final class TaskRunner$runnable$1 implements Runnable {
    final /* synthetic */ TaskRunner this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TaskRunner$runnable$1(TaskRunner taskRunner) {
        this.this$0 = taskRunner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        Task taskAwaitTaskToRun;
        long jNanoTime;
        while (true) {
            TaskRunner taskRunner = this.this$0;
            synchronized (taskRunner) {
                taskAwaitTaskToRun = taskRunner.awaitTaskToRun();
            }
            if (taskAwaitTaskToRun == null) {
                return;
            }
            TaskQueue queue = taskAwaitTaskToRun.getQueue();
            queue.getClass();
            TaskRunner taskRunner2 = this.this$0;
            boolean zIsLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
            if (zIsLoggable) {
                jNanoTime = queue.getTaskRunner().getBackend().nanoTime();
                TaskLoggerKt.access$log(taskAwaitTaskToRun, queue, "starting");
            } else {
                jNanoTime = -1;
            }
            try {
                TaskRunner.access$runTask(taskRunner2, taskAwaitTaskToRun);
                try {
                    Unit unit = Unit.INSTANCE;
                    if (zIsLoggable) {
                        TaskLoggerKt.access$log(taskAwaitTaskToRun, queue, "finished run in " + TaskLoggerKt.formatDuration(queue.getTaskRunner().getBackend().nanoTime() - jNanoTime));
                    }
                } catch (Throwable th) {
                    if (zIsLoggable) {
                        TaskLoggerKt.access$log(taskAwaitTaskToRun, queue, "failed a run in " + TaskLoggerKt.formatDuration(queue.getTaskRunner().getBackend().nanoTime() - jNanoTime));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                taskRunner2.getBackend().execute(this);
                throw th2;
            }
        }
    }
}
