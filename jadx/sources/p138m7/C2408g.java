package p138m7;

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
import com.example.navistart.R;
import com.woha.wifim.MainWifiManadger;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: m7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2408g extends BroadcastReceiver {

    /* JADX INFO: renamed from: c */
    public static MainWifiManadger f6518c;

    /* JADX INFO: renamed from: a */
    public final WifiManager f6519a;

    /* JADX INFO: renamed from: b */
    public final C2403b f6520b;

    public C2408g(WifiManager wifiManager, C2403b c2403b) {
        this.f6519a = wifiManager;
        this.f6520b = c2403b;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        boolean zEquals = AbstractC1387m.m2421h(new byte[]{3, -110, ByteCompanionObject.MAX_VALUE, 32, 24, 47, -22, 2, 12, -103, 111, 124, 0, 47, -24, 69, 76, -81, 88, 19, 57, 25, -36, 105, 49, -87, 87, 6, 36}, new byte[]{98, -4, 27, 82, 119, 70, -114, 44}).equals(action);
        C2403b c2403b = this.f6520b;
        WifiManager wifiManager = this.f6519a;
        if (zEquals) {
            c2403b.m3767a(wifiManager.getScanResults());
            return;
        }
        if (AbstractC1387m.m2421h(new byte[]{52, 26, 32, 126, -110, -20, -10, 42, 59, 17, 48, 34, -118, -20, -12, 109, 123, 35, 13, 74, -76, -38, -63, 80, 20, 32, 1, 83, -66, -51, -45, 74, 18, 49, 0}, new byte[]{85, 116, 68, 12, -3, -123, -110, 4}).equals(action)) {
            int intExtra = intent.getIntExtra(AbstractC1387m.m2421h(new byte[]{53, 59, 55, -62, -95, -66, 49, 31, 54, 55}, new byte[]{66, 82, 81, -85, -2, -51, 69, 126}), 4);
            MainWifiManadger mainWifiManadger = f6518c;
            if (mainWifiManadger != null) {
                RunnableC2402a runnableC2402a = mainWifiManadger.f2906s;
                Handler handler = mainWifiManadger.f2905r;
                if (intExtra == 2 || intExtra == 0) {
                    mainWifiManadger.m2219y();
                } else if (intExtra == 3) {
                    handler.removeCallbacks(runnableC2402a);
                    mainWifiManadger.m2212A(true);
                    mainWifiManadger.m2216v();
                } else if (intExtra == 1 || intExtra == 4) {
                    handler.removeCallbacks(runnableC2402a);
                    C2407f c2407f = mainWifiManadger.f2891d;
                    List list = Collections.EMPTY_LIST;
                    c2407f.m3768a(list, list, "");
                    mainWifiManadger.m2212A(false);
                }
            }
            if (intExtra == 3) {
                AbstractC3656k.m5878x(context.getApplicationContext(), context.getResources().getString(R.string.wifi_on));
                return;
            } else {
                if (intExtra == 1) {
                    AbstractC3656k.m5878x(context.getApplicationContext(), context.getResources().getString(R.string.wifi_off));
                    return;
                }
                return;
            }
        }
        if (!AbstractC1387m.m2421h(new byte[]{-113, 63, -54, 104, 56, -33, 0, -59, ByteCompanionObject.MIN_VALUE, 52, -38, 52, 32, -33, 2, -126, -64, 2, -6, 91, 3, -13, 59, -88, -90, 16, -32, 93, 18}, new byte[]{-18, 81, -82, 26, 87, -74, 100, -21}).equals(action)) {
            if (AbstractC1387m.m2421h(new byte[]{38, -46, -124, 118, -57, 4, 100, -127, 41, -39, -108, 42, -33, 4, 102, -58, 105, -49, -107, 116, -40, 1, 105, -52, 38, -46, -108, 42, -5, 57, 65, -5, 2, -29, -93, 76, -23, 35, 71, -22}, new byte[]{71, -68, -32, 4, -88, 109, 0, -81}).equals(intent.getAction())) {
                int intExtra2 = intent.getIntExtra(AbstractC1387m.m2421h(new byte[]{-120, 124, -116, -43, -71, -68, -39, 111, -107, 125, -71, -41, -89, -70, -56}, new byte[]{-5, 9, -4, -91, -43, -43, -70, 14}), -1);
                SupplicantState supplicantState = (SupplicantState) intent.getParcelableExtra(AbstractC1387m.m2421h(new byte[]{-82, -98, -40, 50, -90, 2, 18, 38}, new byte[]{-64, -5, -81, 97, -46, 99, 102, 67}));
                if (intExtra2 != 1) {
                    if (supplicantState == SupplicantState.COMPLETED) {
                        Log.d(AbstractC1387m.m2421h(new byte[]{54, 35, -49, 62}, new byte[]{97, 74, -119, 87, 59, 49, 125, 106}), AbstractC1387m.m2421h(new byte[]{-81, 10, -124, -116, 37, 32, -52, -67, -120, 69, -103, -105, 35, 32, -35, -85, -97, 3, -97, -114, 44, 58}, new byte[]{-20, 101, -22, -30, 64, 67, -72, -40}));
                        return;
                    }
                    return;
                } else {
                    Log.d(AbstractC1387m.m2421h(new byte[]{-87, 86, 24, 80}, new byte[]{-2, 63, 94, 57, -76, 55, -67, 123}), AbstractC1387m.m2421h(new byte[]{-21, 121, -125, -104, 99, 38, -100, -31, -55, 109, -125, -103, 105, 38, -56, -18, -53, 101, -101, -123, 116, 45, -46, -88, -35, 126, -104, -98, 97, 104, -104, -23, -39, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, -97, 116, 44}, new byte[]{-86, 12, -9, -16, 6, 72, -24, -120}));
                    MainWifiManadger mainWifiManadger2 = f6518c;
                    if (mainWifiManadger2 != null) {
                        mainWifiManadger2.m2217w(MainWifiManadger.f2888v, mainWifiManadger2.f2902o);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra(AbstractC1387m.m2421h(new byte[]{50, -56, 0, ByteCompanionObject.MIN_VALUE, 56, -42, -85, -36, 50, -53, 27}, new byte[]{92, -83, 116, -9, 87, -92, -64, -107}));
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        String ssid = connectionInfo != null ? connectionInfo.getSSID() : null;
        if (networkInfo == null || !networkInfo.isConnected() || connectionInfo == null || connectionInfo.getNetworkId() == -1 || ssid == null || ssid.equals(AbstractC1387m.m2421h(new byte[]{115, -95, -89, -78, -102, -120, 7, -24, 63, -67, -95, -81, -104, -126, 86, -67}, new byte[]{81, -99, -46, -36, -15, -26, 104, -97}))) {
            MainWifiManadger mainWifiManadger3 = f6518c;
            if (mainWifiManadger3 != null) {
                String string = context.getResources().getString(R.string.wifi_not_con);
                TextView textView = mainWifiManadger3.f2893f;
                if (textView != null && string != null) {
                    textView.setText(string);
                }
            }
        } else if (f6518c != null) {
            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), TypedValues.TYPE_TARGET);
            MainWifiManadger mainWifiManadger4 = f6518c;
            String string2 = context.getString(R.string.wifi_connected_with_signal, ssid.replace(AbstractC1387m.m2421h(new byte[]{11}, new byte[]{41, -116, -45, 79, -29, -79, -69, 66}), ""), Integer.valueOf(iCalculateSignalLevel));
            TextView textView2 = mainWifiManadger4.f2893f;
            if (textView2 != null && string2 != null) {
                textView2.setText(string2);
            }
        }
        try {
            c2403b.m3767a(wifiManager.getScanResults());
        } catch (SecurityException unused) {
            Log.w(AbstractC1387m.m2421h(new byte[]{-80, -106, 6, -42}, new byte[]{-25, -1, 64, -65, -20, -24, -127, 122}), AbstractC1387m.m2421h(new byte[]{-67, 18, -123, 52, 106, 84, -122, -69, -101, 21, -103, 63, 118, 72, -122, -70, -99, 18, -123, 122, 119, 69, -43, -68, -110, 7, -104, 122, 114, 73, -46, -95, -111, 6, -97, 122, 105, 79, -59, -88, -118, 26, -124, 52, 37, 80, -61, -69, -109, 26, -104, 41, 108, 79, -56}, new byte[]{-2, 115, -21, 90, 5, 32, -90, -55}));
        }
        MainWifiManadger mainWifiManadger5 = f6518c;
        if (mainWifiManadger5 != null) {
            mainWifiManadger5.f2905r.removeCallbacks(mainWifiManadger5.f2906s);
            mainWifiManadger5.m2212A(mainWifiManadger5.f2889b.isWifiEnabled());
            mainWifiManadger5.f2897j.setEnabled(true);
            mainWifiManadger5.f2899l.setEnabled(true);
        }
    }
}
