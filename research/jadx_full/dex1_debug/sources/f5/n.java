package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n implements b8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2220b;
    public final /* synthetic */ o c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n(o oVar, int i9) {
        this.f2220b = i9;
        this.c = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public final void accept(Object obj) {
        switch (this.f2220b) {
            case 0:
                this.c.f2222b = x7.e.a((y5.c) obj);
                break;
            default:
                this.c.f2222b = i8.d.f2733b;
                break;
        }
    }
}
