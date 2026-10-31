package e5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements t8.a {
    public static final Object d = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile b f2132b;
    public volatile Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static t8.a a(b bVar) {
        if (bVar instanceof a) {
            return bVar;
        }
        a aVar = new a();
        aVar.c = d;
        aVar.f2132b = bVar;
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public final Object get() {
        Object obj;
        Object obj2 = this.c;
        Object obj3 = d;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.c;
                if (obj == obj3) {
                    obj = this.f2132b.get();
                    Object obj4 = this.c;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.c = obj;
                    this.f2132b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
