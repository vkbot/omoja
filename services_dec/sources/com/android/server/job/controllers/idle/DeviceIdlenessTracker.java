package com.android.server.job.controllers.idle;

import android.R;
import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.PowerManager;
import android.util.Log;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.server.am.ActivityManagerService;
import com.android.server.job.JobSchedulerService;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceIdlenessTracker extends BroadcastReceiver implements IdlenessTracker {
    private static final boolean DEBUG;
    private static final String TAG = "JobScheduler.DeviceIdlenessTracker";
    private AlarmManager mAlarm;
    private IdlenessListener mIdleListener;
    private long mIdleWindowSlop;
    private long mInactivityIdleThreshold;
    private PowerManager mPowerManager;
    private AlarmManager.OnAlarmListener mIdleAlarmListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.job.controllers.idle.-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0
        @Override // android.app.AlarmManager.OnAlarmListener
        public final void onAlarm() {
            this.f$0.lambda$new$0$DeviceIdlenessTracker();
        }
    };
    private boolean mIdle = false;
    private boolean mScreenOn = true;
    private boolean mDockIdle = false;
    private boolean mInCarMode = false;

    static {
        DEBUG = JobSchedulerService.DEBUG || Log.isLoggable(TAG, 3);
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public boolean isIdle() {
        return this.mIdle;
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public void startTracking(Context context, IdlenessListener listener) {
        this.mIdleListener = listener;
        this.mInactivityIdleThreshold = context.getResources().getInteger(R.integer.config_demo_pointing_not_aligned_duration_millis);
        this.mIdleWindowSlop = context.getResources().getInteger(R.integer.config_demo_pointing_aligned_duration_millis);
        this.mAlarm = (AlarmManager) context.getSystemService("alarm");
        this.mPowerManager = (PowerManager) context.getSystemService(PowerManager.class);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.DREAMING_STARTED");
        filter.addAction("android.intent.action.DREAMING_STOPPED");
        filter.addAction(ActivityManagerService.ACTION_TRIGGER_IDLE);
        filter.addAction("android.intent.action.DOCK_IDLE");
        filter.addAction("android.intent.action.DOCK_ACTIVE");
        filter.addAction("android.app.action.ENTER_CAR_MODE_PRIORITIZED");
        filter.addAction("android.app.action.EXIT_CAR_MODE_PRIORITIZED");
        context.registerReceiver(this, filter);
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public void dump(PrintWriter pw) {
        pw.print("  mIdle: ");
        pw.println(this.mIdle);
        pw.print("  mScreenOn: ");
        pw.println(this.mScreenOn);
        pw.print("  mDockIdle: ");
        pw.println(this.mDockIdle);
        pw.print("  mInCarMode: ");
        pw.println(this.mInCarMode);
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public void dump(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        long diToken = proto.start(1146756268033L);
        proto.write(1133871366145L, this.mIdle);
        proto.write(1133871366146L, this.mScreenOn);
        proto.write(1133871366147L, this.mDockIdle);
        proto.write(1133871366148L, this.mInCarMode);
        proto.end(diToken);
        proto.end(token);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (DEBUG) {
            Slog.v(TAG, "Received action: " + action);
        }
        switch (action) {
            case "android.intent.action.DOCK_ACTIVE":
                if (!this.mScreenOn) {
                }
            case "android.intent.action.DREAMING_STOPPED":
                if (!this.mPowerManager.isInteractive()) {
                }
            case "android.intent.action.SCREEN_ON":
                this.mScreenOn = true;
                this.mDockIdle = false;
                if (DEBUG) {
                    Slog.v(TAG, "exiting idle");
                }
                cancelIdlenessCheck();
                if (this.mIdle) {
                    this.mIdle = false;
                    this.mIdleListener.reportNewIdleState(false);
                    break;
                }
                break;
            case "android.intent.action.SCREEN_OFF":
            case "android.intent.action.DREAMING_STARTED":
            case "android.intent.action.DOCK_IDLE":
                if (action.equals("android.intent.action.DOCK_IDLE")) {
                    if (this.mScreenOn) {
                        this.mDockIdle = true;
                    }
                } else {
                    this.mScreenOn = false;
                    this.mDockIdle = false;
                }
                maybeScheduleIdlenessCheck(action);
                break;
            case "android.app.action.ENTER_CAR_MODE_PRIORITIZED":
                this.mInCarMode = true;
                cancelIdlenessCheck();
                if (this.mIdle) {
                    this.mIdle = false;
                    this.mIdleListener.reportNewIdleState(false);
                    break;
                }
                break;
            case "android.app.action.EXIT_CAR_MODE_PRIORITIZED":
                this.mInCarMode = false;
                maybeScheduleIdlenessCheck(action);
                break;
            case "com.android.server.ACTION_TRIGGER_IDLE":
                lambda$new$0$DeviceIdlenessTracker();
                break;
        }
    }

    private void maybeScheduleIdlenessCheck(String reason) {
        if ((!this.mScreenOn || this.mDockIdle) && !this.mInCarMode) {
            long nowElapsed = JobSchedulerService.sElapsedRealtimeClock.millis();
            long when = this.mInactivityIdleThreshold + nowElapsed;
            if (DEBUG) {
                Slog.v(TAG, "Scheduling idle : " + reason + " now:" + nowElapsed + " when=" + when);
            }
            this.mAlarm.setWindow(2, when, this.mIdleWindowSlop, "JS idleness", this.mIdleAlarmListener, (Handler) null);
        }
    }

    private void cancelIdlenessCheck() {
        this.mAlarm.cancel(this.mIdleAlarmListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleIdleTrigger, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$DeviceIdlenessTracker() {
        if (!this.mIdle && ((!this.mScreenOn || this.mDockIdle) && !this.mInCarMode)) {
            if (DEBUG) {
                Slog.v(TAG, "Idle trigger fired @ " + JobSchedulerService.sElapsedRealtimeClock.millis());
            }
            this.mIdle = true;
            this.mIdleListener.reportNewIdleState(true);
            return;
        }
        if (DEBUG) {
            Slog.v(TAG, "TRIGGER_IDLE received but not changing state; idle=" + this.mIdle + " screen=" + this.mScreenOn + " car=" + this.mInCarMode);
        }
    }
}
