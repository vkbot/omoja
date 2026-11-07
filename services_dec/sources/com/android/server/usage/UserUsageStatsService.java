package com.android.server.usage;

import android.app.usage.ConfigurationStats;
import android.app.usage.EventList;
import android.app.usage.EventStats;
import android.app.usage.TimeSparseArray;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.res.Configuration;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.SystemClock;
import android.text.format.DateUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseIntArray;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.am.AssistDataRequester;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.voiceinteraction.DatabaseHelper;
import com.android.server.wm.WindowManagerService;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class UserUsageStatsService {
    private static final boolean DEBUG = false;
    private static final String TAG = "UsageStatsService";
    private static final int sDateFormatFlags = 131093;
    private final Context mContext;
    private final UsageStatsDatabase mDatabase;
    private String mLastBackgroundedPackage;
    private final StatsUpdatedListener mListener;
    private final String mLogPrefix;
    private final int mUserId;
    private static final SimpleDateFormat sDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static final long[] INTERVAL_LENGTH = {86400000, UnixCalendar.WEEK_IN_MILLIS, UnixCalendar.MONTH_IN_MILLIS, 31536000000L};
    private static final UsageStatsDatabase.StatCombiner<UsageStats> sUsageStatsCombiner = new UsageStatsDatabase.StatCombiner<UsageStats>() { // from class: com.android.server.usage.UserUsageStatsService.1
        @Override // com.android.server.usage.UsageStatsDatabase.StatCombiner
        public void combine(IntervalStats stats, boolean mutable, List<UsageStats> accResult) {
            if (!mutable) {
                accResult.addAll(stats.packageStats.values());
                return;
            }
            int statCount = stats.packageStats.size();
            for (int i = 0; i < statCount; i++) {
                accResult.add(new UsageStats(stats.packageStats.valueAt(i)));
            }
        }
    };
    private static final UsageStatsDatabase.StatCombiner<ConfigurationStats> sConfigStatsCombiner = new UsageStatsDatabase.StatCombiner<ConfigurationStats>() { // from class: com.android.server.usage.UserUsageStatsService.2
        @Override // com.android.server.usage.UsageStatsDatabase.StatCombiner
        public void combine(IntervalStats stats, boolean mutable, List<ConfigurationStats> accResult) {
            if (!mutable) {
                accResult.addAll(stats.configurations.values());
                return;
            }
            int configCount = stats.configurations.size();
            for (int i = 0; i < configCount; i++) {
                accResult.add(new ConfigurationStats(stats.configurations.valueAt(i)));
            }
        }
    };
    private static final UsageStatsDatabase.StatCombiner<EventStats> sEventStatsCombiner = new UsageStatsDatabase.StatCombiner<EventStats>() { // from class: com.android.server.usage.UserUsageStatsService.3
        @Override // com.android.server.usage.UsageStatsDatabase.StatCombiner
        public void combine(IntervalStats stats, boolean mutable, List<EventStats> accResult) {
            stats.addEventStatsTo(accResult);
        }
    };
    private boolean mStatsChanged = false;
    private final UnixCalendar mDailyExpiryDate = new UnixCalendar(0);
    private final IntervalStats[] mCurrentStats = new IntervalStats[4];
    private long mRealTimeSnapshot = SystemClock.elapsedRealtime();
    private long mSystemTimeSnapshot = System.currentTimeMillis();

    interface StatsUpdatedListener {
        void onNewUpdate(int i);

        void onStatsReloaded();

        void onStatsUpdated();
    }

    UserUsageStatsService(Context context, int userId, File usageStatsDir, StatsUpdatedListener listener) {
        this.mContext = context;
        this.mDatabase = new UsageStatsDatabase(usageStatsDir);
        this.mListener = listener;
        this.mLogPrefix = "User[" + Integer.toString(userId) + "] ";
        this.mUserId = userId;
    }

    void init(long currentTimeMillis, HashMap<String, Long> installedPackages, boolean deleteObsoleteData) {
        IntervalStats[] intervalStatsArr;
        readPackageMappingsLocked(installedPackages, deleteObsoleteData);
        this.mDatabase.init(currentTimeMillis);
        if (this.mDatabase.wasUpgradePerformed()) {
            this.mDatabase.prunePackagesDataOnUpgrade(installedPackages);
        }
        int nullCount = 0;
        int i = 0;
        while (true) {
            intervalStatsArr = this.mCurrentStats;
            if (i >= intervalStatsArr.length) {
                break;
            }
            intervalStatsArr[i] = this.mDatabase.getLatestUsageStats(i);
            if (this.mCurrentStats[i] == null) {
                nullCount++;
            }
            i++;
        }
        if (nullCount > 0) {
            if (nullCount != intervalStatsArr.length) {
                Slog.w(TAG, this.mLogPrefix + "Some stats have no latest available");
            }
            loadActiveStats(currentTimeMillis);
        } else {
            updateRolloverDeadline();
        }
        IntervalStats currentDailyStats = this.mCurrentStats[0];
        if (currentDailyStats != null) {
            UsageEvents.Event shutdownEvent = new UsageEvents.Event(26, Math.max(currentDailyStats.lastTimeSaved, currentDailyStats.endTime));
            shutdownEvent.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            currentDailyStats.addEvent(shutdownEvent);
            UsageEvents.Event startupEvent = new UsageEvents.Event(27, System.currentTimeMillis());
            startupEvent.mPackage = PackageManagerService.PLATFORM_PACKAGE_NAME;
            currentDailyStats.addEvent(startupEvent);
        }
        if (this.mDatabase.isNewUpdate()) {
            notifyNewUpdate();
        }
    }

    void userStopped() {
        persistActiveStats();
    }

    int onPackageRemoved(String packageName, long timeRemoved) {
        return this.mDatabase.onPackageRemoved(packageName, timeRemoved);
    }

    private void readPackageMappingsLocked(HashMap<String, Long> installedPackages, boolean deleteObsoleteData) {
        this.mDatabase.readMappingsLocked();
        if (this.mUserId != 0 && deleteObsoleteData) {
            updatePackageMappingsLocked(installedPackages);
        }
    }

    boolean updatePackageMappingsLocked(HashMap<String, Long> installedPackages) {
        if (ArrayUtils.isEmpty(installedPackages)) {
            return true;
        }
        long timeNow = System.currentTimeMillis();
        ArrayList<String> removedPackages = new ArrayList<>();
        for (int i = this.mDatabase.mPackagesTokenData.packagesToTokensMap.size() - 1; i >= 0; i--) {
            String packageName = this.mDatabase.mPackagesTokenData.packagesToTokensMap.keyAt(i);
            if (!installedPackages.containsKey(packageName)) {
                removedPackages.add(packageName);
            }
        }
        if (removedPackages.isEmpty()) {
            return true;
        }
        for (int i2 = removedPackages.size() - 1; i2 >= 0; i2--) {
            this.mDatabase.mPackagesTokenData.removePackage(removedPackages.get(i2), timeNow);
        }
        try {
            this.mDatabase.writeMappingsLocked();
            return true;
        } catch (Exception e) {
            Slog.w(TAG, "Unable to write updated package mappings file on service initialization.");
            return false;
        }
    }

    boolean pruneUninstalledPackagesData() {
        return this.mDatabase.pruneUninstalledPackagesData();
    }

    private void onTimeChanged(long oldTime, long newTime) {
        persistActiveStats();
        this.mDatabase.onTimeChanged(newTime - oldTime);
        loadActiveStats(newTime);
    }

    private long checkAndGetTimeLocked() {
        long actualSystemTime = System.currentTimeMillis();
        if (!UsageStatsService.ENABLE_TIME_CHANGE_CORRECTION) {
            return actualSystemTime;
        }
        long actualRealtime = SystemClock.elapsedRealtime();
        long expectedSystemTime = (actualRealtime - this.mRealTimeSnapshot) + this.mSystemTimeSnapshot;
        long diffSystemTime = actualSystemTime - expectedSystemTime;
        if (Math.abs(diffSystemTime) > 2000) {
            Slog.i(TAG, this.mLogPrefix + "Time changed in by " + (diffSystemTime / 1000) + " seconds");
            onTimeChanged(expectedSystemTime, actualSystemTime);
            this.mRealTimeSnapshot = actualRealtime;
            this.mSystemTimeSnapshot = actualSystemTime;
        }
        return actualSystemTime;
    }

    private void convertToSystemTimeLocked(UsageEvents.Event event) {
        event.mTimeStamp = Math.max(0L, event.mTimeStamp - this.mRealTimeSnapshot) + this.mSystemTimeSnapshot;
    }

    void reportEvent(UsageEvents.Event event) {
        checkAndGetTimeLocked();
        convertToSystemTimeLocked(event);
        if (event.mTimeStamp >= this.mDailyExpiryDate.getTimeInMillis()) {
            rolloverStats(event.mTimeStamp);
        }
        IntervalStats currentDailyStats = this.mCurrentStats[0];
        Configuration newFullConfig = event.mConfiguration;
        int i = 5;
        if (event.mEventType == 5 && currentDailyStats.activeConfiguration != null) {
            event.mConfiguration = Configuration.generateDelta(currentDailyStats.activeConfiguration, newFullConfig);
        }
        if (event.mEventType != 6 && event.mEventType != 24 && event.mEventType != 25 && event.mEventType != 26) {
            currentDailyStats.addEvent(event);
        }
        boolean incrementAppLaunch = false;
        if (event.mEventType == 1) {
            if (event.mPackage != null && !event.mPackage.equals(this.mLastBackgroundedPackage)) {
                incrementAppLaunch = true;
            }
        } else if (event.mEventType == 2 && event.mPackage != null) {
            this.mLastBackgroundedPackage = event.mPackage;
        }
        IntervalStats[] intervalStatsArr = this.mCurrentStats;
        int length = intervalStatsArr.length;
        int i2 = 0;
        while (i2 < length) {
            IntervalStats stats = intervalStatsArr[i2];
            int i3 = event.mEventType;
            if (i3 == i) {
                stats.updateConfigurationStats(newFullConfig, event.mTimeStamp);
            } else if (i3 == 9) {
                stats.updateChooserCounts(event.mPackage, event.mContentType, event.mAction);
                String[] annotations = event.mContentAnnotations;
                if (annotations != null) {
                    for (String annotation : annotations) {
                        stats.updateChooserCounts(event.mPackage, annotation, event.mAction);
                    }
                }
            } else {
                switch (i3) {
                    case 15:
                        stats.updateScreenInteractive(event.mTimeStamp);
                        break;
                    case 16:
                        stats.updateScreenNonInteractive(event.mTimeStamp);
                        break;
                    case 17:
                        stats.updateKeyguardShown(event.mTimeStamp);
                        break;
                    case 18:
                        stats.updateKeyguardHidden(event.mTimeStamp);
                        break;
                    default:
                        stats.update(event.mPackage, event.getClassName(), event.mTimeStamp, event.mEventType, event.mInstanceId);
                        if (incrementAppLaunch) {
                            stats.incrementAppLaunchCount(event.mPackage);
                        }
                        break;
                }
            }
            i2++;
            i = 5;
        }
        notifyStatsChanged();
    }

    private static boolean validRange(long currentTime, long beginTime, long endTime) {
        return beginTime <= currentTime && beginTime < endTime;
    }

    private <T> List<T> queryStats(int intervalType, long beginTime, long endTime, UsageStatsDatabase.StatCombiner<T> combiner) throws Throwable {
        int intervalType2;
        if (intervalType != 4) {
            intervalType2 = intervalType;
        } else {
            int intervalType3 = this.mDatabase.findBestFitBucket(beginTime, endTime);
            if (intervalType3 >= 0) {
                intervalType2 = intervalType3;
            } else {
                intervalType2 = 0;
            }
        }
        if (intervalType2 >= 0) {
            IntervalStats[] intervalStatsArr = this.mCurrentStats;
            if (intervalType2 < intervalStatsArr.length) {
                IntervalStats currentStats = intervalStatsArr[intervalType2];
                if (beginTime >= currentStats.endTime) {
                    return null;
                }
                long truncatedEndTime = Math.min(currentStats.beginTime, endTime);
                List<T> results = this.mDatabase.queryUsageStats(intervalType2, beginTime, truncatedEndTime, combiner);
                if (beginTime < currentStats.endTime && endTime > currentStats.beginTime) {
                    if (results == null) {
                        results = new ArrayList();
                    }
                    this.mDatabase.filterStats(currentStats);
                    combiner.combine(currentStats, true, results);
                }
                return results;
            }
        }
        return null;
    }

    List<UsageStats> queryUsageStats(int bucketType, long beginTime, long endTime) {
        if (!validRange(checkAndGetTimeLocked(), beginTime, endTime)) {
            return null;
        }
        return queryStats(bucketType, beginTime, endTime, sUsageStatsCombiner);
    }

    List<ConfigurationStats> queryConfigurationStats(int bucketType, long beginTime, long endTime) {
        if (!validRange(checkAndGetTimeLocked(), beginTime, endTime)) {
            return null;
        }
        return queryStats(bucketType, beginTime, endTime, sConfigStatsCombiner);
    }

    List<EventStats> queryEventStats(int bucketType, long beginTime, long endTime) {
        if (!validRange(checkAndGetTimeLocked(), beginTime, endTime)) {
            return null;
        }
        return queryStats(bucketType, beginTime, endTime, sEventStatsCombiner);
    }

    UsageEvents queryEvents(final long beginTime, final long endTime, final int flags) throws Throwable {
        if (!validRange(checkAndGetTimeLocked(), beginTime, endTime)) {
            return null;
        }
        final ArraySet<String> names = new ArraySet<>();
        List<UsageEvents.Event> results = queryStats(0, beginTime, endTime, new UsageStatsDatabase.StatCombiner<UsageEvents.Event>() { // from class: com.android.server.usage.UserUsageStatsService.4
            @Override // com.android.server.usage.UsageStatsDatabase.StatCombiner
            public void combine(IntervalStats stats, boolean mutable, List<UsageEvents.Event> accumulatedResult) {
                int startIndex = stats.events.firstIndexOnOrAfter(beginTime);
                int size = stats.events.size();
                for (int i = startIndex; i < size && stats.events.get(i).mTimeStamp < endTime; i++) {
                    UsageEvents.Event event = stats.events.get(i);
                    int eventType = event.mEventType;
                    if ((eventType != 8 || (flags & 2) != 2) && (eventType != 30 || (flags & 8) != 8)) {
                        if ((eventType == 10 || eventType == 12) && (flags & 4) == 4) {
                            event = event.getObfuscatedNotificationEvent();
                        }
                        if ((flags & 1) == 1) {
                            event = event.getObfuscatedIfInstantApp();
                        }
                        if (event.mPackage != null) {
                            names.add(event.mPackage);
                        }
                        if (event.mClass != null) {
                            names.add(event.mClass);
                        }
                        if (event.mTaskRootPackage != null) {
                            names.add(event.mTaskRootPackage);
                        }
                        if (event.mTaskRootClass != null) {
                            names.add(event.mTaskRootClass);
                        }
                        accumulatedResult.add(event);
                    }
                }
            }
        });
        if (results == null || results.isEmpty()) {
            return null;
        }
        String[] table = (String[]) names.toArray(new String[names.size()]);
        Arrays.sort(table);
        return new UsageEvents(results, table, true);
    }

    UsageEvents queryEventsForPackage(final long beginTime, final long endTime, final String packageName, final boolean includeTaskRoot) throws Throwable {
        if (!validRange(checkAndGetTimeLocked(), beginTime, endTime)) {
            return null;
        }
        final ArraySet<String> names = new ArraySet<>();
        names.add(packageName);
        List<UsageEvents.Event> results = queryStats(0, beginTime, endTime, new UsageStatsDatabase.StatCombiner() { // from class: com.android.server.usage.-$$Lambda$UserUsageStatsService$wWX7s9XZT5O4B7JcG_IB_VcPI9s
            @Override // com.android.server.usage.UsageStatsDatabase.StatCombiner
            public final void combine(IntervalStats intervalStats, boolean z, List list) {
                UserUsageStatsService.lambda$queryEventsForPackage$0(beginTime, endTime, packageName, names, includeTaskRoot, intervalStats, z, list);
            }
        });
        if (results == null || results.isEmpty()) {
            return null;
        }
        String[] table = (String[]) names.toArray(new String[names.size()]);
        Arrays.sort(table);
        return new UsageEvents(results, table, includeTaskRoot);
    }

    static /* synthetic */ void lambda$queryEventsForPackage$0(long beginTime, long endTime, String packageName, ArraySet names, boolean includeTaskRoot, IntervalStats stats, boolean mutable, List accumulatedResult) {
        int startIndex = stats.events.firstIndexOnOrAfter(beginTime);
        int size = stats.events.size();
        for (int i = startIndex; i < size && stats.events.get(i).mTimeStamp < endTime; i++) {
            UsageEvents.Event event = stats.events.get(i);
            if (packageName.equals(event.mPackage)) {
                if (event.mClass != null) {
                    names.add(event.mClass);
                }
                if (includeTaskRoot && event.mTaskRootPackage != null) {
                    names.add(event.mTaskRootPackage);
                }
                if (includeTaskRoot && event.mTaskRootClass != null) {
                    names.add(event.mTaskRootClass);
                }
                accumulatedResult.add(event);
            }
        }
    }

    void persistActiveStats() {
        if (this.mStatsChanged) {
            Slog.i(TAG, this.mLogPrefix + "Flushing usage stats to disk");
            try {
                this.mDatabase.obfuscateCurrentStats(this.mCurrentStats);
                this.mDatabase.writeMappingsLocked();
                for (int i = 0; i < this.mCurrentStats.length; i++) {
                    this.mDatabase.putUsageStats(i, this.mCurrentStats[i]);
                }
                this.mStatsChanged = false;
            } catch (IOException e) {
                Slog.e(TAG, this.mLogPrefix + "Failed to persist active stats", e);
            }
        }
    }

    private void rolloverStats(long currentTimeMillis) {
        IntervalStats[] intervalStatsArr;
        int i;
        IntervalStats stat;
        int i2;
        long startTime = SystemClock.elapsedRealtime();
        Slog.i(TAG, this.mLogPrefix + "Rolling over usage stats");
        Configuration previousConfig = this.mCurrentStats[0].activeConfiguration;
        ArraySet<String> continuePkgs = new ArraySet<>();
        ArrayMap<String, SparseIntArray> continueActivity = new ArrayMap<>();
        ArrayMap<String, ArrayMap<String, Integer>> continueForegroundService = new ArrayMap<>();
        IntervalStats[] intervalStatsArr2 = this.mCurrentStats;
        int length = intervalStatsArr2.length;
        int i3 = 0;
        while (i3 < length) {
            IntervalStats stat2 = intervalStatsArr2[i3];
            int pkgCount = stat2.packageStats.size();
            int i4 = 0;
            while (i4 < pkgCount) {
                UsageStats pkgStats = stat2.packageStats.valueAt(i4);
                if (pkgStats.mActivities.size() > 0 || !pkgStats.mForegroundServices.isEmpty()) {
                    if (pkgStats.mActivities.size() > 0) {
                        continueActivity.put(pkgStats.mPackageName, pkgStats.mActivities);
                        stat2.update(pkgStats.mPackageName, null, this.mDailyExpiryDate.getTimeInMillis() - 1, 3, 0);
                    }
                    if (!pkgStats.mForegroundServices.isEmpty()) {
                        continueForegroundService.put(pkgStats.mPackageName, pkgStats.mForegroundServices);
                        stat2.update(pkgStats.mPackageName, null, this.mDailyExpiryDate.getTimeInMillis() - 1, 22, 0);
                    }
                    continuePkgs.add(pkgStats.mPackageName);
                    notifyStatsChanged();
                } else {
                    intervalStatsArr2 = intervalStatsArr2;
                    i4 = i4;
                    pkgCount = pkgCount;
                    stat2 = stat2;
                }
                i4++;
                pkgCount = pkgCount;
                intervalStatsArr2 = intervalStatsArr2;
                stat2 = stat2;
            }
            IntervalStats stat3 = stat2;
            stat3.updateConfigurationStats(null, this.mDailyExpiryDate.getTimeInMillis() - 1);
            stat3.commitTime(this.mDailyExpiryDate.getTimeInMillis() - 1);
            i3++;
            intervalStatsArr2 = intervalStatsArr2;
        }
        persistActiveStats();
        this.mDatabase.prune(currentTimeMillis);
        loadActiveStats(currentTimeMillis);
        int continueCount = continuePkgs.size();
        int i5 = 0;
        while (i5 < continueCount) {
            String pkgName = continuePkgs.valueAt(i5);
            long beginTime = this.mCurrentStats[0].beginTime;
            IntervalStats[] intervalStatsArr3 = this.mCurrentStats;
            long beginTime2 = beginTime;
            int i6 = 0;
            for (int length2 = intervalStatsArr3.length; i6 < length2; length2 = i2) {
                int i7 = length2;
                IntervalStats stat4 = intervalStatsArr3[i6];
                if (continueActivity.containsKey(pkgName)) {
                    SparseIntArray eventMap = continueActivity.get(pkgName);
                    int size = eventMap.size();
                    int j = 0;
                    while (j < size) {
                        stat4.update(pkgName, null, beginTime2, eventMap.valueAt(j), eventMap.keyAt(j));
                        j++;
                        intervalStatsArr3 = intervalStatsArr3;
                        i6 = i6;
                        i7 = i7;
                        stat4 = stat4;
                    }
                    intervalStatsArr = intervalStatsArr3;
                    i = i6;
                    stat = stat4;
                    i2 = i7;
                } else {
                    intervalStatsArr = intervalStatsArr3;
                    i = i6;
                    stat = stat4;
                    i2 = i7;
                }
                if (continueForegroundService.containsKey(pkgName)) {
                    ArrayMap<String, Integer> eventMap2 = continueForegroundService.get(pkgName);
                    int size2 = eventMap2.size();
                    for (int j2 = 0; j2 < size2; j2++) {
                        stat.update(pkgName, eventMap2.keyAt(j2), beginTime2, eventMap2.valueAt(j2).intValue(), 0);
                    }
                }
                long beginTime3 = beginTime2;
                stat.updateConfigurationStats(previousConfig, beginTime3);
                notifyStatsChanged();
                i6 = i + 1;
                beginTime2 = beginTime3;
                continueCount = continueCount;
                continuePkgs = continuePkgs;
                continueActivity = continueActivity;
                intervalStatsArr3 = intervalStatsArr;
            }
            i5++;
            continueCount = continueCount;
            continuePkgs = continuePkgs;
        }
        persistActiveStats();
        long totalTime = SystemClock.elapsedRealtime() - startTime;
        Slog.i(TAG, this.mLogPrefix + "Rolling over usage stats complete. Took " + totalTime + " milliseconds");
    }

    private void notifyStatsChanged() {
        if (!this.mStatsChanged) {
            this.mStatsChanged = true;
            this.mListener.onStatsUpdated();
        }
    }

    private void notifyNewUpdate() {
        this.mListener.onNewUpdate(this.mUserId);
    }

    private void loadActiveStats(long currentTimeMillis) {
        for (int intervalType = 0; intervalType < this.mCurrentStats.length; intervalType++) {
            IntervalStats stats = this.mDatabase.getLatestUsageStats(intervalType);
            if (stats != null && currentTimeMillis < stats.beginTime + INTERVAL_LENGTH[intervalType]) {
                this.mCurrentStats[intervalType] = stats;
            } else {
                this.mCurrentStats[intervalType] = new IntervalStats();
                this.mCurrentStats[intervalType].beginTime = currentTimeMillis;
                this.mCurrentStats[intervalType].endTime = 1 + currentTimeMillis;
            }
        }
        this.mStatsChanged = false;
        updateRolloverDeadline();
        this.mListener.onStatsReloaded();
    }

    private void updateRolloverDeadline() {
        this.mDailyExpiryDate.setTimeInMillis(this.mCurrentStats[0].beginTime);
        this.mDailyExpiryDate.addDays(1);
        Slog.i(TAG, this.mLogPrefix + "Rollover scheduled @ " + sDateFormat.format(Long.valueOf(this.mDailyExpiryDate.getTimeInMillis())) + "(" + this.mDailyExpiryDate.getTimeInMillis() + ")");
    }

    void checkin(final IndentingPrintWriter pw) {
        this.mDatabase.checkinDailyFiles(new UsageStatsDatabase.CheckinAction() { // from class: com.android.server.usage.UserUsageStatsService.5
            @Override // com.android.server.usage.UsageStatsDatabase.CheckinAction
            public boolean checkin(IntervalStats stats) {
                UserUsageStatsService.this.printIntervalStats(pw, stats, false, false, null);
                return true;
            }
        });
    }

    void dump(IndentingPrintWriter pw, List<String> pkgs) throws Throwable {
        dump(pw, pkgs, false);
    }

    void dump(IndentingPrintWriter pw, List<String> pkgs, boolean compact) throws Throwable {
        printLast24HrEvents(pw, !compact, pkgs);
        for (int interval = 0; interval < this.mCurrentStats.length; interval++) {
            pw.print("In-memory ");
            pw.print(intervalToString(interval));
            pw.println(" stats");
            printIntervalStats(pw, this.mCurrentStats[interval], !compact, true, pkgs);
        }
        if (CollectionUtils.isEmpty(pkgs)) {
            this.mDatabase.dump(pw, compact);
        }
    }

    void dumpDatabaseInfo(IndentingPrintWriter ipw) {
        this.mDatabase.dump(ipw, false);
    }

    void dumpMappings(IndentingPrintWriter ipw) {
        this.mDatabase.dumpMappings(ipw);
    }

    void dumpFile(IndentingPrintWriter ipw, String[] args) {
        int interval;
        if (args == null || args.length == 0) {
            int numIntervals = this.mDatabase.mSortedStatFiles.length;
            for (int interval2 = 0; interval2 < numIntervals; interval2++) {
                ipw.println("interval=" + intervalToString(interval2));
                ipw.increaseIndent();
                dumpFileDetailsForInterval(ipw, interval2);
                ipw.decreaseIndent();
            }
            return;
        }
        try {
            int intervalValue = stringToInterval(args[0]);
            if (intervalValue == -1) {
                interval = Integer.valueOf(args[0]).intValue();
            } else {
                interval = intervalValue;
            }
            if (interval < 0 || interval >= this.mDatabase.mSortedStatFiles.length) {
                ipw.println("the specified interval does not exist.");
                return;
            }
            if (args.length == 1) {
                dumpFileDetailsForInterval(ipw, interval);
                return;
            }
            try {
                long filename = Long.valueOf(args[1]).longValue();
                IntervalStats stats = this.mDatabase.readIntervalStatsForFile(interval, filename);
                if (stats == null) {
                    ipw.println("the specified filename does not exist.");
                } else {
                    dumpFileDetails(ipw, stats, Long.valueOf(args[1]).longValue());
                }
            } catch (NumberFormatException e) {
                ipw.println("invalid filename specified.");
            }
        } catch (NumberFormatException e2) {
            ipw.println("invalid interval specified.");
        }
    }

    private void dumpFileDetailsForInterval(IndentingPrintWriter ipw, int interval) {
        TimeSparseArray<AtomicFile> files = this.mDatabase.mSortedStatFiles[interval];
        int numFiles = files.size();
        for (int i = 0; i < numFiles; i++) {
            long filename = files.keyAt(i);
            IntervalStats stats = this.mDatabase.readIntervalStatsForFile(interval, filename);
            dumpFileDetails(ipw, stats, filename);
            ipw.println();
        }
    }

    private void dumpFileDetails(IndentingPrintWriter ipw, IntervalStats stats, long filename) {
        ipw.println("file=" + filename);
        ipw.increaseIndent();
        printIntervalStats(ipw, stats, false, false, null);
        ipw.decreaseIndent();
    }

    static String formatDateTime(long dateTime, boolean pretty) {
        if (pretty) {
            return "\"" + sDateFormat.format(Long.valueOf(dateTime)) + "\"";
        }
        return Long.toString(dateTime);
    }

    private String formatElapsedTime(long elapsedTime, boolean pretty) {
        if (pretty) {
            return "\"" + DateUtils.formatElapsedTime(elapsedTime / 1000) + "\"";
        }
        return Long.toString(elapsedTime);
    }

    void printEvent(IndentingPrintWriter pw, UsageEvents.Event event, boolean prettyDates) {
        pw.printPair("time", formatDateTime(event.mTimeStamp, prettyDates));
        pw.printPair(DatabaseHelper.SoundModelContract.KEY_TYPE, eventToString(event.mEventType));
        pw.printPair(Settings.ATTR_PACKAGE, event.mPackage);
        if (event.mClass != null) {
            pw.printPair("class", event.mClass);
        }
        if (event.mConfiguration != null) {
            pw.printPair("config", Configuration.resourceQualifierString(event.mConfiguration));
        }
        if (event.mShortcutId != null) {
            pw.printPair("shortcutId", event.mShortcutId);
        }
        if (event.mEventType == 11) {
            pw.printPair("standbyBucket", Integer.valueOf(event.getStandbyBucket()));
            pw.printPair(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY, UsageStatsManager.reasonToString(event.getStandbyReason()));
        } else if (event.mEventType == 1 || event.mEventType == 2 || event.mEventType == 23) {
            pw.printPair("instanceId", Integer.valueOf(event.getInstanceId()));
        }
        if (event.getTaskRootPackageName() != null) {
            pw.printPair("taskRootPackage", event.getTaskRootPackageName());
        }
        if (event.getTaskRootClassName() != null) {
            pw.printPair("taskRootClass", event.getTaskRootClassName());
        }
        if (event.mNotificationChannelId != null) {
            pw.printPair("channelId", event.mNotificationChannelId);
        }
        pw.printHexPair("flags", event.mFlags);
        pw.println();
    }

    void printLast24HrEvents(IndentingPrintWriter pw, boolean prettyDates, final List<String> pkgs) throws Throwable {
        final long endTime = System.currentTimeMillis();
        UnixCalendar yesterday = new UnixCalendar(endTime);
        yesterday.addDays(-1);
        final long beginTime = yesterday.getTimeInMillis();
        List<UsageEvents.Event> events = queryStats(0, beginTime, endTime, new UsageStatsDatabase.StatCombiner<UsageEvents.Event>() { // from class: com.android.server.usage.UserUsageStatsService.6
            @Override // com.android.server.usage.UsageStatsDatabase.StatCombiner
            public void combine(IntervalStats stats, boolean mutable, List<UsageEvents.Event> accumulatedResult) {
                int startIndex = stats.events.firstIndexOnOrAfter(beginTime);
                int size = stats.events.size();
                for (int i = startIndex; i < size && stats.events.get(i).mTimeStamp < endTime; i++) {
                    UsageEvents.Event event = stats.events.get(i);
                    if (CollectionUtils.isEmpty(pkgs) || pkgs.contains(event.mPackage)) {
                        accumulatedResult.add(event);
                    }
                }
            }
        });
        pw.print("Last 24 hour events (");
        if (prettyDates) {
            pw.printPair("timeRange", "\"" + DateUtils.formatDateRange(this.mContext, beginTime, endTime, sDateFormatFlags) + "\"");
        } else {
            pw.printPair("beginTime", Long.valueOf(beginTime));
            pw.printPair("endTime", Long.valueOf(endTime));
        }
        pw.println(")");
        if (events != null) {
            pw.increaseIndent();
            for (UsageEvents.Event event : events) {
                printEvent(pw, event, prettyDates);
            }
            pw.decreaseIndent();
        }
    }

    void printEventAggregation(IndentingPrintWriter pw, String label, IntervalStats.EventTracker tracker, boolean prettyDates) {
        if (tracker.count != 0 || tracker.duration != 0) {
            pw.print(label);
            pw.print(": ");
            pw.print(tracker.count);
            pw.print("x for ");
            pw.print(formatElapsedTime(tracker.duration, prettyDates));
            if (tracker.curStartTime != 0) {
                pw.print(" (now running, started at ");
                formatDateTime(tracker.curStartTime, prettyDates);
                pw.print(")");
            }
            pw.println();
        }
    }

    void printIntervalStats(IndentingPrintWriter pw, IntervalStats stats, boolean prettyDates, boolean skipEvents, List<String> pkgs) {
        String str;
        if (prettyDates) {
            pw.printPair("timeRange", "\"" + DateUtils.formatDateRange(this.mContext, stats.beginTime, stats.endTime, sDateFormatFlags) + "\"");
        } else {
            pw.printPair("beginTime", Long.valueOf(stats.beginTime));
            pw.printPair("endTime", Long.valueOf(stats.endTime));
        }
        pw.println();
        pw.increaseIndent();
        pw.println("packages");
        pw.increaseIndent();
        ArrayMap<String, UsageStats> pkgStats = stats.packageStats;
        int pkgCount = pkgStats.size();
        int i = 0;
        while (true) {
            str = Settings.ATTR_PACKAGE;
            if (i >= pkgCount) {
                break;
            }
            UsageStats usageStats = pkgStats.valueAt(i);
            if (CollectionUtils.isEmpty(pkgs) || pkgs.contains(usageStats.mPackageName)) {
                pw.printPair(Settings.ATTR_PACKAGE, usageStats.mPackageName);
                pw.printPair("totalTimeUsed", formatElapsedTime(usageStats.mTotalTimeInForeground, prettyDates));
                pw.printPair("lastTimeUsed", formatDateTime(usageStats.mLastTimeUsed, prettyDates));
                pw.printPair("totalTimeVisible", formatElapsedTime(usageStats.mTotalTimeVisible, prettyDates));
                pw.printPair("lastTimeVisible", formatDateTime(usageStats.mLastTimeVisible, prettyDates));
                pw.printPair("totalTimeFS", formatElapsedTime(usageStats.mTotalTimeForegroundServiceUsed, prettyDates));
                pw.printPair("lastTimeFS", formatDateTime(usageStats.mLastTimeForegroundServiceUsed, prettyDates));
                pw.printPair("appLaunchCount", Integer.valueOf(usageStats.mAppLaunchCount));
                pw.println();
            }
            i++;
        }
        pw.decreaseIndent();
        pw.println();
        pw.println("ChooserCounts");
        pw.increaseIndent();
        Iterator<UsageStats> it = pkgStats.values().iterator();
        while (it.hasNext()) {
            UsageStats usageStats2 = it.next();
            if (CollectionUtils.isEmpty(pkgs) || pkgs.contains(usageStats2.mPackageName)) {
                pw.printPair(str, usageStats2.mPackageName);
                if (usageStats2.mChooserCounts != null) {
                    int chooserCountSize = usageStats2.mChooserCounts.size();
                    int i2 = 0;
                    while (i2 < chooserCountSize) {
                        String action = (String) usageStats2.mChooserCounts.keyAt(i2);
                        ArrayMap<String, Integer> counts = (ArrayMap) usageStats2.mChooserCounts.valueAt(i2);
                        int annotationSize = counts.size();
                        ArrayMap<String, UsageStats> pkgStats2 = pkgStats;
                        int j = 0;
                        while (j < annotationSize) {
                            int pkgCount2 = pkgCount;
                            String key = counts.keyAt(j);
                            int count = counts.valueAt(j).intValue();
                            if (count != 0) {
                                pw.printPair("ChooserCounts", action + ":" + key + " is " + Integer.toString(count));
                                pw.println();
                            }
                            j++;
                            pkgCount = pkgCount2;
                            str = str;
                            it = it;
                        }
                        i2++;
                        pkgStats = pkgStats2;
                    }
                }
                pw.println();
                pkgStats = pkgStats;
                pkgCount = pkgCount;
                str = str;
                it = it;
            }
        }
        pw.decreaseIndent();
        if (CollectionUtils.isEmpty(pkgs)) {
            pw.println("configurations");
            pw.increaseIndent();
            ArrayMap<Configuration, ConfigurationStats> configStats = stats.configurations;
            int configCount = configStats.size();
            for (int i3 = 0; i3 < configCount; i3++) {
                ConfigurationStats config = configStats.valueAt(i3);
                pw.printPair("config", Configuration.resourceQualifierString(config.mConfiguration));
                pw.printPair("totalTime", formatElapsedTime(config.mTotalTimeActive, prettyDates));
                pw.printPair("lastTime", formatDateTime(config.mLastTimeActive, prettyDates));
                pw.printPair(AssistDataRequester.KEY_RECEIVER_EXTRA_COUNT, Integer.valueOf(config.mActivationCount));
                pw.println();
            }
            pw.decreaseIndent();
            pw.println("event aggregations");
            pw.increaseIndent();
            printEventAggregation(pw, "screen-interactive", stats.interactiveTracker, prettyDates);
            printEventAggregation(pw, "screen-non-interactive", stats.nonInteractiveTracker, prettyDates);
            printEventAggregation(pw, "keyguard-shown", stats.keyguardShownTracker, prettyDates);
            printEventAggregation(pw, "keyguard-hidden", stats.keyguardHiddenTracker, prettyDates);
            pw.decreaseIndent();
        }
        if (!skipEvents) {
            pw.println("events");
            pw.increaseIndent();
            EventList events = stats.events;
            int eventCount = events != null ? events.size() : 0;
            for (int i4 = 0; i4 < eventCount; i4++) {
                UsageEvents.Event event = events.get(i4);
                if (CollectionUtils.isEmpty(pkgs) || pkgs.contains(event.mPackage)) {
                    printEvent(pw, event, prettyDates);
                }
            }
            pw.decreaseIndent();
        }
        pw.decreaseIndent();
    }

    public static String intervalToString(int interval) {
        if (interval == 0) {
            return "daily";
        }
        if (interval == 1) {
            return "weekly";
        }
        if (interval == 2) {
            return "monthly";
        }
        if (interval == 3) {
            return "yearly";
        }
        return "?";
    }

    private static int stringToInterval(String interval) {
        byte b;
        switch (interval.toLowerCase()) {
            case "weekly":
                b = 1;
                break;
            case "yearly":
                b = 3;
                break;
            case "daily":
                b = 0;
                break;
            case "monthly":
                b = 2;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return 0;
        }
        if (b == 1) {
            return 1;
        }
        if (b != 2) {
            return b != 3 ? -1 : 3;
        }
        return 2;
    }

    private static String eventToString(int eventType) {
        switch (eventType) {
            case 0:
                return "NONE";
            case 1:
                return "ACTIVITY_RESUMED";
            case 2:
                return "ACTIVITY_PAUSED";
            case 3:
                return "END_OF_DAY";
            case 4:
                return "CONTINUE_PREVIOUS_DAY";
            case 5:
                return "CONFIGURATION_CHANGE";
            case 6:
                return "SYSTEM_INTERACTION";
            case 7:
                return "USER_INTERACTION";
            case 8:
                return "SHORTCUT_INVOCATION";
            case 9:
                return "CHOOSER_ACTION";
            case 10:
                return "NOTIFICATION_SEEN";
            case 11:
                return "STANDBY_BUCKET_CHANGED";
            case 12:
                return "NOTIFICATION_INTERRUPTION";
            case 13:
                return "SLICE_PINNED_PRIV";
            case 14:
                return "SLICE_PINNED";
            case 15:
                return "SCREEN_INTERACTIVE";
            case 16:
                return "SCREEN_NON_INTERACTIVE";
            case 17:
                return "KEYGUARD_SHOWN";
            case 18:
                return "KEYGUARD_HIDDEN";
            case 19:
                return "FOREGROUND_SERVICE_START";
            case 20:
                return "FOREGROUND_SERVICE_STOP";
            case 21:
                return "CONTINUING_FOREGROUND_SERVICE";
            case 22:
                return "ROLLOVER_FOREGROUND_SERVICE";
            case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                return "ACTIVITY_STOPPED";
            case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
            case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
            default:
                return "UNKNOWN_TYPE_" + eventType;
            case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                return "DEVICE_SHUTDOWN";
            case CecMessageType.DECK_STATUS /* 27 */:
                return "DEVICE_STARTUP";
        }
    }

    byte[] getBackupPayload(String key) {
        checkAndGetTimeLocked();
        persistActiveStats();
        return this.mDatabase.getBackupPayload(key);
    }

    void applyRestoredPayload(String key, byte[] payload) throws Throwable {
        checkAndGetTimeLocked();
        this.mDatabase.applyRestoredPayload(key, payload);
    }
}
