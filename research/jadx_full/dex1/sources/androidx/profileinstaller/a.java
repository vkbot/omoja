package androidx.profileinstaller;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f210b;
    public final /* synthetic */ ProfileInstaller$DiagnosticsCallback c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, int i9, Object obj, int i10) {
        this.f210b = i10;
        this.c = profileInstaller$DiagnosticsCallback;
        this.d = i9;
        this.e = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f210b) {
            case 0:
                ProfileInstaller.a(this.c, this.d, this.e);
                break;
            default:
                ProfileInstaller.b(this.c, this.d, this.e);
                break;
        }
    }
}
