package com.android.server.wm;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.dex.ArtManagerInternal;
import android.content.pm.dex.PackageOptimizationInfo;
import android.hardware.audio.common.V2_0.AudioChannelMask;
import android.metrics.LogMaker;
import android.os.Binder;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.EventLog;
import android.util.Log;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.am.MemoryStatUtil;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
class ActivityMetricsLogger {
    private static final int IGNORE_CALLER = -1;
    private static final int INVALID_DELAY = -1;
    static final int LAUNCH_OBSERVER_ACTIVITY_RECORD_PROTO_CHUNK_SIZE = 512;
    private static final String TAG = "ActivityTaskManager";
    private static final String[] TRON_WINDOW_STATE_VARZ_STRINGS = {"window_time_0", "window_time_1", "window_time_2", "window_time_3", "window_time_4"};
    private static final int WINDOW_STATE_ASSISTANT = 3;
    private static final int WINDOW_STATE_FREEFORM = 2;
    private static final int WINDOW_STATE_INVALID = -1;
    private static final int WINDOW_STATE_MULTI_WINDOW = 4;
    private static final int WINDOW_STATE_SIDE_BY_SIDE = 1;
    private static final int WINDOW_STATE_STANDARD = 0;
    private ArtManagerInternal mArtManagerInternal;
    private final LaunchObserverRegistryImpl mLaunchObserver;
    private final ActivityStackSupervisor mSupervisor;
    private int mWindowState = 0;
    private final MetricsLogger mMetricsLogger = new MetricsLogger();
    private final ArrayList<TransitionInfo> mTransitionInfoList = new ArrayList<>();
    private final ArrayMap<ActivityRecord, TransitionInfo> mLastTransitionInfo = new ArrayMap<>();
    private final StringBuilder mStringBuilder = new StringBuilder();
    private long mLastLogTimeSecs = SystemClock.elapsedRealtime() / 1000;

    static final class LaunchingState {
        private TransitionInfo mAssociatedTransitionInfo;
        private long mCurrentTransitionStartTimeNs;

        LaunchingState() {
        }

