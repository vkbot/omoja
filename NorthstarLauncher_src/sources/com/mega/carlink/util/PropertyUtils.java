package com.mega.carlink.util;

import android.text.TextUtils;
import com.mega.chery.utils.CheryCountryArea;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class PropertyUtils {
    private static final String TAG = "PropertyUtils";

    public static void setBluetoothState(String str) {
        MegaSystemProperties.set("persist.sys.bluetooth", str);
    }

    public static String getBluetoothState() {
        return MegaSystemProperties.get("persist.sys.bluetooth", CheryCountryArea.KEY_CHINA);
    }

    public static boolean isT1GC() {
        String str = MegaSystemProperties.get("ro.build.vehicle_model", "");
        MLog.d(TAG, "vehicleModel==" + str);
        return str.equals("T1GC");
    }

    public static boolean isT28PHEV() {
        String str = MegaSystemProperties.get(MegaProperties.CONFIG_DRIVING_POWER_TYPE, CheryCountryArea.KEY_CHINA);
        MLog.d(TAG, "power type==" + str);
        return TextUtils.equals(str, CheryCountryArea.KEY_CHILE);
    }

    public static boolean isT28FUEL() {
        return (isT28PHEV() || isT1GC()) ? false : true;
    }

    public static boolean isT28() {
        return isT28FUEL() || isT28PHEV();
    }
}
