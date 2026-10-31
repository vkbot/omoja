package t4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l implements k5.b {
    public static final Object c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Object f5401a = c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile k5.b f5402b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(k5.b bVar) {
        this.f5402b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.b
    public final Object get() {
        Object obj;
        Object obj2 = this.f5401a;
        Object obj3 = c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f5401a;
                if (obj == obj3) {
                    obj = this.f5402b.get();
                    this.f5401a = obj;
                    this.f5402b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
