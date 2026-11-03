package com.mega.launcherapi.exception;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapSizeException extends Exception {
    public BitmapSizeException() {
        this("Please compress the bitmap.");
    }

    public BitmapSizeException(String str) {
        super(str);
    }
}
