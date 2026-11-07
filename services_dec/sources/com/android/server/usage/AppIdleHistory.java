package com.android.server.usage;

import android.app.usage.AppStandbyInfo;
import android.app.usage.UsageStatsManager;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.util.Xml;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.job.JobPackageTracker;
import com.android.server.job.controllers.JobStatus;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class AppIdleHistory {
    static final String APP_IDLE_FILENAME = "app_idle_stats.xml";
    private static final String ATTR_BUCKETING_REASON = "bucketReason";
    private static final String ATTR_BUCKET_ACTIVE_TIMEOUT_TIME = "activeTimeoutTime";
    private static final String ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME = "workingSetTimeoutTime";
    private static final String ATTR_CURRENT_BUCKET = "appLimitBucket";
    private static final String ATTR_ELAPSED_IDLE = "elapsedIdleTime";
    private static final String ATTR_LAST_PREDICTED_TIME = "lastPredictedTime";
    private static final String ATTR_LAST_RESTRICTION_ATTEMPT_ELAPSED = "lastRestrictionAttemptElapsedTime";
    private static final String ATTR_LAST_RESTRICTION_ATTEMPT_REASON = "lastRestrictionAttemptReason";
    private static final String ATTR_LAST_RUN_JOB_TIME = "lastJobRunTime";
    private static final String ATTR_LAST_USED_BY_USER_ELAPSED = "lastUsedByUserElapsedTime";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_SCREEN_IDLE = "screenIdleTime";
    private static final boolean DEBUG = false;
    static final int IDLE_BUCKET_CUTOFF = 40;
    private static final long ONE_MINUTE = 60000;
    private static final int STANDBY_BUCKET_UNKNOWN = -1;
    private static final String TAG = "AppIdleHistory";
    private static final String TAG_PACKAGE = "package";
    private static final String TAG_PACKAGES = "packages";
    private long mElapsedDuration;
    private long mElapsedSnapshot;
    private SparseArray<ArrayMap<String, AppUsageHistory>> mIdleHistory = new SparseArray<>();
    private boolean mScreenOn;
    private long mScreenOnDuration;
    private long mScreenOnSnapshot;
    private final File mStorageDir;

    static class AppUsageHistory {
        long bucketActiveTimeoutTime;
        long bucketWorkingSetTimeoutTime;
        int bucketingReason;
        int currentBucket;
        int lastInformedBucket;
        long lastJobRunTime;
        int lastPredictedBucket = -1;
        long lastPredictedTime;
        long lastRestrictAttemptElapsedTime;
        int lastRestrictReason;
        long lastUsedByUserElapsedTime;
        long lastUsedElapsedTime;
        long lastUsedScreenTime;

        AppUsageHistory() {
        }
    }

    AppIdleHistory(File storageDir, long elapsedRealtime) {
        this.mElapsedSnapshot = elapsedRealtime;
        this.mScreenOnSnapshot = elapsedRealtime;
        this.mStorageDir = storageDir;
        readScreenOnTime();
    }

    public void updateDisplay(boolean screenOn, long elapsedRealtime) {
        if (screenOn == this.mScreenOn) {
            return;
        }
        this.mScreenOn = screenOn;
        if (screenOn) {
            this.mScreenOnSnapshot = elapsedRealtime;
            return;
        }
        this.mScreenOnDuration += elapsedRealtime - this.mScreenOnSnapshot;
        this.mElapsedDuration += elapsedRealtime - this.mElapsedSnapshot;
        this.mElapsedSnapshot = elapsedRealtime;
    }

    public long getScreenOnTime(long elapsedRealtime) {
        long screenOnTime = this.mScreenOnDuration;
        if (this.mScreenOn) {
            return screenOnTime + (elapsedRealtime - this.mScreenOnSnapshot);
        }
        return screenOnTime;
    }

    File getScreenOnTimeFile() {
        return new File(this.mStorageDir, "screen_on_time");
    }

    private void readScreenOnTime() {
        File screenOnTimeFile = getScreenOnTimeFile();
        if (screenOnTimeFile.exists()) {
            try {
                BufferedReader reader = new BufferedReader(new FileReader(screenOnTimeFile));
                this.mScreenOnDuration = Long.parseLong(reader.readLine());
                this.mElapsedDuration = Long.parseLong(reader.readLine());
                reader.close();
                return;
            } catch (IOException | NumberFormatException e) {
                return;
            }
        }
        writeScreenOnTime();
    }

    private void writeScreenOnTime() {
        AtomicFile screenOnTimeFile = new AtomicFile(getScreenOnTimeFile());
        FileOutputStream fos = null;
        try {
            fos = screenOnTimeFile.startWrite();
            fos.write((Long.toString(this.mScreenOnDuration) + "\n" + Long.toString(this.mElapsedDuration) + "\n").getBytes());
            screenOnTimeFile.finishWrite(fos);
        } catch (IOException e) {
            screenOnTimeFile.failWrite(fos);
        }
    }

    public void writeAppIdleDurations() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.mElapsedDuration += elapsedRealtime - this.mElapsedSnapshot;
        this.mElapsedSnapshot = elapsedRealtime;
        writeScreenOnTime();
    }

    AppUsageHistory reportUsage(AppUsageHistory appUsageHistory, String packageName, int userId, int newBucket, int usageReason, long elapsedRealtime, long timeout) {
        int newBucket2 = newBucket;
        int bucketingReason = usageReason | 768;
        boolean isUserUsage = AppStandbyController.isUserUsage(bucketingReason);
        if (appUsageHistory.currentBucket == 45 && !isUserUsage) {
            newBucket2 = 45;
            bucketingReason = appUsageHistory.bucketingReason;
        } else if (timeout > elapsedRealtime) {
            long timeoutTime = this.mElapsedDuration + (timeout - this.mElapsedSnapshot);
            if (newBucket2 == 10) {
                appUsageHistory.bucketActiveTimeoutTime = Math.max(timeoutTime, appUsageHistory.bucketActiveTimeoutTime);
            } else if (newBucket2 == 20) {
                appUsageHistory.bucketWorkingSetTimeoutTime = Math.max(timeoutTime, appUsageHistory.bucketWorkingSetTimeoutTime);
            } else {
                throw new IllegalArgumentException("Cannot set a timeout on bucket=" + newBucket2);
            }
        }
        if (elapsedRealtime != 0) {
            appUsageHistory.lastUsedElapsedTime = this.mElapsedDuration + (elapsedRealtime - this.mElapsedSnapshot);
            if (isUserUsage) {
                appUsageHistory.lastUsedByUserElapsedTime = appUsageHistory.lastUsedElapsedTime;
            }
            appUsageHistory.lastUsedScreenTime = getScreenOnTime(elapsedRealtime);
        }
        if (appUsageHistory.currentBucket > newBucket2) {
            appUsageHistory.currentBucket = newBucket2;
            logAppStandbyBucketChanged(packageName, userId, newBucket2, bucketingReason);
        }
        appUsageHistory.bucketingReason = bucketingReason;
        return appUsageHistory;
    }

    public AppUsageHistory reportUsage(String packageName, int userId, int newBucket, int usageReason, long nowElapsed, long timeout) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory history = getPackageHistory(userHistory, packageName, nowElapsed, true);
        return reportUsage(history, packageName, userId, newBucket, usageReason, nowElapsed, timeout);
    }

    private ArrayMap<String, AppUsageHistory> getUserHistory(int userId) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = this.mIdleHistory.get(userId);
        if (userHistory == null) {
            ArrayMap<String, AppUsageHistory> userHistory2 = new ArrayMap<>();
            this.mIdleHistory.put(userId, userHistory2);
            readAppIdleTimes(userId, userHistory2);
            return userHistory2;
        }
        return userHistory;
    }

    private AppUsageHistory getPackageHistory(ArrayMap<String, AppUsageHistory> userHistory, String packageName, long elapsedRealtime, boolean create) {
        AppUsageHistory appUsageHistory = userHistory.get(packageName);
        if (appUsageHistory == null && create) {
            AppUsageHistory appUsageHistory2 = new AppUsageHistory();
            appUsageHistory2.lastUsedElapsedTime = getElapsedTime(elapsedRealtime);
            appUsageHistory2.lastUsedScreenTime = getScreenOnTime(elapsedRealtime);
            appUsageHistory2.lastPredictedTime = getElapsedTime(0L);
            appUsageHistory2.currentBucket = 50;
            appUsageHistory2.bucketingReason = 256;
            appUsageHistory2.lastInformedBucket = -1;
            appUsageHistory2.lastJobRunTime = Long.MIN_VALUE;
            userHistory.put(packageName, appUsageHistory2);
            return appUsageHistory2;
        }
        return appUsageHistory;
    }

    public void onUserRemoved(int userId) {
        this.mIdleHistory.remove(userId);
    }

    public boolean isIdle(String packageName, int userId, long elapsedRealtime) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, true);
        return appUsageHistory.currentBucket >= 40;
    }

    public AppUsageHistory getAppUsageHistory(String packageName, int userId, long elapsedRealtime) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, true);
        return appUsageHistory;
    }

    public void setAppStandbyBucket(String packageName, int userId, long elapsedRealtime, int bucket, int reason) throws Throwable {
        setAppStandbyBucket(packageName, userId, elapsedRealtime, bucket, reason, false);
    }

    public void setAppStandbyBucket(String packageName, int userId, long elapsedRealtime, int bucket, int reason, boolean resetTimeout) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, true);
        boolean changed = appUsageHistory.currentBucket != bucket;
        appUsageHistory.currentBucket = bucket;
        appUsageHistory.bucketingReason = reason;
        long elapsed = getElapsedTime(elapsedRealtime);
        if ((65280 & reason) == 1280) {
            appUsageHistory.lastPredictedTime = elapsed;
            appUsageHistory.lastPredictedBucket = bucket;
        }
        if (resetTimeout) {
            appUsageHistory.bucketActiveTimeoutTime = elapsed;
            appUsageHistory.bucketWorkingSetTimeoutTime = elapsed;
        }
        if (changed) {
            logAppStandbyBucketChanged(packageName, userId, bucket, reason);
        }
    }

    public void updateLastPrediction(AppUsageHistory app, long elapsedTimeAdjusted, int bucket) {
        app.lastPredictedTime = elapsedTimeAdjusted;
        app.lastPredictedBucket = bucket;
    }

    public void setLastJobRunTime(String packageName, int userId, long elapsedRealtime) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, true);
        appUsageHistory.lastJobRunTime = getElapsedTime(elapsedRealtime);
    }

    void noteRestrictionAttempt(String packageName, int userId, long elapsedRealtime, int reason) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, true);
        appUsageHistory.lastRestrictAttemptElapsedTime = getElapsedTime(elapsedRealtime);
        appUsageHistory.lastRestrictReason = reason;
    }

    public long getTimeSinceLastJobRun(String packageName, int userId, long elapsedRealtime) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, false);
        if (appUsageHistory == null || appUsageHistory.lastJobRunTime == Long.MIN_VALUE) {
            return JobStatus.NO_LATEST_RUNTIME;
        }
        return getElapsedTime(elapsedRealtime) - appUsageHistory.lastJobRunTime;
    }

    public int getAppStandbyBucket(String packageName, int userId, long elapsedRealtime) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, false);
        if (appUsageHistory == null) {
            return 50;
        }
        return appUsageHistory.currentBucket;
    }

    public ArrayList<AppStandbyInfo> getAppStandbyBuckets(int userId, boolean appIdleEnabled) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        int size = userHistory.size();
        ArrayList<AppStandbyInfo> buckets = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            buckets.add(new AppStandbyInfo(userHistory.keyAt(i), appIdleEnabled ? userHistory.valueAt(i).currentBucket : 10));
        }
        return buckets;
    }

    public int getAppStandbyReason(String packageName, int userId, long elapsedRealtime) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, false);
        if (appUsageHistory != null) {
            return appUsageHistory.bucketingReason;
        }
        return 0;
    }

    public long getElapsedTime(long elapsedRealtime) {
        return (elapsedRealtime - this.mElapsedSnapshot) + this.mElapsedDuration;
    }

    public int setIdle(String packageName, int userId, boolean idle, long elapsedRealtime) throws Throwable {
        int newBucket;
        int reason;
        if (idle) {
            newBucket = 40;
            reason = 1024;
        } else {
            newBucket = 10;
            reason = UsbTerminalTypes.TERMINAL_OUT_HEADMOUNTED;
        }
        setAppStandbyBucket(packageName, userId, elapsedRealtime, newBucket, reason, false);
        return newBucket;
    }

    public void clearUsage(String packageName, int userId) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        userHistory.remove(packageName);
    }

    boolean shouldInformListeners(String packageName, int userId, long elapsedRealtime, int bucket) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, true);
        if (appUsageHistory.lastInformedBucket != bucket) {
            appUsageHistory.lastInformedBucket = bucket;
            return true;
        }
        return false;
    }

    int getThresholdIndex(String packageName, int userId, long elapsedRealtime, long[] screenTimeThresholds, long[] elapsedTimeThresholds) throws Throwable {
        ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
        AppUsageHistory appUsageHistory = getPackageHistory(userHistory, packageName, elapsedRealtime, false);
        if (appUsageHistory == null) {
            return screenTimeThresholds.length - 1;
        }
        long screenOnDelta = getScreenOnTime(elapsedRealtime) - appUsageHistory.lastUsedScreenTime;
        long elapsedDelta = getElapsedTime(elapsedRealtime) - appUsageHistory.lastUsedElapsedTime;
        for (int i = screenTimeThresholds.length - 1; i >= 0; i--) {
            if (screenOnDelta >= screenTimeThresholds[i] && elapsedDelta >= elapsedTimeThresholds[i]) {
                return i;
            }
        }
        return 0;
    }

    private void logAppStandbyBucketChanged(String packageName, int userId, int bucket, int reason) {
        FrameworkStatsLog.write(258, packageName, userId, bucket, reason & JobPackageTracker.EVENT_STOP_REASON_MASK, reason & 255);
    }

    File getUserFile(int userId) {
        return new File(new File(new File(this.mStorageDir, DatabaseHelper.SoundModelContract.KEY_USERS), Integer.toString(userId)), APP_IDLE_FILENAME);
    }

    public boolean userFileExists(int userId) {
        return getUserFile(userId).exists();
    }

    private void readAppIdleTimes(int userId, ArrayMap<String, AppUsageHistory> userHistory) throws Throwable {
        int type;
        int i;
        int i2;
        FileInputStream fis = null;
        try {
            try {
                try {
                    AtomicFile appIdleFile = new AtomicFile(getUserFile(userId));
                    fis = appIdleFile.openRead();
                    XmlPullParser parser = Xml.newPullParser();
                    parser.setInput(fis, StandardCharsets.UTF_8.name());
                    do {
                        type = parser.next();
                        i = 1;
                        i2 = 2;
                        if (type == 2) {
                            break;
                        }
                    } while (type != 1);
                    if (type != 2) {
                        Slog.e(TAG, "Unable to read app idle file for user " + userId);
                        IoUtils.closeQuietly(fis);
                        return;
                    }
                    if (!parser.getName().equals(TAG_PACKAGES)) {
                        IoUtils.closeQuietly(fis);
                        return;
                    }
                    while (true) {
                        int type2 = parser.next();
                        if (type2 == i) {
                            break;
                        }
                        if (type2 == i2) {
                            String name = parser.getName();
                            if (name.equals("package")) {
                                String packageName = parser.getAttributeValue(null, "name");
                                AppUsageHistory appUsageHistory = new AppUsageHistory();
                                appUsageHistory.lastUsedElapsedTime = Long.parseLong(parser.getAttributeValue(null, ATTR_ELAPSED_IDLE));
                                appUsageHistory.lastUsedByUserElapsedTime = getLongValue(parser, ATTR_LAST_USED_BY_USER_ELAPSED, appUsageHistory.lastUsedElapsedTime);
                                appUsageHistory.lastUsedScreenTime = Long.parseLong(parser.getAttributeValue(null, ATTR_SCREEN_IDLE));
                                appUsageHistory.lastPredictedTime = getLongValue(parser, ATTR_LAST_PREDICTED_TIME, 0L);
                                String currentBucketString = parser.getAttributeValue(null, ATTR_CURRENT_BUCKET);
                                appUsageHistory.currentBucket = currentBucketString == null ? 10 : Integer.parseInt(currentBucketString);
                                String bucketingReason = parser.getAttributeValue(null, ATTR_BUCKETING_REASON);
                                appUsageHistory.lastJobRunTime = getLongValue(parser, ATTR_LAST_RUN_JOB_TIME, Long.MIN_VALUE);
                                appUsageHistory.bucketActiveTimeoutTime = getLongValue(parser, ATTR_BUCKET_ACTIVE_TIMEOUT_TIME, 0L);
                                appUsageHistory.bucketWorkingSetTimeoutTime = getLongValue(parser, ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME, 0L);
                                appUsageHistory.bucketingReason = 256;
                                if (bucketingReason != null) {
                                    try {
                                        appUsageHistory.bucketingReason = Integer.parseInt(bucketingReason, 16);
                                    } catch (NumberFormatException nfe) {
                                        Slog.wtf(TAG, "Unable to read bucketing reason", nfe);
                                    }
                                }
                                appUsageHistory.lastRestrictAttemptElapsedTime = getLongValue(parser, ATTR_LAST_RESTRICTION_ATTEMPT_ELAPSED, 0L);
                                String lastRestrictReason = parser.getAttributeValue(null, ATTR_LAST_RESTRICTION_ATTEMPT_REASON);
                                if (lastRestrictReason != null) {
                                    try {
                                        appUsageHistory.lastRestrictReason = Integer.parseInt(lastRestrictReason, 16);
                                    } catch (NumberFormatException nfe2) {
                                        Slog.wtf(TAG, "Unable to read last restrict reason", nfe2);
                                    }
                                }
                                appUsageHistory.lastInformedBucket = -1;
                                try {
                                    userHistory.put(packageName, appUsageHistory);
                                } catch (IOException | XmlPullParserException e) {
                                    e = e;
                                    Slog.e(TAG, "Unable to read app idle file for user " + userId, e);
                                    IoUtils.closeQuietly(fis);
                                }
                            }
                        }
                        i = 1;
                        i2 = 2;
                    }
                    IoUtils.closeQuietly(fis);
                } catch (Throwable th) {
                    th = th;
                    IoUtils.closeQuietly((AutoCloseable) null);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                IoUtils.closeQuietly((AutoCloseable) null);
                throw th;
            }
        } catch (IOException | XmlPullParserException e2) {
            e = e2;
        }
    }

    private long getLongValue(XmlPullParser parser, String attrName, long defValue) {
        String value = parser.getAttributeValue(null, attrName);
        return value == null ? defValue : Long.parseLong(value);
    }

    public void writeAppIdleTimes() throws Throwable {
        int size = this.mIdleHistory.size();
        for (int i = 0; i < size; i++) {
            writeAppIdleTimes(this.mIdleHistory.keyAt(i));
        }
    }

    public void writeAppIdleTimes(int userId) throws Throwable {
        FileOutputStream fos = null;
        AtomicFile appIdleFile = new AtomicFile(getUserFile(userId));
        try {
            fos = appIdleFile.startWrite();
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            FastXmlSerializer xml = new FastXmlSerializer();
            xml.setOutput(bos, StandardCharsets.UTF_8.name());
            String str = null;
            xml.startDocument((String) null, true);
            xml.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            xml.startTag((String) null, TAG_PACKAGES);
            ArrayMap<String, AppUsageHistory> userHistory = getUserHistory(userId);
            int N = userHistory.size();
            int i = 0;
            while (i < N) {
                String packageName = userHistory.keyAt(i);
                if (packageName == null) {
                    Slog.w(TAG, "Skipping App Idle write for unexpected null package");
                    i = i;
                } else {
                    AppUsageHistory history = userHistory.valueAt(i);
                    xml.startTag(str, "package");
                    xml.attribute(str, "name", packageName);
                    xml.attribute(str, ATTR_ELAPSED_IDLE, Long.toString(history.lastUsedElapsedTime));
                    xml.attribute(str, ATTR_LAST_USED_BY_USER_ELAPSED, Long.toString(history.lastUsedByUserElapsedTime));
                    xml.attribute(str, ATTR_SCREEN_IDLE, Long.toString(history.lastUsedScreenTime));
                    xml.attribute(str, ATTR_LAST_PREDICTED_TIME, Long.toString(history.lastPredictedTime));
                    xml.attribute(str, ATTR_CURRENT_BUCKET, Integer.toString(history.currentBucket));
                    xml.attribute(str, ATTR_BUCKETING_REASON, Integer.toHexString(history.bucketingReason));
                    if (history.bucketActiveTimeoutTime > 0) {
                        xml.attribute((String) null, ATTR_BUCKET_ACTIVE_TIMEOUT_TIME, Long.toString(history.bucketActiveTimeoutTime));
                    }
                    if (history.bucketWorkingSetTimeoutTime > 0) {
                        xml.attribute((String) null, ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME, Long.toString(history.bucketWorkingSetTimeoutTime));
                    }
                    if (history.lastJobRunTime != Long.MIN_VALUE) {
                        xml.attribute((String) null, ATTR_LAST_RUN_JOB_TIME, Long.toString(history.lastJobRunTime));
                    }
                    if (history.lastRestrictAttemptElapsedTime > 0) {
                        xml.attribute((String) null, ATTR_LAST_RESTRICTION_ATTEMPT_ELAPSED, Long.toString(history.lastRestrictAttemptElapsedTime));
                    }
                    xml.attribute((String) null, ATTR_LAST_RESTRICTION_ATTEMPT_REASON, Integer.toHexString(history.lastRestrictReason));
                    xml.endTag((String) null, "package");
                }
                i++;
                str = null;
            }
            xml.endTag((String) null, TAG_PACKAGES);
            xml.endDocument();
            appIdleFile.finishWrite(fos);
        } catch (Exception e) {
            appIdleFile.failWrite(fos);
            Slog.e(TAG, "Error writing app idle file for user " + userId, e);
        }
    }

    public void dumpUsers(IndentingPrintWriter idpw, int[] userIds, List<String> pkgs) {
        for (int i : userIds) {
            idpw.println();
            dumpUser(idpw, i, pkgs);
        }
    }

    private void dumpUser(IndentingPrintWriter idpw, int userId, List<String> pkgs) {
        idpw.print("User ");
        idpw.print(userId);
        idpw.println(" App Standby States:");
        idpw.increaseIndent();
        ArrayMap<String, AppUsageHistory> userHistory = this.mIdleHistory.get(userId);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long totalElapsedTime = getElapsedTime(elapsedRealtime);
        long screenOnTime = getScreenOnTime(elapsedRealtime);
        if (userHistory == null) {
            return;
        }
        int P = userHistory.size();
        int p = 0;
        while (p < P) {
            String packageName = userHistory.keyAt(p);
            AppUsageHistory appUsageHistory = userHistory.valueAt(p);
            if (CollectionUtils.isEmpty(pkgs) || pkgs.contains(packageName)) {
                idpw.print("package=" + packageName);
                idpw.print(" u=" + userId);
                idpw.print(" bucket=" + appUsageHistory.currentBucket + " reason=" + UsageStatsManager.reasonToString(appUsageHistory.bucketingReason));
                idpw.print(" used=");
                TimeUtils.formatDuration(totalElapsedTime - appUsageHistory.lastUsedElapsedTime, idpw);
                idpw.print(" usedByUser=");
                TimeUtils.formatDuration(totalElapsedTime - appUsageHistory.lastUsedByUserElapsedTime, idpw);
                idpw.print(" usedScr=");
                TimeUtils.formatDuration(screenOnTime - appUsageHistory.lastUsedScreenTime, idpw);
                idpw.print(" lastPred=");
                TimeUtils.formatDuration(totalElapsedTime - appUsageHistory.lastPredictedTime, idpw);
                idpw.print(" activeLeft=");
                TimeUtils.formatDuration(appUsageHistory.bucketActiveTimeoutTime - totalElapsedTime, idpw);
                idpw.print(" wsLeft=");
                TimeUtils.formatDuration(appUsageHistory.bucketWorkingSetTimeoutTime - totalElapsedTime, idpw);
                idpw.print(" lastJob=");
                TimeUtils.formatDuration(totalElapsedTime - appUsageHistory.lastJobRunTime, idpw);
                if (appUsageHistory.lastRestrictAttemptElapsedTime > 0) {
                    idpw.print(" lastRestrictAttempt=");
                    TimeUtils.formatDuration(totalElapsedTime - appUsageHistory.lastRestrictAttemptElapsedTime, idpw);
                    idpw.print(" lastRestrictReason=" + UsageStatsManager.reasonToString(appUsageHistory.lastRestrictReason));
                }
                StringBuilder sb = new StringBuilder();
                sb.append(" idle=");
                sb.append(isIdle(packageName, userId, elapsedRealtime) ? "y" : "n");
                idpw.print(sb.toString());
                idpw.println();
            }
            p++;
            userHistory = userHistory;
        }
        idpw.println();
        idpw.print("totalElapsedTime=");
        TimeUtils.formatDuration(getElapsedTime(elapsedRealtime), idpw);
        idpw.println();
        idpw.print("totalScreenOnTime=");
        TimeUtils.formatDuration(getScreenOnTime(elapsedRealtime), idpw);
        idpw.println();
        idpw.decreaseIndent();
    }
}
