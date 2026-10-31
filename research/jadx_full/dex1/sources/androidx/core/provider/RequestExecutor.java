package androidx.core.provider;

import android.os.Handler;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.ULong;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class RequestExecutor {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RequestExecutor() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ThreadPoolExecutor createDefaultExecutor(@NonNull String str, int i9, @IntRange(from = ULong.MIN_VALUE) int i10) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i10, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new RequestExecutor$DefaultThreadFactory(str, i9));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Executor createHandlerExecutor(@NonNull Handler handler) {
        return new RequestExecutor$HandlerExecutor(handler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> void execute(@NonNull Executor executor, @NonNull Callable<T> callable, @NonNull Consumer<T> consumer) {
        executor.execute(new RequestExecutor$ReplyRunnable(CalleeHandler.create(), callable, consumer));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> T submit(@NonNull ExecutorService executorService, @NonNull Callable<T> callable, @IntRange(from = ULong.MIN_VALUE) int i9) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i9, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw e;
        } catch (ExecutionException e6) {
            b.w(e6);
            return null;
        } catch (TimeoutException unused) {
            throw new InterruptedException("timeout");
        }
    }
}
