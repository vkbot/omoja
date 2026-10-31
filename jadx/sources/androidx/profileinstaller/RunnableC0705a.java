package androidx.profileinstaller;

/* JADX INFO: renamed from: androidx.profileinstaller.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0705a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f500b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ProfileInstaller.DiagnosticsCallback f501c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f502d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f503e;

    public /* synthetic */ RunnableC0705a(ProfileInstaller.DiagnosticsCallback diagnosticsCallback, int i10, Object obj, int i11) {
        this.f500b = i11;
        this.f501c = diagnosticsCallback;
        this.f502d = i10;
        this.f503e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f500b) {
            case 0:
                this.f501c.onResultReceived(this.f502d, this.f503e);
                break;
            default:
                this.f501c.onDiagnosticReceived(this.f502d, this.f503e);
                break;
        }
    }
}
