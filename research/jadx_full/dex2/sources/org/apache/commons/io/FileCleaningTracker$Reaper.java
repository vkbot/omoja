package org.apache.commons.io;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FileCleaningTracker$Reaper extends Thread {
    final /* synthetic */ FileCleaningTracker this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileCleaningTracker$Reaper(FileCleaningTracker fileCleaningTracker) {
        super("File Reaper");
        this.this$0 = fileCleaningTracker;
        setPriority(10);
        setDaemon(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            if (this.this$0.exitWhenFinished && this.this$0.trackers.isEmpty()) {
                return;
            }
            try {
                FileCleaningTracker$Tracker fileCleaningTracker$Tracker = (FileCleaningTracker$Tracker) this.this$0.q.remove();
                this.this$0.trackers.remove(fileCleaningTracker$Tracker);
                if (!fileCleaningTracker$Tracker.delete()) {
                    this.this$0.deleteFailures.add(fileCleaningTracker$Tracker.getPath());
                }
                fileCleaningTracker$Tracker.clear();
            } catch (InterruptedException unused) {
            }
        }
    }
}
