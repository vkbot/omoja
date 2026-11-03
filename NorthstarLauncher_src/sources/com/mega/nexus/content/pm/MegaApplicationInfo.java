package com.mega.nexus.content.pm;

import android.content.pm.ApplicationInfo;

/* JADX INFO: loaded from: classes2.dex */
public class MegaApplicationInfo {
    public static final int CATEGORY_AUDIO = 1;
    public static final int CATEGORY_IMAGE = 3;
    public static final int CATEGORY_VIDEO = 2;
    public static final int PRIVATE_FLAG_HAS_DOMAIN_URLS = 16;

    public static boolean isSystemApp(ApplicationInfo applicationInfo) {
        return applicationInfo.isSystemApp();
    }

    public static int getEnabledSetting(ApplicationInfo applicationInfo) {
        return applicationInfo.enabledSetting;
    }

    public static int getPrivateFlags(ApplicationInfo applicationInfo) {
        return applicationInfo.privateFlags;
    }

    public static String getVolumeUuid(ApplicationInfo applicationInfo) {
        return applicationInfo.volumeUuid;
    }

    public static boolean isInstantApp(ApplicationInfo applicationInfo) {
        return applicationInfo.isInstantApp();
    }
}
