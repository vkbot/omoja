package androidx.concurrent.futures;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$Failure {
    static final AbstractResolvableFuture$Failure FALLBACK_INSTANCE = new AbstractResolvableFuture$Failure(new AbstractResolvableFuture$Failure$1("Failure occurred while trying to finish a future."));
    final Throwable exception;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$Failure(Throwable th) {
        this.exception = (Throwable) AbstractResolvableFuture.checkNotNull(th);
    }
}
