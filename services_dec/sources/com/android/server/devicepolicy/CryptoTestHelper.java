package com.android.server.devicepolicy;

import android.app.admin.SecurityLog;

/* JADX INFO: loaded from: classes.dex */
public class CryptoTestHelper {
    private static native int runSelfTest();

    public static void runAndLogSelfTest() {
        int result = runSelfTest();
        SecurityLog.writeEvent(210031, new Object[]{Integer.valueOf(result)});
    }
}
