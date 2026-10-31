package m7;

import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import com.example.navistart.punto;
import com.woha.wifim.MainWifiManadger;
import e0.m;
import e0.z2;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Request$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3678b;
    public final /* synthetic */ MainWifiManadger c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(MainWifiManadger mainWifiManadger, int i9) {
        this.f3678b = i9;
        this.c = mainWifiManadger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f3678b;
        MainWifiManadger mainWifiManadger = this.c;
        switch (i9) {
            case 0:
                mainWifiManadger.A(mainWifiManadger.f1633b.isWifiEnabled());
                break;
            case 1:
                Handler handler = mainWifiManadger.r;
                a aVar = mainWifiManadger.t;
                handler.removeCallbacks(aVar);
                Call call = mainWifiManadger.f1645q;
                NetworkCapabilities networkCapabilities = null;
                if (call != null) {
                    call.cancel();
                    mainWifiManadger.f1645q = null;
                }
                ConnectivityManager connectivityManager = mainWifiManadger.f1636h;
                if (connectivityManager != null) {
                    try {
                        Network activeNetwork = connectivityManager.getActiveNetwork();
                        if (activeNetwork != null) {
                            networkCapabilities = mainWifiManadger.f1636h.getNetworkCapabilities(activeNetwork);
                        }
                        break;
                    } catch (RuntimeException unused) {
                    }
                }
                if (networkCapabilities == null || !networkCapabilities.hasCapability(12)) {
                    mainWifiManadger.x(2131952877, SupportMenu.CATEGORY_MASK);
                } else if (!networkCapabilities.hasCapability(17)) {
                    mainWifiManadger.x(2131952876, ContextCompat.getColor(mainWifiManadger, 2131035010));
                    handler.postDelayed(aVar, 400L);
                } else {
                    mainWifiManadger.x(2131952867, Color.rgb(230, 126, 34));
                }
                break;
            case 2:
                String str = MainWifiManadger.f1632v;
                byte[] bArr = punto.f1004v;
                String str2 = z2.f2015a;
                Request requestBuild = new Request$Builder().url(m.h(new byte[]{-123, -46, -72, -56, -89, -92, -34, 8}, new byte[]{-19, -90, -52, -72, -44, -98, -15, 39}).concat(new String(bArr))).get().build();
                h0.b.a();
                Call callNewCall = h0.b.m().newCall(requestBuild);
                mainWifiManadger.f1645q = callNewCall;
                callNewCall.enqueue(new r5.c(28, mainWifiManadger));
                break;
            case 3:
                String str3 = MainWifiManadger.f1632v;
                mainWifiManadger.B();
                break;
            default:
                String str4 = MainWifiManadger.f1632v;
                mainWifiManadger.B();
                break;
        }
    }
}
