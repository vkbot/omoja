package b1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f258b;
    public final /* synthetic */ l c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(l lVar, String str, int i9) {
        this.f258b = i9;
        this.c = lVar;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.k
    public final String run() {
        switch (this.f258b) {
            case 0:
                return this.c.i(this.d);
            default:
                return this.c.j(this.d);
        }
    }
}
