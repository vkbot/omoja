package com.android.server.people.data;

import android.net.Uri;
import android.os.FileUtils;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoInputStream;
import android.util.proto.ProtoOutputStream;
import com.google.android.collect.Lists;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
class EventHistoryImpl implements EventHistory {
    private static final String EVENTS_DIR = "events";
    private static final String INDEXES_DIR = "indexes";
    private static final long MAX_EVENTS_AGE = 14400000;
    private static final long PRUNE_OLD_EVENTS_DELAY = 900000;
    private final SparseArray<EventIndex> mEventIndexArray;
    private final EventIndexesProtoDiskReadWriter mEventIndexesProtoDiskReadWriter;
    private final EventsProtoDiskReadWriter mEventsProtoDiskReadWriter;
    private final Injector mInjector;
    private long mLastPruneTime;
    private final EventList mRecentEvents;
    private final File mRootDir;
    private final ScheduledExecutorService mScheduledExecutorService;

    EventHistoryImpl(File rootDir, ScheduledExecutorService scheduledExecutorService) {
        this(new Injector(), rootDir, scheduledExecutorService);
    }

    EventHistoryImpl(Injector injector, File rootDir, ScheduledExecutorService scheduledExecutorService) {
        this.mEventIndexArray = new SparseArray<>();
        this.mRecentEvents = new EventList();
        this.mInjector = injector;
        this.mScheduledExecutorService = scheduledExecutorService;
        this.mLastPruneTime = injector.currentTimeMillis();
        this.mRootDir = rootDir;
        File eventsDir = new File(this.mRootDir, EVENTS_DIR);
        this.mEventsProtoDiskReadWriter = new EventsProtoDiskReadWriter(eventsDir, this.mScheduledExecutorService);
        File indexesDir = new File(this.mRootDir, INDEXES_DIR);
        this.mEventIndexesProtoDiskReadWriter = new EventIndexesProtoDiskReadWriter(indexesDir, scheduledExecutorService);
    }

    static Map<String, EventHistoryImpl> eventHistoriesImplFromDisk(File categoryDir, ScheduledExecutorService scheduledExecutorService) {
        return eventHistoriesImplFromDisk(new Injector(), categoryDir, scheduledExecutorService);
    }

