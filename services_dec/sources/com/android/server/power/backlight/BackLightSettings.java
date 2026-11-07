package com.android.server.power.backlight;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.BrightnessSynchronizer;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.IntConsumer;
import java.util.function.IntSupplier;

/* JADX INFO: loaded from: classes.dex */
public class BackLightSettings extends ContentObserver {
    public static final String BACKLIGHT_FILE_CEILING = "/sys/class/backlight/vbl_7/brightness";
    public static final String BACKLIGHT_FILE_LEFT_REAR = "/sys/class/backlight/vbl_8/brightness";
    public static final String BACKLIGHT_FILE_MID_REAR = "/sys/class/backlight/vbl_10/brightness";
    public static final String BACKLIGHT_FILE_RIGHT_REAR = "/sys/class/backlight/vbl_9/brightness";
    public static final int BOOT_MIN_BRIGHTNESS = 1;
    private static final String DEFAULT_AUTOMATIC_ON = "default_automatic_on";
    public static final int DEFAULT_BRIGHTNESS = 127;
    private static final int DEFAULT_FIXED_DAY_BACKLIGHT = 70;
    private static final int DEFAULT_FIXED_NIGHT_BACKLIGHT = 3;
    private static final int DEFAULT_MAX_DAY_BACKLIGHT = 255;
    private static final int DEFAULT_MAX_NIGHT_BACKLIGHT = 70;
    private static final int DEFAULT_MIN_DAY_BACKLIGHT = 70;
    private static final int DEFAULT_MIN_NIGHT_BACKLIGHT = 3;
    private static final double DEFAULT_RATIO_DAY_BACKLIGHT = 0.725490196078d;
    private static final double DEFAULT_RATIO_NIGHT_BACKLIGHT = 0.274509803922d;
    private static final String ENABLE_BACKUP_IN_AUTOMATIC_MODE = "enable_backup_in_automatic_mode";
    private static final String ENABLE_DAYNIGHT_MODE = "enable_daynight_mode";
    private static final String FIXED_DAY_BACKLIGHT = "fixed_day_backlight";
    private static final String FIXED_NIGHT_BACKLIGHT = "fixed_night_backlight";
    public static final String HUD_FILE = "/sys/class/backlight/vbl_5/brightness";
    public static final String INSTRUMENT_BOARD_FILE = "/sys/class/backlight/vbl_1/brightness";
    public static final String MAIN_CONTROL_FILE = "/sys/class/backlight/vbl_2/brightness";
    private static final String MAX_DAY_BACKLIGHT = "max_day_backlight";
    private static final String MAX_NIGHT_BACKLIGHT = "max_night_backlight";
    private static final String MIN_DAY_BACKLIGHT = "min_day_backlight";
    private static final String MIN_NIGHT_BACKLIGHT = "min_night_backlight";
    public static final int NONE_SETTINGS_BRIGHTNESS = -1;
    public static final String PASSENGER_MEDIA_FILE = "/sys/class/backlight/vbl_3/brightness";
    private static final String RATIO_DAY_BACKLIGHT = "ratio_day_backlight";
    private static final String RATIO_NIGHT_BACKLIGHT = "ratio_night_backlight";
    private static final String TAG = "BackLightSettings";
    public static final String VEHICLE_CONTROL_FILE = "/sys/class/backlight/vbl_4/brightness";
    public static final String VPA_FILE = "/sys/class/backlight/vbl_6/brightness";
    public boolean enableBackupAutoLightness;
    private Context mContext;
    private HashMap<Integer, Float> mCurrentBrightnessOverrideMaps;
    private int mDayNightMode;
    private boolean mDayNightModeEnable;
    private Uri mDayNightModeUri;
    private boolean mDefaultAutomaticOn;
    private HashMap<Integer, String> mDisplayIdBacklightMap;
    private boolean mEnableBackupInAutomaticMode;
    private Map<String, String> mFileToSettingsMap;
    private int mFixedBackLight;
    private int mFixedDayBackLight;
    private int mFixedNightBackLight;
    private int mHudSetting;
    private int mInstrumentBoardSetting;
    private Object mLock;
    private int mMainControlSetting;
    private int mMaxBackLight;
    private int mMaxDayBackLight;
    private int mMaxNightBackLight;
    private int mMinBackLight;
    private int mMinDayBackLight;
    private int mMinNightBackLight;
    private int mPassengerMediaSetting;
    private double mRatioBackLight;
    private double mRatioDayBackLight;
    private double mRatioNightBackLight;
    private ContentResolver mResolver;
    private int mScreenBrightnessMode;
    private float mScreenBrightnessSettingDefault;
    public Map<String, String> mSettingBackUpMap;
    private Map<String, String> mSettingFileMap;
    private int mVehicleControlSetting;
    private int mVpaSetting;

