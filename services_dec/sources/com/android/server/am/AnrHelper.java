package com.android.server.am;

import android.content.pm.ApplicationInfo;
import android.os.SystemClock;
import android.util.Slog;
import com.android.server.wm.WindowProcessController;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class AnrHelper {
    private static final long EXPIRED_REPORT_TIME_MS = TimeUnit.MINUTES.toMillis(1);
    private static final String TAG = "ActivityManager";
    private final ArrayList<AnrRecord> mAnrRecords = new ArrayList<>();
    private final AtomicBoolean mRunning = new AtomicBoolean(false);

    AnrHelper() {
    }

    void appNotResponding(ProcessRecord anrProcess, String annotation) {
        appNotResponding(anrProcess, null, null, null, null, false, annotation);
    }

    void appNotResponding(ProcessRecord anrProcess, String activityShortComponentName, ApplicationInfo aInfo, String parentShortComponentName, WindowProcessController parentProcess, boolean aboveSystem, String annotation) {
        synchronized (this.mAnrRecords) {
            this.mAnrRecords.add(new AnrRecord(anrProcess, activityShortComponentName, aInfo, parentShortComponentName, parentProcess, aboveSystem, annotation));
        }
        startAnrConsumerIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAnrConsumerIfNeeded() {
        if (this.mRunning.compareAndSet(false, true)) {
            new AnrConsumerThread().start();
        }
    }

    private class AnrConsumerThread extends Thread {
        AnrConsumerThread() {
            super("AnrConsumer");
        }

        private AnrRecord next() {
            AnrRecord anrRecord;
            synchronized (AnrHelper.this.mAnrRecords) {
                anrRecord = AnrHelper.this.mAnrRecords.isEmpty() ? null : (AnrRecord) AnrHelper.this.mAnrRecords.remove(0);
            }
            return anrRecord;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            while (true) {
                AnrRecord r = next();
                if (r == null) {
                    break;
                }
                long startTime = SystemClock.uptimeMillis();
                long reportLatency = startTime - r.mTimestamp;
                boolean onlyDumpSelf = reportLatency > AnrHelper.EXPIRED_REPORT_TIME_MS;
                r.appNotResponding(onlyDumpSelf);
                long endTime = SystemClock.uptimeMillis();
                StringBuilder sb = new StringBuilder();
                sb.append("Completed ANR of ");
                sb.append(r.mApp.processName);
                sb.append(" in ");
                sb.append(endTime - startTime);
                sb.append("ms, latency ");
                sb.append(reportLatency);
                sb.append(onlyDumpSelf ? "ms (expired, only dump ANR app)" : "ms");
                Slog.d(AnrHelper.TAG, sb.toString());
            }
            AnrHelper.this.mRunning.set(false);
            synchronized (AnrHelper.this.mAnrRecords) {
                if (!AnrHelper.this.mAnrRecords.isEmpty()) {
                    AnrHelper.this.startAnrConsumerIfNeeded();
                }
            }
        }
    }

    private static class AnrRecord {
        final boolean mAboveSystem;
        final String mActivityShortComponentName;
        final String mAnnotation;
        final ProcessRecord mApp;
        final ApplicationInfo mAppInfo;
        final WindowProcessController mParentProcess;
        final String mParentShortComponentName;
        final long mTimestamp = SystemClock.uptimeMillis();

        AnrRecord(ProcessRecord anrProcess, String activityShortComponentName, ApplicationInfo aInfo, String parentShortComponentName, WindowProcessController parentProcess, boolean aboveSystem, String annotation) {
            this.mApp = anrProcess;
            this.mActivityShortComponentName = activityShortComponentName;
            this.mParentShortComponentName = parentShortComponentName;
            this.mAnnotation = annotation;
            this.mAppInfo = aInfo;
            this.mParentProcess = parentProcess;
            this.mAboveSystem = aboveSystem;
        }

        void appNotResponding(boolean onlyDumpSelf) throws Throwable {
            this.mApp.appNotResponding(this.mActivityShortComponentName, this.mAppInfo, this.mParentShortComponentName, this.mParentProcess, this.mAboveSystem, this.mAnnotation, onlyDumpSelf);
        }
    }
}
