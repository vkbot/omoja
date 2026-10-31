package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class Memory$MemoryDisposer implements Runnable {
    private long peer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Memory$MemoryDisposer(long j9) {
        this.peer = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public synchronized void run() {
        try {
            Memory.free(this.peer);
            Memory.access$000().remove(Long.valueOf(this.peer));
            this.peer = 0L;
        } catch (Throwable th) {
            Memory.access$000().remove(Long.valueOf(this.peer));
            this.peer = 0L;
            throw th;
        }
    }
}
