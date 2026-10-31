package androidx.activity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f107b;
    public final /* synthetic */ OnBackPressedDispatcher c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(ComponentActivity componentActivity, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.f107b = componentActivity;
        this.c = onBackPressedDispatcher;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        ComponentActivity$onBackPressedDispatcher$2.a(this.f107b, this.c);
    }
}
