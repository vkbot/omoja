package j8;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements e8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.h f3122b;
    public final Iterator c;
    public volatile boolean d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3124g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(x7.h hVar, Iterator it) {
        this.f3122b = hVar;
        this.c = it;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.f3123f = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        this.d = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        this.e = true;
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.f3123f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        if (this.f3123f) {
            return null;
        }
        boolean z8 = this.f3124g;
        Iterator it = this.c;
        if (!z8) {
            this.f3124g = true;
        } else if (!it.hasNext()) {
            this.f3123f = true;
            return null;
        }
        Object next = it.next();
        d8.b.a(next, "The iterator returned a null value");
        return next;
    }
}