    public BackLightSettings(Context context, Handler handler, Object lock, BackLightConfig backLightConfig) {
        super(handler);
        this.mSettingFileMap = new HashMap();
        this.mSettingBackUpMap = new HashMap();
        this.enableBackupAutoLightness = false;
        this.mInstrumentBoardSetting = -1;
        this.mMainControlSetting = -1;
        this.mPassengerMediaSetting = -1;
        this.mVehicleControlSetting = -1;
        this.mHudSetting = -1;
        this.mVpaSetting = -1;
        this.mMinDayBackLight = 70;
        this.mMaxDayBackLight = 255;
        this.mMinNightBackLight = 3;
        this.mMaxNightBackLight = 70;
        this.mMinBackLight = 70;
        this.mMaxBackLight = 255;
        this.mFixedDayBackLight = 70;
        this.mFixedNightBackLight = 3;
        this.mFixedBackLight = 70;
        this.mRatioDayBackLight = DEFAULT_RATIO_DAY_BACKLIGHT;
        this.mRatioNightBackLight = DEFAULT_RATIO_NIGHT_BACKLIGHT;
        this.mRatioBackLight = DEFAULT_RATIO_DAY_BACKLIGHT;
        this.mDayNightMode = 0;
        this.mDayNightModeEnable = false;
        this.mEnableBackupInAutomaticMode = true;
        this.mDefaultAutomaticOn = false;
        this.mScreenBrightnessMode = 1;
        this.mDisplayIdBacklightMap = new HashMap<>();
        this.mCurrentBrightnessOverrideMaps = new HashMap<>();
        this.mFileToSettingsMap = new HashMap();
        this.mDisplayIdBacklightMap = backLightConfig.parseDisplayConfig();
        this.mContext = context;
        this.mLock = lock;
        this.mSettingFileMap.put("instrument_board_brightness", INSTRUMENT_BOARD_FILE);
        this.mSettingFileMap.put("main_control_brightness", MAIN_CONTROL_FILE);
        this.mSettingFileMap.put("passenger_media_brightness", PASSENGER_MEDIA_FILE);
        this.mSettingFileMap.put("vehicle_control_brightness", VEHICLE_CONTROL_FILE);
        this.mSettingFileMap.put("hud_brightness", HUD_FILE);
        this.mSettingFileMap.put("vpa_brightness", VPA_FILE);
        this.mFileToSettingsMap.put(INSTRUMENT_BOARD_FILE, "instrument_board_brightness");
        this.mFileToSettingsMap.put(MAIN_CONTROL_FILE, "main_control_brightness");
        this.mFileToSettingsMap.put(PASSENGER_MEDIA_FILE, "passenger_media_brightness");
        this.mFileToSettingsMap.put(VEHICLE_CONTROL_FILE, "vehicle_control_brightness");
        this.mFileToSettingsMap.put(HUD_FILE, "hud_brightness");
        this.mFileToSettingsMap.put(VPA_FILE, "vpa_brightness");
        this.mSettingBackUpMap.put("instrument_board_brightness", "instrument_board_brightness_backup");
        this.mSettingBackUpMap.put("main_control_brightness", "main_control_brightness_backup");
        this.mSettingBackUpMap.put("passenger_media_brightness", "passenger_media_brightness_backup");
        this.mSettingBackUpMap.put("vehicle_control_brightness", "vehicle_control_brightness_backup");
        this.mSettingBackUpMap.put("hud_brightness", "hud_brightness_backup");
        this.mSettingBackUpMap.put("vpa_brightness", "vpa_brightness_backup");
        this.mDayNightModeUri = Settings.System.getUriFor("brightness_daynight_mode");
    }

