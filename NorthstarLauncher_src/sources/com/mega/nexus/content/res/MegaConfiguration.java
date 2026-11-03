package com.mega.nexus.content.res;

import android.content.res.Configuration;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class MegaConfiguration {
    public static Rect getAppBounds(Configuration configuration) {
        return configuration.windowConfiguration.getAppBounds();
    }

    public static void userSetLocale(Configuration configuration, boolean z) {
        configuration.userSetLocale = z;
    }
}
