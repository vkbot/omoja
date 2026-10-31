package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import m4.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class CallbackToFutureAdapter {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CallbackToFutureAdapter() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static <T> o getFuture(@NonNull CallbackToFutureAdapter$Resolver<T> callbackToFutureAdapter$Resolver) {
        CallbackToFutureAdapter$Completer<T> callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer<>();
        CallbackToFutureAdapter$SafeFuture<T> callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture<>(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = callbackToFutureAdapter$Resolver.getClass();
        try {
            Object objAttachCompleter = callbackToFutureAdapter$Resolver.attachCompleter(callbackToFutureAdapter$Completer);
            if (objAttachCompleter == null) {
                return callbackToFutureAdapter$SafeFuture;
            }
            callbackToFutureAdapter$Completer.tag = objAttachCompleter;
            return callbackToFutureAdapter$SafeFuture;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
            return callbackToFutureAdapter$SafeFuture;
        }
    }
}
