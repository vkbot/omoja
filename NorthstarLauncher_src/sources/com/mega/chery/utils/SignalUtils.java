package com.mega.chery.utils;

import mega.car.MegaCarProperty;
import mega.car.config.Driving;
import mega.car.hardware.CarPropertyValue;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class SignalUtils {
    public static final float MILES_PER_KM = 0.6214f;
    private static final String TAG = "SignalUtils";

    public static float kmToMile(float f) {
        return f * 0.6214f;
    }

    public static float getSpeed() {
        CarPropertyValue<?> propertyRaw = MegaCarProperty.getInstance().getPropertyRaw(Driving.ID_DRV_INFO_SPEED_INFO);
        float fFloatValue = (propertyRaw == null || propertyRaw.getStatus() != 0) ? 0.0f : ((Float) propertyRaw.getValue()).floatValue();
        MLog.d(TAG, "speed : " + fFloatValue);
        return fFloatValue;
    }

    public static int kmToMileFloor(int i) {
        return (int) Math.floor(i * 0.6214f);
    }

    public static int kmToMileFloor(float f) {
        return (int) Math.floor(f * 0.6214f);
    }

    public static int kmToMileRound(int i) {
        return Math.round(i * 0.6214f);
    }

    public static int kmToMileRound(float f) {
        return Math.round(f * 0.6214f);
    }
}
