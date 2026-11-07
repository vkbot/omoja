package com.android.server.people.data;

import android.net.Uri;
import android.util.ArrayMap;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
class EventStore {
    static final int CATEGORY_CALL = 2;
    static final int CATEGORY_CLASS_BASED = 4;
    static final int CATEGORY_LOCUS_ID_BASED = 1;
    static final int CATEGORY_SHORTCUT_BASED = 0;
    static final int CATEGORY_SMS = 3;
    private final List<Map<String, EventHistoryImpl>> mEventHistoryMaps = new ArrayList();
    private final List<File> mEventsCategoryDirs = new ArrayList();
    private final ScheduledExecutorService mScheduledExecutorService;

    @Retention(RetentionPolicy.SOURCE)
    @interface EventCategory {
    }

    EventStore(File packageDir, ScheduledExecutorService scheduledExecutorService) {
        this.mEventHistoryMaps.add(0, new ArrayMap());
        this.mEventHistoryMaps.add(1, new ArrayMap());
        this.mEventHistoryMaps.add(2, new ArrayMap());
        this.mEventHistoryMaps.add(3, new ArrayMap());
        this.mEventHistoryMaps.add(4, new ArrayMap());
        File eventDir = new File(packageDir, "event");
        this.mEventsCategoryDirs.add(0, new File(eventDir, "shortcut"));
        this.mEventsCategoryDirs.add(1, new File(eventDir, "locus"));
        this.mEventsCategoryDirs.add(2, new File(eventDir, "call"));
        this.mEventsCategoryDirs.add(3, new File(eventDir, "sms"));
        this.mEventsCategoryDirs.add(4, new File(eventDir, "class"));
        this.mScheduledExecutorService = scheduledExecutorService;
    }

    synchronized void loadFromDisk() {
        for (int category = 0; category < this.mEventsCategoryDirs.size(); category++) {
            File categoryDir = this.mEventsCategoryDirs.get(category);
            Map<String, EventHistoryImpl> existingEventHistoriesImpl = EventHistoryImpl.eventHistoriesImplFromDisk(categoryDir, this.mScheduledExecutorService);
            this.mEventHistoryMaps.get(category).putAll(existingEventHistoriesImpl);
        }
    }

    synchronized void saveToDisk() {
        for (Map<String, EventHistoryImpl> map : this.mEventHistoryMaps) {
            for (EventHistoryImpl eventHistory : map.values()) {
                eventHistory.saveToDisk();
            }
        }
    }

    synchronized EventHistory getEventHistory(int category, String key) {
        return this.mEventHistoryMaps.get(category).get(key);
    }

    synchronized EventHistoryImpl getOrCreateEventHistory(final int category, final String key) {
        return this.mEventHistoryMaps.get(category).computeIfAbsent(key, new Function() { // from class: com.android.server.people.data.-$$Lambda$EventStore$Wdeg-tsj4laxwiSP6mHBYZP59i0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.lambda$getOrCreateEventHistory$0$EventStore(category, key, (String) obj);
            }
        });
    }

    public /* synthetic */ EventHistoryImpl lambda$getOrCreateEventHistory$0$EventStore(int category, String key, String k) {
        return new EventHistoryImpl(new File(this.mEventsCategoryDirs.get(category), Uri.encode(key)), this.mScheduledExecutorService);
    }

    synchronized void deleteEventHistory(int category, String key) {
        EventHistoryImpl eventHistory = this.mEventHistoryMaps.get(category).remove(key);
        if (eventHistory != null) {
            eventHistory.onDestroy();
        }
    }

    synchronized void deleteEventHistories(int category) {
        for (EventHistoryImpl eventHistory : this.mEventHistoryMaps.get(category).values()) {
            eventHistory.onDestroy();
        }
        this.mEventHistoryMaps.get(category).clear();
    }

    synchronized void pruneOldEvents() {
        for (Map<String, EventHistoryImpl> map : this.mEventHistoryMaps) {
            for (EventHistoryImpl eventHistory : map.values()) {
                eventHistory.pruneOldEvents();
            }
        }
    }

    synchronized void pruneOrphanEventHistories(int category, Predicate<String> keyChecker) {
        Set<String> keys = this.mEventHistoryMaps.get(category).keySet();
        List<String> keysToDelete = new ArrayList<>();
        for (String key : keys) {
            if (!keyChecker.test(key)) {
                keysToDelete.add(key);
            }
        }
        Map<String, EventHistoryImpl> eventHistoryMap = this.mEventHistoryMaps.get(category);
        Iterator<String> it = keysToDelete.iterator();
        while (it.hasNext()) {
            EventHistoryImpl eventHistory = eventHistoryMap.remove(it.next());
            if (eventHistory != null) {
                eventHistory.onDestroy();
            }
        }
    }

    synchronized void onDestroy() {
        for (Map<String, EventHistoryImpl> map : this.mEventHistoryMaps) {
            for (EventHistoryImpl eventHistory : map.values()) {
                eventHistory.onDestroy();
            }
        }
    }
}
