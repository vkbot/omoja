package androidx.concurrent.futures;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackToFutureAdapter$SafeFuture$1<T> extends AbstractResolvableFuture<T> {
    final /* synthetic */ CallbackToFutureAdapter$SafeFuture this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackToFutureAdapter$SafeFuture$1(CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture) {
        this.this$0 = callbackToFutureAdapter$SafeFuture;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public String pendingToString() {
        CallbackToFutureAdapter$Completer<T> callbackToFutureAdapter$Completer = this.this$0.completerWeakReference.get();
        if (callbackToFutureAdapter$Completer == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + callbackToFutureAdapter$Completer.tag + "]";
    }
}
