package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g0 extends n8.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b8.c f2552g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g0(x7.d dVar, r5.c cVar) {
        super(dVar);
        this.f2552g = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.e) {
            return;
        }
        int i9 = this.f3995f;
        x7.d dVar = this.f3994b;
        if (i9 != 0) {
            dVar.e(null);
            return;
        }
        try {
            Object objApply = this.f2552g.apply(obj);
            d8.b.a(objApply, "The mapper function returned a null value.");
            dVar.e(objApply);
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            this.c.cancel();
            onError(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        Object objPoll = this.d.poll();
        if (objPoll == null) {
            return null;
        }
        Object objApply = this.f2552g.apply(objPoll);
        d8.b.a(objApply, "The mapper function returned a null value.");
        return objApply;
    }
}
