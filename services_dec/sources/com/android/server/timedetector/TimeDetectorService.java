package com.android.server.timedetector;

import android.app.timedetector.GnssTimeSuggestion;
import android.app.timedetector.ITimeDetectorService;
import android.app.timedetector.ManualTimeSuggestion;
import android.app.timedetector.NetworkTimeSuggestion;
import android.app.timedetector.TelephonyTimeSuggestion;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.android.internal.util.DumpUtils;
import com.android.server.FgThread;
import com.android.server.SystemService;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeDetectorService extends ITimeDetectorService.Stub {
    private static final String TAG = "TimeDetectorService";
    private final Context mContext;
    private final Handler mHandler;
    private final TimeDetectorStrategy mTimeDetectorStrategy;

    public static class Lifecycle extends SystemService {
        public Lifecycle(Context context) {
            super(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("time_detector", TimeDetectorService.create(getContext()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TimeDetectorService create(Context context) {
        TimeDetectorStrategy timeDetectorStrategy = new TimeDetectorStrategyImpl();
        TimeDetectorStrategyCallbackImpl callback = new TimeDetectorStrategyCallbackImpl(context);
        timeDetectorStrategy.initialize(callback);
        Handler handler = FgThread.getHandler();
        final TimeDetectorService timeDetectorService = new TimeDetectorService(context, handler, timeDetectorStrategy);
        ContentResolver contentResolver = context.getContentResolver();
        contentResolver.registerContentObserver(Settings.Global.getUriFor("auto_time"), true, new ContentObserver(handler) { // from class: com.android.server.timedetector.TimeDetectorService.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                timeDetectorService.handleAutoTimeDetectionChanged();
            }
        });
        return timeDetectorService;
    }

    public TimeDetectorService(Context context, Handler handler, TimeDetectorStrategy timeDetectorStrategy) {
        Objects.requireNonNull(context);
        this.mContext = context;
        Objects.requireNonNull(handler);
        this.mHandler = handler;
        Objects.requireNonNull(timeDetectorStrategy);
        this.mTimeDetectorStrategy = timeDetectorStrategy;
    }

    public void suggestTelephonyTime(final TelephonyTimeSuggestion timeSignal) {
        enforceSuggestTelephonyTimePermission();
        Objects.requireNonNull(timeSignal);
        this.mHandler.post(new Runnable() { // from class: com.android.server.timedetector.-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$suggestTelephonyTime$0$TimeDetectorService(timeSignal);
            }
        });
    }

    public /* synthetic */ void lambda$suggestTelephonyTime$0$TimeDetectorService(TelephonyTimeSuggestion timeSignal) {
        this.mTimeDetectorStrategy.suggestTelephonyTime(timeSignal);
    }

    public void suggestManualTime(final ManualTimeSuggestion timeSignal) {
        enforceSuggestManualTimePermission();
        Objects.requireNonNull(timeSignal);
        this.mHandler.post(new Runnable() { // from class: com.android.server.timedetector.-$$Lambda$TimeDetectorService$DcAkTJaWB9_yMqP5iTI6-JQdq4g
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$suggestManualTime$1$TimeDetectorService(timeSignal);
            }
        });
    }

    public /* synthetic */ void lambda$suggestManualTime$1$TimeDetectorService(ManualTimeSuggestion timeSignal) {
        this.mTimeDetectorStrategy.suggestManualTime(timeSignal);
    }

    public void suggestNetworkTime(final NetworkTimeSuggestion timeSignal) {
        enforceSuggestNetworkTimePermission();
        Objects.requireNonNull(timeSignal);
        this.mHandler.post(new Runnable() { // from class: com.android.server.timedetector.-$$Lambda$TimeDetectorService$nU2ruOeSUWWPVvB4A7i7qaumT4s
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$suggestNetworkTime$2$TimeDetectorService(timeSignal);
            }
        });
    }

    public /* synthetic */ void lambda$suggestNetworkTime$2$TimeDetectorService(NetworkTimeSuggestion timeSignal) {
        this.mTimeDetectorStrategy.suggestNetworkTime(timeSignal);
    }

    public void handleAutoTimeDetectionChanged() {
        Handler handler = this.mHandler;
        final TimeDetectorStrategy timeDetectorStrategy = this.mTimeDetectorStrategy;
        Objects.requireNonNull(timeDetectorStrategy);
        handler.post(new Runnable() { // from class: com.android.server.timedetector.-$$Lambda$lkjIbFi2SczFhCGbzNmkRxmPS0M
            @Override // java.lang.Runnable
            public final void run() {
                timeDetectorStrategy.handleAutoTimeDetectionChanged();
            }
        });
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            this.mTimeDetectorStrategy.dump(pw, args);
        }
    }

    private void enforceSuggestTelephonyTimePermission() {
        this.mContext.enforceCallingPermission("android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE", "suggest telephony time and time zone");
    }

    private void enforceSuggestManualTimePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.SUGGEST_MANUAL_TIME_AND_ZONE", "suggest manual time and time zone");
    }

    private void enforceSuggestNetworkTimePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.SET_TIME", "set time");
    }

    public void suggestGnssTime(final GnssTimeSuggestion timeSignal) {
        enforceSuggestGnssTimePermission();
        Objects.requireNonNull(timeSignal);
        this.mHandler.post(new Runnable() { // from class: com.android.server.timedetector.-$$Lambda$TimeDetectorService$qs22y-4KHP7R3Cv0H7WHkS3XvfA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$suggestGnssTime$3$TimeDetectorService(timeSignal);
            }
        });
    }

    public /* synthetic */ void lambda$suggestGnssTime$3$TimeDetectorService(GnssTimeSuggestion timeSignal) {
        this.mTimeDetectorStrategy.suggestGnssTime(timeSignal);
    }

    private void enforceSuggestGnssTimePermission() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.SET_TIME", "suggest gnss time");
    }
}
