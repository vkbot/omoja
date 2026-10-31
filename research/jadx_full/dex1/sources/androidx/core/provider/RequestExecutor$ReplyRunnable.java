package androidx.core.provider;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.util.Consumer;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RequestExecutor$ReplyRunnable<T> implements Runnable {

    @NonNull
    private Callable<T> mCallable;

    @NonNull
    private Consumer<T> mConsumer;

    @NonNull
    private Handler mHandler;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RequestExecutor$ReplyRunnable(@NonNull Handler handler, @NonNull Callable<T> callable, @NonNull Consumer<T> consumer) {
        this.mCallable = callable;
        this.mConsumer = consumer;
        this.mHandler = handler;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        T tCall;
        try {
            tCall = this.mCallable.call();
        } catch (Exception unused) {
            tCall = null;
        }
        this.mHandler.post(new RequestExecutor$ReplyRunnable$1(this, this.mConsumer, tCall));
    }
}
