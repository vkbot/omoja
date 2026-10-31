package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2548b;
    public final Object c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Object obj, x7.d dVar) {
        this.c = obj;
        this.f2548b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (j9 <= 0 || this.d) {
            return;
        }
        this.d = true;
        Object obj = this.c;
        x7.d dVar = this.f2548b;
        dVar.e(obj);
        dVar.a();
    }

    public final void cancel() {
    }
}
