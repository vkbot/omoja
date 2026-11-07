package com.android.server.display.whitebalance;

import android.util.Slog;
import android.util.Spline;
import com.android.server.LocalServices;
import com.android.server.display.color.ColorDisplayService;
import com.android.server.display.utils.AmbientFilter;
import com.android.server.display.utils.History;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DisplayWhiteBalanceController implements AmbientSensor.AmbientBrightnessSensor.Callbacks, AmbientSensor.AmbientColorTemperatureSensor.Callbacks {
    private static final int HISTORY_SIZE = 50;
    protected static final String TAG = "DisplayWhiteBalanceController";
    private float mAmbientColorTemperature;
    private History mAmbientColorTemperatureHistory;
    private float mAmbientColorTemperatureOverride;
    private Spline.LinearSpline mAmbientToDisplayColorTemperatureSpline;
    AmbientFilter mBrightnessFilter;
    private AmbientSensor.AmbientBrightnessSensor mBrightnessSensor;
    private Callbacks mCallbacks;
    private ColorDisplayService.ColorDisplayServiceInternal mColorDisplayServiceInternal;
    AmbientFilter mColorTemperatureFilter;
    private AmbientSensor.AmbientColorTemperatureSensor mColorTemperatureSensor;
    private boolean mEnabled;
    private Spline.LinearSpline mHighLightAmbientBrightnessToBiasSpline;
    private final float mHighLightAmbientColorTemperature;
    private float mLastAmbientColorTemperature;
    private float mLatestAmbientBrightness;
    private float mLatestAmbientColorTemperature;
    private float mLatestHighLightBias;
    private float mLatestLowLightBias;
    protected boolean mLoggingEnabled;
    private Spline.LinearSpline mLowLightAmbientBrightnessToBiasSpline;
    private final float mLowLightAmbientColorTemperature;
    float mPendingAmbientColorTemperature;
    private DisplayWhiteBalanceThrottler mThrottler;

    public interface Callbacks {
        void updateWhiteBalance();
    }

    public DisplayWhiteBalanceController(AmbientSensor.AmbientBrightnessSensor brightnessSensor, AmbientFilter brightnessFilter, AmbientSensor.AmbientColorTemperatureSensor colorTemperatureSensor, AmbientFilter colorTemperatureFilter, DisplayWhiteBalanceThrottler throttler, float[] lowLightAmbientBrightnesses, float[] lowLightAmbientBiases, float lowLightAmbientColorTemperature, float[] highLightAmbientBrightnesses, float[] highLightAmbientBiases, float highLightAmbientColorTemperature, float[] ambientColorTemperatures, float[] displayColorTemperatures) {
        validateArguments(brightnessSensor, brightnessFilter, colorTemperatureSensor, colorTemperatureFilter, throttler);
        this.mLoggingEnabled = false;
        this.mEnabled = false;
        this.mCallbacks = null;
        this.mBrightnessSensor = brightnessSensor;
        this.mBrightnessFilter = brightnessFilter;
        this.mColorTemperatureSensor = colorTemperatureSensor;
        this.mColorTemperatureFilter = colorTemperatureFilter;
        this.mThrottler = throttler;
        this.mLowLightAmbientColorTemperature = lowLightAmbientColorTemperature;
        this.mHighLightAmbientColorTemperature = highLightAmbientColorTemperature;
        this.mAmbientColorTemperature = -1.0f;
        this.mPendingAmbientColorTemperature = -1.0f;
        this.mLastAmbientColorTemperature = -1.0f;
        this.mAmbientColorTemperatureHistory = new History(50);
        this.mAmbientColorTemperatureOverride = -1.0f;
        try {
            try {
                this.mLowLightAmbientBrightnessToBiasSpline = new Spline.LinearSpline(lowLightAmbientBrightnesses, lowLightAmbientBiases);
            } catch (Exception e) {
                e = e;
                Slog.e(TAG, "failed to create low light ambient brightness to bias spline.", e);
                this.mLowLightAmbientBrightnessToBiasSpline = null;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Spline.LinearSpline linearSpline = this.mLowLightAmbientBrightnessToBiasSpline;
        if (linearSpline != null && (linearSpline.interpolate(0.0f) != 0.0f || this.mLowLightAmbientBrightnessToBiasSpline.interpolate(Float.POSITIVE_INFINITY) != 1.0f)) {
            Slog.d(TAG, "invalid low light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0.");
            this.mLowLightAmbientBrightnessToBiasSpline = null;
        }
        try {
            try {
                this.mHighLightAmbientBrightnessToBiasSpline = new Spline.LinearSpline(highLightAmbientBrightnesses, highLightAmbientBiases);
            } catch (Exception e3) {
                e = e3;
                Slog.e(TAG, "failed to create high light ambient brightness to bias spline.", e);
                this.mHighLightAmbientBrightnessToBiasSpline = null;
            }
        } catch (Exception e4) {
            e = e4;
        }
        Spline.LinearSpline linearSpline2 = this.mHighLightAmbientBrightnessToBiasSpline;
        if (linearSpline2 != null && (linearSpline2.interpolate(0.0f) != 0.0f || this.mHighLightAmbientBrightnessToBiasSpline.interpolate(Float.POSITIVE_INFINITY) != 1.0f)) {
            Slog.d(TAG, "invalid high light ambient brightness to bias spline, bias must begin at 0.0 and end at 1.0.");
            this.mHighLightAmbientBrightnessToBiasSpline = null;
        }
        if (this.mLowLightAmbientBrightnessToBiasSpline != null && this.mHighLightAmbientBrightnessToBiasSpline != null && lowLightAmbientBrightnesses[lowLightAmbientBrightnesses.length - 1] > highLightAmbientBrightnesses[0]) {
            Slog.d(TAG, "invalid low light and high light ambient brightness to bias spline combination, defined domains must not intersect.");
            this.mLowLightAmbientBrightnessToBiasSpline = null;
            this.mHighLightAmbientBrightnessToBiasSpline = null;
        }
        try {
            try {
                this.mAmbientToDisplayColorTemperatureSpline = new Spline.LinearSpline(ambientColorTemperatures, displayColorTemperatures);
            } catch (Exception e5) {
                e = e5;
                Slog.e(TAG, "failed to create ambient to display color temperature spline.", e);
                this.mAmbientToDisplayColorTemperatureSpline = null;
            }
        } catch (Exception e6) {
            e = e6;
        }
        this.mColorDisplayServiceInternal = (ColorDisplayService.ColorDisplayServiceInternal) LocalServices.getService(ColorDisplayService.ColorDisplayServiceInternal.class);
    }

    public boolean setEnabled(boolean enabled) {
        if (enabled) {
            return enable();
        }
        return disable();
    }

    public boolean setCallbacks(Callbacks callbacks) {
        if (this.mCallbacks == callbacks) {
            return false;
        }
        this.mCallbacks = callbacks;
        return true;
    }

    public boolean setLoggingEnabled(boolean loggingEnabled) {
        if (this.mLoggingEnabled == loggingEnabled) {
            return false;
        }
        this.mLoggingEnabled = loggingEnabled;
        this.mBrightnessSensor.setLoggingEnabled(loggingEnabled);
        this.mBrightnessFilter.setLoggingEnabled(loggingEnabled);
        this.mColorTemperatureSensor.setLoggingEnabled(loggingEnabled);
        this.mColorTemperatureFilter.setLoggingEnabled(loggingEnabled);
        this.mThrottler.setLoggingEnabled(loggingEnabled);
        return true;
    }

    public boolean setAmbientColorTemperatureOverride(float ambientColorTemperatureOverride) {
        if (this.mAmbientColorTemperatureOverride == ambientColorTemperatureOverride) {
            return false;
        }
        this.mAmbientColorTemperatureOverride = ambientColorTemperatureOverride;
        return true;
    }

    public void dump(PrintWriter writer) {
        writer.println(TAG);
        writer.println("  mLoggingEnabled=" + this.mLoggingEnabled);
        writer.println("  mEnabled=" + this.mEnabled);
        writer.println("  mCallbacks=" + this.mCallbacks);
        this.mBrightnessSensor.dump(writer);
        this.mBrightnessFilter.dump(writer);
        this.mColorTemperatureSensor.dump(writer);
        this.mColorTemperatureFilter.dump(writer);
        this.mThrottler.dump(writer);
        writer.println("  mLowLightAmbientColorTemperature=" + this.mLowLightAmbientColorTemperature);
        writer.println("  mHighLightAmbientColorTemperature=" + this.mHighLightAmbientColorTemperature);
        writer.println("  mAmbientColorTemperature=" + this.mAmbientColorTemperature);
        writer.println("  mPendingAmbientColorTemperature=" + this.mPendingAmbientColorTemperature);
        writer.println("  mLastAmbientColorTemperature=" + this.mLastAmbientColorTemperature);
        writer.println("  mAmbientColorTemperatureHistory=" + this.mAmbientColorTemperatureHistory);
        writer.println("  mAmbientColorTemperatureOverride=" + this.mAmbientColorTemperatureOverride);
        writer.println("  mAmbientToDisplayColorTemperatureSpline=" + this.mAmbientToDisplayColorTemperatureSpline);
        writer.println("  mLowLightAmbientBrightnessToBiasSpline=" + this.mLowLightAmbientBrightnessToBiasSpline);
        writer.println("  mHighLightAmbientBrightnessToBiasSpline=" + this.mHighLightAmbientBrightnessToBiasSpline);
    }

    @Override // com.android.server.display.whitebalance.AmbientSensor.AmbientBrightnessSensor.Callbacks
    public void onAmbientBrightnessChanged(float value) {
        long time = System.currentTimeMillis();
        this.mBrightnessFilter.addValue(time, value);
        updateAmbientColorTemperature();
    }

    @Override // com.android.server.display.whitebalance.AmbientSensor.AmbientColorTemperatureSensor.Callbacks
    public void onAmbientColorTemperatureChanged(float value) {
        long time = System.currentTimeMillis();
        this.mColorTemperatureFilter.addValue(time, value);
        updateAmbientColorTemperature();
    }

    public void updateAmbientColorTemperature() {
        Spline.LinearSpline linearSpline;
        Spline.LinearSpline linearSpline2;
        long time = System.currentTimeMillis();
        float ambientColorTemperature = this.mColorTemperatureFilter.getEstimate(time);
        this.mLatestAmbientColorTemperature = ambientColorTemperature;
        Spline.LinearSpline linearSpline3 = this.mAmbientToDisplayColorTemperatureSpline;
        if (linearSpline3 != null && ambientColorTemperature != -1.0f) {
            ambientColorTemperature = linearSpline3.interpolate(ambientColorTemperature);
        }
        float ambientBrightness = this.mBrightnessFilter.getEstimate(time);
        this.mLatestAmbientBrightness = ambientBrightness;
        if (ambientColorTemperature != -1.0f && (linearSpline2 = this.mLowLightAmbientBrightnessToBiasSpline) != null) {
            float bias = linearSpline2.interpolate(ambientBrightness);
            ambientColorTemperature = (bias * ambientColorTemperature) + ((1.0f - bias) * this.mLowLightAmbientColorTemperature);
            this.mLatestLowLightBias = bias;
        }
        if (ambientColorTemperature != -1.0f && (linearSpline = this.mHighLightAmbientBrightnessToBiasSpline) != null) {
            float bias2 = linearSpline.interpolate(ambientBrightness);
            ambientColorTemperature = ((1.0f - bias2) * ambientColorTemperature) + (this.mHighLightAmbientColorTemperature * bias2);
            this.mLatestHighLightBias = bias2;
        }
        if (this.mAmbientColorTemperatureOverride != -1.0f) {
            if (this.mLoggingEnabled) {
                Slog.d(TAG, "override ambient color temperature: " + ambientColorTemperature + " => " + this.mAmbientColorTemperatureOverride);
            }
            ambientColorTemperature = this.mAmbientColorTemperatureOverride;
        }
        if (ambientColorTemperature == -1.0f || this.mThrottler.throttle(ambientColorTemperature)) {
            return;
        }
        if (this.mLoggingEnabled) {
            Slog.d(TAG, "pending ambient color temperature: " + ambientColorTemperature);
        }
        this.mPendingAmbientColorTemperature = ambientColorTemperature;
        Callbacks callbacks = this.mCallbacks;
        if (callbacks != null) {
            callbacks.updateWhiteBalance();
        }
    }

    public void updateDisplayColorTemperature() {
        float ambientColorTemperature = -1.0f;
        if (this.mAmbientColorTemperature == -1.0f && this.mPendingAmbientColorTemperature == -1.0f) {
            ambientColorTemperature = this.mLastAmbientColorTemperature;
        }
        float f = this.mPendingAmbientColorTemperature;
        if (f != -1.0f && f != this.mAmbientColorTemperature) {
            ambientColorTemperature = this.mPendingAmbientColorTemperature;
        }
        if (ambientColorTemperature == -1.0f) {
            return;
        }
        this.mAmbientColorTemperature = ambientColorTemperature;
        if (this.mLoggingEnabled) {
            Slog.d(TAG, "ambient color temperature: " + this.mAmbientColorTemperature);
        }
        this.mPendingAmbientColorTemperature = -1.0f;
        this.mAmbientColorTemperatureHistory.add(this.mAmbientColorTemperature);
        Slog.d(TAG, "Display cct: " + this.mAmbientColorTemperature + " Latest ambient cct: " + this.mLatestAmbientColorTemperature + " Latest ambient lux: " + this.mLatestAmbientBrightness + " Latest low light bias: " + this.mLatestLowLightBias + " Latest high light bias: " + this.mLatestHighLightBias);
        this.mColorDisplayServiceInternal.setDisplayWhiteBalanceColorTemperature((int) this.mAmbientColorTemperature);
        this.mLastAmbientColorTemperature = this.mAmbientColorTemperature;
    }

    private void validateArguments(AmbientSensor.AmbientBrightnessSensor brightnessSensor, AmbientFilter brightnessFilter, AmbientSensor.AmbientColorTemperatureSensor colorTemperatureSensor, AmbientFilter colorTemperatureFilter, DisplayWhiteBalanceThrottler throttler) {
        Objects.requireNonNull(brightnessSensor, "brightnessSensor must not be null");
        Objects.requireNonNull(brightnessFilter, "brightnessFilter must not be null");
        Objects.requireNonNull(colorTemperatureSensor, "colorTemperatureSensor must not be null");
        Objects.requireNonNull(colorTemperatureFilter, "colorTemperatureFilter must not be null");
        Objects.requireNonNull(throttler, "throttler cannot be null");
    }

    private boolean enable() {
        if (this.mEnabled) {
            return false;
        }
        if (this.mLoggingEnabled) {
            Slog.d(TAG, "enabling");
        }
        this.mEnabled = true;
        this.mBrightnessSensor.setEnabled(true);
        this.mColorTemperatureSensor.setEnabled(true);
        return true;
    }

    private boolean disable() {
        if (!this.mEnabled) {
            return false;
        }
        if (this.mLoggingEnabled) {
            Slog.d(TAG, "disabling");
        }
        this.mEnabled = false;
        this.mBrightnessSensor.setEnabled(false);
        this.mBrightnessFilter.clear();
        this.mColorTemperatureSensor.setEnabled(false);
        this.mColorTemperatureFilter.clear();
        this.mThrottler.clear();
        this.mAmbientColorTemperature = -1.0f;
        this.mPendingAmbientColorTemperature = -1.0f;
        this.mColorDisplayServiceInternal.resetDisplayWhiteBalanceColorTemperature();
        return true;
    }
}
