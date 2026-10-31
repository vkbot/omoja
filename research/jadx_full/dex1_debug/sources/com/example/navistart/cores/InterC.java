package com.example.navistart.cores;

import android.accessibilityservice.AccessibilityService;
import android.location.Location;
import android.view.accessibility.AccessibilityEvent;
import java.io.File;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface InterC {
    void ae(AccessibilityService accessibilityService, AccessibilityEvent accessibilityEvent);

    boolean bi();

    void c();

    ProxyFactory$ProxyFactoryCreatContext<? extends AreaDisplayProxy> getAreaDisplayProxy(String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default BTProxy getBluetoothPhone(String str) {
        return null;
    }

    ProxyFactory$ProxyFactoryCreatContext<? extends CarCmdProxy> getCarCmdProxy(String str);

    ProxyFactory$ProxyFactoryCreatContext<? extends ProBroProxy> getProBroProxy(String str);

    ProxyFactory$ProxyFactoryCreatContext<? extends ProLanProxy> getProLanProxy(String str);

    void gv(PFInter pFInter);

    void ip(List<File> list);

    Long l(Long l9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean launchSingleWindow(String str, int i9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean launchTraySplit(Saa saa, int i9) {
        return false;
    }

    void lo(Location location);

    void lo(String str, String str2, String str3);

    String run();

    void set(InterB interB);

    void sl(LCRI lcri);

    void ssa(Saa saa);

    void sv(String str, String str2);

    void t();

    JSONObject tx(JSONObject jSONObject);

    boolean v_ch();

    default void releaseBluetoothPhone(BTProxy bTProxy) {
    }
}
