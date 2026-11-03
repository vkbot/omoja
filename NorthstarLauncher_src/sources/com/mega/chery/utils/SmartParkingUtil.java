package com.mega.chery.utils;

import android.content.Context;
import com.android.launcher3.statemanager.StatefulActivity;
import com.mega.chery.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import mega.car.MegaCarProperty;
import mega.car.Signal;
import mega.car.config.Northstar;
import mega.car.hardware.CarPropertyValue;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class SmartParkingUtil {
    private static final int APA_SPEED_MAX = 25;
    public static final int AVM_SPEED_MAX = 30;
    private static final String TAG = "SmartParkingUtil";
    public static final int TYPE_APA = 1;
    public static final int TYPE_AVM = 2;

    @Retention(RetentionPolicy.SOURCE)
    @interface Type {
    }

    public static void toggleSmartParking(Context context, int i) {
        if (i == 2) {
            if (CarConfigUtils.isT1GCDOM() && CarConfigUtils.getApaAndAvmConfig() == 1) {
                MLog.d(TAG, "dom avm");
                openOrCloseParking(context, i, !isDomAvmOpen());
            } else {
                openOrCloseParking(context, i, !isT28AvmOpen());
            }
        }
    }

    public static boolean openOrCloseParking(Context context, int i, boolean z) {
        MLog.d(TAG, "openOrCloseParking  context = " + context.getPackageName() + " type = " + i + " isOpen = " + z);
        if (z && !isPowerD1()) {
            ToastViewUtils.makeCenterText(context, context.getString(R.string.power_off_tip), StatefulActivity.HOME_ICON_DELAY).show();
            return false;
        }
        if (i == 1) {
            if ((CarConfigUtils.isT1GCINT() || CarConfigUtils.isT19C()) && CarConfigUtils.getApaAndAvmConfig() == 2) {
                if (!z) {
                    openT1gcIntParking(20);
                } else {
                    if (SignalUtils.getSpeed() >= 25.0f) {
                        ToastViewUtils.makeCenterText(context, context.getString(R.string.tip_apa_about_speed), StatefulActivity.HOME_ICON_DELAY).show();
                        return false;
                    }
                    openT1gcIntParking(21);
                }
            }
        } else if (i == 2) {
            if (z) {
                if (SignalUtils.getSpeed() > 30.0f) {
                    MLog.d(TAG, "speed too large");
                    boolean z2 = MegaCarProperty.getInstance().getIntProp(Signal.ID_TRIP_UNIT) == 1;
                    int i2 = R.string.tip_about_speed;
                    if (z2) {
                        i2 = R.string.tip_about_speed_mile;
                    }
                    ToastViewUtils.makeCenterText(context, context.getString(i2), StatefulActivity.HOME_ICON_DELAY).show();
                    return false;
                }
                if ((CarConfigUtils.isT1GCINT() || CarConfigUtils.isT19C()) && CarConfigUtils.getApaAndAvmConfig() == 2) {
                    openT1gcIntParking(11);
                } else if (CarConfigUtils.isT1GCDOM() && CarConfigUtils.getApaAndAvmConfig() == 1) {
                    openT1gcDomParking(32);
                } else if (!isT28AvmOpen()) {
                    startT28OrExtAvm();
                }
            } else if ((CarConfigUtils.isT1GCINT() || CarConfigUtils.isT19C()) && CarConfigUtils.getApaAndAvmConfig() == 2) {
                openT1gcIntParking(10);
            } else if (CarConfigUtils.isT1GCDOM() && CarConfigUtils.getApaAndAvmConfig() == 1) {
                openT1gcDomParking(33);
            } else if (isT28AvmOpen()) {
                startT28OrExtAvm();
            }
        }
        return true;
    }

    private static void startT28OrExtAvm() {
        MLog.d(TAG, "startT28OrExtAvm");
        MegaCarProperty.getInstance().setRawProp(new CarPropertyValue<>(Northstar.ID_PANORAMIC_START, 2));
    }

    private static boolean isT28AvmOpen() {
        int intProp = MegaCarProperty.getInstance().getIntProp(Northstar.ID_AVM_STANDBYACTIVESTATUS);
        boolean z = intProp >= 100;
        MLog.d(TAG, "isOpened" + z + " avmStatus = " + intProp);
        return z;
    }

    private static void openT1gcIntParking(int i) {
        MegaCarProperty.getInstance().setRawProp(new CarPropertyValue<>(Northstar.ID_APA_SOFT_KEY, Integer.valueOf(i)));
        MLog.d(TAG, "openT1gcIntParking " + i);
    }

    private static void openT1gcDomParking(int i) {
        MegaCarProperty.getInstance().setRawProp(new CarPropertyValue<>(Northstar.ID_SMART_VOICE_COMMAND, Integer.valueOf(i)));
        MLog.d(TAG, "openT1gcDomParking " + i);
    }

    private static boolean isDomAvmOpen() {
        int intProp = MegaCarProperty.getInstance().getIntProp(Northstar.ID_DZ_AVM_EVENT);
        MLog.d(TAG, "avmStatus = " + intProp);
        return intProp == 18;
    }

    public static boolean isPowerD1() {
        int intProp = MegaCarProperty.getInstance().getIntProp(Northstar.ID_POWER_STATUS);
        MLog.w("curPowerStatus = " + intProp);
        boolean z = intProp == 1;
        MLog.w(String.valueOf(z));
        return z;
    }
}
