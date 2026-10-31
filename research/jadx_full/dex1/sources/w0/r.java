package w0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5758b;
    public final /* synthetic */ x c;
    public final /* synthetic */ String d;
    public final /* synthetic */ int e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(x xVar, String str, int i9, int i10) {
        this.f5758b = i10;
        this.c = xVar;
        this.d = str;
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5758b) {
            case 0:
                String str = this.d;
                this.c.Z(this.e, str);
                break;
            default:
                String str2 = this.d;
                this.c.Z(this.e, str2);
                break;
        }
    }
}
