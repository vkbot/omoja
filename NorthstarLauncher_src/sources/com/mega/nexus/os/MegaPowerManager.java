package com.mega.nexus.os;

import android.os.PowerManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaPowerManager {
    public static final int BACK_LIGHT_STATE_OFF = 0;
    public static final int BACK_LIGHT_STATE_ON = 1;

    public static int getMinimumScreenBrightnessSetting(PowerManager powerManager) {
        return powerManager.getMinimumScreenBrightnessSetting();
    }

    public static int getMaximumScreenBrightnessSetting(PowerManager powerManager) {
        return powerManager.getMaximumScreenBrightnessSetting();
    }

    public static void wakeUp(PowerManager powerManager, long j) {
        powerManager.wakeUp(j);
    }

    public static void goToSleep(PowerManager powerManager, long j) {
        powerManager.goToSleep(j);
    }

    public static void shutdown(PowerManager powerManager, boolean z, String str, boolean z2) {
        powerManager.shutdown(z, str, z2);
    }
}
