package com.mega.chery.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.text.TextUtilsCompat;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CarConfigUtils {
    public static final int CONFIG_AVM = 3;
    public static final int CONFIG_DOM_APA_AVM = 1;
    public static final int CONFIG_INT_APA_AVM = 2;
    public static final int CONFIG_NO = 5;
    public static final int CONFIG_RVC = 4;
    public static final int IDCU_HEIGHT = 2;
    public static final int IDCU_LOW = 0;
    public static final int IDCU_MIDDLE = 1;
    private static final String TAG = "CarConfigUtils";
    private static String sCarModel = "";
    private static String sCarName = "";
    private static String sRudder;

    @Retention(RetentionPolicy.SOURCE)
    @interface ApaConfig {
    }

    public static final class EnergyType {
        public static final int EV = 1;
        public static final int FCEV = 4;
        public static final int HEV = 5;
        public static final int ICE = 0;
        public static final int PHEV = 2;
        public static final int REEV = 3;
    }

    @Retention(RetentionPolicy.SOURCE)
    @interface IDCUTYPE {
    }

    public static String getProductName() {
        if (TextUtils.isEmpty(sCarName)) {
            sCarName = MegaSystemProperties.get("ro.product.name", "");
        }
        MLog.d(TAG, "getProductName: " + sCarName);
        return sCarName;
    }

    public static String getVehicleModel() {
        if (TestManager.DEBUG_MODE) {
            return MegaSystemProperties.get("series", MegaSystemProperties.get("ro.build.vehicle_model", ""));
        }
        if (TextUtils.isEmpty(sCarModel)) {
            sCarModel = MegaSystemProperties.get("ro.build.vehicle_model", "");
        }
        MLog.d(TAG, "getVehicleModel: " + sCarModel);
        return sCarModel;
    }

    public static boolean isNorthstar() {
        return "northstar".equals(getProductName());
    }

    public static boolean isT28() {
        return "T28".equalsIgnoreCase(getVehicleModel());
    }

    public static boolean is25MY() {
        return getConfig(MegaProperties.CONFIG_FACE_STYLE2) == 2;
    }

    public static boolean isLajolla() {
        return CheryConstants.LAJOLLA.equals(getProductName());
    }

    public static boolean isMilan() {
        if (TestManager.DEBUG_MODE) {
            return MegaSystemProperties.get("series", "T29").equals("T29");
        }
        return getProductName().contains(CheryConstants.MILAN);
    }

    public static boolean isT1GCINT() {
        return "T1GC_INT".equalsIgnoreCase(getVehicleModel());
    }

    public static boolean isT1GCDOM() {
        return "T1GC".equalsIgnoreCase(getVehicleModel());
    }

    public static boolean isT19C() {
        return "T19CFL1".equalsIgnoreCase(getVehicleModel());
    }

    public static boolean isINT() {
        return isT1GCINT() || isT19C();
    }

    public static boolean isRudder() {
        if (TestManager.DEBUG_MODE) {
            return MegaSystemProperties.getInt("right", 0) == 1;
        }
        if (!isINT()) {
            return false;
        }
        if (TextUtils.isEmpty(sRudder)) {
            sRudder = MegaSystemProperties.get(MegaProperties.CONFIG_RUDDER_TYPE, CheryCountryArea.KEY_CHINA);
        }
        return TextUtils.equals(sRudder, CheryCountryArea.KEY_CHILE);
    }

    public static int getCarConfig() {
        int i = MegaSystemProperties.getInt(MegaProperties.CONFIG_IDCU, 0);
        int i2 = MegaSystemProperties.getInt(MegaProperties.CONFIG_EAMP, 0);
        if (i == 0 && i2 == 0) {
            return 0;
        }
        if (i == 0 && i2 == 1) {
            return 1;
        }
        return (i == 1 && i2 == 1) ? 2 : 0;
    }

    public static int getApaAndAvmConfig() {
        int i = MegaSystemProperties.getInt(MegaProperties.CONFIG_AVM, -1);
        int i2 = MegaSystemProperties.getInt(MegaProperties.CONFIG_APA, -1);
        int i3 = MegaSystemProperties.getInt(MegaProperties.CONFIG_AVM_INTER_METHOD, -1);
        int i4 = MegaSystemProperties.getInt(MegaProperties.CONFIG_AROUND_VIEW_MONITOR, -1);
        int i5 = MegaSystemProperties.getInt(MegaProperties.CONFIG_PARKING_FNNC, -1);
        MLog.d("avm = " + i + " apa = " + i2 + " avmIntergated = " + i3 + " aroundView = " + i4 + " parkingFunction = " + i5);
        if (i == 1 && i2 == 1 && i3 == 0 && i4 == 2 && i5 == 1) {
            return 2;
        }
        if (i == 1 && i2 == 1 && i3 == 2 && i4 == 1 && i5 == 3) {
            return 1;
        }
        return (i == 1 && i2 == 0 && i3 == 2 && i4 == 0 && i5 == 0) ? 3 : 5;
    }

    public static boolean isRtl(Context context) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(context.getResources().getConfiguration().getLocales().get(0)) == 1;
    }

    public static int getConfig(String str) {
        return getConfig(str, 0);
    }

    public static int getConfig(String str, int i) {
        int i2 = MegaSystemProperties.getInt(str, i);
        MLog.d(TAG, String.format("%s = %s", str, Integer.valueOf(i2)));
        return i2;
    }

    public static int getEnergyType() {
        int i = MegaSystemProperties.getInt(MegaProperties.CONFIG_DRIVING_POWER_TYPE, 3);
        int i2 = MegaSystemProperties.getInt(MegaProperties.CONFIG_DRIVING_POWER_TYPE2, 0);
        if (i == 1 && i2 == 0) {
            return 2;
        }
        if (i == 2 && i2 == 0) {
            return 1;
        }
        return (i == 3 && i2 == 1) ? 5 : 0;
    }
}
