package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r implements z2.b, z2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i8.b f2225b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(i8.b bVar) {
        this.f2225b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z2.a
    public void a(Exception exc) {
        i8.b bVar = this.f2225b;
        bVar.onError(exc);
        bVar.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z2.b
    public void c(Object obj) {
        z7.a aVar;
        i8.b bVar = this.f2225b;
        Object obj2 = bVar.get();
        c8.a aVar2 = c8.a.f542b;
        if (obj2 != aVar2 && (aVar = (z7.a) bVar.getAndSet(aVar2)) != aVar2) {
            x7.f fVar = (x7.f) bVar.c;
            try {
                if (obj == null) {
                    fVar.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    fVar.c(obj);
                }
                if (aVar != null) {
                    aVar.dispose();
                }
            } catch (Throwable th) {
                if (aVar != null) {
                    aVar.dispose();
                }
                throw th;
            }
        }
        bVar.a();
    }
}
