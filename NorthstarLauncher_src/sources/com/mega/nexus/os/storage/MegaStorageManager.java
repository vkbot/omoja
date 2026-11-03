package com.mega.nexus.os.storage;

import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class MegaStorageManager {
    public static boolean isUserKeyUnlocked(int i) {
        return StorageManager.isUserKeyUnlocked(i);
    }

    public static StorageVolume[] getVolumeList(StorageManager storageManager) {
        return storageManager.getVolumeList();
    }

    public static String getVolumeState(StorageManager storageManager, String str) {
        return storageManager.getVolumeState(str);
    }

    public static List<VolumeInfo> getVolumes(StorageManager storageManager) {
        return storageManager.getVolumes();
    }

    public static void unmount(StorageManager storageManager, String str) {
        storageManager.unmount(str);
    }

    public static void mount(StorageManager storageManager, String str) {
        storageManager.mount(str);
    }

    public static String[] getVolumePaths(StorageManager storageManager) {
        return storageManager.getVolumePaths();
    }

    public static long getPrimaryStorageSize(StorageManager storageManager) {
        return storageManager.getPrimaryStorageSize();
    }

    public static VolumeInfo findEmulatedForPrivate(StorageManager storageManager, VolumeInfo volumeInfo) {
        return storageManager.findEmulatedForPrivate(volumeInfo);
    }

    public static UUID convert(String str) {
        return StorageManager.convert(str);
    }

    public static UUID convert(StorageManager storageManager, String str) {
        return StorageManager.convert(str);
    }

    public static void registerListener(StorageManager storageManager, StorageEventListener storageEventListener) {
        storageManager.registerListener(storageEventListener);
    }

    public static void unregisterListener(StorageManager storageManager, StorageEventListener storageEventListener) {
        storageManager.unregisterListener(storageEventListener);
    }

    public static void wipeAdoptableDisks(StorageManager storageManager) {
        storageManager.wipeAdoptableDisks();
    }

    public static void format(StorageManager storageManager, String str) {
        storageManager.format(str);
    }
}
