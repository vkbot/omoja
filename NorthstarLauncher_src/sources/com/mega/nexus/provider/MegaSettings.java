package com.mega.nexus.provider;

import android.content.ContentResolver;
import android.provider.Settings;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class MegaSettings {

    @Deprecated
    public static final int ABANDONED = 12;

    @Deprecated
    public static final String BRIGHTNESS_SENSOR_LUX = "brightness_sensor_lux";

    @Deprecated
    public static final String CUSTOM_LONG_PRESS_TIMEOUT = "custom_long_press_timeout";

    @Deprecated
    public static final String FRAMEWORK_LUX_SOURCE_TYPE = "framework_lux_source_type";

    @Deprecated
    public static final int FRAMEWORK_LUX_SOURCE_TYPE_NONE = 0;

    @Deprecated
    public static final int FRAMEWORK_LUX_SOURCE_TYPE_PROVIDER = 2;

    @Deprecated
    public static final int FRAMEWORK_LUX_SOURCE_TYPE_SENSOR = 1;

    @Deprecated
    public static final String HUD_BRIGHTNESS = "hud_brightness";

    @Deprecated
    public static final String INSTRUMENT_BOARD_BRIGHTNESS = "instrument_board_brightness";
    public static final String KEY_VIEW_TARGET = "mega_key_view_target";

    @Deprecated
    public static final String MAIN_CONTROL_BRIGHTNESS = "main_control_brightness";

    @Deprecated
    public static final String MAIN_INPUT_ASSOCIATED_DISPLAY_ID = "main_input_associated_display_id";

    @Deprecated
    public static final String MEGA_ANDROID_POWER_STATUS = "mega_android_power_status";

    @Deprecated
    public static final String MOBILE_DATA = "mobile_data";

    @Deprecated
    public static final String NETWORK_SCORING_UI_ENABLED = "network_scoring_ui_enabled";

    @Deprecated
    public static final int OTA = 14;

    @Deprecated
    public static final String PASSENGER_INPUT_ASSOCIATED_DISPLAY_ID = "passenger_input_associated_display_id";

    @Deprecated
    public static final String PASSENGER_MEDIA_BRIGHTNESS = "passenger_media_brightness";

    @Deprecated
    public static final String SPEED_LABEL_CACHE_EVICTION_AGE_MILLIS = "speed_label_cache_eviction_age_millis";

    @Deprecated
    public static final int STATUS_BOOT_ANIMATION = 13;

    @Deprecated
    public static final int STATUS_CRASH = 19;

    @Deprecated
    public static final int STATUS_DYNO = 20;

    @Deprecated
    public static final int STATUS_FACTORY = 15;

    @Deprecated
    public static final int STATUS_FACTORY_PAUSED = 16;

    @Deprecated
    public static final int STATUS_LOW_VOLTAGE = 11;

    @Deprecated
    public static final int STATUS_ON = 1;

    @Deprecated
    public static final int STATUS_OVER_VOLTAGE = 10;

    @Deprecated
    public static final int STATUS_REMOTE_BOOT = 9;

    @Deprecated
    public static final int STATUS_SCREEN_SAVER = 7;

    @Deprecated
    public static final int STATUS_SHUTDOWN_PREPARE = 2;

    @Deprecated
    public static final int STATUS_SIMULATE_SLEEP = 5;

    @Deprecated
    public static final int STATUS_STAND_BY = 6;

    @Deprecated
    public static final int STATUS_SUSPEND = 4;

    @Deprecated
    public static final int STATUS_TEMPORARY_WORKING = 8;

    @Deprecated
    public static final int STATUS_TRANSPORT = 17;

    @Deprecated
    public static final int STATUS_TRANSPORT_PAUSED = 18;

    @Deprecated
    public static final int STATUS_WAIT_FOR_FINISH = 3;

    @Deprecated
    public static final int STATUS_WAIT_FOR_VHAL = 0;
    private static final String TAG = "MegaSettings";

    @Deprecated
    public static final String USER_SETUP_COMPLETE = "user_setup_complete";

    @Deprecated
    public static final String VEHICLE_CONTROL_BRIGHTNESS = "vehicle_control_brightness";

    @Deprecated
    public static final String VOLUME_ACCESSIBILITY = "volume_a11y";

    @Deprecated
    public static final String VPA_BRIGHTNESS = "vpa_brightness";

    public static final class Global {
        public static final String MOBILE_DATA = "mobile_data";
        public static final String NETWORK_SCORING_UI_ENABLED = "network_scoring_ui_enabled";
        public static final String SPEED_LABEL_CACHE_EVICTION_AGE_MILLIS = "speed_label_cache_eviction_age_millis";
    }

    public static final class Secure {
        public static final String MAIN_INPUT_ASSOCIATED_DISPLAY_ID = "main_input_associated_display_id";
        public static final String PASSENGER_INPUT_ASSOCIATED_DISPLAY_ID = "passenger_input_associated_display_id";
        public static final String USER_SETUP_COMPLETE = "user_setup_complete";
    }

    public static final class System {
        public static final int ABANDONED = 12;
        public static final String BRIGHTNESS_SENSOR_LUX = "brightness_sensor_lux";
        public static final String CEILING_BRIGHTNESS = "ceiling_brightness";
        public static final String CUSTOM_LONG_PRESS_TIMEOUT = "custom_long_press_timeout";
        public static final String FRAMEWORK_LUX_SOURCE_TYPE = "framework_lux_source_type";
        public static final int FRAMEWORK_LUX_SOURCE_TYPE_NONE = 0;
        public static final int FRAMEWORK_LUX_SOURCE_TYPE_PROVIDER = 2;
        public static final int FRAMEWORK_LUX_SOURCE_TYPE_SENSOR = 1;
        public static final String HUD_BRIGHTNESS = "hud_brightness";
        public static final String INSTRUMENT_BOARD_BRIGHTNESS = "instrument_board_brightness";
        public static final String INSTRUMENT_SCREEN_BRIGHTNESS_MODE = "inst_screen_brightness_mode";
        public static final String LEFT_REAR_BRIGHTNESS = "left_rear_brightness";
        public static final String MAIN_CONTROL_BRIGHTNESS = "main_control_brightness";
        public static final String MEGA_ANDROID_POWER_STATUS = "mega_android_power_status";
        public static final String MID_REAR_BRIGHTNESS = "mid_rear_brightness";
        public static final int OTA = 14;
        public static final String PASSENGER_MEDIA_BRIGHTNESS = "passenger_media_brightness";
        public static final String PASSENGER_SCREEN_BRIGHTNESS_MODE = "psg_screen_brightness_mode";
        public static final String RIGHT_REAR_BRIGHTNESS = "right_rear_brightness";
        public static final int STATUS_BOOT_ANIMATION = 13;
        public static final int STATUS_CRASH = 19;
        public static final int STATUS_DYNO = 20;
        public static final int STATUS_FACTORY = 15;
        public static final int STATUS_FACTORY_PAUSED = 16;
        public static final int STATUS_LOW_VOLTAGE = 11;
        public static final int STATUS_ON = 1;
        public static final int STATUS_OVER_VOLTAGE = 10;
        public static final int STATUS_REMOTE_BOOT = 9;
        public static final int STATUS_SCREEN_SAVER = 7;
        public static final int STATUS_SHUTDOWN_PREPARE = 2;
        public static final int STATUS_SIMULATE_SLEEP = 5;
        public static final int STATUS_STAND_BY = 6;
        public static final int STATUS_SUSPEND = 4;
        public static final int STATUS_TEMPORARY_WORKING = 8;
        public static final int STATUS_TRANSPORT = 17;
        public static final int STATUS_TRANSPORT_PAUSED = 18;
        public static final int STATUS_WAIT_FOR_FINISH = 3;
        public static final int STATUS_WAIT_FOR_VHAL = 0;
        public static final String VEHICLE_CONTROL_BRIGHTNESS = "vehicle_control_brightness";
        public static final String VOLUME_ACCESSIBILITY = "volume_a11y";
        public static final String VPA_BRIGHTNESS = "vpa_brightness";
    }

    public static boolean putIntForUserGlobal(ContentResolver contentResolver, String str, int i, int i2) {
        return Settings.Global.putStringForUser(contentResolver, str, String.valueOf(i), i2);
    }

    public static boolean putIntForUserSecure(ContentResolver contentResolver, String str, int i, int i2) {
        return Settings.Secure.putIntForUser(contentResolver, str, i, i2);
    }

    public static boolean putStringForUserSecure(ContentResolver contentResolver, String str, String str2, int i) {
        return Settings.Secure.putStringForUser(contentResolver, str, str2, i);
    }

    public static String getStringForUserSecure(ContentResolver contentResolver, String str, int i) {
        return Settings.Secure.getStringForUser(contentResolver, str, i);
    }

    public static boolean putStringForUserGlobal(ContentResolver contentResolver, String str, String str2, int i) {
        return Settings.Global.putStringForUser(contentResolver, str, String.valueOf(str2), i);
    }

    public static String getStringForUserGlobal(ContentResolver contentResolver, String str, int i) {
        return Settings.Global.getStringForUser(contentResolver, str, i);
    }

    public static boolean putIntForUserSystem(ContentResolver contentResolver, String str, int i, int i2) {
        return Settings.System.putIntForUser(contentResolver, str, i, i2);
    }

    public static int getIntForUserSystem(ContentResolver contentResolver, String str, int i, int i2) {
        return Settings.System.getIntForUser(contentResolver, str, i, i2);
    }

    public static boolean putStringForUserSystem(ContentResolver contentResolver, String str, String str2, int i) {
        return Settings.System.putStringForUser(contentResolver, str, String.valueOf(str2), i);
    }

    public static String getStringForUserSystem(ContentResolver contentResolver, String str, int i) {
        return Settings.System.getStringForUser(contentResolver, str, i);
    }

    public static boolean setDisplayBrightnessForUserSystem(ContentResolver contentResolver, String str, int i, int i2, boolean z) {
        if (z && Settings.System.getIntForUser(contentResolver, "screen_brightness_mode", 0, 0) == 1) {
            Settings.System.putIntForUser(contentResolver, "screen_brightness_mode", 0, 0);
        }
        Log.d(TAG, "set brightness for: " + str + ", value: " + i + ", by pkg: " + contentResolver.getPackageName());
        return Settings.System.putIntForUser(contentResolver, str, i, i2);
    }
}
