package com.mega.nexus.content.pm;

import android.content.pm.PackageStats;

/* JADX INFO: loaded from: classes2.dex */
public class MegaPackageStats {
    public static PackageStats initPackageStats(String str, int i) {
        return new PackageStats(str, i);
    }

    public static int getUserHandle(PackageStats packageStats) {
        return packageStats.userHandle;
    }
}
