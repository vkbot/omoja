package androidx.activity;

/* JADX INFO: renamed from: androidx.activity.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0130e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f238b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f239c;

    public /* synthetic */ RunnableC0130e(int i10, Object obj) {
        this.f238b = i10;
        this.f239c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f238b) {
            case 0:
                ComponentActivity.ReportFullyDrawnExecutorImpl.execute$lambda$0((ComponentActivity.ReportFullyDrawnExecutorImpl) this.f239c);
                break;
            case 1:
                super/*android.app.Dialog*/.onBackPressed();
                break;
            default:
                FullyDrawnReporter.reportRunnable$lambda$2((FullyDrawnReporter) this.f239c);
                break;
        }
    }
}
