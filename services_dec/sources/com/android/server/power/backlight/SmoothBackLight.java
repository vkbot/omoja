package com.android.server.power.backlight;

import android.content.ContentResolver;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SmoothBackLight extends Handler {
    private static final int MIN_STEP = 5;
    private static final int SET_SMOOTH_BACKLIGHT = 1;
    private BackLightSettings mLightSettings;
    private int mMaxSmoothCount;
    private String mPath;
    private ContentResolver mResolver;
    private float mScreenBrightnessSettingDefault;
    private final ArrayList<Integer> mSmoothList = new ArrayList<>();

    public SmoothBackLight(String path, int maxSmoothCount, ContentResolver resolver, BackLightSettings backLightSettings, float screenBrightnessSettingDefault) {
        this.mMaxSmoothCount = 1;
        this.mPath = path;
        this.mMaxSmoothCount = maxSmoothCount;
        this.mResolver = resolver;
        this.mLightSettings = backLightSettings;
        this.mScreenBrightnessSettingDefault = screenBrightnessSettingDefault;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        if (msg.what == 1) {
            setSmoothBacklight();
        }
    }

    public void updateMaxSmoothCount(int count) {
        this.mMaxSmoothCount = count;
    }

    private void setSmoothBacklight() {
        synchronized (this.mSmoothList) {
            if (this.mSmoothList.size() == 0) {
                return;
            }
            int backlight = this.mSmoothList.get(0).intValue();
            this.mSmoothList.remove(0);
            removeMessages(1);
            sendEmptyMessageDelayed(1, 200L);
            setBackLightSettings(backlight);
        }
    }

    private void fillSmoothList(int current, int target) {
        synchronized (this.mSmoothList) {
            this.mSmoothList.clear();
            if (target == current) {
                return;
            }
            int smoothCount = (Math.abs(target - current) / 5) + 1;
            if (smoothCount > this.mMaxSmoothCount) {
                smoothCount = this.mMaxSmoothCount;
            }
            for (int i = 1; i < smoothCount + 1; i++) {
                this.mSmoothList.add(Integer.valueOf((((target - current) * i) / smoothCount) + current));
            }
        }
    }

    private void setBackLightSettings(int backLight) {
        int currentValue = Settings.System.getIntForUser(this.mResolver, this.mPath, (int) this.mScreenBrightnessSettingDefault, 0);
        if (currentValue == 0 && this.mLightSettings.enableBackupAutoLightness) {
            String backupSettings = this.mLightSettings.mSettingBackUpMap.get(this.mPath);
            this.mLightSettings.setBackUpBrightnessValue(backupSettings, backLight, 0);
        } else {
            Settings.System.putIntForUser(this.mResolver, this.mPath, backLight, 0);
        }
    }

    public void setBackLight(int backLight) {
        int currentValue = Settings.System.getIntForUser(this.mResolver, this.mPath, (int) this.mScreenBrightnessSettingDefault, 0);
        if (currentValue == 0 && this.mLightSettings.enableBackupAutoLightness) {
            String backupSettings = this.mLightSettings.mSettingBackUpMap.get(this.mPath);
            this.mLightSettings.setBackUpBrightnessValue(backupSettings, backLight, 0);
        } else {
            fillSmoothList(currentValue, backLight);
            setSmoothBacklight();
        }
    }
}
