package com.mega.launcherapi.exception;

/* JADX INFO: loaded from: classes2.dex */
public class InitializedException extends Exception {
    public InitializedException() {
        this("Please reinitialize the proxy instance.");
    }

    public InitializedException(String str) {
        super(str);
    }
}
