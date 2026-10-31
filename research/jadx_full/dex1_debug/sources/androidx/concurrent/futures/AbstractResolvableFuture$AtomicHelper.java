package androidx.concurrent.futures;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class AbstractResolvableFuture$AtomicHelper {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AbstractResolvableFuture$AtomicHelper() {
    }

    public abstract boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, AbstractResolvableFuture$Listener abstractResolvableFuture$Listener, AbstractResolvableFuture$Listener abstractResolvableFuture$Listener2);

    public abstract boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);

    public abstract boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2);

    public abstract void putNext(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2);

    public abstract void putThread(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, Thread thread);

    public /* synthetic */ AbstractResolvableFuture$AtomicHelper(AbstractResolvableFuture$1 abstractResolvableFuture$1) {
        this();
    }
}
