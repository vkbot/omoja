package p138m7;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import androidx.constraintlayout.core.utils.C0279a;
import com.woha.wifim.MainWifiManadger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: m7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2403b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ MainWifiManadger f6505a;

    public /* synthetic */ C2403b(MainWifiManadger mainWifiManadger) {
        this.f6505a = mainWifiManadger;
    }

    /* JADX INFO: renamed from: a */
    public void m3767a(List list) {
        List<WifiConfiguration> configuredNetworks;
        ScanResult scanResult;
        MainWifiManadger mainWifiManadger = this.f6505a;
        if (!mainWifiManadger.f2889b.isWifiEnabled() || mainWifiManadger.f2891d == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        for (ScanResult scanResult2 : list) {
            String str = scanResult2.SSID;
            if (str != null && !str.isEmpty() && !scanResult2.SSID.equals(AbstractC1387m.m2421h(new byte[]{-60, 10, -80, 60, 96, -11, -93, 123, -40, 12, -83, 62, 106, -92}, new byte[]{-8, ByteCompanionObject.MAX_VALUE, -34, 87, 14, -102, -44, 21})) && ((scanResult = (ScanResult) linkedHashMap.get(scanResult2.SSID)) == null || scanResult2.level > scanResult.level)) {
                linkedHashMap.put(scanResult2.SSID, scanResult2);
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        mainWifiManadger.f2890c = arrayList;
        arrayList.sort(new C0279a(11));
        try {
            configuredNetworks = mainWifiManadger.f2889b.getConfiguredNetworks();
            if (configuredNetworks == null) {
                configuredNetworks = Collections.EMPTY_LIST;
            }
        } catch (SecurityException unused) {
            configuredNetworks = Collections.EMPTY_LIST;
        }
        WifiInfo connectionInfo = mainWifiManadger.f2889b.getConnectionInfo();
        mainWifiManadger.f2891d.m3768a(mainWifiManadger.f2890c, configuredNetworks, connectionInfo != null ? connectionInfo.getSSID() : "");
    }
}
