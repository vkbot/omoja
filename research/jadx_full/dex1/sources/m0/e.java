package m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f3382b;
    public final /* synthetic */ int c;
    public final /* synthetic */ boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(i iVar, int i9, boolean z8) {
        this.f3382b = iVar;
        this.c = i9;
        this.d = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f3382b;
        int i9 = this.c;
        boolean z8 = this.d;
        if (i9 == iVar.f3462j && iVar.isAdded()) {
            iVar.f3460h = z8;
            iVar.f3461i = false;
            iVar.u();
        }
    }
}
