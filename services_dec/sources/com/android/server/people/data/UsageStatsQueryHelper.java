package com.android.server.people.data;

import android.app.usage.UsageEvents;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ComponentName;
import android.content.LocusId;
import android.util.ArrayMap;
import com.android.server.LocalServices;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
class UsageStatsQueryHelper {
    private long mLastEventTimestamp;
    private final Function<String, PackageData> mPackageDataGetter;
    private final int mUserId;
    private final Map<ComponentName, UsageEvents.Event> mConvoStartEvents = new ArrayMap();
    private final UsageStatsManagerInternal mUsageStatsManagerInternal = getUsageStatsManagerInternal();

    UsageStatsQueryHelper(int userId, Function<String, PackageData> packageDataGetter) {
        this.mUserId = userId;
        this.mPackageDataGetter = packageDataGetter;
    }

    boolean querySince(long sinceTime) {
        UsageEvents usageEvents = this.mUsageStatsManagerInternal.queryEventsForUser(this.mUserId, sinceTime, System.currentTimeMillis(), 0);
        if (usageEvents == null) {
            return false;
        }
        boolean hasEvents = false;
        while (usageEvents.hasNextEvent()) {
            UsageEvents.Event e = new UsageEvents.Event();
            usageEvents.getNextEvent(e);
            hasEvents = true;
            this.mLastEventTimestamp = Math.max(this.mLastEventTimestamp, e.getTimeStamp());
            String packageName = e.getPackageName();
            PackageData packageData = this.mPackageDataGetter.apply(packageName);
            if (packageData != null) {
                int eventType = e.getEventType();
                if (eventType != 2) {
                    if (eventType == 8) {
                        addEventByShortcutId(packageData, e.getShortcutId(), new Event(e.getTimeStamp(), 1));
                    } else if (eventType == 30) {
                        onInAppConversationEnded(packageData, e);
                        LocusId locusId = e.getLocusId() != null ? new LocusId(e.getLocusId()) : null;
                        if (locusId != null && packageData.getConversationStore().getConversationByLocusId(locusId) != null) {
                            ComponentName activityName = new ComponentName(packageName, e.getClassName());
                            this.mConvoStartEvents.put(activityName, e);
                        }
                    } else if (eventType == 23 || eventType == 24) {
                    }
                }
                onInAppConversationEnded(packageData, e);
            }
        }
        return hasEvents;
    }

    long getLastEventTimestamp() {
        return this.mLastEventTimestamp;
    }

    static List<UsageEvents.Event> queryAppMovingToForegroundEvents(int userId, long startTime, long endTime) {
        List<UsageEvents.Event> res = new ArrayList<>();
        UsageEvents usageEvents = getUsageStatsManagerInternal().queryEventsForUser(userId, startTime, endTime, 10);
        if (usageEvents == null) {
            return res;
        }
        while (usageEvents.hasNextEvent()) {
            UsageEvents.Event e = new UsageEvents.Event();
            usageEvents.getNextEvent(e);
            if (e.getEventType() == 1) {
                res.add(e);
            }
        }
        return res;
    }

    static Map<String, AppUsageStatsData> queryAppUsageStats(int userId, long startTime, long endTime, Set<String> packageNameFilter) {
        List<UsageStats> stats = getUsageStatsManagerInternal().queryUsageStatsForUser(userId, 4, startTime, endTime, false);
        Map<String, AppUsageStatsData> aggregatedStats = new ArrayMap<>();
        if (stats == null) {
            return aggregatedStats;
        }
        for (UsageStats stat : stats) {
            String packageName = stat.getPackageName();
            if (packageNameFilter.contains(packageName)) {
                AppUsageStatsData packageStats = aggregatedStats.computeIfAbsent(packageName, new Function() { // from class: com.android.server.people.data.-$$Lambda$UsageStatsQueryHelper$QwkwRXRcQgXug6sTJ7cCUn7gCdI
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return UsageStatsQueryHelper.lambda$queryAppUsageStats$0((String) obj);
                    }
                });
                packageStats.incrementChosenCountBy(sumChooserCounts(stat.mChooserCounts));
                packageStats.incrementLaunchCountBy(stat.getAppLaunchCount());
            }
        }
        return aggregatedStats;
    }

    static /* synthetic */ AppUsageStatsData lambda$queryAppUsageStats$0(String key) {
        return new AppUsageStatsData();
    }

    private static int sumChooserCounts(ArrayMap<String, ArrayMap<String, Integer>> chooserCounts) {
        int sum = 0;
        if (chooserCounts == null) {
            return 0;
        }
        int chooserCountsSize = chooserCounts.size();
        for (int i = 0; i < chooserCountsSize; i++) {
            ArrayMap<String, Integer> counts = chooserCounts.valueAt(i);
            if (counts != null) {
                int annotationSize = counts.size();
                for (int j = 0; j < annotationSize; j++) {
                    sum += counts.valueAt(j).intValue();
                }
            }
        }
        return sum;
    }

    private void onInAppConversationEnded(PackageData packageData, UsageEvents.Event endEvent) {
        ComponentName activityName = new ComponentName(endEvent.getPackageName(), endEvent.getClassName());
        UsageEvents.Event startEvent = this.mConvoStartEvents.remove(activityName);
        if (startEvent == null || startEvent.getTimeStamp() >= endEvent.getTimeStamp()) {
            return;
        }
        long durationMillis = endEvent.getTimeStamp() - startEvent.getTimeStamp();
        Event event = new Event.Builder(startEvent.getTimeStamp(), 13).setDurationSeconds((int) (durationMillis / 1000)).build();
        addEventByLocusId(packageData, new LocusId(startEvent.getLocusId()), event);
    }

    private void addEventByShortcutId(PackageData packageData, String shortcutId, Event event) {
        if (packageData.getConversationStore().getConversation(shortcutId) == null) {
            return;
        }
        EventHistoryImpl eventHistory = packageData.getEventStore().getOrCreateEventHistory(0, shortcutId);
        eventHistory.addEvent(event);
    }

    private void addEventByLocusId(PackageData packageData, LocusId locusId, Event event) {
        if (packageData.getConversationStore().getConversationByLocusId(locusId) == null) {
            return;
        }
        EventHistoryImpl eventHistory = packageData.getEventStore().getOrCreateEventHistory(1, locusId.getId());
        eventHistory.addEvent(event);
    }

    private static UsageStatsManagerInternal getUsageStatsManagerInternal() {
        return (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
    }
}
