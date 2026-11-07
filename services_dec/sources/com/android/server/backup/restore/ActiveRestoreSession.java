package com.android.server.backup.restore;

import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IRestoreObserver;
import android.app.backup.IRestoreSession;
import android.app.backup.RestoreSet;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.util.Slog;
import com.android.server.backup.TransportManager;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.internal.OnTaskFinishedListener;
import com.android.server.backup.params.RestoreGetSetsParams;
import com.android.server.backup.params.RestoreParams;
import com.android.server.backup.transport.TransportClient;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes.dex */
public class ActiveRestoreSession extends IRestoreSession.Stub {
    private static final String TAG = "RestoreSession";
    private final UserBackupManagerService mBackupManagerService;
    private final String mPackageName;
    private final TransportManager mTransportManager;
    private final String mTransportName;
    private final int mUserId;
    public RestoreSet[] mRestoreSets = null;
    boolean mEnded = false;
    boolean mTimedOut = false;

    public ActiveRestoreSession(UserBackupManagerService backupManagerService, String packageName, String transportName) {
        this.mBackupManagerService = backupManagerService;
        this.mPackageName = packageName;
        this.mTransportManager = backupManagerService.getTransportManager();
        this.mTransportName = transportName;
        this.mUserId = backupManagerService.getUserId();
    }

    public void markTimedOut() {
        this.mTimedOut = true;
    }

    public synchronized int getAvailableRestoreSets(IRestoreObserver observer, IBackupManagerMonitor monitor) {
        this.mBackupManagerService.getContext().enforceCallingOrSelfPermission("android.permission.BACKUP", "getAvailableRestoreSets");
        if (observer == null) {
            throw new IllegalArgumentException("Observer must not be null");
        }
        if (this.mEnded) {
            throw new IllegalStateException("Restore session already ended");
        }
        if (this.mTimedOut) {
            Slog.i(TAG, "Session already timed out");
            return -1;
        }
        long oldId = Binder.clearCallingIdentity();
        try {
            try {
                final TransportClient transportClient = this.mTransportManager.getTransportClient(this.mTransportName, "RestoreSession.getAvailableRestoreSets()");
                if (transportClient == null) {
                    Slog.w(TAG, "Null transport client getting restore sets");
                    Binder.restoreCallingIdentity(oldId);
                    return -1;
                }
                this.mBackupManagerService.getBackupHandler().removeMessages(8);
                final UserBackupManagerService.BackupWakeLock wakelock = this.mBackupManagerService.getWakelock();
                wakelock.acquire();
                final TransportManager transportManager = this.mTransportManager;
                OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.restore.-$$Lambda$ActiveRestoreSession$sCvtVwpXah9lCpJqxZ9YbNMLXas
                    @Override // com.android.server.backup.internal.OnTaskFinishedListener
                    public final void onFinished(String str) {
                        ActiveRestoreSession.lambda$getAvailableRestoreSets$0(transportManager, transportClient, wakelock, str);
                    }
                };
                Message msg = this.mBackupManagerService.getBackupHandler().obtainMessage(6, new RestoreGetSetsParams(transportClient, this, observer, monitor, listener));
                this.mBackupManagerService.getBackupHandler().sendMessage(msg);
                Binder.restoreCallingIdentity(oldId);
                return 0;
            } catch (Exception e) {
                Slog.e(TAG, "Error in getAvailableRestoreSets", e);
                Binder.restoreCallingIdentity(oldId);
                return -1;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(oldId);
            throw th;
        }
    }

    static /* synthetic */ void lambda$getAvailableRestoreSets$0(TransportManager transportManager, TransportClient transportClient, UserBackupManagerService.BackupWakeLock wakelock, String caller) {
        transportManager.disposeOfTransportClient(transportClient, caller);
        wakelock.release();
    }

