package com.android.server.backup.restore;

import android.util.Slog;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.UserBackupManagerService;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AdbRestoreFinishedLatch implements BackupRestoreTask {
    private static final String TAG = "AdbRestoreFinishedLatch";
    private UserBackupManagerService backupManagerService;
    private final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    private final int mCurrentOpToken;
    final CountDownLatch mLatch = new CountDownLatch(1);

    public AdbRestoreFinishedLatch(UserBackupManagerService backupManagerService, int currentOpToken) {
        this.backupManagerService = backupManagerService;
        this.mCurrentOpToken = currentOpToken;
        BackupAgentTimeoutParameters agentTimeoutParameters = backupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
    }

    void await() {
        long fullBackupAgentTimeoutMillis = this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
        try {
            this.mLatch.await(fullBackupAgentTimeoutMillis, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Slog.w(TAG, "Interrupted!");
        }
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void execute() {
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void operationComplete(long result) {
        this.mLatch.countDown();
        this.backupManagerService.removeOperation(this.mCurrentOpToken);
    }

    @Override // com.android.server.backup.BackupRestoreTask
    public void handleCancel(boolean cancelAll) {
        Slog.w(TAG, "adb onRestoreFinished() timed out");
        this.mLatch.countDown();
        this.backupManagerService.removeOperation(this.mCurrentOpToken);
    }
}
