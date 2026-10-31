package androidx.concurrent.futures;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$SynchronizedHelper extends AbstractResolvableFuture$AtomicHelper {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$SynchronizedHelper() {
        super(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, AbstractResolvableFuture$Listener abstractResolvableFuture$Listener, AbstractResolvableFuture$Listener abstractResolvableFuture$Listener2) {
        synchronized (abstractResolvableFuture) {
            try {
                if (abstractResolvableFuture.listeners != abstractResolvableFuture$Listener) {
                    return false;
                }
                abstractResolvableFuture.listeners = abstractResolvableFuture$Listener2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
        synchronized (abstractResolvableFuture) {
            try {
                if (abstractResolvableFuture.value != obj) {
                    return false;
                }
                abstractResolvableFuture.value = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2) {
        synchronized (abstractResolvableFuture) {
            try {
                if (abstractResolvableFuture.waiters != abstractResolvableFuture$Waiter) {
                    return false;
                }
                abstractResolvableFuture.waiters = abstractResolvableFuture$Waiter2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public void putNext(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2) {
        abstractResolvableFuture$Waiter.next = abstractResolvableFuture$Waiter2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public void putThread(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, Thread thread) {
        abstractResolvableFuture$Waiter.thread = thread;
    }
}
