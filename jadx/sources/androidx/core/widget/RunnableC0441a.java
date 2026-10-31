package androidx.core.widget;

/* JADX INFO: renamed from: androidx.core.widget.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0441a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f408b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ContentLoadingProgressBar f409c;

    public /* synthetic */ RunnableC0441a(ContentLoadingProgressBar contentLoadingProgressBar, int i10) {
        this.f408b = i10;
        this.f409c = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f408b) {
            case 0:
                this.f409c.lambda$new$0();
                break;
            case 1:
                this.f409c.lambda$new$1();
                break;
            case 2:
                this.f409c.showOnUiThread();
                break;
            default:
                this.f409c.hideOnUiThread();
                break;
        }
    }
}
