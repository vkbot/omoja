package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v extends n8.b implements e8.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b8.d f2601g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(x7.d dVar, b8.d dVar2) {
        super(dVar);
        this.f2601g = dVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (g(obj)) {
            return;
        }
        this.c.d(1L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.a
    public final boolean g(Object obj) {
        if (this.e) {
            return false;
        }
        int i9 = this.f3995f;
        x7.d dVar = this.f3994b;
        if (i9 != 0) {
            dVar.e(null);
            return true;
        }
        try {
            boolean zTest = this.f2601g.test(obj);
            if (zTest) {
                dVar.e(obj);
            }
            return zTest;
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            this.c.cancel();
            onError(th);
            return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        e8.d dVar = this.d;
        while (true) {
            Object objPoll = dVar.poll();
            if (objPoll == null) {
                return null;
            }
            if (this.f2601g.test(objPoll)) {
                return objPoll;
            }
            if (this.f3995f == 2) {
                dVar.d(1L);
            }
        }
    }
}