    public void start(ContentResolver resolver, BackLightConfig backLightConfig) {
        this.mResolver = resolver;
        resolver.registerContentObserver(Settings.System.getUriFor("instrument_board_brightness"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("main_control_brightness"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("passenger_media_brightness"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("vehicle_control_brightness"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("hud_brightness"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("vpa_brightness"), false, this, -1);
        this.mResolver.registerContentObserver(Settings.System.getUriFor("screen_brightness_mode"), false, this, -1);
        this.mEnableBackupInAutomaticMode = ((Boolean) backLightConfig.getValue(ENABLE_BACKUP_IN_AUTOMATIC_MODE, true)).booleanValue();
        this.mDefaultAutomaticOn = ((Boolean) backLightConfig.getValue(DEFAULT_AUTOMATIC_ON, false)).booleanValue();
        this.mDayNightModeEnable = ((Boolean) backLightConfig.getValue(ENABLE_DAYNIGHT_MODE, false)).booleanValue();
        Slog.i(TAG, "start mEnableBackupInAutomaticMode: " + this.mEnableBackupInAutomaticMode + ", mDefaultAutomaticOn: " + this.mDefaultAutomaticOn + ", mDayNightModeEnable: " + this.mDayNightModeEnable);
        if (this.mDayNightModeEnable) {
            this.mMinDayBackLight = ((Integer) backLightConfig.getValue(MIN_DAY_BACKLIGHT, 70)).intValue();
            this.mMaxDayBackLight = ((Integer) backLightConfig.getValue(MAX_DAY_BACKLIGHT, 255)).intValue();
            this.mMinNightBackLight = ((Integer) backLightConfig.getValue(MIN_NIGHT_BACKLIGHT, 3)).intValue();
            this.mMaxNightBackLight = ((Integer) backLightConfig.getValue(MAX_NIGHT_BACKLIGHT, 70)).intValue();
            this.mFixedDayBackLight = ((Integer) backLightConfig.getValue(FIXED_DAY_BACKLIGHT, 70)).intValue();
            this.mFixedNightBackLight = ((Integer) backLightConfig.getValue(FIXED_NIGHT_BACKLIGHT, 3)).intValue();
            this.mRatioDayBackLight = ((Double) backLightConfig.getValue(RATIO_DAY_BACKLIGHT, Double.valueOf(DEFAULT_RATIO_DAY_BACKLIGHT))).doubleValue();
            this.mRatioNightBackLight = ((Double) backLightConfig.getValue(RATIO_NIGHT_BACKLIGHT, Double.valueOf(DEFAULT_RATIO_NIGHT_BACKLIGHT))).doubleValue();
            this.mMinBackLight = this.mMinDayBackLight;
            this.mMaxBackLight = this.mMaxDayBackLight;
            this.mFixedBackLight = this.mFixedDayBackLight;
            this.mRatioBackLight = this.mRatioDayBackLight;
            this.mResolver.registerContentObserver(this.mDayNightModeUri, false, this, -1);
        }
        checkDayNightMode(true, new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$xmW1U79XZE5-8crZUyIdqHpWouQ
            @Override // java.util.function.IntSupplier
            public final int getAsInt() {
                return this.f$0.lambda$start$0$BackLightSettings();
            }
        }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$1mIBk-_klJcCdywNaHrAi4im1uQ
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                this.f$0.lambda$start$1$BackLightSettings(i);
            }
        });
        update(true);
    }

    public /* synthetic */ int lambda$start$0$BackLightSettings() {
        return this.mDayNightMode;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange, Uri uri) {
        if (uri.equals(this.mDayNightModeUri)) {
            checkDayNightMode(false, new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$bwGB-5rLAaBfBYvdIL6QNVwbGHc
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$onChange$2$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$1WtRv2A3Vvx4L3j2UROdYEzFtaA
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$onChange$3$BackLightSettings(i);
                }
            });
        } else {
            update(false);
        }
    }

    public /* synthetic */ int lambda$onChange$2$BackLightSettings() {
        return this.mDayNightMode;
    }

    public void update() {
        update(false);
    }

