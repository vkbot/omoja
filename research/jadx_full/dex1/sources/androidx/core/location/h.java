package androidx.core.location;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f146b;
    public final /* synthetic */ LocationManagerCompat$LocationListenerTransport c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, String str, int i9) {
        this.f146b = i9;
        this.c = locationManagerCompat$LocationListenerTransport;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f146b) {
            case 0:
                LocationManagerCompat$LocationListenerTransport.a(this.c, this.d);
                break;
            default:
                LocationManagerCompat$LocationListenerTransport.e(this.c, this.d);
                break;
        }
    }
}
