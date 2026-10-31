package j8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j implements x7.h, e8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.h f3125b;
    public z7.a c;
    public e8.b d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(x7.h hVar, e0.g gVar) {
        this.f3125b = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void a() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.f3125b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void b(z7.a aVar) {
        if (c8.a.e(this.c, aVar)) {
            this.c = aVar;
            if (aVar instanceof e8.b) {
                this.d = (e8.b) aVar;
            }
            this.f3125b.b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.d.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        this.c.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void e(Object obj) {
        if (this.e) {
            return;
        }
        try {
            String strN = ((y5.a) obj).n();
            d8.b.a(strN, "The mapper function returned a null value.");
            this.f3125b.e(strN);
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            this.c.dispose();
            onError(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.d.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void onError(Throwable th) {
        if (this.e) {
            a.a.s(th);
        } else {
            this.e = true;
            this.f3125b.onError(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        Object objPoll = this.d.poll();
        if (objPoll == null) {
            return null;
        }
        String strN = ((y5.a) objPoll).n();
        d8.b.a(strN, "The mapper function returned a null value.");
        return strN;
    }
}
