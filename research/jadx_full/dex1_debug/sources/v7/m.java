package v7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f5557b;
    public final n7.e c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(o oVar, n7.e eVar, int i9) {
        this.f5556a = i9;
        switch (i9) {
            case 1:
                o4.b.d("success rate ejection config is null", oVar.e != null);
                this.f5557b = oVar;
                this.c = eVar;
                break;
            default:
                this.f5557b = oVar;
                this.c = eVar;
                break;
        }
    }
}
