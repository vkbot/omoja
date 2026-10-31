package androidx.core.location;

import android.location.Location;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f147b;
    public final /* synthetic */ LocationManagerCompat$LocationListenerTransport c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, Object obj, int i9) {
        this.f147b = i9;
        this.c = locationManagerCompat$LocationListenerTransport;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f147b) {
            case 0:
                LocationManagerCompat$LocationListenerTransport.d(this.c, (List) this.d);
                break;
            default:
                LocationManagerCompat$LocationListenerTransport.c(this.c, (Location) this.d);
                break;
        }
    }
}
