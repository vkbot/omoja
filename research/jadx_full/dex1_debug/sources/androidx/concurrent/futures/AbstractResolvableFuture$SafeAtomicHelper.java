package androidx.concurrent.futures;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$SafeAtomicHelper extends AbstractResolvableFuture$AtomicHelper {
    final AtomicReferenceFieldUpdater<AbstractResolvableFuture, AbstractResolvableFuture$Listener> listenersUpdater;
    final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> valueUpdater;
    final AtomicReferenceFieldUpdater<AbstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter> waiterNextUpdater;
    final AtomicReferenceFieldUpdater<AbstractResolvableFuture$Waiter, Thread> waiterThreadUpdater;
    final AtomicReferenceFieldUpdater<AbstractResolvableFuture, AbstractResolvableFuture$Waiter> waitersUpdater;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$SafeAtomicHelper(AtomicReferenceFieldUpdater<AbstractResolvableFuture$Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<AbstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, AbstractResolvableFuture$Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, AbstractResolvableFuture$Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
        super(null);
        this.waiterThreadUpdater = atomicReferenceFieldUpdater;
        this.waiterNextUpdater = atomicReferenceFieldUpdater2;
        this.waitersUpdater = atomicReferenceFieldUpdater3;
        this.listenersUpdater = atomicReferenceFieldUpdater4;
        this.valueUpdater = atomicReferenceFieldUpdater5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, AbstractResolvableFuture$Listener abstractResolvableFuture$Listener, AbstractResolvableFuture$Listener abstractResolvableFuture$Listener2) {
        AtomicReferenceFieldUpdater<AbstractResolvableFuture, AbstractResolvableFuture$Listener> atomicReferenceFieldUpdater = this.listenersUpdater;
        while (!atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, abstractResolvableFuture$Listener, abstractResolvableFuture$Listener2)) {
            if (atomicReferenceFieldUpdater.get(abstractResolvableFuture) != abstractResolvableFuture$Listener) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater = this.valueUpdater;
        while (!atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, obj, obj2)) {
            if (atomicReferenceFieldUpdater.get(abstractResolvableFuture) != obj) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2) {
        AtomicReferenceFieldUpdater<AbstractResolvableFuture, AbstractResolvableFuture$Waiter> atomicReferenceFieldUpdater = this.waitersUpdater;
        while (!atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, abstractResolvableFuture$Waiter, abstractResolvableFuture$Waiter2)) {
            if (atomicReferenceFieldUpdater.get(abstractResolvableFuture) != abstractResolvableFuture$Waiter) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public void putNext(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter2) {
        this.waiterNextUpdater.lazySet(abstractResolvableFuture$Waiter, abstractResolvableFuture$Waiter2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper
    public void putThread(AbstractResolvableFuture$Waiter abstractResolvableFuture$Waiter, Thread thread) {
        this.waiterThreadUpdater.lazySet(abstractResolvableFuture$Waiter, thread);
    }
}
