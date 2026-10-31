package androidx.concurrent.futures;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$Listener {
    static final AbstractResolvableFuture$Listener TOMBSTONE = new AbstractResolvableFuture$Listener(null, null);
    final Executor executor;

    @Nullable
    AbstractResolvableFuture$Listener next;
    final Runnable task;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$Listener(Runnable runnable, Executor executor) {
        this.task = runnable;
        this.executor = executor;
    }
}
