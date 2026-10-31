package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class NativeLibrary$NativeLibraryDisposer implements Runnable {
    private long handle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NativeLibrary$NativeLibraryDisposer(long j9) {
        this.handle = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public synchronized void run() {
        try {
            long j9 = this.handle;
            if (j9 != 0) {
                try {
                    Native.close(j9);
                    this.handle = 0L;
                } catch (Throwable th) {
                    this.handle = 0L;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
