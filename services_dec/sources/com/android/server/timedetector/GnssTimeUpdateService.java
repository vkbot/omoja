package com.android.server.timedetector;

import android.app.AlarmManager;
import android.app.timedetector.GnssTimeSuggestion;
import android.app.timedetector.TimeDetector;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationManagerInternal;
import android.location.LocationRequest;
import android.location.LocationTime;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.TimestampedValue;
import android.provider.Settings;
import android.util.Log;
import com.android.internal.util.DumpUtils;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.usage.AppStandbyController;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class GnssTimeUpdateService extends Binder {
    private static final String ATTRIBUTION_TAG = "GnssTimeUpdateService";
    private static final int EVENT_AUTO_TIME_ENABLED = 1;
    private static final int EVENT_POLL_GNSS_TIME = 2;
    private static final String TAG = "GnssTimeUpdateService";
    private static final String timeZoneDefault = "Asia/Shanghai";
    private static final String timeZoneProp = "persist.sys.timezone";
    private AlarmManager.OnAlarmListener mAlarmListener;
    private final AlarmManager mAlarmManager;
    private AutoTimeSettingObserver mAutoTimeSettingObserver;
    private final Context mContext;
    private Handler mHandler;
    private TimestampedValue<Long> mLastSuggestedGnssTime;
    private LocationListener mLocationListener;
    private final LocationManager mLocationManager;
    private final LocationManagerInternal mLocationManagerInternal;
    private final TimeDetector mTimeDetector;
    private static final boolean D = Log.isLoggable("GnssTimeUpdateService", 3);
    private static final Duration GNSS_TIME_UPDATE_ALARM_INTERVAL = Duration.ofMinutes(5);

    public GnssTimeUpdateService(Context context) {
        Log.d("GnssTimeUpdateService", "GnssTimeUpdateService ");
        Context contextCreateAttributionContext = context.createAttributionContext("GnssTimeUpdateService");
        this.mContext = contextCreateAttributionContext;
        this.mTimeDetector = (TimeDetector) contextCreateAttributionContext.getSystemService(TimeDetector.class);
        this.mLocationManager = (LocationManager) this.mContext.getSystemService(LocationManager.class);
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService(AlarmManager.class);
        this.mLocationManagerInternal = (LocationManagerInternal) LocalServices.getService(LocationManagerInternal.class);
    }

    public void systemRunning() {
        Log.d("GnssTimeUpdateService", "systemRunning ");
        HandlerThread thread = new HandlerThread("GnssTimeUpdateService");
        thread.start();
        this.mHandler = new GnssTimeUpdateHandler(thread.getLooper());
        if (!isAutomaticTimeEnabled()) {
            AutoTimeSettingObserver autoTimeSettingObserver = new AutoTimeSettingObserver(this.mContext, this.mHandler, 1);
            this.mAutoTimeSettingObserver = autoTimeSettingObserver;
            autoTimeSettingObserver.observe();
        } else {
            Message message = this.mHandler.obtainMessage(2);
            this.mHandler.sendMessageDelayed(message, 5000L);
        }
    }

    private class GnssTimeUpdateHandler extends Handler {
        GnssTimeUpdateHandler(Looper l) {
            super(l);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Log.d("GnssTimeUpdateService", "handleMessage msg: " + msg.what);
            int i = msg.what;
            if (i == 1 || i == 2) {
                GnssTimeUpdateService.this.requestGnssTimeUpdates();
            }
        }
    }

    private class AutoTimeSettingObserver extends ContentObserver {
        private final Context mContext;
        private final Handler mHandler;
        private final int mMsg;

        AutoTimeSettingObserver(Context context, Handler handler, int msg) {
            super(handler);
            this.mContext = context;
            this.mHandler = handler;
            this.mMsg = msg;
        }

        void observe() {
            ContentResolver resolver = this.mContext.getContentResolver();
            resolver.registerContentObserver(Settings.Global.getUriFor("auto_time"), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            if (GnssTimeUpdateService.this.isAutomaticTimeEnabled()) {
                this.mHandler.obtainMessage(this.mMsg).sendToTarget();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutomaticTimeEnabled() {
        ContentResolver resolver = this.mContext.getContentResolver();
        return Settings.Global.getInt(resolver, "auto_time", 0) != 0;
    }

    void requestGnssTimeUpdates() {
        if (D) {
            Log.d("GnssTimeUpdateService", "requestGnssTimeUpdates()");
        }
        this.mLocationListener = new LocationListener() { // from class: com.android.server.timedetector.GnssTimeUpdateService.1
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (GnssTimeUpdateService.D) {
                    Log.d("GnssTimeUpdateService", "onLocationChanged()");
                }
                long currentNanos = SystemClock.elapsedRealtimeNanos();
                long deltaMs = TimeUnit.NANOSECONDS.toMillis(location.getElapsedRealtimeAgeNanos(currentNanos));
                long time = GnssTimeUpdateService.this.covertTimeMillisByTimeZone(location.getTime() + deltaMs);
                Log.d("GnssTimeUpdateService", "onLocationChanged timestamp: " + location.getTime() + " time : " + time);
                System.currentTimeMillis();
                LocationTime locationTime = new LocationTime(time, currentNanos);
                ContentResolver resolver = GnssTimeUpdateService.this.mContext.getContentResolver();
                int powerStatus = Settings.System.getInt(resolver, "mega_android_power_status", -1);
                Log.w("GnssTimeUpdateService", "current power status is " + powerStatus);
                if (powerStatus == 1) {
                    Log.d("GnssTimeUpdateService", "suggestGnssTime : " + location.getTime());
                    GnssTimeUpdateService.this.suggestGnssTime(locationTime);
                }
                if (GnssTimeUpdateService.this.mLocationListener != null) {
                    GnssTimeUpdateService.this.mLocationManager.removeUpdates(GnssTimeUpdateService.this.mLocationListener);
                    GnssTimeUpdateService.this.mLocationListener = null;
                }
                if (GnssTimeUpdateService.this.mAlarmListener != null) {
                    GnssTimeUpdateService.this.mAlarmManager.cancel(GnssTimeUpdateService.this.mAlarmListener);
                    GnssTimeUpdateService.this.mAlarmListener = null;
                }
                GnssTimeUpdateService.this.mAlarmListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.timedetector.GnssTimeUpdateService.1.1
                    @Override // android.app.AlarmManager.OnAlarmListener
                    public void onAlarm() {
                        if (GnssTimeUpdateService.D) {
                            Log.d("GnssTimeUpdateService", "onAlarm()");
                        }
                        GnssTimeUpdateService.this.mAlarmListener = null;
                        GnssTimeUpdateService.this.requestGnssTimeUpdates();
                    }
                };
                long next = SystemClock.elapsedRealtime() + GnssTimeUpdateService.GNSS_TIME_UPDATE_ALARM_INTERVAL.toMillis();
                GnssTimeUpdateService.this.mAlarmManager.set(2, next, "GnssTimeUpdateService", GnssTimeUpdateService.this.mAlarmListener, FgThread.getHandler());
            }
        };
        if (!this.mLocationManager.isProviderEnabled("gps")) {
            Log.w("GnssTimeUpdateService", "GPS_PROVIDER not enabled.");
            Message message = this.mHandler.obtainMessage(2);
            this.mHandler.sendMessageDelayed(message, 5000L);
        } else {
            LocationRequest request = LocationRequest.createFromDeprecatedProvider("gps", 1000L, 0.0f, false);
            request.setLocationSettingsIgnored(true);
            this.mLocationManager.requestLocationUpdates(request, FgThread.getExecutor(), this.mLocationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void suggestGnssTime(LocationTime locationTime) {
        if (D) {
            Log.d("GnssTimeUpdateService", "suggestGnssTime()");
        }
        long gnssTime = locationTime.getTime();
        long elapsedRealtimeMs = locationTime.getElapsedRealtimeNanos() / 1000000;
        TimestampedValue<Long> timeSignal = new TimestampedValue<>(elapsedRealtimeMs, Long.valueOf(gnssTime));
        this.mLastSuggestedGnssTime = timeSignal;
        GnssTimeSuggestion timeSuggestion = new GnssTimeSuggestion(timeSignal);
        this.mTimeDetector.suggestGnssTime(timeSuggestion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long covertTimeMillisByTimeZone(long time) {
        long timestamp = time;
        String zone = SystemProperties.get(timeZoneProp, timeZoneDefault);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar cal = Calendar.getInstance();
        int zoneOffset = cal.get(15);
        int dstOffset = cal.get(16);
        dateFormat.setTimeZone(TimeZone.getTimeZone(zone));
        Date date = new Date(((long) zoneOffset) + time + ((long) dstOffset));
        try {
            String dateTime = dateFormat.format(date);
            Date date2 = dateFormat.parse(dateTime);
            Log.d("GnssTimeUpdateService", "dateTime : " + dateTime + " zone id: " + TimeZone.getTimeZone(zone).getID());
            timestamp = date2.getTime();
        } catch (Exception e) {
            e.printStackTrace();
        }
        TimeZone tz = cal.getTimeZone();
        boolean isDST = tz.inDaylightTime(cal.getTime());
        if (isDST) {
            Log.d("GnssTimeUpdateService", "isDST is true");
            return timestamp - AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT;
        }
        return timestamp;
    }

    @Override // android.os.Binder
    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, "GnssTimeUpdateService", pw)) {
            pw.println("mLastSuggestedGnssTime: " + this.mLastSuggestedGnssTime);
            pw.print("state: ");
            if (this.mLocationListener != null) {
                pw.println("time updates enabled");
            } else {
                pw.println("alarm enabled");
            }
        }
    }
}
