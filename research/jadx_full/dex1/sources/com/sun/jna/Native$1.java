package com.sun.jna;

import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Native$1 implements Callback$UncaughtExceptionHandler {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Callback$UncaughtExceptionHandler
    public void uncaughtException(Callback callback, Throwable th) {
        Native.access$000().log(Level.WARNING, "JNA: Callback " + callback + " threw the following exception", th);
    }
}
