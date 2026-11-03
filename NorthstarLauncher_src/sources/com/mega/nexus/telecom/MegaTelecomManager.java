package com.mega.nexus.telecom;

import android.telecom.TelecomManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaTelecomManager {
    public static boolean isRinging(TelecomManager telecomManager) {
        return telecomManager.isRinging();
    }

    public static int getCallState(TelecomManager telecomManager) {
        return telecomManager.getCallState();
    }
}
