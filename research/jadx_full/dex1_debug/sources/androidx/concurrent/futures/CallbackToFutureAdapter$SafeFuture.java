package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import m4.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class CallbackToFutureAdapter$SafeFuture<T> implements o {
    final WeakReference<CallbackToFutureAdapter$Completer<T>> completerWeakReference;
    private final AbstractResolvableFuture<T> delegate = new CallbackToFutureAdapter$SafeFuture$1(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackToFutureAdapter$SafeFuture(CallbackToFutureAdapter$Completer<T> callbackToFutureAdapter$Completer) {
        this.completerWeakReference = new WeakReference<>(callbackToFutureAdapter$Completer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m4.o
    public void addListener(@NonNull Runnable runnable, @NonNull Executor executor) {
        this.delegate.addListener(runnable, executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z8) {
        CallbackToFutureAdapter$Completer<T> callbackToFutureAdapter$Completer = this.completerWeakReference.get();
        boolean zCancel = this.delegate.cancel(z8);
        if (zCancel && callbackToFutureAdapter$Completer != null) {
            callbackToFutureAdapter$Completer.fireCancellationListeners();
        }
        return zCancel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean cancelWithoutNotifyingCompleter(boolean z8) {
        return this.delegate.cancel(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public T get() {
        return this.delegate.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.delegate.isCancelled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.delegate.isDone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean set(T t) {
        return this.delegate.set(t);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setException(Throwable th) {
        return this.delegate.setException(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.delegate.toString();
    }

    @Override // java.util.concurrent.Future
    public T get(long j9, @NonNull TimeUnit timeUnit) {
        return this.delegate.get(j9, timeUnit);
    }
}
