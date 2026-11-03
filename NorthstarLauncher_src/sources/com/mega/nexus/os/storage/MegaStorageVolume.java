package com.mega.nexus.os.storage;

import android.os.storage.StorageVolume;

/* JADX INFO: loaded from: classes2.dex */
public class MegaStorageVolume {
    public static String getUserLabel(StorageVolume storageVolume) {
        return storageVolume.getUserLabel();
    }

    public static String getPath(StorageVolume storageVolume) {
        return storageVolume.getPath();
    }

    public static int getStorageId(StorageVolume storageVolume) {
        return storageVolume.getFatVolumeId();
    }

    public static String getId(StorageVolume storageVolume) {
        return storageVolume.getId();
    }
}
