package com.mega.nexus.app;

import android.app.StatusBarManager;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class MegaStatusBarManager {
    public static void collapsePanels(Context context) {
        if (context == null) {
            return;
        }
        ((StatusBarManager) context.getSystemService("statusbar")).collapsePanels();
    }
}