    public synchronized int restoreAll(final long token, final IRestoreObserver observer, final IBackupManagerMonitor monitor) {
        this.mBackupManagerService.getContext().enforceCallingOrSelfPermission("android.permission.BACKUP", "performRestore");
        Slog.d(TAG, "restoreAll token=" + Long.toHexString(token) + " observer=" + observer);
        if (this.mEnded) {
            throw new IllegalStateException("Restore session already ended");
        }
        if (this.mTimedOut) {
            Slog.i(TAG, "Session already timed out");
            return -1;
        }
        if (this.mRestoreSets == null) {
            Slog.e(TAG, "Ignoring restoreAll() with no restore set");
            return -1;
        }
        if (this.mPackageName != null) {
            Slog.e(TAG, "Ignoring restoreAll() on single-package session");
            return -1;
        }
        if (!this.mTransportManager.isTransportRegistered(this.mTransportName)) {
            Slog.e(TAG, "Transport " + this.mTransportName + " not registered");
            return -1;
        }
        synchronized (this.mBackupManagerService.getQueueLock()) {
            for (int i = 0; i < this.mRestoreSets.length; i++) {
                try {
                    try {
                        if (token == this.mRestoreSets[i].token) {
                            long oldId = Binder.clearCallingIdentity();
                            try {
                                int iSendRestoreToHandlerLocked = sendRestoreToHandlerLocked(new BiFunction() { // from class: com.android.server.backup.restore.-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674
                                    @Override // java.util.function.BiFunction
                                    public final Object apply(Object obj, Object obj2) {
                                        return RestoreParams.createForRestoreAll((TransportClient) obj, observer, monitor, token, (OnTaskFinishedListener) obj2);
                                    }
                                }, "RestoreSession.restoreAll()");
                                Binder.restoreCallingIdentity(oldId);
                                return iSendRestoreToHandlerLocked;
                            } catch (Throwable th) {
                                Binder.restoreCallingIdentity(oldId);
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            Slog.w(TAG, "Restore token " + Long.toHexString(token) + " not found");
            return -1;
        }
    }

    public synchronized int restorePackages(final long token, final IRestoreObserver observer, final String[] packages, final IBackupManagerMonitor monitor) {
        this.mBackupManagerService.getContext().enforceCallingOrSelfPermission("android.permission.BACKUP", "performRestore");
        StringBuilder b = new StringBuilder(128);
        b.append("restorePackages token=");
        b.append(Long.toHexString(token));
        b.append(" observer=");
        if (observer == null) {
            b.append("null");
        } else {
            b.append(observer.toString());
        }
        b.append(" monitor=");
        if (monitor == null) {
            b.append("null");
        } else {
            b.append(monitor.toString());
        }
        b.append(" packages=");
        if (packages == null) {
            b.append("null");
        } else {
            b.append('{');
            boolean first = true;
            for (String s : packages) {
                if (!first) {
                    b.append(", ");
                } else {
                    first = false;
                }
                b.append(s);
            }
            b.append('}');
        }
        Slog.d(TAG, b.toString());
        if (this.mEnded) {
            throw new IllegalStateException("Restore session already ended");
        }
        if (this.mTimedOut) {
            Slog.i(TAG, "Session already timed out");
            return -1;
        }
        if (this.mRestoreSets == null) {
            Slog.e(TAG, "Ignoring restoreAll() with no restore set");
            return -1;
        }
        if (this.mPackageName != null) {
            Slog.e(TAG, "Ignoring restoreAll() on single-package session");
            return -1;
        }
        if (!this.mTransportManager.isTransportRegistered(this.mTransportName)) {
            Slog.e(TAG, "Transport " + this.mTransportName + " not registered");
            return -1;
        }
        synchronized (this.mBackupManagerService.getQueueLock()) {
            for (int i = 0; i < this.mRestoreSets.length; i++) {
                try {
                    try {
                        if (token == this.mRestoreSets[i].token) {
                            long oldId = Binder.clearCallingIdentity();
                            try {
                                int iSendRestoreToHandlerLocked = sendRestoreToHandlerLocked(new BiFunction() { // from class: com.android.server.backup.restore.-$$Lambda$ActiveRestoreSession$gXVTdFUn9LSjuKEXaGOyKBxki6Q
                                    @Override // java.util.function.BiFunction
                                    public final Object apply(Object obj, Object obj2) {
                                        IRestoreObserver iRestoreObserver = observer;
                                        IBackupManagerMonitor iBackupManagerMonitor = monitor;
                                        long j = token;
                                        String[] strArr = packages;
                                        return RestoreParams.createForRestorePackages((TransportClient) obj, iRestoreObserver, iBackupManagerMonitor, j, strArr, strArr.length > 1, (OnTaskFinishedListener) obj2);
                                    }
                                }, "RestoreSession.restorePackages(" + packages.length + " packages)");
                                Binder.restoreCallingIdentity(oldId);
                                return iSendRestoreToHandlerLocked;
                            } catch (Throwable th) {
                                Binder.restoreCallingIdentity(oldId);
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            Slog.w(TAG, "Restore token " + Long.toHexString(token) + " not found");
            return -1;
        }
    }

    public synchronized int restorePackage(String packageName, final IRestoreObserver observer, final IBackupManagerMonitor monitor) {
        Slog.v(TAG, "restorePackage pkg=" + packageName + " obs=" + observer + "monitor=" + monitor);
        if (this.mEnded) {
            throw new IllegalStateException("Restore session already ended");
        }
        if (this.mTimedOut) {
            Slog.i(TAG, "Session already timed out");
            return -1;
        }
        if (this.mPackageName != null && !this.mPackageName.equals(packageName)) {
            Slog.e(TAG, "Ignoring attempt to restore pkg=" + packageName + " on session for package " + this.mPackageName);
            return -1;
        }
        try {
            final PackageInfo app = this.mBackupManagerService.getPackageManager().getPackageInfoAsUser(packageName, 0, this.mUserId);
            int perm = this.mBackupManagerService.getContext().checkPermission("android.permission.BACKUP", Binder.getCallingPid(), Binder.getCallingUid());
            if (perm == -1 && app.applicationInfo.uid != Binder.getCallingUid()) {
                Slog.w(TAG, "restorePackage: bad packageName=" + packageName + " or calling uid=" + Binder.getCallingUid());
                throw new SecurityException("No permission to restore other packages");
            }
            if (!this.mTransportManager.isTransportRegistered(this.mTransportName)) {
                Slog.e(TAG, "Transport " + this.mTransportName + " not registered");
                return -1;
            }
            long oldId = Binder.clearCallingIdentity();
            try {
                final long token = this.mBackupManagerService.getAvailableRestoreToken(packageName);
                Slog.v(TAG, "restorePackage pkg=" + packageName + " token=" + Long.toHexString(token));
                if (token == 0) {
                    Slog.w(TAG, "No data available for this package; not restoring");
                    Binder.restoreCallingIdentity(oldId);
                    return -1;
                }
                int iSendRestoreToHandlerLocked = sendRestoreToHandlerLocked(new BiFunction() { // from class: com.android.server.backup.restore.-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return RestoreParams.createForSinglePackage((TransportClient) obj, observer, monitor, token, app, (OnTaskFinishedListener) obj2);
                    }
                }, "RestoreSession.restorePackage(" + packageName + ")");
                Binder.restoreCallingIdentity(oldId);
                return iSendRestoreToHandlerLocked;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(oldId);
                throw th;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Slog.w(TAG, "Asked to restore nonexistent pkg " + packageName);
            return -1;
        }
    }

    public void setRestoreSets(RestoreSet[] restoreSets) {
        this.mRestoreSets = restoreSets;
    }

    private int sendRestoreToHandlerLocked(BiFunction<TransportClient, OnTaskFinishedListener, RestoreParams> restoreParamsBuilder, String callerLogString) {
        final TransportClient transportClient = this.mTransportManager.getTransportClient(this.mTransportName, callerLogString);
        if (transportClient == null) {
            Slog.e(TAG, "Transport " + this.mTransportName + " got unregistered");
            return -1;
        }
        Handler backupHandler = this.mBackupManagerService.getBackupHandler();
        backupHandler.removeMessages(8);
        final UserBackupManagerService.BackupWakeLock wakelock = this.mBackupManagerService.getWakelock();
        wakelock.acquire();
        final TransportManager transportManager = this.mTransportManager;
        OnTaskFinishedListener listener = new OnTaskFinishedListener() { // from class: com.android.server.backup.restore.-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8
            @Override // com.android.server.backup.internal.OnTaskFinishedListener
            public final void onFinished(String str) {
                ActiveRestoreSession.lambda$sendRestoreToHandlerLocked$4(transportManager, transportClient, wakelock, str);
            }
        };
        Message msg = backupHandler.obtainMessage(3);
        msg.obj = restoreParamsBuilder.apply(transportClient, listener);
        backupHandler.sendMessage(msg);
        return 0;
    }

    static /* synthetic */ void lambda$sendRestoreToHandlerLocked$4(TransportManager transportManager, TransportClient transportClient, UserBackupManagerService.BackupWakeLock wakelock, String caller) {
        transportManager.disposeOfTransportClient(transportClient, caller);
        wakelock.release();
    }

    public class EndRestoreRunnable implements Runnable {
        UserBackupManagerService mBackupManager;
        ActiveRestoreSession mSession;

        public EndRestoreRunnable(UserBackupManagerService manager, ActiveRestoreSession session) {
            this.mBackupManager = manager;
            this.mSession = session;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mSession) {
                this.mSession.mEnded = true;
            }
            this.mBackupManager.clearRestoreSession(this.mSession);
        }
    }

    public synchronized void endRestoreSession() {
        Slog.d(TAG, "endRestoreSession");
        if (this.mTimedOut) {
            Slog.i(TAG, "Session already timed out");
        } else {
            if (this.mEnded) {
                throw new IllegalStateException("Restore session already ended");
            }
            this.mBackupManagerService.getBackupHandler().post(new EndRestoreRunnable(this.mBackupManagerService, this));
        }
    }
}
