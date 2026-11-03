package com.android.launcher3.util;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class Preconditions {
    public static void assertNotNull(Object o) {
        if (o == null) {
            throw new IllegalStateException();
        }
    }

    public static void assertWorkerThread() {
        if (!isSameLooper(Executors.MODEL_EXECUTOR.getLooper())) {
            throw new IllegalStateException();
        }
    }

    public static void assertUIThread() {
        if (!isSameLooper(Looper.getMainLooper())) {
            throw new IllegalStateException();
        }
    }

    public static void assertNonUiThread() {
        if (isSameLooper(Looper.getMainLooper())) {
            throw new IllegalStateException();
        }
    }

    private static boolean isSameLooper(Looper looper) {
        return Looper.myLooper() == looper;
    }
}
