package androidx.core.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f169b;
    public final /* synthetic */ ContentLoadingProgressBar c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(ContentLoadingProgressBar contentLoadingProgressBar, int i9) {
        this.f169b = i9;
        this.c = contentLoadingProgressBar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f169b) {
            case 0:
                ContentLoadingProgressBar.d(this.c);
                break;
            case 1:
                ContentLoadingProgressBar.c(this.c);
                break;
            case 2:
                ContentLoadingProgressBar.a(this.c);
                break;
            default:
                ContentLoadingProgressBar.b(this.c);
                break;
        }
    }
}
