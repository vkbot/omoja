package androidx.activity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f104b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(int i9, Object obj) {
        this.f104b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f104b) {
            case 0:
                ComponentActivity$ReportFullyDrawnExecutorImpl.a((ComponentActivity$ReportFullyDrawnExecutorImpl) this.c);
                break;
            case 1:
                ComponentDialog.a((ComponentDialog) this.c);
                break;
            default:
                FullyDrawnReporter.a((FullyDrawnReporter) this.c);
                break;
        }
    }
}
