package e0;

import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import com.example.navistart.LocServ;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1855b;
    public final /* synthetic */ LocServ c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h0(LocServ locServ, int i9) {
        this.f1855b = i9;
        this.c = locServ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1855b;
        LocServ locServ = this.c;
        switch (i9) {
            case 0:
                androidx.fragment.app.h hVar = LocServ.f674h;
                Context applicationContext = locServ.getApplicationContext();
                applicationContext.startService(new Intent(applicationContext, (Class<?>) LocServ.class));
                break;
            case 1:
                androidx.fragment.app.h hVar2 = LocServ.f674h;
                if (System.currentTimeMillis() - locServ.f682f > 30000) {
                    LocationManager locationManager = LocServ.f677k;
                    if (locationManager != null) {
                        locationManager.removeUpdates(locServ);
                    }
                    LocServ.f675i = Boolean.FALSE;
                    locServ.f681b.execute(new h0(locServ, 2));
                }
                break;
            default:
                locServ.b();
                break;
        }
    }
}
