package com.android.server.display.whitebalance;

import android.R;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.hardware.SensorManager;
import android.os.Handler;
import android.util.TypedValue;
import com.android.server.display.utils.AmbientFilter;
import com.android.server.display.utils.AmbientFilterFactory;

/* JADX INFO: loaded from: classes.dex */
public class DisplayWhiteBalanceFactory {
    private static final String BRIGHTNESS_FILTER_TAG = "AmbientBrightnessFilter";
    private static final String COLOR_TEMPERATURE_FILTER_TAG = "AmbientColorTemperatureFilter";

    public static DisplayWhiteBalanceController create(Handler handler, SensorManager sensorManager, Resources resources) {
        AmbientSensor.AmbientBrightnessSensor brightnessSensor = createBrightnessSensor(handler, sensorManager, resources);
        AmbientFilter brightnessFilter = AmbientFilterFactory.createBrightnessFilter(BRIGHTNESS_FILTER_TAG, resources);
        AmbientSensor.AmbientColorTemperatureSensor colorTemperatureSensor = createColorTemperatureSensor(handler, sensorManager, resources);
        AmbientFilter colorTemperatureFilter = AmbientFilterFactory.createColorTemperatureFilter(COLOR_TEMPERATURE_FILTER_TAG, resources);
        DisplayWhiteBalanceThrottler throttler = createThrottler(resources);
        float[] displayWhiteBalanceLowLightAmbientBrightnesses = getFloatArray(resources, R.array.config_deviceSpecificSystemServices);
        float[] displayWhiteBalanceLowLightAmbientBiases = getFloatArray(resources, R.array.config_default_vm_number);
        float lowLightAmbientColorTemperature = getFloat(resources, R.dimen.config_defaultBinderHeavyHitterAutoSamplerThreshold);
        float[] displayWhiteBalanceHighLightAmbientBrightnesses = getFloatArray(resources, R.array.config_defaultNotificationVibeWaveform);
        float[] displayWhiteBalanceHighLightAmbientBiases = getFloatArray(resources, R.array.config_defaultNotificationVibePattern);
        float highLightAmbientColorTemperature = getFloat(resources, R.dimen.config_closeToSquareDisplayMaxAspectRatio);
        float[] ambientColorTemperatures = getFloatArray(resources, R.array.config_defaultAllowlistLaunchOnPrivateDisplayPackages);
        float[] displayColorTempeartures = getFloatArray(resources, R.array.config_defaultFirstUserRestrictions);
        DisplayWhiteBalanceController controller = new DisplayWhiteBalanceController(brightnessSensor, brightnessFilter, colorTemperatureSensor, colorTemperatureFilter, throttler, displayWhiteBalanceLowLightAmbientBrightnesses, displayWhiteBalanceLowLightAmbientBiases, lowLightAmbientColorTemperature, displayWhiteBalanceHighLightAmbientBrightnesses, displayWhiteBalanceHighLightAmbientBiases, highLightAmbientColorTemperature, ambientColorTemperatures, displayColorTempeartures);
        brightnessSensor.setCallbacks(controller);
        colorTemperatureSensor.setCallbacks(controller);
        return controller;
    }

    private DisplayWhiteBalanceFactory() {
    }

    public static AmbientSensor.AmbientBrightnessSensor createBrightnessSensor(Handler handler, SensorManager sensorManager, Resources resources) {
        int rate = resources.getInteger(R.integer.config_defaultDisplayDefaultColorMode);
        return new AmbientSensor.AmbientBrightnessSensor(handler, sensorManager, rate);
    }

    public static AmbientSensor.AmbientColorTemperatureSensor createColorTemperatureSensor(Handler handler, SensorManager sensorManager, Resources resources) {
        String name = resources.getString(R.string.config_fallbackCredentialManagerDialogComponent);
        int rate = resources.getInteger(R.integer.config_defaultMinEmergencyGestureTapDurationMillis);
        return new AmbientSensor.AmbientColorTemperatureSensor(handler, sensorManager, name, rate);
    }

    private static DisplayWhiteBalanceThrottler createThrottler(Resources resources) {
        int increaseDebounce = resources.getInteger(R.integer.config_defaultNightDisplayAutoMode);
        int decreaseDebounce = resources.getInteger(R.integer.config_defaultNightDisplayCustomEndTime);
        float[] baseThresholds = getFloatArray(resources, R.array.config_defaultAmbientContextServices);
        float[] increaseThresholds = getFloatArray(resources, R.array.config_defaultPinnerServiceFiles);
        float[] decreaseThresholds = getFloatArray(resources, R.array.config_defaultCloudSearchServices);
        return new DisplayWhiteBalanceThrottler(increaseDebounce, decreaseDebounce, baseThresholds, increaseThresholds, decreaseThresholds);
    }

    private static float getFloat(Resources resources, int id) {
        TypedValue value = new TypedValue();
        resources.getValue(id, value, true);
        if (value.type != 4) {
            return Float.NaN;
        }
        return value.getFloat();
    }

    private static float[] getFloatArray(Resources resources, int id) {
        TypedArray array = resources.obtainTypedArray(id);
        try {
            if (array.length() == 0) {
                return null;
            }
            float[] values = new float[array.length()];
            for (int i = 0; i < values.length; i++) {
                values[i] = array.getFloat(i, Float.NaN);
                if (Float.isNaN(values[i])) {
                    return null;
                }
            }
            return values;
        } finally {
            array.recycle();
        }
    }
}
