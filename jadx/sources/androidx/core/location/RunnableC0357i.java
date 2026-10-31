package androidx.core.location;

import android.location.Location;
import java.util.List;

/* JADX INFO: renamed from: androidx.core.location.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0357i implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f365b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LocationManagerCompat.LocationListenerTransport f366c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f367d;

    public /* synthetic */ RunnableC0357i(LocationManagerCompat.LocationListenerTransport locationListenerTransport, Object obj, int i10) {
        this.f365b = i10;
        this.f366c = locationListenerTransport;
        this.f367d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f365b) {
            case 0:
                this.f366c.lambda$onLocationChanged$1((List) this.f367d);
                break;
            default:
                this.f366c.lambda$onLocationChanged$0((Location) this.f367d);
                break;
        }
    }
}
