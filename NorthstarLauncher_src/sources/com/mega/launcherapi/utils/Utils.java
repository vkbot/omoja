package com.mega.launcherapi.utils;

import com.mega.chery.utils.CountryCode;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    public static final String PROP_VEHICLE_MODEL = "ro.build.vehicle_model";
    public static final String T19CFL1 = "T19CFL1";
    public static final String T1GC = "T1GC";
    public static final String T1GC_INT = "T1GC_INT";
    public static final String T28 = "T28";
    public static final String TAG = "MegaLauncher";
    public static final String TAG_T1GC = "T1GC";
    public static final String TAG_T28 = "T28";
    public static final String TAG_T28_25MY = "T28_25MY";

    public static boolean isT1GC() {
        return Objects.equals(getVehicleMode(), "T1GC");
    }

    public static boolean isT1GCInt() {
        return Objects.equals(getVehicleMode(), "T1GC_INT");
    }

    public static boolean isT28() {
        return Objects.equals(getVehicleMode(), "T28");
    }

    public static boolean isT19CFL1() {
        return Objects.equals(getVehicleMode(), "T19CFL1");
    }

    public static boolean isLiveWallpaperDisabled() {
        return isT19CFL1() && CountryCode.inCountries(CountryCode.NEW_ZEALAND, CountryCode.AUSTRALIA);
    }

    public static String getVehicleMode() {
        return VehicleModeHolder.INSTANCE;
    }

    public static int getFaceStyle2() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_FACE_STYLE2, 0);
    }

    public static boolean is25My() {
        return getFaceStyle2() == 2;
    }

    private static final class VehicleModeHolder {
        private static final String INSTANCE = MegaSystemProperties.get("ro.build.vehicle_model", "");

        private VehicleModeHolder() {
        }
    }
}
