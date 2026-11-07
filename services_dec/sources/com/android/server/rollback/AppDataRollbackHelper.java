package com.android.server.rollback;

import android.content.rollback.PackageRollbackInfo;
import android.os.storage.StorageManager;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseLongArray;
import com.android.server.pm.ApexManager;
import com.android.server.pm.Installer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AppDataRollbackHelper {
    private static final String TAG = "RollbackManager";
    private final ApexManager mApexManager;
    private final Installer mInstaller;

    public AppDataRollbackHelper(Installer installer) {
        this.mInstaller = installer;
        this.mApexManager = ApexManager.getInstance();
    }

    AppDataRollbackHelper(Installer installer, ApexManager apexManager) {
        this.mInstaller = installer;
        this.mApexManager = apexManager;
    }

    public void snapshotAppData(int rollbackId, PackageRollbackInfo packageRollbackInfo, int[] userIds) {
        int storageFlags;
        for (int user : userIds) {
            if (isUserCredentialLocked(user)) {
                Slog.v(TAG, "User: " + user + " isn't unlocked, skipping CE userdata backup.");
                storageFlags = 1;
                packageRollbackInfo.addPendingBackup(user);
            } else {
                storageFlags = 3;
            }
            doSnapshot(packageRollbackInfo, user, rollbackId, storageFlags);
        }
    }

    public boolean restoreAppData(int rollbackId, PackageRollbackInfo packageRollbackInfo, int userId, int appId, String seInfo) {
        int storageFlags;
        boolean changedRollback;
        IntArray pendingBackups = packageRollbackInfo.getPendingBackups();
        List<PackageRollbackInfo.RestoreInfo> pendingRestores = packageRollbackInfo.getPendingRestores();
        if (pendingBackups == null || pendingBackups.indexOf(userId) == -1) {
            if (isUserCredentialLocked(userId)) {
                pendingRestores.add(new PackageRollbackInfo.RestoreInfo(userId, appId, seInfo));
                storageFlags = 1;
                changedRollback = true;
            } else {
                int storageFlags2 = 1 | 2;
                storageFlags = storageFlags2;
                changedRollback = false;
            }
        } else {
            pendingBackups.remove(pendingBackups.indexOf(userId));
            storageFlags = 1;
            changedRollback = true;
        }
        doRestoreOrWipe(packageRollbackInfo, userId, rollbackId, appId, seInfo, storageFlags);
        return changedRollback;
    }

    private boolean doSnapshot(PackageRollbackInfo packageRollbackInfo, int userId, int rollbackId, int flags) {
        if (packageRollbackInfo.isApex()) {
            if ((flags & 2) != 0) {
                long ceSnapshotInode = this.mApexManager.snapshotCeData(userId, rollbackId, packageRollbackInfo.getPackageName());
                if (ceSnapshotInode <= 0) {
                    return false;
                }
                packageRollbackInfo.putCeSnapshotInode(userId, ceSnapshotInode);
                return true;
            }
            return true;
        }
        try {
            long ceSnapshotInode2 = this.mInstaller.snapshotAppData(packageRollbackInfo.getPackageName(), userId, rollbackId, flags);
            if ((flags & 2) != 0) {
                packageRollbackInfo.putCeSnapshotInode(userId, ceSnapshotInode2);
                return true;
            }
            return true;
        } catch (Installer.InstallerException ie) {
            Slog.e(TAG, "Unable to create app data snapshot for: " + packageRollbackInfo.getPackageName() + ", userId: " + userId, ie);
            return false;
        }
    }

    private boolean doRestoreOrWipe(PackageRollbackInfo packageRollbackInfo, int userId, int rollbackId, int appId, String seInfo, int flags) {
        if (packageRollbackInfo.isApex()) {
            if (packageRollbackInfo.getRollbackDataPolicy() == 0 && (flags & 2) != 0) {
                this.mApexManager.restoreCeData(userId, rollbackId, packageRollbackInfo.getPackageName());
            }
        } else {
            try {
                int rollbackDataPolicy = packageRollbackInfo.getRollbackDataPolicy();
                if (rollbackDataPolicy == 0) {
                    this.mInstaller.restoreAppDataSnapshot(packageRollbackInfo.getPackageName(), appId, seInfo, userId, rollbackId, flags);
                } else if (rollbackDataPolicy == 1) {
                    this.mInstaller.clearAppData(null, packageRollbackInfo.getPackageName(), userId, flags, 0L);
                }
            } catch (Installer.InstallerException ie) {
                Slog.e(TAG, "Unable to restore/wipe app data: " + packageRollbackInfo.getPackageName() + " policy=" + packageRollbackInfo.getRollbackDataPolicy(), ie);
                return false;
            }
        }
        return true;
    }

    public void destroyAppDataSnapshot(int rollbackId, PackageRollbackInfo packageRollbackInfo, int user) {
        int storageFlags = 1;
        SparseLongArray ceSnapshotInodes = packageRollbackInfo.getCeSnapshotInodes();
        long ceSnapshotInode = ceSnapshotInodes.get(user);
        if (ceSnapshotInode > 0) {
            storageFlags = 1 | 2;
        }
        try {
            this.mInstaller.destroyAppDataSnapshot(packageRollbackInfo.getPackageName(), user, ceSnapshotInode, rollbackId, storageFlags);
            if ((storageFlags & 2) != 0) {
                ceSnapshotInodes.delete(user);
            }
        } catch (Installer.InstallerException ie) {
            Slog.e(TAG, "Unable to delete app data snapshot for " + packageRollbackInfo.getPackageName(), ie);
        }
    }

    public void destroyApexDeSnapshots(int rollbackId) {
        this.mApexManager.destroyDeSnapshots(rollbackId);
    }

    boolean commitPendingBackupAndRestoreForUser(int userId, Rollback rollback) {
        boolean hasPendingBackup;
        boolean foundBackupOrRestore;
        boolean hasPendingRestore;
        boolean foundBackupOrRestore2 = false;
        for (PackageRollbackInfo info : rollback.info.getPackages()) {
            IntArray pendingBackupUsers = info.getPendingBackups();
            if (pendingBackupUsers != null && pendingBackupUsers.indexOf(userId) != -1) {
                foundBackupOrRestore2 = true;
                hasPendingBackup = true;
            } else {
                hasPendingBackup = false;
            }
            PackageRollbackInfo.RestoreInfo ri = info.getRestoreInfo(userId);
            if (ri == null) {
                foundBackupOrRestore = foundBackupOrRestore2;
                hasPendingRestore = false;
            } else {
                foundBackupOrRestore = true;
                hasPendingRestore = true;
            }
            if (hasPendingBackup && hasPendingRestore) {
                info.removePendingBackup(userId);
                info.removePendingRestoreInfo(userId);
            } else {
                if (hasPendingBackup) {
                    int idx = pendingBackupUsers.indexOf(userId);
                    if (doSnapshot(info, userId, rollback.info.getRollbackId(), 2)) {
                        pendingBackupUsers.remove(idx);
                    }
                }
                if (hasPendingRestore && doRestoreOrWipe(info, userId, rollback.info.getRollbackId(), ri.appId, ri.seInfo, 2)) {
                    info.removeRestoreInfo(ri);
                }
            }
            foundBackupOrRestore2 = foundBackupOrRestore;
        }
        return foundBackupOrRestore2;
    }

    public boolean isUserCredentialLocked(int userId) {
        return StorageManager.isFileEncryptedNativeOrEmulated() && !StorageManager.isUserKeyUnlocked(userId);
    }
}
