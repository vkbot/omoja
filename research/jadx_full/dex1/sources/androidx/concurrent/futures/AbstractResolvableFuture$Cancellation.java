package androidx.concurrent.futures;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$Cancellation {
    static final AbstractResolvableFuture$Cancellation CAUSELESS_CANCELLED;
    static final AbstractResolvableFuture$Cancellation CAUSELESS_INTERRUPTED;

    @Nullable
    final Throwable cause;
    final boolean wasInterrupted;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        if (AbstractResolvableFuture.GENERATE_CANCELLATION_CAUSES) {
            CAUSELESS_CANCELLED = null;
            CAUSELESS_INTERRUPTED = null;
        } else {
            CAUSELESS_CANCELLED = new AbstractResolvableFuture$Cancellation(false, null);
            CAUSELESS_INTERRUPTED = new AbstractResolvableFuture$Cancellation(true, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$Cancellation(boolean z8, @Nullable Throwable th) {
        this.wasInterrupted = z8;
        this.cause = th;
    }
}
