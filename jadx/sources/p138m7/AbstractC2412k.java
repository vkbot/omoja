package p138m7;

import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: m7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2412k {

    /* JADX INFO: renamed from: a */
    public static final String f6538a = AbstractC1387m.m2421h(new byte[]{117, 87, 28, -110, -57, -71, -89, 17, 78, 91, 50, -98, -1, -90, -91, 4}, new byte[]{34, 62, 122, -5, -109, -42, -64, 118});

    /* JADX INFO: renamed from: b */
    public static final Handler f6539b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c */
    public static C2411j f6540c;

    /* JADX INFO: renamed from: a */
    public static boolean m3774a(WifiManager wifiManager) {
        try {
            Object objInvoke = wifiManager.getClass().getMethod(AbstractC1387m.m2421h(new byte[]{44, 39, 40, -45, ByteCompanionObject.MAX_VALUE, 98, -35, -30, 0, 58, 30, -40, 117, 110, -8}, new byte[]{69, 84, ByteCompanionObject.MAX_VALUE, -70, 25, 11, -100, -110}), null).invoke(wifiManager, null);
            return (objInvoke instanceof Boolean) && ((Boolean) objInvoke).booleanValue();
        } catch (Exception e) {
            Log.w(f6538a, AbstractC1387m.m2421h(new byte[]{29, -125, -66, -77, 74, 68, -12, 104, 49, -98, -120, -72, 64, 72, -47, 56, 1, -98, -120, -84, 77, 68, -39, 121, 22, -100, -116, -32, 12}, new byte[]{116, -16, -23, -38, 44, 45, -75, 24}).concat(e.getClass().getSimpleName()));
            return false;
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m3775b(WifiManager wifiManager) {
        int i10;
        String str = f6538a;
        if (wifiManager == null || !wifiManager.isWifiEnabled()) {
            return;
        }
        try {
            wifiManager.startScan();
        } catch (Exception e) {
            Log.w(str, AbstractC1387m.m2421h(new byte[]{31, 114, -73, 30, 54, -71, 5, -41, 2, 38, -80, 13, 43, -122, 3, -46, 76, 113, -66, 5, 46, -113, 70, -40, 25, 98, -79, 5, 44, -115, 70, -31, 5, 43, -112, 5, 98, -119, 9, -40, 2, 99, -75, 24, 43, -123, 8, -116, 76}, new byte[]{108, 6, -42, 108, 66, -22, 102, -74}).concat(e.getClass().getSimpleName()));
        }
        try {
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo == null || connectionInfo.getNetworkId() == -1 || connectionInfo.getSupplicantState() != SupplicantState.COMPLETED) {
                if (connectionInfo == null || connectionInfo.getNetworkId() == -1) {
                    List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
                    if (configuredNetworks != null) {
                        for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                            if (wifiConfiguration != null && (i10 = wifiConfiguration.networkId) != -1) {
                                wifiManager.enableNetwork(i10, false);
                            }
                        }
                    }
                } else {
                    wifiManager.enableNetwork(connectionInfo.getNetworkId(), true);
                }
                wifiManager.reassociate();
                wifiManager.reconnect();
                Log.d(str, AbstractC1387m.m2421h(new byte[]{-42, 86, 124, 40, -97, -110, 109, -7, -32, 19, 90, 52, -41, -89, 112, -68, -10, 86, 110, 50, -108, -113, 124, -1, -16, 19, 108, 59, -114, -124, 107, -68, -31, 93, 108, 63, -106, -120, 119, -5, -92, 80, 97, 52, -97, -113, 109, -68, -23, 92, 105, 56}, new byte[]{-124, 51, 13, 93, -6, -31, 25, -100}));
            }
        } catch (Exception e6) {
            Log.w(str, AbstractC1387m.m2421h(new byte[]{93, 11, -16, 107, -83, -53, -126, -39, 116, 74, -9, 114, -84, -56, -57, -115, 76, 3, -76, 65, -95, -113, -48, -56, 120, 5, -9, 105, -83, -52, -42, -105, 59}, new byte[]{27, 106, -103, 7, -56, -81, -94, -83}).concat(e6.getClass().getSimpleName()));
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m3776c(Context context, boolean z9) {
        synchronized (AbstractC2412k.class) {
            Context applicationContext = context.getApplicationContext();
            WifiManager wifiManager = (WifiManager) applicationContext.getSystemService(AbstractC1387m.m2421h(new byte[]{39, -55, 26, -26}, new byte[]{80, -96, 124, -113, -99, -38, 78, 86}));
            if (wifiManager == null) {
                return;
            }
            m3777d();
            if (wifiManager.isWifiEnabled() == z9) {
                return;
            }
            C2411j c2411j = new C2411j(applicationContext, wifiManager, z9, Math.max(0, 2), Math.max(1000L, 8000L), Math.max(300L, 1500L));
            f6540c = c2411j;
            c2411j.f6525a.registerReceiver(c2411j.f6536l, new IntentFilter(AbstractC1387m.m2421h(new byte[]{-70, 4, -44, 60, -122, -97, -78, -74, -75, 15, -60, 96, -98, -97, -80, -15, -11, Base64.padSymbol, -7, 8, -96, -87, -123, -52, -102, 62, -11, 17, -86, -66, -105, -42, -100, 47, -12}, new byte[]{-37, 106, -80, 78, -23, -10, -42, -104})));
            c2411j.f6534j = true;
            c2411j.m3769a();
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m3777d() {
        C2411j c2411j = f6540c;
        if (c2411j != null) {
            f6539b.removeCallbacks(c2411j.f6537m);
            if (c2411j.f6534j) {
                try {
                    c2411j.f6525a.unregisterReceiver(c2411j.f6536l);
                } catch (IllegalArgumentException unused) {
                    Log.w(AbstractC1387m.m2421h(new byte[]{32, -96, -5, -76, 67, -73, 48, -118, 27, -84, -43, -72, 123, -88, 50, -97}, new byte[]{119, -55, -99, -35, 23, -40, 87, -19}), AbstractC1387m.m2421h(new byte[]{7, -100, -64, -22, 112, -19, -122, 116, 21, -89, -61, -32, 70, -16, -111, 101, 2, -43, -57, -17, 81, -4, -122, 100, 9, -43, -45, -19, 81, -4, ByteCompanionObject.MIN_VALUE, 105, 3, -127, -61, -15, 70, -3}, new byte[]{112, -11, -90, -125, 35, -103, -25, 0}));
                }
                c2411j.f6534j = false;
            }
            f6540c = null;
        }
    }
}
