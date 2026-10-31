package com.example.navistart.cores;

import android.accessibilityservice.AccessibilityService;
import android.location.Location;
import android.view.accessibility.AccessibilityEvent;
import java.io.File;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface InterC {
    /* JADX INFO: renamed from: ae */
    void m1630ae(AccessibilityService accessibilityService, AccessibilityEvent accessibilityEvent);

    /* JADX INFO: renamed from: bi */
    boolean m1631bi();

    /* JADX INFO: renamed from: c */
    void m1632c();

    ProxyFactory.ProxyFactoryCreatContext<? extends AreaDisplayProxy> getAreaDisplayProxy(String str);

    default BTProxy getBluetoothPhone(String str) {
        return null;
    }

    ProxyFactory.ProxyFactoryCreatContext<? extends CarCmdProxy> getCarCmdProxy(String str);

    ProxyFactory.ProxyFactoryCreatContext<? extends ProBroProxy> getProBroProxy(String str);

    ProxyFactory.ProxyFactoryCreatContext<? extends ProLanProxy> getProLanProxy(String str);

    /* JADX INFO: renamed from: gv */
    void m1633gv(PFInter pFInter);

    /* JADX INFO: renamed from: ip */
    void m1634ip(List<File> list);

    /* JADX INFO: renamed from: l */
    Long m1635l(Long l10);

    default boolean launchSingleWindow(String str, int i10) {
        return false;
    }

    default boolean launchTraySplit(Saa saa, int i10) {
        return false;
    }

    /* JADX INFO: renamed from: lo */
    void m1636lo(Location location);

    /* JADX INFO: renamed from: lo */
    void m1637lo(String str, String str2, String str3);

    String run();

    void set(InterB interB);

    /* JADX INFO: renamed from: sl */
    void m1638sl(LCRI lcri);

    void ssa(Saa saa);

    /* JADX INFO: renamed from: sv */
    void m1639sv(String str, String str2);

    /* JADX INFO: renamed from: t */
    void m1640t();

    /* JADX INFO: renamed from: tx */
    JSONObject m1641tx(JSONObject jSONObject);

    boolean v_ch();

    default void releaseBluetoothPhone(BTProxy bTProxy) {
    }
}
