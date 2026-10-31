package androidx.activity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f106b;
    public final /* synthetic */ ComponentActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(ComponentActivity componentActivity, int i9) {
        this.f106b = i9;
        this.c = componentActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f106b) {
            case 0:
                ComponentActivity$onBackPressedDispatcher$2.b(this.c);
                break;
            default:
                ComponentActivity.h(this.c);
                break;
        }
    }
}
