package com.android.server.power.backlight;

import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.os.BackgroundThread;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AutoBackLightController extends ContentObserver implements SensorEventListener {
    private static final String AUTOMATIC_BRIGHTNESS_THRESHOLD = "automatic_brightness_threshold";
    private static final int DELAY_TIME_MILLIS = 2000;
    private static final String ENABLE_AUTOMATIC_BRIGHTNESS = "enable_automatic_brightness";
    private static final String ENABLE_AUTO_BRIGHTNESS_CTRL_BY_PROVIDER_LUX_CHANGE = "enable_auto_brightness_ctrl_by_provider_lux_change";
    private static final String TAG = "AutoBackLightController";
    private final String[] ALL_BACKLIGHT_PATH;
    private final int[] DEFAULT_SMOOTH_COUNT;
    private boolean mAutoEnableInFramework;
    private int mBrightnessMode;
    private Context mContext;
    private List<BackLightConfig.SensorMapItem> mDayModeSensorMapItems;
    private List<BackLightConfig.SensorMapItem> mDefaultSensorMapItems;
    private Handler mHandler;
    private float mLastBackLight;
    private float mLastLux;
    private BackLightSettings mLightSettings;
    private Object mLock;
    private int mLuxSourceType;
    private AtomicBoolean mRegisterSuccess;
    private ContentResolver mResolver;
    private Runnable mRunnable;
    private float mScreenBrightnessSettingDefault;
    private HashMap<String, SmoothBackLight> mSmoothMap;
    private float mThreshold;

    public AutoBackLightController(Handler handler) {
        super(handler);
        this.ALL_BACKLIGHT_PATH = new String[]{"instrument_board_brightness", "main_control_brightness", "passenger_media_brightness", "vehicle_control_brightness"};
        this.DEFAULT_SMOOTH_COUNT = new int[]{1, 5, 5, 1};
        this.mBrightnessMode = 0;
        this.mLuxSourceType = 0;
        this.mThreshold = 5.0f;
        this.mLastLux = 0.0f;
        this.mLastBackLight = 65535.0f;
        this.mSmoothMap = new HashMap<>();
        this.mRegisterSuccess = new AtomicBoolean(false);
        this.mLock = new Object();
        this.mAutoEnableInFramework = false;
        this.mRunnable = new Runnable() { // from class: com.android.server.power.backlight.AutoBackLightController.1
            @Override // java.lang.Runnable
            public void run() {
                AutoBackLightController.this.registerLightSensor();
            }
        };
    }

    public void start(ContentResolver resolver, BackLightConfig backLightConfig, BackLightSettings backLightSettings, Context context, float screenBrightnessSettingDefault) {
        this.mLightSettings = backLightSettings;
        this.mScreenBrightnessSettingDefault = screenBrightnessSettingDefault;
        this.mContext = context;
        this.mResolver = resolver;
        this.mBrightnessMode = Settings.System.getIntForUser(resolver, "screen_brightness_mode", 0, 0);
        int intForUser = Settings.System.getIntForUser(this.mResolver, "framework_lux_source_type", context.getResources().getInteger(R.integer.config_carDockKeepsScreenOn), 0);
        this.mLuxSourceType = intForUser;
        boolean z = true;
        if (this.mBrightnessMode != 1 || (intForUser != 1 && intForUser != 2)) {
            z = false;
        }
        this.mAutoEnableInFramework = z;
        Slog.i(TAG, "when init BrightnessMode is " + brightnessModeToString(this.mBrightnessMode) + ", LuxSourceType is " + luxSourceTypeToString(this.mLuxSourceType));
        this.mResolver.registerContentObserver(Settings.System.getUriFor("screen_brightness_mode"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("framework_lux_source_type"), false, this, -1);
        this.mThreshold = (float) ((Integer) backLightConfig.getValue(AUTOMATIC_BRIGHTNESS_THRESHOLD, 5)).intValue();
        this.mDefaultSensorMapItems = backLightConfig.getDefaultSensorMap();
        this.mDayModeSensorMapItems = backLightConfig.getDayModeSensorMap();
        int i = 0;
        while (true) {
            String[] strArr = this.ALL_BACKLIGHT_PATH;
            if (i >= strArr.length) {
                break;
            }
            this.mSmoothMap.put(strArr[i], new SmoothBackLight(this.ALL_BACKLIGHT_PATH[i], this.DEFAULT_SMOOTH_COUNT[i], this.mResolver, this.mLightSettings, this.mScreenBrightnessSettingDefault));
            i++;
        }
        Map<String, Integer> customSmoothConfig = backLightConfig.getCustomSmoothConfig();
        for (String path : customSmoothConfig.keySet()) {
            int value = customSmoothConfig.get(path).intValue();
            SmoothBackLight sbl = this.mSmoothMap.get(path);
            if (sbl != null) {
                sbl.updateMaxSmoothCount(value);
            }
        }
        this.mHandler = BackgroundThread.getHandler();
        updateBackLightWhenInit();
        this.mResolver.registerContentObserver(Settings.System.getUriFor("brightness_sensor_lux"), false, this, -1);
        registerLightSensor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerLightSensor() {
        if (this.mRegisterSuccess.get()) {
            return;
        }
        SensorManager sensorManager = (SensorManager) this.mContext.getSystemService(SensorManager.class);
        Sensor lightSensor = sensorManager.getDefaultSensor(5);
        if (lightSensor == null) {
            this.mRegisterSuccess.set(false);
            Slog.d(TAG, "lightSensor is null! retry after 2s");
            this.mHandler.postDelayed(this.mRunnable, 2000L);
        } else {
            boolean success = sensorManager.registerListener(this, lightSensor, 3, this.mHandler);
            this.mRegisterSuccess.set(success);
            if (!success) {
                Slog.d(TAG, "registerListener for TYPE_LIGHT failed! retry after 2s");
                this.mHandler.postDelayed(this.mRunnable, 2000L);
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        synchronized (this.mLock) {
            if (!this.mAutoEnableInFramework) {
                Slog.d(TAG, "auto brightness not controlled by framework, ingore sensor lux value");
                return;
            }
            if (this.mLuxSourceType != 1) {
                Slog.d(TAG, "lux source type is not TYPE_SENSOR, ingore sensor lux value");
                return;
            }
            SystemClock.uptimeMillis();
            float lux = event.values[0];
            Slog.d(TAG, "onSensorChanged lux " + lux);
            if (lux == this.mLastLux) {
                Slog.d(TAG, "onSensorChanged lux " + lux + " is same as lastLux. do nothing");
                return;
            }
            this.mLastLux = lux;
            calculateBackLight();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange, Uri uri) {
        synchronized (this.mLock) {
            try {
                if (uri == null) {
                    return;
                }
                if (Settings.System.getUriFor("screen_brightness_mode").equals(uri) || Settings.System.getUriFor("framework_lux_source_type").equals(uri)) {
                    updateBacklightWhenProviderChange(uri);
                } else if (Settings.System.getUriFor("brightness_sensor_lux").equals(uri)) {
                    onBrightnessSensorLuxChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void updateBackLightWhenInit() {
        if (!this.mAutoEnableInFramework) {
            Slog.w(TAG, "auto brightness not controlled by framework, ingore updateBackLightWhenInit in framework");
        } else {
            this.mLastBackLight = 0.0f;
            calculateBackLight();
        }
    }

    private void updateBacklightWhenProviderChange(Uri uri) {
        boolean z = false;
        int brightnessMode = Settings.System.getIntForUser(this.mResolver, "screen_brightness_mode", 0, 0);
        int luxSourceType = Settings.System.getIntForUser(this.mResolver, "framework_lux_source_type", 0, 0);
        if (brightnessMode == 1 && (luxSourceType == 1 || luxSourceType == 2)) {
            z = true;
        }
        this.mAutoEnableInFramework = z;
        boolean providerChange = false;
        if (Settings.System.getUriFor("screen_brightness_mode").equals(uri) && this.mBrightnessMode != brightnessMode) {
            Slog.w(TAG, "brightness mode change from " + brightnessModeToString(this.mBrightnessMode) + " to " + brightnessModeToString(brightnessMode));
            this.mBrightnessMode = brightnessMode;
            providerChange = true;
        }
        if (Settings.System.getUriFor("framework_lux_source_type").equals(uri) && this.mLuxSourceType != luxSourceType) {
            Slog.w(TAG, "lux source type change from " + luxSourceTypeToString(this.mLuxSourceType) + " to " + luxSourceTypeToString(luxSourceType));
            this.mLuxSourceType = luxSourceType;
            providerChange = true;
        }
        if (!this.mAutoEnableInFramework) {
            Slog.w(TAG, "auto brightness not controlled by framework, ingore updateBacklightWhenProviderChange in framework");
        } else if (providerChange) {
            Slog.w(TAG, "provider change, calculateBackLight");
            this.mLastBackLight = 0.0f;
            calculateBackLight();
        }
    }

    private void onBrightnessSensorLuxChanged() {
        if (!this.mAutoEnableInFramework) {
            Slog.w(TAG, "auto brightness not controlled by framework, ingore provider lux value");
            return;
        }
        if (this.mLuxSourceType != 2) {
            Slog.d(TAG, "lux source type is not TYPE_PROVIDER, ingore sensor lux value");
            return;
        }
        float lux = Settings.System.getIntForUser(this.mResolver, "brightness_sensor_lux", 0, 0);
        Slog.d(TAG, "onBrightnessSenosrLuxChanged lux = " + lux);
        if (lux == this.mLastLux) {
            Slog.d(TAG, "onBrightnessSenosrLuxChanged lux = " + lux + " is same as lastLux. do nothing");
            return;
        }
        this.mLastLux = lux;
        calculateBackLight();
    }

    private void calculateBackLight() {
        int dayNightMode = Settings.System.getIntForUser(this.mResolver, "brightness_daynight_mode", 1, 0);
        Slog.d(TAG, "calculateBackLight dayNight mode is: " + dayNightMode);
        calculateBackLight(dayNightMode == 0 ? this.mDayModeSensorMapItems : this.mDefaultSensorMapItems);
    }

    private void calculateBackLight(List<BackLightConfig.SensorMapItem> sensorMapItems) {
        List<BackLightConfig.SensorMapItem> sensorMapItems2 = (sensorMapItems == null || sensorMapItems.size() < 2) ? this.mDefaultSensorMapItems : sensorMapItems;
        if (sensorMapItems2 == null || sensorMapItems2.size() < 2) {
            return;
        }
        int calculateValue = 0;
        double lastLux = this.mLastLux;
        if (lastLux < sensorMapItems2.get(0).sensor) {
            lastLux = sensorMapItems2.get(0).sensor;
        }
        if (lastLux > sensorMapItems2.get(sensorMapItems2.size() - 1).sensor) {
            lastLux = sensorMapItems2.get(sensorMapItems2.size() - 1).sensor;
        }
        for (int i = 0; i < sensorMapItems2.size() - 1; i++) {
            double currentSensorValue = sensorMapItems2.get(i).sensor;
            double nextSensorValue = sensorMapItems2.get(i + 1).sensor;
            if (lastLux >= currentSensorValue && lastLux <= nextSensorValue) {
                int currentBrightness = sensorMapItems2.get(i).brightness;
                int nextBrightness = sensorMapItems2.get(i + 1).brightness;
                calculateValue = (int) (((double) currentBrightness) + ((((double) (nextBrightness - currentBrightness)) * (lastLux - currentSensorValue)) / (nextSensorValue - currentSensorValue)));
                break;
            }
        }
        int backLight = (calculateValue * 255) / 100;
        if (backLight <= 0) {
            backLight = 1;
        }
        if (backLight > 255) {
            backLight = 255;
        }
        if (Math.abs(backLight - this.mLastBackLight) >= this.mThreshold) {
            this.mLastBackLight = backLight;
            Slog.d(TAG, "calculateBackLight lux: " + this.mLastLux + " to backlight: " + backLight);
            for (String path : this.ALL_BACKLIGHT_PATH) {
                setBackLight(path, backLight);
            }
            return;
        }
        Slog.d(TAG, "Math.abs(" + backLight + " - " + this.mLastBackLight + ") < mThreshold(" + this.mThreshold + ")");
    }

    private void setBackLight(String backLightName, int backLight) {
        int currentValue = Settings.System.getIntForUser(this.mResolver, backLightName, (int) this.mScreenBrightnessSettingDefault, 0);
        if (currentValue == 0 && this.mLightSettings.enableBackupAutoLightness) {
            String backupSettings = this.mLightSettings.mSettingBackUpMap.get(backLightName);
            this.mLightSettings.setBackUpBrightnessValue(backupSettings, backLight, 0);
        } else if (currentValue != backLight) {
            this.mSmoothMap.get(backLightName).setBackLight(backLight);
        }
    }

    public void dump(PrintWriter pw) {
        pw.println("  Settings Mega auto brightness:");
        pw.println("    mBrightnessMode: " + brightnessModeToString(this.mBrightnessMode));
        pw.println("    mLuxSourceType: " + luxSourceTypeToString(this.mLuxSourceType));
        pw.println("    mAutoEnableInFramework: " + this.mAutoEnableInFramework);
    }

    private String luxSourceTypeToString(int luxSourceType) {
        if (luxSourceType == 0) {
            return "LUX_SOURCE_TYPE_NONE(" + luxSourceType + ">";
        }
        if (luxSourceType == 1) {
            return "LUX_SOURCE_TYPE_SENSOR(" + luxSourceType + ")";
        }
        if (luxSourceType == 2) {
            return "LUX_SOURCE_TYPE_PROVIDER(" + luxSourceType + ")";
        }
        return "LUX_SOURCE_TYPE_UNKNOWN(" + luxSourceType + ")";
    }

    private String brightnessModeToString(int brightnessMode) {
        if (brightnessMode == 0) {
            return "BRIGHTNESS_MODE_MANUAL(" + brightnessMode + ")";
        }
        if (brightnessMode == 1) {
            return "BRIGHTNESS_MODE_AUTOMATIC(" + brightnessMode + ")";
        }
        return "BRIGHTNESS_MODE_UNKNOWN(" + brightnessMode + ")";
    }
}
