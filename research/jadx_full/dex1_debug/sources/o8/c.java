package o8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f4532b;
    public Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(x7.d dVar) {
        this.f4532b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(Object obj) {
        i(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        lazySet(32);
        this.c = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        Object obj;
        if (f.c(j9)) {
            do {
                int i9 = get();
                if ((i9 & (-2)) != 0) {
                    return;
                }
                if (i9 == 1) {
                    if (!compareAndSet(1, 3) || (obj = this.c) == null) {
                        return;
                    }
                    this.c = null;
                    x7.d dVar = this.f4532b;
                    dVar.e(obj);
                    if (get() != 4) {
                        dVar.a();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        lazySet(8);
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(Object obj) {
        int i9 = get();
        do {
            x7.d dVar = this.f4532b;
            if (i9 == 8) {
                this.c = obj;
                lazySet(16);
                dVar.e(obj);
                if (get() != 4) {
                    dVar.a();
                    return;
                }
                return;
            }
            if ((i9 & (-3)) != 0) {
                return;
            }
            if (i9 == 2) {
                lazySet(3);
                dVar.e(obj);
                if (get() != 4) {
                    dVar.a();
                    return;
                }
                return;
            }
            this.c = obj;
            if (compareAndSet(0, 1)) {
                return;
            } else {
                i9 = get();
            }
        } while (i9 != 4);
        this.c = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return get() != 16;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        Object obj = this.c;
        this.c = null;
        return obj;
    }
}
