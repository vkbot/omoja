package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class CallbackReference$CallbackReferenceDisposer implements Runnable {
    private Pointer cbstruct;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackReference$CallbackReferenceDisposer(Pointer pointer) {
        this.cbstruct = pointer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public synchronized void run() {
        try {
            Pointer pointer = this.cbstruct;
            if (pointer != null) {
                try {
                    Native.freeNativeCallback(pointer.peer);
                    CallbackReference.access$200().remove(Long.valueOf(this.cbstruct.peer));
                    this.cbstruct.peer = 0L;
                    this.cbstruct = null;
                } catch (Throwable th) {
                    CallbackReference.access$200().remove(Long.valueOf(this.cbstruct.peer));
                    this.cbstruct.peer = 0L;
                    this.cbstruct = null;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
