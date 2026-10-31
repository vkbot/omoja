package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: androidx.core.location.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0354f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f355b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Executor f356c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f357d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f358e;

    public /* synthetic */ RunnableC0354f(Object obj, Executor executor, int i10, int i11) {
        this.f355b = i11;
        this.f358e = obj;
        this.f356c = executor;
        this.f357d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f355b) {
            case 0:
                ((LocationManagerCompat.GnssMeasurementsTransport) this.f358e).lambda$onStatusChanged$1(this.f356c, this.f357d);
                break;
            case 1:
                ((LocationManagerCompat.GpsStatusTransport) this.f358e).lambda$onGpsStatusChanged$2(this.f356c, this.f357d);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) this.f358e).lambda$onFirstFix$2(this.f356c, this.f357d);
                break;
        }
    }
}
