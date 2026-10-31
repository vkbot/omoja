package m7;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.woha.wifim.MainWifiManadger;
import e0.m;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends BroadcastReceiver {
    public static MainWifiManadger c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WifiManager f3686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3687b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(WifiManager wifiManager, b bVar) {
        this.f3686a = wifiManager;
        this.f3687b = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        boolean zEquals = m.h(new byte[]{3, -110, ByteCompanionObject.MAX_VALUE, 32, 24, 47, -22, 2, 12, -103, 111, 124, 0, 47, -24, 69, 76, -81, 88, 19, 57, 25, -36, 105, 49, -87, 87, 6, 36}, new byte[]{98, -4, 27, 82, 119, 70, -114, 44}).equals(action);
        b bVar = this.f3687b;
        WifiManager wifiManager = this.f3686a;
        if (zEquals) {
            bVar.a(wifiManager.getScanResults());
            return;
        }
        if (m.h(new byte[]{52, 26, 32, 126, -110, -20, -10, 42, 59, 17, 48, 34, -118, -20, -12, 109, 123, 35, 13, 74, -76, -38, -63, 80, 20, 32, 1, 83, -66, -51, -45, 74, 18, 49, 0}, new byte[]{85, 116, 68, 12, -3, -123, -110, 4}).equals(action)) {
            int intExtra = intent.getIntExtra(m.h(new byte[]{53, 59, 55, -62, -95, -66, 49, 31, 54, 55}, new byte[]{66, 82, 81, -85, -2, -51, 69, 126}), 4);
            MainWifiManadger mainWifiManadger = c;
            if (mainWifiManadger != null) {
                a aVar = mainWifiManadger.f1646s;
                Handler handler = mainWifiManadger.r;
                if (intExtra == 2 || intExtra == 0) {
                    mainWifiManadger.y();
                } else if (intExtra == 3) {
                    handler.removeCallbacks(aVar);
                    mainWifiManadger.A(true);
                    mainWifiManadger.v();
                } else if (intExtra == 1 || intExtra == 4) {
                    handler.removeCallbacks(aVar);
                    f fVar = mainWifiManadger.d;
                    List list = Collections.EMPTY_LIST;
                    fVar.a(list, list, "");
                    mainWifiManadger.A(false);
                }
            }
            if (intExtra == 3) {
                y5.k.x(context.getApplicationContext(), context.getResources().getString(2131952882));
                return;
            } else {
                if (intExtra == 1) {
                    y5.k.x(context.getApplicationContext(), context.getResources().getString(2131952880));
                    return;
                }
                return;
            }
        }
        if (!m.h(new byte[]{-113, 63, -54, 104, 56, -33, 0, -59, ByteCompanionObject.MIN_VALUE, 52, -38, 52, 32, -33, 2, -126, -64, 2, -6, 91, 3, -13, 59, -88, -90, 16, -32, 93, 18}, new byte[]{-18, 81, -82, 26, 87, -74, 100, -21}).equals(action)) {
            if (m.h(new byte[]{38, -46, -124, 118, -57, 4, 100, -127, 41, -39, -108, 42, -33, 4, 102, -58, 105, -49, -107, 116, -40, 1, 105, -52, 38, -46, -108, 42, -5, 57, 65, -5, 2, -29, -93, 76, -23, 35, 71, -22}, new byte[]{71, -68, -32, 4, -88, 109, 0, -81}).equals(intent.getAction())) {
                int intExtra2 = intent.getIntExtra(m.h(new byte[]{-120, 124, -116, -43, -71, -68, -39, 111, -107, 125, -71, -41, -89, -70, -56}, new byte[]{-5, 9, -4, -91, -43, -43, -70, 14}), -1);
                SupplicantState supplicantState = (SupplicantState) intent.getParcelableExtra(m.h(new byte[]{-82, -98, -40, 50, -90, 2, 18, 38}, new byte[]{-64, -5, -81, 97, -46, 99, 102, 67}));
                if (intExtra2 != 1) {
                    if (supplicantState == SupplicantState.COMPLETED) {
                        Log.d(m.h(new byte[]{54, 35, -49, 62}, new byte[]{97, 74, -119, 87, 59, 49, 125, 106}), m.h(new byte[]{-81, 10, -124, -116, 37, 32, -52, -67, -120, 69, -103, -105, 35, 32, -35, -85, -97, 3, -97, -114, 44, 58}, new byte[]{-20, 101, -22, -30, 64, 67, -72, -40}));
                        return;
                    }
                    return;
                } else {
                    Log.d(m.h(new byte[]{-87, 86, 24, 80}, new byte[]{-2, 63, 94, 57, -76, 55, -67, 123}), m.h(new byte[]{-21, 121, -125, -104, 99, 38, -100, -31, -55, 109, -125, -103, 105, 38, -56, -18, -53, 101, -101, -123, 116, 45, -46, -88, -35, 126, -104, -98, 97, 104, -104, -23, -39, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, -97, 116, 44}, new byte[]{-86, 12, -9, -16, 6, 72, -24, -120}));
                    MainWifiManadger mainWifiManadger2 = c;
                    if (mainWifiManadger2 != null) {
                        mainWifiManadger2.w(MainWifiManadger.f1632v, mainWifiManadger2.f1643o);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra(m.h(new byte[]{50, -56, 0, ByteCompanionObject.MIN_VALUE, 56, -42, -85, -36, 50, -53, 27}, new byte[]{92, -83, 116, -9, 87, -92, -64, -107}));
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        String ssid = connectionInfo != null ? connectionInfo.getSSID() : null;
        if (networkInfo == null || !networkInfo.isConnected() || connectionInfo == null || connectionInfo.getNetworkId() == -1 || ssid == null || ssid.equals(m.h(new byte[]{115, -95, -89, -78, -102, -120, 7, -24, 63, -67, -95, -81, -104, -126, 86, -67}, new byte[]{81, -99, -46, -36, -15, -26, 104, -97}))) {
            MainWifiManadger mainWifiManadger3 = c;
            if (mainWifiManadger3 != null) {
                String string = context.getResources().getString(2131952879);
                TextView textView = mainWifiManadger3.f1634f;
                if (textView != null && string != null) {
                    textView.setText(string);
                }
            }
        } else if (c != null) {
            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), TypedValues.TYPE_TARGET);
            MainWifiManadger mainWifiManadger4 = c;
            String string2 = context.getString(2131952870, ssid.replace(m.h(new byte[]{11}, new byte[]{41, -116, -45, 79, -29, -79, -69, 66}), ""), Integer.valueOf(iCalculateSignalLevel));
            TextView textView2 = mainWifiManadger4.f1634f;
            if (textView2 != null && string2 != null) {
                textView2.setText(string2);
            }
        }
        try {
            bVar.a(wifiManager.getScanResults());
        } catch (SecurityException unused) {
            Log.w(m.h(new byte[]{-80, -106, 6, -42}, new byte[]{-25, -1, 64, -65, -20, -24, -127, 122}), m.h(new byte[]{-67, 18, -123, 52, 106, 84, -122, -69, -101, 21, -103, 63, 118, 72, -122, -70, -99, 18, -123, 122, 119, 69, -43, -68, -110, 7, -104, 122, 114, 73, -46, -95, -111, 6, -97, 122, 105, 79, -59, -88, -118, 26, -124, 52, 37, 80, -61, -69, -109, 26, -104, 41, 108, 79, -56}, new byte[]{-2, 115, -21, 90, 5, 32, -90, -55}));
        }
        MainWifiManadger mainWifiManadger5 = c;
        if (mainWifiManadger5 != null) {
            mainWifiManadger5.r.removeCallbacks(mainWifiManadger5.f1646s);
            mainWifiManadger5.A(mainWifiManadger5.f1633b.isWifiEnabled());
            mainWifiManadger5.f1638j.setEnabled(true);
            mainWifiManadger5.f1640l.setEnabled(true);
        }
    }
}