    static Map<String, EventHistoryImpl> eventHistoriesImplFromDisk(Injector injector, File categoryDir, ScheduledExecutorService scheduledExecutorService) {
        Map<String, EventHistoryImpl> results = new ArrayMap<>();
        File[] keyDirs = categoryDir.listFiles($$Lambda$k1LMnpJLlrYtcSsQvSbPWdaMgg.INSTANCE);
        if (keyDirs == null) {
            return results;
        }
        for (File keyDir : keyDirs) {
            File[] dirContents = keyDir.listFiles(new FilenameFilter() { // from class: com.android.server.people.data.-$$Lambda$EventHistoryImpl$rFfD-2ROorI4gYAR7KD7YcJ5fUg
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return EventHistoryImpl.lambda$eventHistoriesImplFromDisk$0(file, str);
                }
            });
            if (dirContents != null && dirContents.length == 2) {
                EventHistoryImpl eventHistory = new EventHistoryImpl(injector, keyDir, scheduledExecutorService);
                eventHistory.loadFromDisk();
                results.put(Uri.decode(keyDir.getName()), eventHistory);
            }
        }
        return results;
    }

    static /* synthetic */ boolean lambda$eventHistoriesImplFromDisk$0(File dir, String name) {
        return EVENTS_DIR.equals(name) || INDEXES_DIR.equals(name);
    }

    synchronized void loadFromDisk() {
        this.mScheduledExecutorService.execute(new Runnable() { // from class: com.android.server.people.data.-$$Lambda$EventHistoryImpl$YDpe35eL4N0P69OowfcOM7MovRs
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadFromDisk$1$EventHistoryImpl();
            }
        });
    }

    public /* synthetic */ void lambda$loadFromDisk$1$EventHistoryImpl() {
        synchronized (this) {
            EventList diskEvents = this.mEventsProtoDiskReadWriter.loadRecentEventsFromDisk();
            if (diskEvents != null) {
                diskEvents.removeOldEvents(this.mInjector.currentTimeMillis() - 14400000);
                this.mRecentEvents.addAll(diskEvents.getAllEvents());
            }
            SparseArray<EventIndex> diskIndexes = this.mEventIndexesProtoDiskReadWriter.loadIndexesFromDisk();
            if (diskIndexes != null) {
                for (int i = 0; i < diskIndexes.size(); i++) {
                    this.mEventIndexArray.put(diskIndexes.keyAt(i), diskIndexes.valueAt(i));
                }
            }
        }
    }

    synchronized void saveToDisk() {
        this.mEventsProtoDiskReadWriter.saveEventsImmediately(this.mRecentEvents);
        this.mEventIndexesProtoDiskReadWriter.saveIndexesImmediately(this.mEventIndexArray);
    }

    @Override // com.android.server.people.data.EventHistory
    public synchronized EventIndex getEventIndex(int eventType) {
        EventIndex eventIndex;
        eventIndex = this.mEventIndexArray.get(eventType);
        return eventIndex != null ? new EventIndex(eventIndex) : this.mInjector.createEventIndex();
    }

    @Override // com.android.server.people.data.EventHistory
    public synchronized EventIndex getEventIndex(Set<Integer> eventTypes) {
        EventIndex combined;
        combined = this.mInjector.createEventIndex();
        Iterator<Integer> it = eventTypes.iterator();
        while (it.hasNext()) {
            int eventType = it.next().intValue();
            EventIndex eventIndex = this.mEventIndexArray.get(eventType);
            if (eventIndex != null) {
                combined = EventIndex.combine(combined, eventIndex);
            }
        }
        return combined;
    }

    @Override // com.android.server.people.data.EventHistory
    public synchronized List<Event> queryEvents(Set<Integer> eventTypes, long startTime, long endTime) {
        return this.mRecentEvents.queryEvents(eventTypes, startTime, endTime);
    }

    synchronized void addEvent(Event event) {
        pruneOldEvents();
        addEventInMemory(event);
        this.mEventsProtoDiskReadWriter.scheduleEventsSave(this.mRecentEvents);
        this.mEventIndexesProtoDiskReadWriter.scheduleIndexesSave(this.mEventIndexArray);
    }

    synchronized void onDestroy() {
        this.mEventIndexArray.clear();
        this.mRecentEvents.clear();
        this.mEventsProtoDiskReadWriter.deleteRecentEventsFile();
        this.mEventIndexesProtoDiskReadWriter.deleteIndexesFile();
        FileUtils.deleteContentsAndDir(this.mRootDir);
    }

    synchronized void pruneOldEvents() {
        long currentTime = this.mInjector.currentTimeMillis();
        if (currentTime - this.mLastPruneTime > PRUNE_OLD_EVENTS_DELAY) {
            this.mRecentEvents.removeOldEvents(currentTime - 14400000);
            this.mLastPruneTime = currentTime;
        }
    }

    private synchronized void addEventInMemory(Event event) {
        EventIndex eventIndex = this.mEventIndexArray.get(event.getType());
        if (eventIndex == null) {
            eventIndex = this.mInjector.createEventIndex();
            this.mEventIndexArray.put(event.getType(), eventIndex);
        }
        eventIndex.addEvent(event.getTimestamp());
        this.mRecentEvents.add(event);
    }

    static class Injector {
        Injector() {
        }

        EventIndex createEventIndex() {
            return new EventIndex();
        }

        long currentTimeMillis() {
            return System.currentTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class EventsProtoDiskReadWriter extends AbstractProtoDiskReadWriter<EventList> {
        private static final String RECENT_FILE = "recent";
        private static final String TAG = EventsProtoDiskReadWriter.class.getSimpleName();

        EventsProtoDiskReadWriter(File rootDir, ScheduledExecutorService scheduledExecutorService) {
            super(rootDir, scheduledExecutorService);
            rootDir.mkdirs();
        }

        @Override // com.android.server.people.data.AbstractProtoDiskReadWriter
        AbstractProtoDiskReadWriter.ProtoStreamWriter<EventList> protoStreamWriter() {
            return new AbstractProtoDiskReadWriter.ProtoStreamWriter() { // from class: com.android.server.people.data.-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$ZALqJ5zffMRDKqItoRucSmvbPjQ
                @Override // com.android.server.people.data.AbstractProtoDiskReadWriter.ProtoStreamWriter
                public final void write(ProtoOutputStream protoOutputStream, Object obj) {
                    EventHistoryImpl.EventsProtoDiskReadWriter.lambda$protoStreamWriter$0(protoOutputStream, (EventList) obj);
                }
            };
        }

        static /* synthetic */ void lambda$protoStreamWriter$0(ProtoOutputStream protoOutputStream, EventList data) {
            for (Event event : data.getAllEvents()) {
                long token = protoOutputStream.start(2246267895809L);
                event.writeToProto(protoOutputStream);
                protoOutputStream.end(token);
            }
        }

        @Override // com.android.server.people.data.AbstractProtoDiskReadWriter
        AbstractProtoDiskReadWriter.ProtoStreamReader<EventList> protoStreamReader() {
            return new AbstractProtoDiskReadWriter.ProtoStreamReader() { // from class: com.android.server.people.data.-$$Lambda$EventHistoryImpl$EventsProtoDiskReadWriter$3OImJZI5rrKyLR7w6LbR5h6mvOk
                @Override // com.android.server.people.data.AbstractProtoDiskReadWriter.ProtoStreamReader
                public final Object read(ProtoInputStream protoInputStream) {
                    return EventHistoryImpl.EventsProtoDiskReadWriter.lambda$protoStreamReader$1(protoInputStream);
                }
            };
        }

        static /* synthetic */ EventList lambda$protoStreamReader$1(ProtoInputStream protoInputStream) {
            List<Event> results = Lists.newArrayList();
            while (protoInputStream.nextField() != -1) {
                try {
                    if (protoInputStream.getFieldNumber() == 1) {
                        long token = protoInputStream.start(2246267895809L);
                        Event event = Event.readFromProto(protoInputStream);
                        protoInputStream.end(token);
                        results.add(event);
                    }
                } catch (IOException e) {
                    Slog.e(TAG, "Failed to read protobuf input stream.", e);
                }
            }
            EventList eventList = new EventList();
            eventList.addAll(results);
            return eventList;
        }

        void scheduleEventsSave(EventList recentEvents) {
            scheduleSave(RECENT_FILE, recentEvents);
        }

        void saveEventsImmediately(EventList recentEvents) {
            saveImmediately(RECENT_FILE, recentEvents);
        }

        EventList loadRecentEventsFromDisk() {
            return read(RECENT_FILE);
        }

        void deleteRecentEventsFile() {
            delete(RECENT_FILE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class EventIndexesProtoDiskReadWriter extends AbstractProtoDiskReadWriter<SparseArray<EventIndex>> {
        private static final String INDEXES_FILE = "index";
        private static final String TAG = EventIndexesProtoDiskReadWriter.class.getSimpleName();

        EventIndexesProtoDiskReadWriter(File rootDir, ScheduledExecutorService scheduledExecutorService) {
            super(rootDir, scheduledExecutorService);
            rootDir.mkdirs();
        }

        @Override // com.android.server.people.data.AbstractProtoDiskReadWriter
        AbstractProtoDiskReadWriter.ProtoStreamWriter<SparseArray<EventIndex>> protoStreamWriter() {
            return new AbstractProtoDiskReadWriter.ProtoStreamWriter() { // from class: com.android.server.people.data.-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$QQqqVaVi26Ky1qfwsWxKJcUfUM4
                @Override // com.android.server.people.data.AbstractProtoDiskReadWriter.ProtoStreamWriter
                public final void write(ProtoOutputStream protoOutputStream, Object obj) {
                    EventHistoryImpl.EventIndexesProtoDiskReadWriter.lambda$protoStreamWriter$0(protoOutputStream, (SparseArray) obj);
                }
            };
        }

        static /* synthetic */ void lambda$protoStreamWriter$0(ProtoOutputStream protoOutputStream, SparseArray data) {
            for (int i = 0; i < data.size(); i++) {
                int eventType = data.keyAt(i);
                EventIndex index = (EventIndex) data.valueAt(i);
                long token = protoOutputStream.start(2246267895809L);
                protoOutputStream.write(1120986464257L, eventType);
                long indexToken = protoOutputStream.start(1146756268034L);
                index.writeToProto(protoOutputStream);
                protoOutputStream.end(indexToken);
                protoOutputStream.end(token);
            }
        }

        @Override // com.android.server.people.data.AbstractProtoDiskReadWriter
        AbstractProtoDiskReadWriter.ProtoStreamReader<SparseArray<EventIndex>> protoStreamReader() {
            return new AbstractProtoDiskReadWriter.ProtoStreamReader() { // from class: com.android.server.people.data.-$$Lambda$EventHistoryImpl$EventIndexesProtoDiskReadWriter$0aGiiLiZo7TqPVSQAUPw8L50o7U
                @Override // com.android.server.people.data.AbstractProtoDiskReadWriter.ProtoStreamReader
                public final Object read(ProtoInputStream protoInputStream) {
                    return EventHistoryImpl.EventIndexesProtoDiskReadWriter.lambda$protoStreamReader$1(protoInputStream);
                }
            };
        }

        static /* synthetic */ SparseArray lambda$protoStreamReader$1(ProtoInputStream protoInputStream) {
            SparseArray<EventIndex> results = new SparseArray<>();
            while (protoInputStream.nextField() != -1) {
                try {
                    if (protoInputStream.getFieldNumber() == 1) {
                        long token = protoInputStream.start(2246267895809L);
                        int eventType = 0;
                        EventIndex index = EventIndex.EMPTY;
                        while (protoInputStream.nextField() != -1) {
                            int fieldNumber = protoInputStream.getFieldNumber();
                            if (fieldNumber == 1) {
                                eventType = protoInputStream.readInt(1120986464257L);
                            } else if (fieldNumber == 2) {
                                long indexToken = protoInputStream.start(1146756268034L);
                                index = EventIndex.readFromProto(protoInputStream);
                                protoInputStream.end(indexToken);
                            } else {
                                Slog.w(TAG, "Could not read undefined field: " + protoInputStream.getFieldNumber());
                            }
                        }
                        results.append(eventType, index);
                        protoInputStream.end(token);
                    }
                } catch (IOException e) {
                    Slog.e(TAG, "Failed to read protobuf input stream.", e);
                }
            }
            return results;
        }

        void scheduleIndexesSave(SparseArray<EventIndex> indexes) {
            scheduleSave("index", indexes);
        }

        void saveIndexesImmediately(SparseArray<EventIndex> indexes) {
            saveImmediately("index", indexes);
        }

        SparseArray<EventIndex> loadIndexesFromDisk() {
            return read("index");
        }

        void deleteIndexesFile() {
            delete("index");
        }
    }
}
