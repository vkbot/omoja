package com.mega.launcher.model;

import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class AppUtils {
    public static final String PKG_ANDROID_AUTO = "com.mega.androidauto";
    public static final String PKG_BT_PHONE = "com.mega.btphone";
    public static final String PKG_CALENDER = "com.mega.calendar";
    public static final String PKG_CAR_PLAY = "com.mega.carplay";
    public static final String PKG_UPGRADE = "com.carota.chery";
    public static final String PKG_UPGRADE_V5 = "com.carota.chery.v5";
    public static final String PROP_VEHICLE_MODEL = "ro.build.vehicle_model";
    public static final String T19CFL1 = "T19CFL1";
    public static final String T19CFL1_CN = "T19CFL1_CN";
    public static final String T1GC = "T1GC";
    public static final String T1GC_INT = "T1GC_INT";
    public static final String T28 = "T28";

    public static boolean isUpgradeApp(String str) {
        return Objects.equals(str, PKG_UPGRADE) || Objects.equals(str, PKG_UPGRADE_V5);
    }

    public static int getFaceStyle2() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_FACE_STYLE2, 0);
    }

    public static boolean is25My() {
        return getFaceStyle2() == 2;
    }

    public static String getVehicleMode() {
        return VehicleModeHolder.INSTANCE;
    }

    public static boolean isT28() {
        return Objects.equals(getVehicleMode(), "T28");
    }

    public static boolean isT1GCDom() {
        return Objects.equals(getVehicleMode(), "T1GC");
    }

    public static boolean isT1GCInt() {
        return Objects.equals(getVehicleMode(), "T1GC_INT");
    }

    public static boolean isT19CFL1Int() {
        return Objects.equals(getVehicleMode(), "T19CFL1");
    }

    public static boolean isT19CFL1Dom() {
        return Objects.equals(getVehicleMode(), T19CFL1_CN);
    }

    private static final class VehicleModeHolder {
        private static final String INSTANCE = MegaSystemProperties.get("ro.build.vehicle_model", "");

        private VehicleModeHolder() {
        }
    }
}
