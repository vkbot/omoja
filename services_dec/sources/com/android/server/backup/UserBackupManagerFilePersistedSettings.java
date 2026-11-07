package com.android.server.backup;

import android.util.Slog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class UserBackupManagerFilePersistedSettings {
    private static final String BACKUP_ENABLE_FILE = "backup_enabled";

    UserBackupManagerFilePersistedSettings() {
    }

    static boolean readBackupEnableState(int userId) {
        boolean enabled = readBackupEnableState(UserBackupManagerFiles.getBaseStateDir(userId));
        Slog.d(BackupManagerService.TAG, "user:" + userId + " readBackupEnableState enabled:" + enabled);
        return enabled;
    }

    static void writeBackupEnableState(int userId, boolean enable) {
        Slog.d(BackupManagerService.TAG, "user:" + userId + " writeBackupEnableState enable:" + enable);
        writeBackupEnableState(UserBackupManagerFiles.getBaseStateDir(userId), enable);
    }

    private static boolean readBackupEnableState(File baseDir) {
        File enableFile = new File(baseDir, BACKUP_ENABLE_FILE);
        if (enableFile.exists()) {
            try {
                FileInputStream fin = new FileInputStream(enableFile);
                try {
                    int state = fin.read();
                    if (state != 0 && state != 1) {
                        Slog.e(BackupManagerService.TAG, "Unexpected enabled state:" + state);
                    }
                    boolean z = state != 0;
                    fin.close();
                    return z;
                } catch (Throwable th) {
                    try {
                        fin.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                Slog.e(BackupManagerService.TAG, "Cannot read enable state; assuming disabled");
            }
        } else {
            Slog.i(BackupManagerService.TAG, "isBackupEnabled() => false due to absent settings file");
        }
        return false;
    }

    private static void writeBackupEnableState(File baseDir, boolean enable) {
        File enableFile = new File(baseDir, BACKUP_ENABLE_FILE);
        File stage = new File(baseDir, "backup_enabled-stage");
        try {
            FileOutputStream fout = new FileOutputStream(stage);
            try {
                fout.write(enable ? 1 : 0);
                fout.close();
                boolean renamed = stage.renameTo(enableFile);
                if (!renamed) {
                    Slog.e(BackupManagerService.TAG, "Write enable failed as could not rename staging file to actual");
                }
                fout.close();
            } catch (Throwable th) {
                try {
                    fout.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | RuntimeException e) {
            Slog.e(BackupManagerService.TAG, "Unable to record backup enable state; reverting to disabled: " + e.getMessage());
            enableFile.delete();
            stage.delete();
        }
    }
}
