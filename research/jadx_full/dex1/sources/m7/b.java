package m7;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import com.woha.wifim.MainWifiManadger;
import e0.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainWifiManadger f3679a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(MainWifiManadger mainWifiManadger) {
        this.f3679a = mainWifiManadger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(List list) {
        List<WifiConfiguration> configuredNetworks;
        ScanResult scanResult;
        MainWifiManadger mainWifiManadger = this.f3679a;
        if (!mainWifiManadger.f1633b.isWifiEnabled() || mainWifiManadger.d == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        for (ScanResult scanResult2 : list) {
            String str = scanResult2.SSID;
            if (str != null && !str.isEmpty() && !scanResult2.SSID.equals(m.h(new byte[]{-60, 10, -80, 60, 96, -11, -93, 123, -40, 12, -83, 62, 106, -92}, new byte[]{-8, ByteCompanionObject.MAX_VALUE, -34, 87, 14, -102, -44, 21})) && ((scanResult = (ScanResult) linkedHashMap.get(scanResult2.SSID)) == null || scanResult2.level > scanResult.level)) {
                linkedHashMap.put(scanResult2.SSID, scanResult2);
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        mainWifiManadger.c = arrayList;
        arrayList.sort(new androidx.constraintlayout.core.utils.a(11));
        try {
            configuredNetworks = mainWifiManadger.f1633b.getConfiguredNetworks();
            if (configuredNetworks == null) {
                configuredNetworks = Collections.EMPTY_LIST;
            }
        } catch (SecurityException unused) {
            configuredNetworks = Collections.EMPTY_LIST;
        }
        WifiInfo connectionInfo = mainWifiManadger.f1633b.getConnectionInfo();
        mainWifiManadger.d.a(mainWifiManadger.c, configuredNetworks, connectionInfo != null ? connectionInfo.getSSID() : "");
    }
}