    public void update(boolean boot) {
        synchronized (this.mLock) {
            checkScreenBrightnessMode(boot, new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$GqI09bx1JQURwxteCi6r4nS6RQ4
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$4$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$R6zVltbU6uF-9Hj9A7KpViOgwbk
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$5$BackLightSettings(i);
                }
            });
            checkSetting(boot, "instrument_board_brightness", new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$Qj-o64Yj1qYNPRuj5-PtZ2OAS3o
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$6$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$RR0cBtMI4GqCcYAz2jTrcAPIQME
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$7$BackLightSettings(i);
                }
            });
            checkSetting(boot, "main_control_brightness", new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$kMAxqsGFkght8B3ZcBsXAqV0AN0
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$8$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$J3ol9NzOnvmJrnQtG_uia8BfxHo
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$9$BackLightSettings(i);
                }
            });
            checkSetting(boot, "passenger_media_brightness", new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$qPiu3abtggfbB37xOHj4Tz8kXrQ
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$10$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$OJKoRNgjea4c0Ip8eIQNMdWlbsU
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$11$BackLightSettings(i);
                }
            });
            checkSetting(boot, "vehicle_control_brightness", new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$7ZVwddT3DKhVzcNU4zgLfN6zQUo
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$12$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$sx2hE8QW9izvpy0JA7jIGz-CZKI
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$13$BackLightSettings(i);
                }
            });
            checkSetting(boot, "hud_brightness", new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$pzEgwVSHZ_h-vvB2XMnaaj7AG9w
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$14$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$R3Sa0-z8lfv0H7NbgFRrWtZ34Mw
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$15$BackLightSettings(i);
                }
            });
            checkSetting(boot, "vpa_brightness", new IntSupplier() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$bUcMU-mrGSMgnlMtnsnNXwbdkUM
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return this.f$0.lambda$update$16$BackLightSettings();
                }
            }, new IntConsumer() { // from class: com.android.server.power.backlight.-$$Lambda$BackLightSettings$kU1Fa5IYok3VBbHx74WCelhJea8
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.lambda$update$17$BackLightSettings(i);
                }
            });
        }
    }

    public /* synthetic */ int lambda$update$4$BackLightSettings() {
        return this.mScreenBrightnessMode;
    }

    public /* synthetic */ void lambda$update$5$BackLightSettings(int setting) {
        this.mScreenBrightnessMode = setting;
    }

    public /* synthetic */ int lambda$update$6$BackLightSettings() {
        return this.mInstrumentBoardSetting;
    }

    public /* synthetic */ void lambda$update$7$BackLightSettings(int setting) {
        this.mInstrumentBoardSetting = setting;
    }

    public /* synthetic */ int lambda$update$8$BackLightSettings() {
        return this.mMainControlSetting;
    }

    public /* synthetic */ void lambda$update$9$BackLightSettings(int setting) {
        this.mMainControlSetting = setting;
    }

    public /* synthetic */ int lambda$update$10$BackLightSettings() {
        return this.mPassengerMediaSetting;
    }

    public /* synthetic */ void lambda$update$11$BackLightSettings(int setting) {
        this.mPassengerMediaSetting = setting;
    }

    public /* synthetic */ int lambda$update$12$BackLightSettings() {
        return this.mVehicleControlSetting;
    }

    public /* synthetic */ void lambda$update$13$BackLightSettings(int setting) {
        this.mVehicleControlSetting = setting;
    }

    public /* synthetic */ int lambda$update$14$BackLightSettings() {
        return this.mHudSetting;
    }

    public /* synthetic */ void lambda$update$15$BackLightSettings(int setting) {
        this.mHudSetting = setting;
    }

    public /* synthetic */ int lambda$update$16$BackLightSettings() {
        return this.mVpaSetting;
    }

    public /* synthetic */ void lambda$update$17$BackLightSettings(int setting) {
        this.mVpaSetting = setting;
    }

    private void checkDayNightMode(boolean boot, IntSupplier supplier, IntConsumer consumer) {
        if (!this.mDayNightModeEnable) {
            return;
        }
        int tempValue = Settings.System.getIntForUser(this.mResolver, "brightness_daynight_mode", 0, 0);
        int originValue = supplier.getAsInt();
        Slog.i(TAG, "checkDayNightMode boot: " + boot + ", tempValue: " + tempValue + ", originValue: " + originValue);
        if (boot) {
            lambda$start$1$BackLightSettings(tempValue);
        } else if (originValue != tempValue) {
            consumer.accept(tempValue);
        }
    }

    private void checkScreenBrightnessMode(boolean boot, IntSupplier supplier, IntConsumer consumer) {
        int tempValue = Settings.System.getIntForUser(this.mResolver, "screen_brightness_mode", 0, 0);
        int originValue = supplier.getAsInt();
        Slog.i(TAG, "checkScreenBrightnessMode boot: " + boot + ", screen brightness mode from settings: " + tempValue + ", originValue: " + originValue);
        if (shouldEnableAutomaticWhenBoot(boot, tempValue)) {
            Slog.i(TAG, "when boot, if screen brightness mode is not automatic, modify it");
            tempValue = 1;
            Settings.System.putIntForUser(this.mResolver, "screen_brightness_mode", 1, 0);
        }
        if (originValue != tempValue) {
            consumer.accept(tempValue);
        }
    }

    private boolean shouldEnableAutomaticWhenBoot(boolean boot, int tempValue) {
        return boot && this.mDefaultAutomaticOn && tempValue != 1;
    }

    private void checkSetting(boolean boot, String setting, IntSupplier supplier, IntConsumer consumer) {
        int tempValue = Settings.System.getIntForUser(this.mResolver, setting, -1, 0);
        if (boot && tempValue < 1) {
            if (tempValue == -1) {
                tempValue = DEFAULT_BRIGHTNESS;
            } else {
                tempValue = 1;
            }
            setBackUpBrightnessValue(boot, this.mSettingBackUpMap.get(setting), tempValue, 0);
            Settings.System.putIntForUser(this.mResolver, setting, tempValue, 0);
        }
        int originValue = supplier.getAsInt();
        if (originValue != tempValue) {
            consumer.accept(tempValue);
            writeToPath(this.mSettingFileMap.get(setting), tempValue);
            if (tempValue > 0) {
                setBackUpBrightnessValue(boot, this.mSettingBackUpMap.get(setting), tempValue, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setDayNightMode, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$start$1$BackLightSettings(int setting) {
        this.mDayNightMode = setting;
        if (setting == 0) {
            this.mMinBackLight = this.mMinDayBackLight;
            this.mMaxBackLight = this.mMaxDayBackLight;
            this.mFixedBackLight = this.mFixedDayBackLight;
            this.mRatioBackLight = this.mRatioDayBackLight;
        } else if (setting == 1) {
            this.mMinBackLight = this.mMinNightBackLight;
            this.mMaxBackLight = this.mMaxNightBackLight;
            this.mFixedBackLight = this.mFixedNightBackLight;
            this.mRatioBackLight = this.mRatioNightBackLight;
        }
        resetBrightnessSettings("instrument_board_brightness");
        resetBrightnessSettings("main_control_brightness");
        resetBrightnessSettings("passenger_media_brightness");
        resetBrightnessSettings("vehicle_control_brightness");
        resetBrightnessSettings("hud_brightness");
        resetBrightnessSettings("vpa_brightness");
    }

    private int adjustDayNight(int uiValue) {
        if (uiValue == 0) {
            return 0;
        }
        double adjustBackLight = ((double) this.mFixedBackLight) + (this.mRatioBackLight * ((double) uiValue));
        int brightnessSettings = (int) Math.round(adjustBackLight);
        if (brightnessSettings > this.mMaxBackLight) {
            brightnessSettings = this.mMaxBackLight;
        }
        if (brightnessSettings < this.mMinBackLight) {
            return this.mMinBackLight;
        }
        return brightnessSettings;
    }

    public void resetBrightnessSettings(String setting) {
        int value = Settings.System.getIntForUser(this.mResolver, setting, -1, 0);
        if (value >= 0) {
            Slog.i(TAG, "resetBrightnessSettings for: " + setting + ", value: " + value);
            writeToPath(this.mSettingFileMap.get(setting), value);
        }
    }

    private void writeToPath(String path, int value) {
        if (path == null) {
            return;
        }
        if (this.mDayNightModeEnable) {
            value = adjustDayNight(value);
        }
        Slog.i(TAG, "try write to file " + path + " and value is " + value);
        try {
            BufferedWriter bufWriter = new BufferedWriter(new FileWriter(path));
            try {
                bufWriter.write(String.format(Locale.ENGLISH, "%d\n", Integer.valueOf(value)));
                Slog.d(TAG, "write to file " + path);
                bufWriter.close();
            } catch (Throwable th) {
                try {
                    bufWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Slog.e(TAG, "can't write to " + path + " " + e.toString());
        }
    }

    public void setBrightnessSettings(String setting, int value) {
        writeToPath(this.mSettingFileMap.get(setting), value);
    }

    public boolean shouldBackupInAutomaticMode(boolean boot) {
        if (boot) {
            return true;
        }
        boolean isAutomaticMode = this.mScreenBrightnessMode == 1;
        if (!isAutomaticMode) {
            return true;
        }
        return this.mEnableBackupInAutomaticMode;
    }

    public boolean setBackUpBrightnessValue(String settings, int value, int userHandle) {
        return setBackUpBrightnessValue(false, settings, value, userHandle);
    }

    public boolean setBackUpBrightnessValue(boolean boot, String settings, int vaule, int userHandle) {
        if (vaule <= 0) {
            Slog.w(TAG, "setBackUpBrightnessValue ignore value: " + vaule + "boot: " + boot + ", for " + settings);
            return false;
        }
        if (shouldBackupInAutomaticMode(boot)) {
            return Settings.System.putIntForUser(this.mResolver, settings, vaule, userHandle);
        }
        Slog.w(TAG, "screenBrightnessMode is automatic, do not backup value: " + vaule + ", boot: " + boot + ", for " + settings);
        return false;
    }

    public int getBackUpBrightnessValue(String settings, int userHandle) {
        int backupValue = Settings.System.getIntForUser(this.mResolver, settings, 1, userHandle);
        if (backupValue <= 0) {
            Slog.w(TAG, "getBackUpBrightnessValue ignore value: " + backupValue + ", for " + settings);
            return 1;
        }
        return backupValue;
    }

    public void setOverrideBrightnessToPath(int displayId, float overrideValue) {
        boolean enterOverride;
        int brightnessInt;
        String backlightPath = this.mDisplayIdBacklightMap.get(Integer.valueOf(displayId));
        if (backlightPath == null) {
            Slog.w(TAG, "can't find backlight device for displayId: " + displayId);
            return;
        }
        String settingsName = this.mFileToSettingsMap.get(backlightPath);
        if (settingsName == null) {
            Slog.w(TAG, "can't find settings name for backlight device: " + backlightPath);
            return;
        }
        float currentValue = this.mCurrentBrightnessOverrideMaps.getOrDefault(Integer.valueOf(displayId), Float.valueOf(Float.NaN)).floatValue();
        if (BrightnessSynchronizer.floatEquals(currentValue, overrideValue)) {
            return;
        }
        if (Float.isNaN(overrideValue)) {
            enterOverride = false;
            brightnessInt = Settings.System.getIntForUser(this.mResolver, settingsName, 1, 0);
        } else {
            enterOverride = true;
            brightnessInt = BrightnessSynchronizer.brightnessFloatToInt(this.mContext, overrideValue);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(enterOverride ? "in override mode" : "exit override mode");
        sb.append(", write brightness to file ");
        sb.append(backlightPath);
        sb.append(", for displayId: ");
        sb.append(displayId);
        sb.append(", float value is: ");
        sb.append(overrideValue);
        sb.append(", int value is: ");
        sb.append(brightnessInt);
        Slog.i(TAG, sb.toString());
        try {
            BufferedWriter bufWriter = new BufferedWriter(new FileWriter(backlightPath));
            try {
                bufWriter.write(String.format(Locale.ENGLISH, "%d\n", Integer.valueOf(brightnessInt)));
                this.mCurrentBrightnessOverrideMaps.put(Integer.valueOf(displayId), Float.valueOf(overrideValue));
                bufWriter.close();
            } catch (Throwable th) {
                try {
                    bufWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Slog.e(TAG, "can't write override brightness to " + backlightPath + " " + e.toString());
        }
    }

    public void dump(PrintWriter pw) {
        pw.println("  Settings Mega brightness:");
        pw.print("    ");
        pw.print("instrument_board_brightness");
        pw.print("=");
        pw.println(this.mInstrumentBoardSetting);
        pw.print("    ");
        pw.print("main_control_brightness");
        pw.print("=");
        pw.println(this.mMainControlSetting);
        pw.print("    ");
        pw.print("passenger_media_brightness");
        pw.print("=");
        pw.println(this.mPassengerMediaSetting);
        pw.print("    ");
        pw.print("vehicle_control_brightness");
        pw.print("=");
        pw.println(this.mVehicleControlSetting);
        pw.print("    ");
        pw.print("hud_brightness");
        pw.print("=");
        pw.println(this.mHudSetting);
        pw.print("    ");
        pw.print("vpa_brightness");
        pw.print("=");
        pw.println(this.mVpaSetting);
    }
}
