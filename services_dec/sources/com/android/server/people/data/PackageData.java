package com.android.server.people.data;

import android.content.LocusId;
import android.os.FileUtils;
import android.text.TextUtils;
import android.util.ArrayMap;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class PackageData {
    private final ConversationStore mConversationStore;
    private final EventStore mEventStore;
    private final Predicate<String> mIsDefaultDialerPredicate;
    private final Predicate<String> mIsDefaultSmsAppPredicate;
    private final File mPackageDataDir;
    private final String mPackageName;
    private final int mUserId;

    PackageData(String packageName, int userId, Predicate<String> isDefaultDialerPredicate, Predicate<String> isDefaultSmsAppPredicate, ScheduledExecutorService scheduledExecutorService, File perUserPeopleDataDir) {
        this.mPackageName = packageName;
        this.mUserId = userId;
        File file = new File(perUserPeopleDataDir, this.mPackageName);
        this.mPackageDataDir = file;
        file.mkdirs();
        this.mConversationStore = new ConversationStore(this.mPackageDataDir, scheduledExecutorService);
        this.mEventStore = new EventStore(this.mPackageDataDir, scheduledExecutorService);
        this.mIsDefaultDialerPredicate = isDefaultDialerPredicate;
        this.mIsDefaultSmsAppPredicate = isDefaultSmsAppPredicate;
    }

    static Map<String, PackageData> packagesDataFromDisk(int userId, Predicate<String> isDefaultDialerPredicate, Predicate<String> isDefaultSmsAppPredicate, ScheduledExecutorService scheduledExecutorService, File perUserPeopleDataDir) {
        Map<String, PackageData> results = new ArrayMap<>();
        File[] packageDirs = perUserPeopleDataDir.listFiles($$Lambda$k1LMnpJLlrYtcSsQvSbPWdaMgg.INSTANCE);
        if (packageDirs == null) {
            return results;
        }
        for (File packageDir : packageDirs) {
            PackageData packageData = new PackageData(packageDir.getName(), userId, isDefaultDialerPredicate, isDefaultSmsAppPredicate, scheduledExecutorService, perUserPeopleDataDir);
            packageData.loadFromDisk();
            results.put(packageDir.getName(), packageData);
        }
        return results;
    }

    private void loadFromDisk() {
        this.mConversationStore.loadConversationsFromDisk();
        this.mEventStore.loadFromDisk();
    }

    void saveToDisk() {
        this.mConversationStore.saveConversationsToDisk();
        this.mEventStore.saveToDisk();
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getUserId() {
        return this.mUserId;
    }

    public void forAllConversations(Consumer<ConversationInfo> consumer) {
        this.mConversationStore.forAllConversations(consumer);
    }

    public ConversationInfo getConversationInfo(String shortcutId) {
        return getConversationStore().getConversation(shortcutId);
    }

    public EventHistory getEventHistory(String shortcutId) {
        EventHistory smsEventHistory;
        EventHistory callEventHistory;
        EventHistory locusEventHistory;
        AggregateEventHistoryImpl result = new AggregateEventHistoryImpl();
        ConversationInfo conversationInfo = this.mConversationStore.getConversation(shortcutId);
        if (conversationInfo == null) {
            return result;
        }
        EventHistory shortcutEventHistory = getEventStore().getEventHistory(0, shortcutId);
        if (shortcutEventHistory != null) {
            result.addEventHistory(shortcutEventHistory);
        }
        LocusId locusId = conversationInfo.getLocusId();
        if (locusId != null && (locusEventHistory = getEventStore().getEventHistory(1, locusId.getId())) != null) {
            result.addEventHistory(locusEventHistory);
        }
        String phoneNumber = conversationInfo.getContactPhoneNumber();
        if (TextUtils.isEmpty(phoneNumber)) {
            return result;
        }
        if (isDefaultDialer() && (callEventHistory = getEventStore().getEventHistory(2, phoneNumber)) != null) {
            result.addEventHistory(callEventHistory);
        }
        if (isDefaultSmsApp() && (smsEventHistory = getEventStore().getEventHistory(3, phoneNumber)) != null) {
            result.addEventHistory(smsEventHistory);
        }
        return result;
    }

    public EventHistory getClassLevelEventHistory(String className) {
        EventHistory eventHistory = getEventStore().getEventHistory(4, className);
        return eventHistory != null ? eventHistory : new AggregateEventHistoryImpl();
    }

    public boolean isDefaultDialer() {
        return this.mIsDefaultDialerPredicate.test(this.mPackageName);
    }

    public boolean isDefaultSmsApp() {
        return this.mIsDefaultSmsAppPredicate.test(this.mPackageName);
    }

    ConversationStore getConversationStore() {
        return this.mConversationStore;
    }

    EventStore getEventStore() {
        return this.mEventStore;
    }

    void deleteDataForConversation(String shortcutId) {
        ConversationInfo conversationInfo = this.mConversationStore.deleteConversation(shortcutId);
        if (conversationInfo == null) {
            return;
        }
        this.mEventStore.deleteEventHistory(0, shortcutId);
        if (conversationInfo.getLocusId() != null) {
            this.mEventStore.deleteEventHistory(1, conversationInfo.getLocusId().getId());
        }
        String phoneNumber = conversationInfo.getContactPhoneNumber();
        if (!TextUtils.isEmpty(phoneNumber)) {
            if (isDefaultDialer()) {
                this.mEventStore.deleteEventHistory(2, phoneNumber);
            }
            if (isDefaultSmsApp()) {
                this.mEventStore.deleteEventHistory(3, phoneNumber);
            }
        }
    }

    void pruneOrphanEvents() {
        this.mEventStore.pruneOrphanEventHistories(0, new Predicate() { // from class: com.android.server.people.data.-$$Lambda$PackageData$ZMIP6vp07hH0QC6HejoO3J3Cu2U
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$pruneOrphanEvents$0$PackageData((String) obj);
            }
        });
        this.mEventStore.pruneOrphanEventHistories(1, new Predicate() { // from class: com.android.server.people.data.-$$Lambda$PackageData$J3LynTIgc_2KnnovNl7oOwEM_E4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$pruneOrphanEvents$1$PackageData((String) obj);
            }
        });
        if (isDefaultDialer()) {
            this.mEventStore.pruneOrphanEventHistories(2, new Predicate() { // from class: com.android.server.people.data.-$$Lambda$PackageData$dOe5E3K5VL4MNZ7U4WvGn0mSu3I
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$pruneOrphanEvents$2$PackageData((String) obj);
                }
            });
        }
        if (isDefaultSmsApp()) {
            this.mEventStore.pruneOrphanEventHistories(3, new Predicate() { // from class: com.android.server.people.data.-$$Lambda$PackageData$TsHvZ9e7TBMeBQJKI3dIyx1JrLo
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$pruneOrphanEvents$3$PackageData((String) obj);
                }
            });
        }
    }

    public /* synthetic */ boolean lambda$pruneOrphanEvents$0$PackageData(String key) {
        return this.mConversationStore.getConversation(key) != null;
    }

    public /* synthetic */ boolean lambda$pruneOrphanEvents$1$PackageData(String key) {
        return this.mConversationStore.getConversationByLocusId(new LocusId(key)) != null;
    }

    public /* synthetic */ boolean lambda$pruneOrphanEvents$2$PackageData(String key) {
        return this.mConversationStore.getConversationByPhoneNumber(key) != null;
    }

    public /* synthetic */ boolean lambda$pruneOrphanEvents$3$PackageData(String key) {
        return this.mConversationStore.getConversationByPhoneNumber(key) != null;
    }

    void onDestroy() {
        this.mEventStore.onDestroy();
        this.mConversationStore.onDestroy();
        FileUtils.deleteContentsAndDir(this.mPackageDataDir);
    }
}
