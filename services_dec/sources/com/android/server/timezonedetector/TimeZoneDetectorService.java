package com.android.server.timezonedetector;

import android.app.timezonedetector.ITimeZoneDetectorService;
import android.app.timezonedetector.ManualTimeZoneSuggestion;
import android.app.timezonedetector.TelephonyTimeZoneSuggestion;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.provider.Settings;
import com.android.internal.util.DumpUtils;
import com.android.server.FgThread;
import com.android.server.SystemService;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeZoneDetectorService extends ITimeZoneDetectorService.Stub {
    private static final String TAG = "TimeZoneDetectorService";
    private final Context mContext;
    private final Handler mHandler;
    private final TimeZoneDetectorStrategy mTimeZoneDetectorStrategy;

    public static class Lifecycle extends SystemService {
        public Lifecycle(Context context) {
            super(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("time_zone_detector", TimeZoneDetectorService.create(getContext()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TimeZoneDetectorService create(Context context) {
        TimeZoneDetectorStrategy timeZoneDetectorStrategy = TimeZoneDetectorStrategyImpl.create(context);
        Handler handler = FgThread.getHandler();
        final TimeZoneDetectorService service = new TimeZoneDetectorService(context, handler, timeZoneDetectorStrategy);
        ContentResolver contentResolver = context.getContentResolver();
        contentResolver.registerContentObserver(Settings.Global.getUriFor("auto_time_zone"), true, new ContentObserver(handler) { // from class: com.android.server.timezonedetector.TimeZoneDetectorService.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                service.handleAutoTimeZoneDetectionChanged();
            }
        });
        return service;
    }

    public TimeZoneDetectorService(Context context, Handler handler, TimeZoneDetectorStrategy timeZoneDetectorStrategy) {
        Objects.requireNonNull(context);
        this.mContext = context;
        Objects.requireNonNull(handler);
        this.mHandler = handler;
        Objects.requireNonNull(timeZoneDetectorStrategy);
        this.mTimeZoneDetectorStrategy = timeZoneDetectorStrategy;
    }

    public void suggestManualTimeZone(final ManualTimeZoneSuggestion timeZoneSuggestion) {
        enforceSuggestManualTimeZonePermission();
        Objects.requireNonNull(timeZoneSuggestion);
        this.mHandler.post(new Runnable() { // from class: com.android.server.timezonedetector.-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$suggestManualTimeZone$0$TimeZoneDetectorService(timeZoneSuggestion);
            }
        });
    }

    public /* synthetic */ void lambda$suggestManualTimeZone$0$TimeZoneDetectorService(ManualTimeZoneSuggestion timeZoneSuggestion) {
        this.mTimeZoneDetectorStrategy.suggestManualTimeZone(timeZoneSuggestion);
    }

    public void suggestTelephonyTimeZone(final TelephonyTimeZoneSuggestion timeZoneSuggestion) {
        enforceSuggestTelephonyTimeZonePermission();
        Objects.requireNonNull(timeZoneSuggestion);
        this.mHandler.post(new Runnable() { // from class: com.android.server.timezonedetector.-$$Lambda$TimeZoneDetectorService$fVU6C2loDoPZ5MLRbaxmXaLRy_s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$suggestTelephonyTimeZone$1$TimeZoneDetectorService(timeZoneSuggestion);
            }
        });
    }

    public /* synthetic */ void lambda$suggestTelephonyTimeZone$1$TimeZoneDetectorService(TelephonyTimeZoneSuggestion timeZoneSuggestion) {
        this.mTimeZoneDetectorStrategy.suggestTelephonyTimeZone(timeZoneSuggestion);
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            this.mTimeZoneDetectorStrategy.dump(pw, args);
        }
    }

    public void handleAutoTimeZoneDetectionChanged() {
        Handler handler = this.mHandler;
        final TimeZoneDetectorStrategy timeZoneDetectorStrategy = this.mTimeZoneDetectorStrategy;
        Objects.requireNonNull(timeZoneDetectorStrategy);
        handler.post(new Runnable() { // from class: com.android.server.timezonedetector.-$$Lambda$YxXJMUW4yEyBSw8jCvXmZTpthE8
            @Override // java.lang.Runnable
            public final void run() {
                timeZoneDetectorStrategy.handleAutoTimeZoneDetectionChanged();
            }
        });
    }

    private void enforceSuggestTelephonyTimeZonePermission() {
        this.mContext.enforceCallingPermission("android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE", "suggest telephony time and time zone");
    }

    private void enforceSuggestManualTimeZonePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.SUGGEST_MANUAL_TIME_AND_ZONE", "suggest manual time and time zone");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new TimeZoneDetectorShellCommand(this).exec(this, in, out, err, args, callback, resultReceiver);
    }
}
