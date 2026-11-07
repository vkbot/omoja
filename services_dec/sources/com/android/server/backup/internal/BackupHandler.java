package com.android.server.backup.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.UserBackupManagerService;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class BackupHandler extends Handler {
    public static final int MSG_BACKUP_OPERATION_TIMEOUT = 17;
    public static final int MSG_BACKUP_RESTORE_STEP = 20;
    public static final int MSG_FULL_CONFIRMATION_TIMEOUT = 9;
    public static final int MSG_OP_COMPLETE = 21;
    public static final int MSG_REQUEST_BACKUP = 15;
    public static final int MSG_RESTORE_OPERATION_TIMEOUT = 18;
    public static final int MSG_RESTORE_SESSION_TIMEOUT = 8;
    public static final int MSG_RETRY_CLEAR = 12;
    public static final int MSG_RUN_ADB_BACKUP = 2;
    public static final int MSG_RUN_ADB_RESTORE = 10;
    public static final int MSG_RUN_BACKUP = 1;
    public static final int MSG_RUN_CLEAR = 4;
    public static final int MSG_RUN_GET_RESTORE_SETS = 6;
    public static final int MSG_RUN_RESTORE = 3;
    public static final int MSG_SCHEDULE_BACKUP_PACKAGE = 16;
    public static final int MSG_STOP = 22;
    private final UserBackupManagerService backupManagerService;
    private final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    private final HandlerThread mBackupThread;
    volatile boolean mIsStopping;

    public BackupHandler(UserBackupManagerService backupManagerService, HandlerThread backupThread) {
        super(backupThread.getLooper());
        this.mIsStopping = false;
        this.mBackupThread = backupThread;
        this.backupManagerService = backupManagerService;
        BackupAgentTimeoutParameters agentTimeoutParameters = backupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
    }

    public void stop() {
        this.mIsStopping = true;
        sendMessage(obtainMessage(22));
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) throws Exception {
        try {
            dispatchMessageInternal(message);
        } catch (Exception e) {
            if (!this.mIsStopping) {
                throw e;
            }
        }
    }

    void dispatchMessageInternal(Message message) {
        super.dispatchMessage(message);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0483 */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleMessage(android.os.Message r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.internal.BackupHandler.handleMessage(android.os.Message):void");
    }
}
