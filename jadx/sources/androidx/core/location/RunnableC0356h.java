package androidx.core.location;

/* JADX INFO: renamed from: androidx.core.location.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0356h implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f362b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LocationManagerCompat.LocationListenerTransport f363c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f364d;

    public /* synthetic */ RunnableC0356h(LocationManagerCompat.LocationListenerTransport locationListenerTransport, String str, int i10) {
        this.f362b = i10;
        this.f363c = locationListenerTransport;
        this.f364d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f362b) {
            case 0:
                this.f363c.lambda$onProviderEnabled$4(this.f364d);
                break;
            default:
                this.f363c.lambda$onProviderDisabled$5(this.f364d);
                break;
        }
    }
}
