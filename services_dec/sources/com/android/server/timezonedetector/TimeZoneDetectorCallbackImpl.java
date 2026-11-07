package com.android.server.timezonedetector;

import android.app.AlarmManager;
import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.SystemProperties;
import android.provider.Settings;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeZoneDetectorCallbackImpl implements TimeZoneDetectorStrategyImpl.Callback {
    private static final String TIMEZONE_PROPERTY = "persist.sys.timezone";
    private final Context mContext;
    private final ContentResolver mCr;

    TimeZoneDetectorCallbackImpl(Context context) {
        this.mContext = context;
        this.mCr = context.getContentResolver();
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategyImpl.Callback
    public boolean isAutoTimeZoneDetectionEnabled() {
        return isAutoTimeZoneDetectionSupported() && Settings.Global.getInt(this.mCr, "auto_time_zone", 1) > 0;
    }

    private boolean isAutoTimeZoneDetectionSupported() {
        return deviceHasTelephonyNetwork();
    }

    private boolean deviceHasTelephonyNetwork() {
        return ((ConnectivityManager) this.mContext.getSystemService(ConnectivityManager.class)).isNetworkSupported(0);
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategyImpl.Callback
    public boolean isDeviceTimeZoneInitialized() {
        String timeZoneId = getDeviceTimeZone();
        return (timeZoneId == null || timeZoneId.length() <= 0 || timeZoneId.equals("GMT")) ? false : true;
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategyImpl.Callback
    public String getDeviceTimeZone() {
        return SystemProperties.get(TIMEZONE_PROPERTY);
    }

    @Override // com.android.server.timezonedetector.TimeZoneDetectorStrategyImpl.Callback
    public void setDeviceTimeZone(String zoneId) {
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService(AlarmManager.class);
        alarmManager.setTimeZone(zoneId);
    }
}
