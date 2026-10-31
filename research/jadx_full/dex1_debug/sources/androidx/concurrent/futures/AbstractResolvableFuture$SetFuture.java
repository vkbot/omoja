package androidx.concurrent.futures;

import m4.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AbstractResolvableFuture$SetFuture<V> implements Runnable {
    final o future;
    final AbstractResolvableFuture<V> owner;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractResolvableFuture$SetFuture(AbstractResolvableFuture<V> abstractResolvableFuture, o oVar) {
        this.owner = abstractResolvableFuture;
        this.future = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        if (this.owner.value != this) {
            return;
        }
        if (AbstractResolvableFuture.ATOMIC_HELPER.casValue(this.owner, this, AbstractResolvableFuture.getFutureValue(this.future))) {
            AbstractResolvableFuture.complete(this.owner);
        }
    }
}
