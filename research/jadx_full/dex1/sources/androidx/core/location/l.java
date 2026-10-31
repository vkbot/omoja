package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f150b;
    public final /* synthetic */ LocationManagerCompat$PreRGnssStatusTransport c;
    public final /* synthetic */ Executor d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(LocationManagerCompat$PreRGnssStatusTransport locationManagerCompat$PreRGnssStatusTransport, Executor executor, int i9) {
        this.f150b = i9;
        this.c = locationManagerCompat$PreRGnssStatusTransport;
        this.d = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f150b) {
            case 0:
                LocationManagerCompat$PreRGnssStatusTransport.a(this.c, this.d);
                break;
            default:
                LocationManagerCompat$PreRGnssStatusTransport.c(this.c, this.d);
                break;
        }
    }
}
