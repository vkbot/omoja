package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class CallbackToFutureAdapter$Completer<T> {
    private boolean attemptedSetting;
    private ResolvableFuture<Void> cancellationFuture = ResolvableFuture.create();
    CallbackToFutureAdapter$SafeFuture<T> future;
    Object tag;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setCompletedNormally() {
        this.tag = null;
        this.future = null;
        this.cancellationFuture = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCancellationListener(@NonNull Runnable runnable, @NonNull Executor executor) {
        ResolvableFuture<Void> resolvableFuture = this.cancellationFuture;
        if (resolvableFuture != null) {
            resolvableFuture.addListener(runnable, executor);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void finalize() {
        ResolvableFuture<Void> resolvableFuture;
        CallbackToFutureAdapter$SafeFuture<T> callbackToFutureAdapter$SafeFuture = this.future;
        if (callbackToFutureAdapter$SafeFuture != null && !callbackToFutureAdapter$SafeFuture.isDone()) {
            callbackToFutureAdapter$SafeFuture.setException(new CallbackToFutureAdapter$FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.tag));
        }
        if (this.attemptedSetting || (resolvableFuture = this.cancellationFuture) == null) {
            return;
        }
        resolvableFuture.set(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireCancellationListeners() {
        this.tag = null;
        this.future = null;
        this.cancellationFuture.set(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean set(T t) {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture<T> callbackToFutureAdapter$SafeFuture = this.future;
        boolean z8 = callbackToFutureAdapter$SafeFuture != null && callbackToFutureAdapter$SafeFuture.set(t);
        if (z8) {
            setCompletedNormally();
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setCancelled() {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture<T> callbackToFutureAdapter$SafeFuture = this.future;
        boolean z8 = callbackToFutureAdapter$SafeFuture != null && callbackToFutureAdapter$SafeFuture.cancelWithoutNotifyingCompleter(true);
        if (z8) {
            setCompletedNormally();
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean setException(@NonNull Throwable th) {
        this.attemptedSetting = true;
        CallbackToFutureAdapter$SafeFuture<T> callbackToFutureAdapter$SafeFuture = this.future;
        boolean z8 = callbackToFutureAdapter$SafeFuture != null && callbackToFutureAdapter$SafeFuture.setException(th);
        if (z8) {
            setCompletedNormally();
        }
        return z8;
    }
}