        boolean allDrawn() {
            TransitionInfo transitionInfo = this.mAssociatedTransitionInfo;
            return transitionInfo != null && transitionInfo.allDrawn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class TransitionInfo {
        int mCurrentTransitionDelayMs;
        ActivityRecord mLastLaunchedActivity;
        String mLaunchTraceName;
        final LaunchingState mLaunchingState;
        boolean mLoggedStartingWindowDrawn;
        boolean mLoggedTransitionStarting;
        Runnable mPendingFullyDrawn;
        final boolean mProcessRunning;
        final boolean mProcessSwitch;
        final long mTransitionStartTimeNs;
        final int mTransitionType;
        int mWindowsDrawnDelayMs;
        final LinkedList<ActivityRecord> mPendingDrawActivities = new LinkedList<>();
        int mStartingWindowDelayMs = -1;
        int mBindApplicationDelayMs = -1;
        int mReason = 3;
        final int mCurrentTransitionDeviceUptime = (int) TimeUnit.MILLISECONDS.toSeconds(SystemClock.uptimeMillis());

        static TransitionInfo create(ActivityRecord r, LaunchingState launchingState, boolean processRunning, boolean processSwitch, int startResult) {
            int transitionType;
            if (startResult != 0 && startResult != 2) {
                return null;
            }
            if (processRunning) {
                if (r.attachedToProcess()) {
                    transitionType = 9;
                } else {
                    transitionType = 8;
                }
            } else {
                transitionType = 7;
            }
            return new TransitionInfo(r, launchingState, transitionType, processRunning, processSwitch);
        }

        private TransitionInfo(ActivityRecord r, LaunchingState launchingState, int transitionType, boolean processRunning, boolean processSwitch) {
            this.mLaunchingState = launchingState;
            this.mTransitionStartTimeNs = launchingState.mCurrentTransitionStartTimeNs;
            this.mTransitionType = transitionType;
            this.mProcessRunning = processRunning;
            this.mProcessSwitch = processSwitch;
            setLatestLaunchedActivity(r);
            launchingState.mAssociatedTransitionInfo = this;
        }

        void setLatestLaunchedActivity(ActivityRecord r) {
            if (this.mLastLaunchedActivity == r) {
                return;
            }
            this.mLastLaunchedActivity = r;
            if (!r.noDisplay && !r.mDrawn) {
                this.mPendingDrawActivities.add(r);
            }
        }

        boolean contains(WindowContainer wc) {
            ActivityRecord r = AppTransitionController.getAppFromContainer(wc);
            return r != null && (r == this.mLastLaunchedActivity || this.mPendingDrawActivities.contains(r));
        }

        void removePendingDrawActivity(ActivityRecord r) {
            this.mPendingDrawActivities.remove(r);
        }

        boolean allDrawn() {
            return this.mPendingDrawActivities.isEmpty();
        }

        boolean isInterestingToLoggerAndObserver() {
            return this.mProcessSwitch;
        }

        int calculateCurrentDelay() {
            return calculateDelay(SystemClock.elapsedRealtimeNanos());
        }

        int calculateDelay(long timestampNs) {
            return (int) TimeUnit.NANOSECONDS.toMillis(timestampNs - this.mTransitionStartTimeNs);
        }

        public String toString() {
            return "TransitionInfo{" + Integer.toHexString(System.identityHashCode(this)) + " a=" + this.mLastLaunchedActivity + " ua=" + this.mPendingDrawActivities + "}";
        }
    }

    static final class TransitionInfoSnapshot {
        final int activityRecordIdHashCode;
        private final ApplicationInfo applicationInfo;
        private final int bindApplicationDelayMs;
        private final String launchedActivityAppRecordRequiredAbi;
        private final String launchedActivityLaunchToken;
        private final String launchedActivityLaunchedFromPackage;
        final String launchedActivityName;
        final String launchedActivityShortComponentName;
        final String packageName;
        private final String processName;
        private final WindowProcessController processRecord;
        private final int reason;
        private final int startingWindowDelayMs;
        final int type;
        final int userId;
        final int windowsDrawnDelayMs;
        final int windowsFullyDrawnDelayMs;

        private TransitionInfoSnapshot(TransitionInfo info) {
            this(info, info.mLastLaunchedActivity, -1);
        }

        private TransitionInfoSnapshot(TransitionInfo info, ActivityRecord launchedActivity, int windowsFullyDrawnDelayMs) {
            String requiredAbi;
            this.applicationInfo = launchedActivity.info.applicationInfo;
            this.packageName = launchedActivity.packageName;
            this.launchedActivityName = launchedActivity.info.name;
            this.launchedActivityLaunchedFromPackage = launchedActivity.launchedFromPackage;
            this.launchedActivityLaunchToken = launchedActivity.info.launchToken;
            if (launchedActivity.app == null) {
                requiredAbi = null;
            } else {
                requiredAbi = launchedActivity.app.getRequiredAbi();
            }
            this.launchedActivityAppRecordRequiredAbi = requiredAbi;
            this.reason = info.mReason;
            this.startingWindowDelayMs = info.mStartingWindowDelayMs;
            this.bindApplicationDelayMs = info.mBindApplicationDelayMs;
            this.windowsDrawnDelayMs = info.mWindowsDrawnDelayMs;
            this.type = info.mTransitionType;
            this.processRecord = launchedActivity.app;
            this.processName = launchedActivity.processName;
            this.userId = launchedActivity.mUserId;
            this.launchedActivityShortComponentName = launchedActivity.shortComponentName;
            this.activityRecordIdHashCode = System.identityHashCode(launchedActivity);
            this.windowsFullyDrawnDelayMs = windowsFullyDrawnDelayMs;
        }

        int getLaunchState() {
            int i = this.type;
            if (i == 7) {
                return 1;
            }
            if (i == 8) {
                return 2;
            }
            if (i == 9) {
                return 3;
            }
            return -1;
        }

        PackageOptimizationInfo getPackageOptimizationInfo(ArtManagerInternal artManagerInternal) {
            String str;
            if (artManagerInternal == null || (str = this.launchedActivityAppRecordRequiredAbi) == null) {
                return PackageOptimizationInfo.createWithNoInfo();
            }
            return artManagerInternal.getPackageOptimizationInfo(this.applicationInfo, str, this.launchedActivityName);
        }
    }

    ActivityMetricsLogger(ActivityStackSupervisor supervisor, Looper looper) {
        this.mSupervisor = supervisor;
        this.mLaunchObserver = new LaunchObserverRegistryImpl(looper);
    }

    void logWindowState() {
        long now = SystemClock.elapsedRealtime() / 1000;
        int i = this.mWindowState;
        if (i != -1) {
            this.mMetricsLogger.count(TRON_WINDOW_STATE_VARZ_STRINGS[i], (int) (now - this.mLastLogTimeSecs));
        }
        this.mLastLogTimeSecs = now;
        this.mWindowState = -1;
        ActivityStack stack = this.mSupervisor.mRootWindowContainer.getTopDisplayFocusedStack();
        if (stack == null) {
            return;
        }
        if (stack.isActivityTypeAssistant()) {
            this.mWindowState = 3;
            return;
        }
        int windowingMode = stack.getWindowingMode();
        if (windowingMode == 2) {
            stack = this.mSupervisor.mRootWindowContainer.findStackBehind(stack);
            windowingMode = stack.getWindowingMode();
        }
        if (windowingMode == 1) {
            this.mWindowState = 0;
            return;
        }
        if (windowingMode == 3 || windowingMode == 4) {
            this.mWindowState = 1;
            return;
        }
        if (windowingMode == 5) {
            this.mWindowState = 2;
            return;
        }
        if (windowingMode == 6) {
            this.mWindowState = 4;
            return;
        }
        if (windowingMode != 0) {
            throw new IllegalStateException("Unknown windowing mode for stack=" + stack + " windowingMode=" + windowingMode);
        }
    }

    private TransitionInfo getActiveTransitionInfo(WindowContainer wc) {
        for (int i = this.mTransitionInfoList.size() - 1; i >= 0; i--) {
            TransitionInfo info = this.mTransitionInfoList.get(i);
            if (info.contains(wc)) {
                return info;
            }
        }
        return null;
    }

    LaunchingState notifyActivityLaunching(Intent intent) {
        return notifyActivityLaunching(intent, null, -1);
    }

    LaunchingState notifyActivityLaunching(Intent intent, ActivityRecord caller) {
        return notifyActivityLaunching(intent, caller, Binder.getCallingUid());
    }

    private LaunchingState notifyActivityLaunching(Intent intent, ActivityRecord caller, int callingUid) {
        long transitionStartTimeNs = SystemClock.elapsedRealtimeNanos();
        TransitionInfo existingInfo = null;
        if (callingUid != -1) {
            for (int i = this.mTransitionInfoList.size() - 1; i >= 0; i--) {
                TransitionInfo info = this.mTransitionInfoList.get(i);
                if (caller != null && info.contains(caller)) {
                    existingInfo = info;
                    break;
                }
                if (existingInfo == null && callingUid == info.mLastLaunchedActivity.getUid()) {
                    existingInfo = info;
                }
            }
        }
        if (existingInfo != null) {
            existingInfo.mLaunchingState.mCurrentTransitionStartTimeNs = transitionStartTimeNs;
            return existingInfo.mLaunchingState;
        }
        launchObserverNotifyIntentStarted(intent, transitionStartTimeNs);
        LaunchingState launchingState = new LaunchingState();
        launchingState.mCurrentTransitionStartTimeNs = transitionStartTimeNs;
        return launchingState;
    }

    void notifyActivityLaunched(LaunchingState launchingState, int resultCode, ActivityRecord launchedActivity) {
        WindowProcessController processRecord;
        if (launchedActivity == null) {
            abort(null, "nothing launched");
            return;
        }
        if (launchedActivity.app != null) {
            processRecord = launchedActivity.app;
        } else {
            processRecord = this.mSupervisor.mService.getProcessController(launchedActivity.processName, launchedActivity.info.applicationInfo.uid);
        }
        boolean processSwitch = true;
        boolean processRunning = processRecord != null;
        if (processRunning && processRecord.hasStartedActivity(launchedActivity)) {
            processSwitch = false;
        }
        TransitionInfo info = launchingState.mAssociatedTransitionInfo;
        if (launchedActivity.mDrawn && launchedActivity.isVisible()) {
            abort(info, "launched activity already visible");
            return;
        }
        if (info != null && info.mLastLaunchedActivity.mDisplayContent == launchedActivity.mDisplayContent) {
            info.setLatestLaunchedActivity(launchedActivity);
            return;
        }
        TransitionInfo newInfo = TransitionInfo.create(launchedActivity, launchingState, processRunning, processSwitch, resultCode);
        if (newInfo == null) {
            abort(info, "unrecognized launch");
            return;
        }
        this.mTransitionInfoList.add(newInfo);
        this.mLastTransitionInfo.put(launchedActivity, newInfo);
        startLaunchTrace(newInfo);
        if (newInfo.isInterestingToLoggerAndObserver()) {
            launchObserverNotifyActivityLaunched(newInfo);
        } else {
            launchObserverNotifyIntentFailed();
        }
    }

    TransitionInfoSnapshot notifyWindowsDrawn(ActivityRecord r, long timestampNs) {
        TransitionInfo info = getActiveTransitionInfo(r);
        if (info == null || info.allDrawn()) {
            return null;
        }
        info.mWindowsDrawnDelayMs = info.calculateDelay(timestampNs);
        info.removePendingDrawActivity(r);
        TransitionInfoSnapshot infoSnapshot = new TransitionInfoSnapshot(info);
        if (info.mLoggedTransitionStarting && info.allDrawn()) {
            done(false, info, "notifyWindowsDrawn - all windows drawn", timestampNs);
        }
        return infoSnapshot;
    }

    void notifyStartingWindowDrawn(ActivityRecord r) {
        TransitionInfo info = getActiveTransitionInfo(r);
        if (info == null || info.mLoggedStartingWindowDrawn) {
            return;
        }
        info.mLoggedStartingWindowDrawn = true;
        info.mStartingWindowDelayMs = info.calculateDelay(SystemClock.elapsedRealtimeNanos());
    }

    void notifyTransitionStarting(ArrayMap<WindowContainer, Integer> activityToReason) {
        long timestampNs = SystemClock.elapsedRealtimeNanos();
        for (int index = activityToReason.size() - 1; index >= 0; index--) {
            WindowContainer wc = activityToReason.keyAt(index);
            TransitionInfo info = getActiveTransitionInfo(wc);
            if (info != null && !info.mLoggedTransitionStarting) {
                info.mCurrentTransitionDelayMs = info.calculateDelay(timestampNs);
                info.mReason = activityToReason.valueAt(index).intValue();
                info.mLoggedTransitionStarting = true;
                if (info.allDrawn()) {
                    done(false, info, "notifyTransitionStarting - all windows drawn", timestampNs);
                }
            }
        }
    }

    void notifyActivityRemoved(ActivityRecord r) {
        this.mLastTransitionInfo.remove(r);
    }

    void notifyVisibilityChanged(ActivityRecord r) {
        TransitionInfo info = getActiveTransitionInfo(r);
        if (info == null) {
            return;
        }
        if (!r.mVisibleRequested || r.finishing) {
            info.removePendingDrawActivity(r);
        }
        if (info.mLastLaunchedActivity != r) {
            return;
        }
        r.mAtmService.mH.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((ActivityMetricsLogger) obj).checkVisibility((Task) obj2, (ActivityRecord) obj3);
            }
        }, this, r.getTask(), r));
    }

    private static boolean hasActivityToBeDrawn(Task t) {
        return t.forAllActivities(new Function() { // from class: com.android.server.wm.-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ActivityRecord activityRecord = (ActivityRecord) obj;
                return Boolean.valueOf((!activityRecord.mVisibleRequested || activityRecord.mDrawn || activityRecord.finishing) ? false : true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkVisibility(Task t, ActivityRecord r) {
        synchronized (this.mSupervisor.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                TransitionInfo info = getActiveTransitionInfo(r);
                if (info == null) {
                    return;
                }
                if (info.mLastLaunchedActivity != r) {
                    return;
                }
                if (hasActivityToBeDrawn(t)) {
                    return;
                }
                logAppTransitionCancel(info);
                abort(info, "notifyVisibilityChanged to invisible");
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void notifyBindApplication(ApplicationInfo appInfo) {
        for (int i = this.mTransitionInfoList.size() - 1; i >= 0; i--) {
            TransitionInfo info = this.mTransitionInfoList.get(i);
            if (info.mLastLaunchedActivity.info.applicationInfo == appInfo) {
                info.mBindApplicationDelayMs = info.calculateCurrentDelay();
            }
        }
    }

    private void abort(TransitionInfo info, String cause) {
        done(true, info, cause, 0L);
    }

    private void done(boolean abort, TransitionInfo info, String cause, long timestampNs) {
        if (info == null) {
            launchObserverNotifyIntentFailed();
            return;
        }
        stopLaunchTrace(info);
        if (abort) {
            launchObserverNotifyActivityLaunchCancelled(info);
        } else {
            if (info.isInterestingToLoggerAndObserver()) {
                launchObserverNotifyActivityLaunchFinished(info, timestampNs);
            }
            logAppTransitionFinished(info);
        }
        info.mPendingDrawActivities.clear();
        this.mTransitionInfoList.remove(info);
    }

    private void logAppTransitionCancel(TransitionInfo info) {
        int type = info.mTransitionType;
        ActivityRecord activity = info.mLastLaunchedActivity;
        LogMaker builder = new LogMaker(1144);
        builder.setPackageName(activity.packageName);
        builder.setType(type);
        builder.addTaggedData(871, activity.info.name);
        this.mMetricsLogger.write(builder);
        FrameworkStatsLog.write(49, activity.info.applicationInfo.uid, activity.packageName, convertAppStartTransitionType(type), activity.info.name);
    }

    private void logAppTransitionFinished(final TransitionInfo info) {
        final TransitionInfoSnapshot infoSnapshot = new TransitionInfoSnapshot(info);
        if (info.isInterestingToLoggerAndObserver()) {
            BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$logAppTransitionFinished$1$ActivityMetricsLogger(info, infoSnapshot);
                }
            });
        }
        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityMetricsLogger$fTBXciy3VZJ2vTW_ZJXaKfUj7_I
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$logAppTransitionFinished$2$ActivityMetricsLogger(infoSnapshot);
            }
        });
        if (info.mPendingFullyDrawn != null) {
            info.mPendingFullyDrawn.run();
        }
        info.mLastLaunchedActivity.info.launchToken = null;
    }

    public /* synthetic */ void lambda$logAppTransitionFinished$1$ActivityMetricsLogger(TransitionInfo info, TransitionInfoSnapshot infoSnapshot) {
        logAppTransition(info.mCurrentTransitionDeviceUptime, info.mCurrentTransitionDelayMs, infoSnapshot);
    }

    private void logAppTransition(int i, int i2, TransitionInfoSnapshot transitionInfoSnapshot) {
        LogMaker logMaker = new LogMaker(761);
        logMaker.setPackageName(transitionInfoSnapshot.packageName);
        logMaker.setType(transitionInfoSnapshot.type);
        logMaker.addTaggedData(871, transitionInfoSnapshot.launchedActivityName);
        boolean zIsInstantApp = transitionInfoSnapshot.applicationInfo.isInstantApp();
        if (transitionInfoSnapshot.launchedActivityLaunchedFromPackage != null) {
            logMaker.addTaggedData(904, transitionInfoSnapshot.launchedActivityLaunchedFromPackage);
        }
        String str = transitionInfoSnapshot.launchedActivityLaunchToken;
        if (str != null) {
            logMaker.addTaggedData(903, str);
        }
        logMaker.addTaggedData(905, Integer.valueOf(zIsInstantApp ? 1 : 0));
        logMaker.addTaggedData(325, Integer.valueOf(i));
        logMaker.addTaggedData(AudioChannelMask.OUT_6POINT1, Integer.valueOf(i2));
        logMaker.setSubtype(transitionInfoSnapshot.reason);
        if (transitionInfoSnapshot.startingWindowDelayMs != -1) {
            logMaker.addTaggedData(321, Integer.valueOf(transitionInfoSnapshot.startingWindowDelayMs));
        }
        if (transitionInfoSnapshot.bindApplicationDelayMs != -1) {
            logMaker.addTaggedData(945, Integer.valueOf(transitionInfoSnapshot.bindApplicationDelayMs));
        }
        logMaker.addTaggedData(322, Integer.valueOf(transitionInfoSnapshot.windowsDrawnDelayMs));
        PackageOptimizationInfo packageOptimizationInfo = transitionInfoSnapshot.getPackageOptimizationInfo(getArtManagerInternal());
        logMaker.addTaggedData(1321, Integer.valueOf(packageOptimizationInfo.getCompilationReason()));
        logMaker.addTaggedData(1320, Integer.valueOf(packageOptimizationInfo.getCompilationFilter()));
        this.mMetricsLogger.write(logMaker);
        FrameworkStatsLog.write(48, transitionInfoSnapshot.applicationInfo.uid, transitionInfoSnapshot.packageName, convertAppStartTransitionType(transitionInfoSnapshot.type), transitionInfoSnapshot.launchedActivityName, transitionInfoSnapshot.launchedActivityLaunchedFromPackage, zIsInstantApp, i * 1000, transitionInfoSnapshot.reason, i2, transitionInfoSnapshot.startingWindowDelayMs, transitionInfoSnapshot.bindApplicationDelayMs, transitionInfoSnapshot.windowsDrawnDelayMs, str, packageOptimizationInfo.getCompilationReason(), packageOptimizationInfo.getCompilationFilter());
        logAppStartMemoryStateCapture(transitionInfoSnapshot);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logAppDisplayed, reason: merged with bridge method [inline-methods] */
    public void lambda$logAppTransitionFinished$2$ActivityMetricsLogger(TransitionInfoSnapshot info) {
        if (info.type != 8 && info.type != 7) {
            return;
        }
        EventLog.writeEvent(EventLogTags.WM_ACTIVITY_LAUNCH_TIME, Integer.valueOf(info.userId), Integer.valueOf(info.activityRecordIdHashCode), info.launchedActivityShortComponentName, Integer.valueOf(info.windowsDrawnDelayMs));
        StringBuilder sb = this.mStringBuilder;
        sb.setLength(0);
        sb.append("Displayed ");
        sb.append(info.launchedActivityShortComponentName);
        sb.append(": ");
        TimeUtils.formatDuration(info.windowsDrawnDelayMs, sb);
        Log.i(TAG, sb.toString());
    }

    private int convertAppStartTransitionType(int tronType) {
        if (tronType == 7) {
            return 3;
        }
        if (tronType == 8) {
            return 1;
        }
        if (tronType == 9) {
            return 2;
        }
        return 0;
    }

    int getLastDrawnDelayMs(ActivityRecord r) {
        TransitionInfo info = this.mLastTransitionInfo.get(r);
        if (info != null) {
            return info.mWindowsDrawnDelayMs;
        }
        return -1;
    }

    TransitionInfoSnapshot logAppTransitionReportedDrawn(final ActivityRecord activityRecord, final boolean z) {
        long millis;
        int i;
        int i2;
        final TransitionInfo transitionInfo = this.mLastTransitionInfo.get(activityRecord);
        if (transitionInfo == null) {
            return null;
        }
        if (!transitionInfo.allDrawn() && transitionInfo.mPendingFullyDrawn == null) {
            transitionInfo.mPendingFullyDrawn = new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$logAppTransitionReportedDrawn$3$ActivityMetricsLogger(activityRecord, z, transitionInfo);
                }
            };
            return null;
        }
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        if (transitionInfo.mPendingFullyDrawn != null) {
            millis = transitionInfo.mWindowsDrawnDelayMs;
        } else {
            millis = TimeUnit.NANOSECONDS.toMillis(jElapsedRealtimeNanos - transitionInfo.mTransitionStartTimeNs);
        }
        final TransitionInfoSnapshot transitionInfoSnapshot = new TransitionInfoSnapshot(transitionInfo, activityRecord, (int) millis);
        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityMetricsLogger$l0oslVb5YyQhsmr7OXWV2whbXYU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$logAppTransitionReportedDrawn$4$ActivityMetricsLogger(transitionInfoSnapshot);
            }
        });
        if (!transitionInfo.isInterestingToLoggerAndObserver()) {
            return transitionInfoSnapshot;
        }
        Trace.traceBegin(64L, "ActivityManager:ReportingFullyDrawn " + transitionInfo.mLastLaunchedActivity.packageName);
        LogMaker logMaker = new LogMaker(1090);
        logMaker.setPackageName(activityRecord.packageName);
        logMaker.addTaggedData(871, activityRecord.info.name);
        logMaker.addTaggedData(1091, Long.valueOf(millis));
        if (z) {
            i = 13;
        } else {
            i = 12;
        }
        logMaker.setType(i);
        logMaker.addTaggedData(324, Integer.valueOf(transitionInfo.mProcessRunning ? 1 : 0));
        this.mMetricsLogger.write(logMaker);
        PackageOptimizationInfo packageOptimizationInfo = transitionInfoSnapshot.getPackageOptimizationInfo(getArtManagerInternal());
        int i3 = transitionInfo.mLastLaunchedActivity.info.applicationInfo.uid;
        String str = transitionInfo.mLastLaunchedActivity.packageName;
        if (z) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        FrameworkStatsLog.write(50, i3, str, i2, transitionInfo.mLastLaunchedActivity.info.name, transitionInfo.mProcessRunning, millis, packageOptimizationInfo.getCompilationReason(), packageOptimizationInfo.getCompilationFilter());
        Trace.traceEnd(64L);
        launchObserverNotifyReportFullyDrawn(activityRecord, jElapsedRealtimeNanos);
        return transitionInfoSnapshot;
    }

    public /* synthetic */ void lambda$logAppTransitionReportedDrawn$3$ActivityMetricsLogger(ActivityRecord r, boolean restoredFromBundle, TransitionInfo info) {
        logAppTransitionReportedDrawn(r, restoredFromBundle);
        info.mPendingFullyDrawn = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: logAppFullyDrawn, reason: merged with bridge method [inline-methods] */
    public void lambda$logAppTransitionReportedDrawn$4$ActivityMetricsLogger(TransitionInfoSnapshot info) {
        if (info.type != 8 && info.type != 7) {
            return;
        }
        StringBuilder sb = this.mStringBuilder;
        sb.setLength(0);
        sb.append("Fully drawn ");
        sb.append(info.launchedActivityShortComponentName);
        sb.append(": ");
        TimeUtils.formatDuration(info.windowsFullyDrawnDelayMs, sb);
        Log.i(TAG, sb.toString());
    }

    void logAbortedBgActivityStart(Intent intent, WindowProcessController windowProcessController, int i, String str, int i2, boolean z, int i3, int i4, boolean z2, boolean z3) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jUptimeMillis = SystemClock.uptimeMillis();
        LogMaker logMaker = new LogMaker(1513);
        logMaker.setTimestamp(System.currentTimeMillis());
        logMaker.addTaggedData(1514, Integer.valueOf(i));
        logMaker.addTaggedData(1515, str);
        logMaker.addTaggedData(1516, Integer.valueOf(ActivityManager.processStateAmToProto(i2)));
        logMaker.addTaggedData(1517, Integer.valueOf(z ? 1 : 0));
        logMaker.addTaggedData(1518, Integer.valueOf(i3));
        logMaker.addTaggedData(1519, Integer.valueOf(ActivityManager.processStateAmToProto(i4)));
        logMaker.addTaggedData(1520, Integer.valueOf(z2 ? 1 : 0));
        logMaker.addTaggedData(1527, Integer.valueOf(z3 ? 1 : 0));
        if (intent != null) {
            logMaker.addTaggedData(1528, intent.getAction());
            ComponentName component = intent.getComponent();
            if (component != null) {
                logMaker.addTaggedData(1526, component.flattenToShortString());
            }
        }
        if (windowProcessController != null) {
            logMaker.addTaggedData(1529, windowProcessController.mName);
            logMaker.addTaggedData(1530, Integer.valueOf(ActivityManager.processStateAmToProto(windowProcessController.getCurrentProcState())));
            logMaker.addTaggedData(1531, Integer.valueOf(windowProcessController.hasClientActivities() ? 1 : 0));
            logMaker.addTaggedData(1532, Integer.valueOf(windowProcessController.hasForegroundServices() ? 1 : 0));
            logMaker.addTaggedData(1533, Integer.valueOf(windowProcessController.hasForegroundActivities() ? 1 : 0));
            logMaker.addTaggedData(1534, Integer.valueOf(windowProcessController.hasTopUi() ? 1 : 0));
            logMaker.addTaggedData(1535, Integer.valueOf(windowProcessController.hasOverlayUi() ? 1 : 0));
            logMaker.addTaggedData(1536, Integer.valueOf(windowProcessController.hasPendingUiClean() ? 1 : 0));
            if (windowProcessController.getInteractionEventTime() != 0) {
                logMaker.addTaggedData(UsbTerminalTypes.TERMINAL_EXTERN_ANALOG, Long.valueOf(jElapsedRealtime - windowProcessController.getInteractionEventTime()));
            }
            if (windowProcessController.getFgInteractionTime() != 0) {
                logMaker.addTaggedData(UsbTerminalTypes.TERMINAL_EXTERN_DIGITAL, Long.valueOf(jElapsedRealtime - windowProcessController.getFgInteractionTime()));
            }
            if (windowProcessController.getWhenUnimportant() != 0) {
                logMaker.addTaggedData(1539, Long.valueOf(jUptimeMillis - windowProcessController.getWhenUnimportant()));
            }
        }
        this.mMetricsLogger.write(logMaker);
    }

    private void logAppStartMemoryStateCapture(TransitionInfoSnapshot info) {
        if (info.processRecord != null) {
            int pid = info.processRecord.getPid();
            int uid = info.applicationInfo.uid;
            MemoryStatUtil.MemoryStat memoryStat = MemoryStatUtil.readMemoryStatFromFilesystem(uid, pid);
            if (memoryStat == null) {
                return;
            }
            FrameworkStatsLog.write(55, uid, info.processName, info.launchedActivityName, memoryStat.pgfault, memoryStat.pgmajfault, memoryStat.rssInBytes, memoryStat.cacheInBytes, memoryStat.swapInBytes);
        }
    }

    private ArtManagerInternal getArtManagerInternal() {
        if (this.mArtManagerInternal == null) {
            this.mArtManagerInternal = (ArtManagerInternal) LocalServices.getService(ArtManagerInternal.class);
        }
        return this.mArtManagerInternal;
    }

    private void startLaunchTrace(TransitionInfo info) {
        if (!Trace.isTagEnabled(64L)) {
            return;
        }
        info.mLaunchTraceName = "launching: " + info.mLastLaunchedActivity.packageName;
        Trace.asyncTraceBegin(64L, info.mLaunchTraceName, (int) info.mTransitionStartTimeNs);
    }

    private void stopLaunchTrace(TransitionInfo info) {
        if (info.mLaunchTraceName == null) {
            return;
        }
        Trace.asyncTraceEnd(64L, info.mLaunchTraceName, (int) info.mTransitionStartTimeNs);
        info.mLaunchTraceName = null;
    }

    public ActivityMetricsLaunchObserverRegistry getLaunchObserverRegistry() {
        return this.mLaunchObserver;
    }

    private void launchObserverNotifyIntentStarted(Intent intent, long timestampNs) {
        Trace.traceBegin(64L, "MetricsLogger:launchObserverNotifyIntentStarted");
        this.mLaunchObserver.onIntentStarted(intent, timestampNs);
        Trace.traceEnd(64L);
    }

    private void launchObserverNotifyIntentFailed() {
        Trace.traceBegin(64L, "MetricsLogger:launchObserverNotifyIntentFailed");
        this.mLaunchObserver.onIntentFailed();
        Trace.traceEnd(64L);
    }

    private void launchObserverNotifyActivityLaunched(TransitionInfo info) {
        Trace.traceBegin(64L, "MetricsLogger:launchObserverNotifyActivityLaunched");
        int temperature = convertTransitionTypeToLaunchObserverTemperature(info.mTransitionType);
        this.mLaunchObserver.onActivityLaunched(convertActivityRecordToProto(info.mLastLaunchedActivity), temperature);
        Trace.traceEnd(64L);
    }

    private void launchObserverNotifyReportFullyDrawn(ActivityRecord r, long timestampNs) {
        Trace.traceBegin(64L, "MetricsLogger:launchObserverNotifyReportFullyDrawn");
        this.mLaunchObserver.onReportFullyDrawn(convertActivityRecordToProto(r), timestampNs);
        Trace.traceEnd(64L);
    }

    private void launchObserverNotifyActivityLaunchCancelled(TransitionInfo info) {
        Trace.traceBegin(64L, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled");
        byte[] activityRecordProto = info != null ? convertActivityRecordToProto(info.mLastLaunchedActivity) : null;
        this.mLaunchObserver.onActivityLaunchCancelled(activityRecordProto);
        Trace.traceEnd(64L);
    }

    private void launchObserverNotifyActivityLaunchFinished(TransitionInfo info, long timestampNs) {
        Trace.traceBegin(64L, "MetricsLogger:launchObserverNotifyActivityLaunchFinished");
        this.mLaunchObserver.onActivityLaunchFinished(convertActivityRecordToProto(info.mLastLaunchedActivity), timestampNs);
        Trace.traceEnd(64L);
    }

    static byte[] convertActivityRecordToProto(ActivityRecord record) {
        Trace.traceBegin(64L, "MetricsLogger:convertActivityRecordToProto");
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(512);
        record.dumpDebug(protoOutputStream, 0);
        byte[] bytes = protoOutputStream.getBytes();
        Trace.traceEnd(64L);
        return bytes;
    }

    private static int convertTransitionTypeToLaunchObserverTemperature(int transitionType) {
        if (transitionType == 7) {
            return 1;
        }
        if (transitionType == 8) {
            return 2;
        }
        if (transitionType == 9) {
            return 3;
        }
        return -1;
    }
}
