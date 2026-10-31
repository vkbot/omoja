package com.hoho.android.usbserial.driver;

import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SerialTimeoutException extends InterruptedIOException {
    public SerialTimeoutException(String str, int i10) {
        super(str);
        ((InterruptedIOException) this).bytesTransferred = i10;
    }
}
