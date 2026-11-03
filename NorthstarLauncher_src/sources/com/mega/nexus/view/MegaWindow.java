package com.mega.nexus.view;

import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWindow {
    public static final int PRIVATE_FLAG_SHOW_FOR_ALL_USERS = 16;
    public static final int PRIVATE_FLAG_SKIP_SCREENSHOT = 1048576;
    public static final int TYPE_NAVIGATION_BAR_PANEL = 2024;
    public static final int TYPE_SECURE_SYSTEM_OVERLAY = 2015;

    public static void addPrivateFlags(Window window, int i) {
        window.addPrivateFlags(i);
    }

    public static void addPrivateFlags(WindowManager.LayoutParams layoutParams, int i) {
        layoutParams.privateFlags = i | layoutParams.privateFlags;
    }
}
