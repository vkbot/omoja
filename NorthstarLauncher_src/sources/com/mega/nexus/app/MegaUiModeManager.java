package com.mega.nexus.app;

import android.app.UiModeManager;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class MegaUiModeManager {
    public static void setNightModeActivated(Context context, boolean z) {
        if (context == null) {
            return;
        }
        ((UiModeManager) context.getSystemService(UiModeManager.class)).setNightModeActivated(z);
    }
}
