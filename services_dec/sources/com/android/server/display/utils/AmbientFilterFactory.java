package com.android.server.display.utils;

import android.R;
import android.content.res.Resources;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class AmbientFilterFactory {
    public static AmbientFilter createAmbientFilter(String tag, int horizon, float intercept) {
        if (!Float.isNaN(intercept)) {
            return new AmbientFilter.WeightedMovingAverageAmbientFilter(tag, horizon, intercept);
        }
        throw new IllegalArgumentException("missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept");
    }

    public static AmbientFilter createBrightnessFilter(String tag, Resources resources) {
        int horizon = resources.getInteger(R.integer.config_defaultBinderHeavyHitterWatcherBatchSize);
        float intercept = getFloat(resources, R.dimen.config_bottomDialogCornerRadius);
        return createAmbientFilter(tag, horizon, intercept);
    }

    public static AmbientFilter createColorTemperatureFilter(String tag, Resources resources) {
        int horizon = resources.getInteger(R.integer.config_defaultKeyboardVibrationIntensity);
        float intercept = getFloat(resources, R.dimen.config_buttonCornerRadius);
        return createAmbientFilter(tag, horizon, intercept);
    }

    private AmbientFilterFactory() {
    }

    private static float getFloat(Resources resources, int id) {
        TypedValue value = new TypedValue();
        resources.getValue(id, value, true);
        if (value.type != 4) {
            return Float.NaN;
        }
        return value.getFloat();
    }
}
