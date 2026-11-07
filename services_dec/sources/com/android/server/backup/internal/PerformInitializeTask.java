package com.android.server.backup.internal;

import android.app.backup.IBackupObserver;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.EventLog;
import android.util.Slog;
import com.android.internal.backup.IBackupTransport;
import com.android.server.EventLogTags;
import com.android.server.backup.BackupManagerService;
import com.android.server.backup.TransportManager;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.transport.TransportClient;
import com.android.server.job.JobSchedulerShellCommand;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PerformInitializeTask implements Runnable {
    private final UserBackupManagerService mBackupManagerService;
    private final File mBaseStateDir;
    private final OnTaskFinishedListener mListener;
    private IBackupObserver mObserver;
    private final String[] mQueue;
    private final TransportManager mTransportManager;

    public PerformInitializeTask(UserBackupManagerService backupManagerService, String[] transportNames, IBackupObserver observer, OnTaskFinishedListener listener) {
        this(backupManagerService, backupManagerService.getTransportManager(), transportNames, observer, listener, backupManagerService.getBaseStateDir());
    }

    PerformInitializeTask(UserBackupManagerService backupManagerService, TransportManager transportManager, String[] transportNames, IBackupObserver observer, OnTaskFinishedListener listener, File baseStateDir) {
        this.mBackupManagerService = backupManagerService;
        this.mTransportManager = transportManager;
        this.mQueue = transportNames;
        this.mObserver = observer;
        this.mListener = listener;
        this.mBaseStateDir = baseStateDir;
    }

    private void notifyResult(String target, int status) {
        try {
            if (this.mObserver != null) {
                this.mObserver.onResult(target, status);
            }
        } catch (RemoteException e) {
            this.mObserver = null;
        }
    }

    private void notifyFinished(int status) {
        try {
            if (this.mObserver != null) {
                this.mObserver.backupFinished(status);
            }
        } catch (RemoteException e) {
            this.mObserver = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        List<TransportClient> transportClientsToDisposeOf = new ArrayList<>(this.mQueue.length);
        int result = 0;
        try {
            try {
                String[] strArr = this.mQueue;
                int length = strArr.length;
                int i = 0;
                while (i < length) {
                    String transportName = strArr[i];
                    TransportClient transportClient = this.mTransportManager.getTransportClient(transportName, "PerformInitializeTask.run()");
                    if (transportClient == null) {
                        Slog.e(BackupManagerService.TAG, "Requested init for " + transportName + " but not found");
                    } else {
                        transportClientsToDisposeOf.add(transportClient);
                        Slog.i(BackupManagerService.TAG, "Initializing (wiping) backup transport storage: " + transportName);
                        String transportDirName = this.mTransportManager.getTransportDirName(transportClient.getTransportComponent());
                        EventLog.writeEvent(EventLogTags.BACKUP_START, transportDirName);
                        long startRealtime = SystemClock.elapsedRealtime();
                        IBackupTransport transport = transportClient.connectOrThrow("PerformInitializeTask.run()");
                        int status = transport.initializeDevice();
                        if (status != 0) {
                            Slog.e(BackupManagerService.TAG, "Transport error in initializeDevice()");
                        } else {
                            status = transport.finishBackup();
                            if (status != 0) {
                                Slog.e(BackupManagerService.TAG, "Transport error in finishBackup()");
                            }
                        }
                        if (status == 0) {
                            Slog.i(BackupManagerService.TAG, "Device init successful");
                            int millis = (int) (SystemClock.elapsedRealtime() - startRealtime);
                            EventLog.writeEvent(EventLogTags.BACKUP_INITIALIZE, new Object[0]);
                            File stateFileDir = new File(this.mBaseStateDir, transportDirName);
                            this.mBackupManagerService.resetBackupState(stateFileDir);
                            EventLog.writeEvent(EventLogTags.BACKUP_SUCCESS, 0, Integer.valueOf(millis));
                            this.mBackupManagerService.recordInitPending(false, transportName, transportDirName);
                            notifyResult(transportName, 0);
                        } else {
                            strArr = strArr;
                            length = length;
                            EventLog.writeEvent(EventLogTags.BACKUP_TRANSPORT_FAILURE, "(initialize)");
                            this.mBackupManagerService.recordInitPending(true, transportName, transportDirName);
                            notifyResult(transportName, status);
                            result = status;
                            try {
                                long delay = transport.requestBackupTime();
                                StringBuilder sb = new StringBuilder();
                                try {
                                    sb.append("Init failed on ");
                                    sb.append(transportName);
                                    sb.append(" resched in ");
                                    sb.append(delay);
                                    Slog.w(BackupManagerService.TAG, sb.toString());
                                    this.mBackupManagerService.getAlarmManager().set(0, System.currentTimeMillis() + delay, this.mBackupManagerService.getRunInitIntent());
                                    result = result;
                                } catch (Exception e) {
                                    e = e;
                                    result = result;
                                    Slog.e(BackupManagerService.TAG, "Unexpected error performing init", e);
                                    result = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                                    for (TransportClient transportClient2 : transportClientsToDisposeOf) {
                                        this.mTransportManager.disposeOfTransportClient(transportClient2, "PerformInitializeTask.run()");
                                    }
                                    notifyFinished(result);
                                    this.mListener.onFinished("PerformInitializeTask.run()");
                                } catch (Throwable th) {
                                    th = th;
                                    result = result;
                                    for (TransportClient transportClient3 : transportClientsToDisposeOf) {
                                        this.mTransportManager.disposeOfTransportClient(transportClient3, "PerformInitializeTask.run()");
                                    }
                                    notifyFinished(result);
                                    this.mListener.onFinished("PerformInitializeTask.run()");
                                    throw th;
                                }
                            } catch (Exception e2) {
                                e = e2;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        i++;
                        strArr = strArr;
                        length = length;
                    }
                    i++;
                    strArr = strArr;
                    length = length;
                }
                for (TransportClient transportClient4 : transportClientsToDisposeOf) {
                    this.mTransportManager.disposeOfTransportClient(transportClient4, "PerformInitializeTask.run()");
                }
            } catch (Exception e3) {
                e = e3;
            }
            notifyFinished(result);
            this.mListener.onFinished("PerformInitializeTask.run()");
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
