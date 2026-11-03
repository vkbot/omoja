package com.android.launcher3.activity.model;

import android.content.Context;
import com.android.launcher3.R;
import com.android.launcher3.model.CarControlModel;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.FlavorUtils;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import mega.car.config.VehicleBody;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    public static final String BROADCAST_SYSTEM_UI = "com.mega.action.notify.edit.info";
    public static final String BT_PHONE_NUM_URI = "mega_android_phone_number";
    public static final String CALENDAR_SCHEDULE_URI = "mega_android_schedule_number";
    public static final String KEY_SETTINGS_APP_LIST_DOCK_ADDED_PKG = "key_settings_applist_dock_added_pkg";
    public static final String KEY_SETTINGS_APP_LIST_EDIT_MODE = "key_settings_applist_edit_mode";
    public static final String PACKAGE_CARPLAY = "com.mega.carplay";
    public static final String PACKAGE_E_CALL = "com.mega.ecall";
    public static final String PACKAGE_HI_CAR = "com.mega.hicar";
    public static final int POWER_TYPE_EV = 2;
    public static final int POWER_TYPE_HEV = 3;
    public static final int POWER_TYPE_ICE = 0;
    public static final int POWER_TYPE_PHEV = 1;
    public static final String SYSTEM_PACKAGE = "com.android.systemui";
    public static final String TAG = "MegaLauncher";
    public static final String UPGRADE_URI = "def_ota_upgrade_state";

    public static boolean canStartApp(Context context, String packageName) {
        if (PACKAGE_E_CALL.equals(packageName)) {
            int intProp = CarControlModel.getInstance(context).getIntProp(VehicleBody.ID_T_BOX_CONNECT_STATE);
            MLog.i("ECall connect state " + intProp);
            if (intProp != 1) {
                ToastViewUtils.makeText(context, context.getString(R.string.txt_e_call_connect_tips), 3000L).show();
                return false;
            }
        }
        if (!Const.PACKAGES_POWER_ON_REQUIRED.contains(packageName) || isPowerOn(context)) {
            return true;
        }
        MLog.i("MegaLauncher", "canStartApp: NOT power on. " + packageName);
        ToastViewUtils.makeText(context, context.getString(R.string.power_off_tip), 3000L).show();
        return false;
    }

    public static boolean isPowerOn(Context context) {
        int powerStatus = CarControlModel.getInstance(context).getPowerStatus();
        if (isICE(context)) {
            return powerStatus == 1;
        }
        return powerStatus == 1 || powerStatus == 2;
    }

    public static boolean isICE(Context context) {
        return getDrivingPowerType(context) == 0;
    }

    public static boolean isEV(Context context) {
        return getDrivingPowerType(context) == 2;
    }

    public static int getDrivingPowerType(Context context) {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_DRIVING_POWER_TYPE, -1);
    }

    public static boolean isDvrVisible(Context context) {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_DVR, -1) == 1;
    }

    public static boolean showMegaApa() {
        return (FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) && isHighForParkingInT1gcInt();
    }

    public static boolean showMegaAvm() {
        if ((FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) && isHighForParkingInT1gcInt()) {
            return true;
        }
        return (FlavorUtils.isT1GC() || FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) && isMiddleForParking();
    }

    public static boolean isHighForParkingInT1gcInt() {
        return getAVM() == 1 && getAPA() == 1 && getAvmMethod() == 0 && getAVMMode() == 2 && getParingFunction() == 1;
    }

    public static boolean isMiddleForParking() {
        return getAVM() == 1 && getAPA() == 0 && getAvmMethod() == 2 && getAVMMode() == 0 && getParingFunction() == 0;
    }

    public static int getAPA() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_APA, -1);
    }

    public static int getAVM() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_AVM, -1);
    }

    public static int getAvmMethod() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_AVM_INTER_METHOD, -1);
    }

    public static int getAVMMode() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_AROUND_VIEW_MONITOR, -1);
    }

    public static int getParingFunction() {
        return MegaSystemProperties.getInt(MegaProperties.CONFIG_PARKING_FNNC, -1);
    }

    public static boolean hasRVC() {
        int i = MegaSystemProperties.getInt(MegaProperties.CONFIG_RAVT, -1);
        return i == 2 || i == 3;
    }
}
