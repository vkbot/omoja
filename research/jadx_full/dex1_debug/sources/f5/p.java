package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p implements b8.c, b8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x5.c f2223b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(x5.c cVar) {
        this.f2223b = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public void accept(Object obj) {
        Boolean bool = (Boolean) obj;
        x5.c cVar = this.f2223b;
        if (com.bumptech.glide.g.a(cVar.r(), 1)) {
            e3.d.n("Already impressed campaign " + cVar.u().p() + " ? : " + bool);
            return;
        }
        if (com.bumptech.glide.g.a(cVar.r(), 2)) {
            e3.d.n("Already impressed experiment " + cVar.p().p() + " ? : " + bool);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.c
    public Object apply(Object obj) {
        return this.f2223b;
    }
}
