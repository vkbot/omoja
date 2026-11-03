package com.mega.nexus.view;

import android.view.IWindowAttributesCallback;
import android.view.WindowAttributes;
import android.view.WindowManager;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWindowManagerUtils {
    public static boolean registerWindowAttributesListener(WindowManager windowManager, IWindowAttributesCallback iWindowAttributesCallback) {
        return windowManager.registerWindowAttributesListener(iWindowAttributesCallback);
    }

    public static boolean unregisterWindowAttributesListener(WindowManager windowManager, IWindowAttributesCallback iWindowAttributesCallback) {
        return windowManager.unregisterWindowAttributesListener(iWindowAttributesCallback);
    }

    public static List<WindowAttributes> getWindowAttributesList(WindowManager windowManager) {
        return windowManager.getWindowAttributesList();
    }
}
