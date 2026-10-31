package o8;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends AtomicInteger implements e8.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4534b;
    public final x7.d c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Object obj, x7.d dVar) {
        this.c = dVar;
        this.f4534b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        lazySet(2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        lazySet(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (f.c(j9) && compareAndSet(0, 1)) {
            Object obj = this.f4534b;
            x7.d dVar = this.c;
            dVar.e(obj);
            if (get() != 2) {
                dVar.a();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return get() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.f4534b;
    }
}
