package t4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n implements k5.b {
    public static final org.apache.commons.net.ftp.a c = new org.apache.commons.net.ftp.a(6);
    public static final d d = new d(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k5.a f5405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile k5.b f5406b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(org.apache.commons.net.ftp.a aVar, k5.b bVar) {
        this.f5405a = aVar;
        this.f5406b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(k5.a aVar) {
        k5.b bVar;
        k5.b bVar2;
        k5.b bVar3 = this.f5406b;
        d dVar = d;
        if (bVar3 != dVar) {
            aVar.e(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f5406b;
            if (bVar != dVar) {
                bVar2 = bVar;
            } else {
                this.f5405a = new f5.f(26, this.f5405a, aVar);
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            aVar.e(bVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.b
    public final Object get() {
        return this.f5406b.get();
    }
}
