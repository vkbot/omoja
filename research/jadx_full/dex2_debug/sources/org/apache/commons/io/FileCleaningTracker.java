package org.apache.commons.io;

import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FileCleaningTracker {
    volatile boolean exitWhenFinished;
    Thread reaper;
    ReferenceQueue<Object> q = new ReferenceQueue<>();
    final Collection<FileCleaningTracker$Tracker> trackers = Collections.synchronizedSet(new HashSet());
    final List<String> deleteFailures = Collections.synchronizedList(new ArrayList());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private synchronized void addTracker(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        try {
            if (this.exitWhenFinished) {
                throw new IllegalStateException("No new trackers can be added once exitWhenFinished() is called");
            }
            if (this.reaper == null) {
                FileCleaningTracker$Reaper fileCleaningTracker$Reaper = new FileCleaningTracker$Reaper(this);
                this.reaper = fileCleaningTracker$Reaper;
                fileCleaningTracker$Reaper.start();
            }
            this.trackers.add(new FileCleaningTracker$Tracker(str, fileDeleteStrategy, obj, this.q));
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized void exitWhenFinished() {
        this.exitWhenFinished = true;
        Thread thread = this.reaper;
        if (thread != null) {
            synchronized (thread) {
                this.reaper.interrupt();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<String> getDeleteFailures() {
        return new ArrayList(this.deleteFailures);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTrackCount() {
        return this.trackers.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void track(Path path, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        Objects.requireNonNull(path, "file");
        addTracker(ai.onnxruntime.c.s(kotlin.io.path.a.k(path)), obj, fileDeleteStrategy);
    }

    public void track(File file, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        Objects.requireNonNull(file, "file");
        addTracker(file.getPath(), obj, fileDeleteStrategy);
    }

    public void track(Path path, Object obj) {
        track(path, obj, (FileDeleteStrategy) null);
    }

    public void track(File file, Object obj) {
        track(file, obj, (FileDeleteStrategy) null);
    }

    public void track(String str, Object obj) {
        track(str, obj, (FileDeleteStrategy) null);
    }

    public void track(String str, Object obj, FileDeleteStrategy fileDeleteStrategy) {
        Objects.requireNonNull(str, "path");
        addTracker(str, obj, fileDeleteStrategy);
    }
}
