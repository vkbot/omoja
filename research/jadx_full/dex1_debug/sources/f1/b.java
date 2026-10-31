package f1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2159b;
    public final /* synthetic */ e c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(e eVar, int i9, int i10) {
        this.f2159b = i10;
        this.c = eVar;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2159b) {
            case 0:
                this.c.x(this.d, e.E() ? -1.0f : -0.5f);
                break;
            default:
                this.c.x(this.d, e.E() ? 1.0f : 0.5f);
                break;
        }
    }
}
