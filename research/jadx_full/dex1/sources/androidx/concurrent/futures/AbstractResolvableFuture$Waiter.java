package androidx.concurrent.futures;

import androidx.annotation.Nullable;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$Waiter {
    static final AbstractResolvableFuture$Waiter TOMBSTONE = new AbstractResolvableFuture$Waiter(false);

    @Nullable
    volatile AbstractResolvableFuture$Waiter next;

    @Nullable
    volatile Thread thread;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$Waiter() {
        AbstractResolvableFuture.ATOMIC_HELPER.putThread(this, Thread.currentThread());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNext(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter) {
        AbstractResolvableFuture.ATOMIC_HELPER.putNext(this, abstractResolvableFuture$Waiter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unpark() {
        Thread thread = this.thread;
        if (thread != null) {
            this.thread = null;
            LockSupport.unpark(thread);
        }
    }

    public AbstractResolvableFuture$Waiter(boolean z8) {
    }
}
