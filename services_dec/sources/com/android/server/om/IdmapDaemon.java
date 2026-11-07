package com.android.server.om;

import android.os.IBinder;
import android.os.IIdmap2;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemService;
import android.util.Slog;
import com.android.server.FgThread;
import com.android.server.job.controllers.JobStatus;
import java.io.File;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class IdmapDaemon {
    private static final String IDMAP_DAEMON = "idmap2d";
    private static final int SERVICE_CONNECT_INTERVAL_SLEEP_MS = 5;
    private static final int SERVICE_CONNECT_TIMEOUT_MS = 5000;
    private static final int SERVICE_TIMEOUT_MS = 10000;
    private static IdmapDaemon sInstance;
    private volatile IIdmap2 mService;
    private final AtomicInteger mOpenedCount = new AtomicInteger();
    private final Object mIdmapToken = new Object();

    IdmapDaemon() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Connection implements AutoCloseable {
        private boolean mOpened;

        private Connection() {
            this.mOpened = true;
            synchronized (IdmapDaemon.this.mIdmapToken) {
                IdmapDaemon.this.mOpenedCount.incrementAndGet();
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            synchronized (IdmapDaemon.this.mIdmapToken) {
                if (this.mOpened) {
                    this.mOpened = false;
                    if (IdmapDaemon.this.mOpenedCount.decrementAndGet() != 0) {
                        return;
                    }
                    FgThread.getHandler().postDelayed(new Runnable() { // from class: com.android.server.om.-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$close$0$IdmapDaemon$Connection();
                        }
                    }, IdmapDaemon.this.mIdmapToken, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
                }
            }
        }

        public /* synthetic */ void lambda$close$0$IdmapDaemon$Connection() {
            synchronized (IdmapDaemon.this.mIdmapToken) {
                if (IdmapDaemon.this.mService != null && IdmapDaemon.this.mOpenedCount.get() == 0) {
                    IdmapDaemon.stopIdmapService();
                    IdmapDaemon.this.mService = null;
                }
            }
        }
    }

    static IdmapDaemon getInstance() {
        if (sInstance == null) {
            sInstance = new IdmapDaemon();
        }
        return sInstance;
    }

    String createIdmap(String targetPath, String overlayPath, int policies, boolean enforce, int userId) throws TimeoutException, RemoteException {
        Connection c = connect();
        try {
            String strCreateIdmap = this.mService.createIdmap(targetPath, overlayPath, policies, enforce, userId);
            if (c != null) {
                c.close();
            }
            return strCreateIdmap;
        } catch (Throwable th) {
            if (c != null) {
                try {
                    c.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    boolean removeIdmap(String overlayPath, int userId) throws TimeoutException, RemoteException {
        Connection c = connect();
        try {
            boolean zRemoveIdmap = this.mService.removeIdmap(overlayPath, userId);
            if (c != null) {
                c.close();
            }
            return zRemoveIdmap;
        } catch (Throwable th) {
            if (c != null) {
                try {
                    c.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    boolean verifyIdmap(String targetPath, String overlayPath, int policies, boolean enforce, int userId) throws Exception {
        Connection c = connect();
        try {
            boolean zVerifyIdmap = this.mService.verifyIdmap(targetPath, overlayPath, policies, enforce, userId);
            if (c != null) {
                c.close();
            }
            return zVerifyIdmap;
        } catch (Throwable th) {
            if (c != null) {
                try {
                    c.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    boolean idmapExists(String overlayPath, int userId) {
        try {
            Connection c = connect();
            try {
                boolean zIsFile = new File(this.mService.getIdmapPath(overlayPath, userId)).isFile();
                if (c != null) {
                    c.close();
                }
                return zIsFile;
            } catch (Throwable th) {
                if (c != null) {
                    try {
                        c.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            Slog.wtf("OverlayManager", "failed to check if idmap exists for " + overlayPath + ": " + e.getMessage());
            return false;
        }
    }

    private IBinder getIdmapService() throws TimeoutException, RemoteException {
        SystemService.start(IDMAP_DAEMON);
        long endMillis = SystemClock.elapsedRealtime() + 5000;
        while (SystemClock.elapsedRealtime() <= endMillis) {
            IBinder binder = ServiceManager.getService("idmap");
            if (binder != null) {
                binder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.om.-$$Lambda$IdmapDaemon$PJzhiOHnyxvsKcpF_77d27eStZs
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        Slog.w("OverlayManager", String.format("service '%s' died", "idmap"));
                    }
                }, 0);
                return binder;
            }
            try {
                Thread.sleep(5L);
            } catch (InterruptedException e) {
            }
        }
        throw new TimeoutException(String.format("Failed to connect to '%s' in %d milliseconds", "idmap", 5000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void stopIdmapService() {
        try {
            SystemService.stop(IDMAP_DAEMON);
        } catch (RuntimeException e) {
            Slog.w("OverlayManager", "failed to stop service:idmap2dException: " + e.getMessage());
        }
    }

    private Connection connect() throws TimeoutException, RemoteException {
        synchronized (this.mIdmapToken) {
            FgThread.getHandler().removeCallbacksAndMessages(this.mIdmapToken);
            if (this.mService != null) {
                return new Connection();
            }
            this.mService = IIdmap2.Stub.asInterface(getIdmapService());
            return new Connection();
        }
    }
}
