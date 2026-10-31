package com.hoho.android.usbserial.driver;

import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SerialTimeoutException extends InterruptedIOException {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SerialTimeoutException(String str, int i9) {
        super(str);
        ((InterruptedIOException) this).bytesTransferred = i9;
    }
}
