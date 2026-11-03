package com.mega.nexus.app;

import android.app.usage.StorageStatsManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaStorageStatsManager {
    public static long getCacheQuotaBytes(StorageStatsManager storageStatsManager, String str, int i) {
        return storageStatsManager.getCacheQuotaBytes(str, i);
    }
}
