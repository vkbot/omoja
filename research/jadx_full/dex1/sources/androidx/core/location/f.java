package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f144b;
    public final /* synthetic */ Executor c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(Object obj, Executor executor, int i9, int i10) {
        this.f144b = i10;
        this.e = obj;
        this.c = executor;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f144b) {
            case 0:
                LocationManagerCompat$GnssMeasurementsTransport.b((LocationManagerCompat$GnssMeasurementsTransport) this.e, this.c, this.d);
                break;
            case 1:
                LocationManagerCompat$GpsStatusTransport.c((LocationManagerCompat$GpsStatusTransport) this.e, this.c, this.d);
                break;
            default:
                LocationManagerCompat$PreRGnssStatusTransport.b((LocationManagerCompat$PreRGnssStatusTransport) this.e, this.c, this.d);
                break;
        }
    }
}
