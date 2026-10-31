package s1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5075b;
    public final /* synthetic */ k c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(k kVar, int i9) {
        this.f5075b = i9;
        this.c = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5075b) {
            case 0:
                k kVar = this.c;
                kVar.d();
                if (!kVar.f5106b.f()) {
                    kVar.y();
                } else {
                    kVar.l();
                }
                break;
            case 1:
                this.c.l();
                break;
            default:
                this.c.z();
                break;
        }
    }
}
