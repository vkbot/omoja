package com.mega.chery.brightness;

import android.content.Context;
import android.provider.Settings;
import com.android.systemui.shared.system.SysUiStatsLog;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayUtils {
    public static final String KEY_INSTRUMENT_AUTO = "instrument_auto";
    public static final String KEY_INSTRUMENT_AUTO_BRIGHTNESS = "instrument_auto";
    public static final String KEY_MAIN_CONTROL_AUTO = "main_control_auto";

    public static int getDashLevelByBri(int i) {
        if (i >= 0 && i <= 25) {
            return 1;
        }
        if (i >= 26 && i <= 64) {
            return 2;
        }
        if (i >= 65 && i <= 77) {
            return 3;
        }
        if (i >= 78 && i <= 102) {
            return 4;
        }
        if (i >= 103 && i <= 153) {
            return 5;
        }
        if (i >= 154 && i <= 179) {
            return 6;
        }
        if (i >= 180 && i <= 204) {
            return 7;
        }
        if (i < 205 || i > 230) {
            return (i < 231 || i > 242) ? 10 : 9;
        }
        return 8;
    }

    public static int getMainLevelByBri(int i) {
        if (i >= 0 && i <= 25) {
            return 1;
        }
        if (i >= 26 && i <= 51) {
            return 2;
        }
        if (i >= 52 && i <= 77) {
            return 3;
        }
        if (i >= 78 && i <= 102) {
            return 4;
        }
        if (i >= 103 && i <= 153) {
            return 5;
        }
        if (i >= 154 && i <= 179) {
            return 6;
        }
        if (i >= 180 && i <= 204) {
            return 7;
        }
        if (i < 205 || i > 230) {
            return (i < 231 || i > 242) ? 10 : 9;
        }
        return 8;
    }

    public static int instrumentLevel2Brightness(int i) {
        switch (i) {
            case 1:
                return 25;
            case 2:
                return 64;
            case 3:
                return 77;
            case 4:
                return 102;
            case 5:
                return 153;
            case 6:
                return SysUiStatsLog.STYLE_UI_CHANGED;
            case 7:
                return 204;
            case 8:
                return 230;
            case 9:
                return 242;
            case 10:
                return 255;
            default:
                return 0;
        }
    }

    public static int mainLevel2Brightness(int i) {
        switch (i) {
            case 1:
                return 25;
            case 2:
                return 51;
            case 3:
                return 77;
            case 4:
                return 102;
            case 5:
                return 153;
            case 6:
                return SysUiStatsLog.STYLE_UI_CHANGED;
            case 7:
                return 204;
            case 8:
                return 230;
            case 9:
                return 242;
            case 10:
                return 255;
            default:
                return 0;
        }
    }

    public static void setMainAutoState(Context context, boolean z) {
        Settings.Global.putInt(context.getContentResolver(), KEY_MAIN_CONTROL_AUTO, z ? 1 : 0);
    }

    public static boolean isMainAutoOn(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), KEY_MAIN_CONTROL_AUTO, 1) == 1;
    }

    public static boolean isMeterScreenAutoLightOn(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "instrument_auto", 1) == 1;
    }

    public static void setMeterScreenAutoLight(Context context, boolean z) {
        Settings.Global.putInt(context.getContentResolver(), "instrument_auto", z ? 1 : 0);
    }
}
