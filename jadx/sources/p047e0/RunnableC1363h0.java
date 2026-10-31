package p047e0;

import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import androidx.fragment.app.C0566h;
import com.example.navistart.LocServ;

/* JADX INFO: renamed from: e0.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1363h0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3258b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LocServ f3259c;

    public /* synthetic */ RunnableC1363h0(LocServ locServ, int i10) {
        this.f3258b = i10;
        this.f3259c = locServ;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3258b;
        LocServ locServ = this.f3259c;
        switch (i10) {
            case 0:
                C0566h c0566h = LocServ.f1268h;
                Context applicationContext = locServ.getApplicationContext();
                applicationContext.startService(new Intent(applicationContext, (Class<?>) LocServ.class));
                break;
            case 1:
                C0566h c0566h2 = LocServ.f1268h;
                if (System.currentTimeMillis() - locServ.f1279f > 30000) {
                    LocationManager locationManager = LocServ.f1271k;
                    if (locationManager != null) {
                        locationManager.removeUpdates(locServ);
                    }
                    LocServ.f1269i = Boolean.FALSE;
                    locServ.f1275b.execute(new RunnableC1363h0(locServ, 2));
                }
                break;
            default:
                locServ.m1418b();
                break;
        }
    }
}
