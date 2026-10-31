package p138m7;

import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import com.example.navistart.R;
import com.example.navistart.punto;
import com.woha.wifim.MainWifiManadger;
import okhttp3.Call;
import okhttp3.Request;
import okhttp3.internal.p160ws.WebSocketProtocol;
import p047e0.AbstractAsyncTaskC1449z2;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p184r5.C3105c;

/* JADX INFO: renamed from: m7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2402a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6503b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ MainWifiManadger f6504c;

    public /* synthetic */ RunnableC2402a(MainWifiManadger mainWifiManadger, int i10) {
        this.f6503b = i10;
        this.f6504c = mainWifiManadger;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f6503b;
        MainWifiManadger mainWifiManadger = this.f6504c;
        switch (i10) {
            case 0:
                mainWifiManadger.m2212A(mainWifiManadger.f2889b.isWifiEnabled());
                break;
            case 1:
                Handler handler = mainWifiManadger.f2905r;
                RunnableC2402a runnableC2402a = mainWifiManadger.f2907t;
                handler.removeCallbacks(runnableC2402a);
                Call call = mainWifiManadger.f2904q;
                NetworkCapabilities networkCapabilities = null;
                if (call != null) {
                    call.cancel();
                    mainWifiManadger.f2904q = null;
                }
                ConnectivityManager connectivityManager = mainWifiManadger.f2895h;
                if (connectivityManager != null) {
                    try {
                        Network activeNetwork = connectivityManager.getActiveNetwork();
                        if (activeNetwork != null) {
                            networkCapabilities = mainWifiManadger.f2895h.getNetworkCapabilities(activeNetwork);
                        }
                        break;
                    } catch (RuntimeException unused) {
                    }
                }
                if (networkCapabilities == null || !networkCapabilities.hasCapability(12)) {
                    mainWifiManadger.m2218x(R.string.wifi_internet_unavailable, SupportMenu.CATEGORY_MASK);
                } else if (!networkCapabilities.hasCapability(17)) {
                    mainWifiManadger.m2218x(R.string.wifi_internet_checking, ContextCompat.getColor(mainWifiManadger, R.color.modern_text_secondary));
                    handler.postDelayed(runnableC2402a, 400L);
                } else {
                    mainWifiManadger.m2218x(R.string.wifi_captive_portal_required, Color.rgb(230, WebSocketProtocol.PAYLOAD_SHORT, 34));
                }
                break;
            case 2:
                String str = MainWifiManadger.f2888v;
                byte[] bArr = punto.f1871v;
                String str2 = AbstractAsyncTaskC1449z2.f3517a;
                Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{-123, -46, -72, -56, -89, -92, -34, 8}, new byte[]{-19, -90, -52, -72, -44, -98, -15, 39}).concat(new String(bArr))).get().build();
                C1652b.m2734a();
                Call callNewCall = C1652b.m2743m().newCall(requestBuild);
                mainWifiManadger.f2904q = callNewCall;
                callNewCall.enqueue(new C3105c(28, mainWifiManadger));
                break;
            case 3:
                String str3 = MainWifiManadger.f2888v;
                mainWifiManadger.m2213B();
                break;
            default:
                String str4 = MainWifiManadger.f2888v;
                mainWifiManadger.m2213B();
                break;
        }
    }
}
