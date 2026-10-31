package androidx.core.location;

import android.location.Location;
import androidx.core.util.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f142b;
    public final /* synthetic */ Consumer c;
    public final /* synthetic */ Location d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(Consumer consumer, Location location, int i9) {
        this.f142b = i9;
        this.c = consumer;
        this.d = location;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f142b) {
            case 0:
                LocationManagerCompat$CancellableLocationListener.b(this.c, this.d);
                break;
            default:
                LocationManagerCompat.a(this.c, this.d);
                break;
        }
    }
}
