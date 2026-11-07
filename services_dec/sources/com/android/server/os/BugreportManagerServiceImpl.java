package com.android.server.os;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.UserInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IDumpstate;
import android.os.IDumpstateListener;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserManager;
import android.util.ArraySet;
import android.util.Slog;
import com.android.server.SystemConfig;
import java.io.FileDescriptor;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class BugreportManagerServiceImpl extends IDumpstate.Stub {
    private static final String BUGREPORT_SERVICE = "bugreportd";
    private static final long DEFAULT_BUGREPORT_SERVICE_TIMEOUT_MILLIS = 30000;
    private static final String TAG = "BugreportManagerService";
    private final AppOpsManager mAppOps;
    private final Context mContext;
    private final Object mLock = new Object();
    private final ArraySet<String> mBugreportWhitelistedPackages = SystemConfig.getInstance().getBugreportWhitelistedPackages();

    BugreportManagerServiceImpl(Context context) {
        this.mContext = context;
        this.mAppOps = (AppOpsManager) context.getSystemService("appops");
    }

    @Override // android.os.IDumpstate
    public void startBugreport(int callingUidUnused, String callingPackage, FileDescriptor bugreportFd, FileDescriptor screenshotFd, int bugreportMode, IDumpstateListener listener, boolean isScreenshotRequested) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.DUMP", "startBugreport");
        Objects.requireNonNull(callingPackage);
        Objects.requireNonNull(bugreportFd);
        Objects.requireNonNull(listener);
        validateBugreportMode(bugreportMode);
        long identity = Binder.clearCallingIdentity();
        try {
            ensureIsPrimaryUser();
            Binder.restoreCallingIdentity(identity);
            int callingUid = Binder.getCallingUid();
            this.mAppOps.checkPackage(callingUid, callingPackage);
            if (!this.mBugreportWhitelistedPackages.contains(callingPackage)) {
                throw new SecurityException(callingPackage + " is not whitelisted to use Bugreport API");
            }
            synchronized (this.mLock) {
                startBugreportLocked(callingUid, callingPackage, bugreportFd, screenshotFd, bugreportMode, listener, isScreenshotRequested);
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    @Override // android.os.IDumpstate
    public void cancelBugreport() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.DUMP", "cancelBugreport");
        synchronized (this.mLock) {
            IDumpstate ds = getDumpstateBinderServiceLocked();
            if (ds == null) {
                Slog.w(TAG, "cancelBugreport: Could not find native dumpstate service");
                return;
            }
            try {
                ds.cancelBugreport();
            } catch (RemoteException e) {
                Slog.e(TAG, "RemoteException in cancelBugreport", e);
            }
            SystemProperties.set("ctl.stop", BUGREPORT_SERVICE);
        }
    }

    private void validateBugreportMode(int mode) {
        if (mode != 0 && mode != 1 && mode != 2 && mode != 3 && mode != 4 && mode != 5) {
            Slog.w(TAG, "Unknown bugreport mode: " + mode);
            throw new IllegalArgumentException("Unknown bugreport mode: " + mode);
        }
    }

    private void ensureIsPrimaryUser() {
        UserInfo currentUser = null;
        try {
            currentUser = ActivityManager.getService().getCurrentUser();
        } catch (RemoteException e) {
        }
        UserInfo primaryUser = UserManager.get(this.mContext).getPrimaryUser();
        if (currentUser == null) {
            logAndThrow("No current user. Only primary user is allowed to take bugreports.");
        }
        if (primaryUser == null) {
            logAndThrow("No primary user. Only primary user is allowed to take bugreports.");
        }
        if (primaryUser.id != currentUser.id) {
            logAndThrow("Current user not primary user. Only primary user is allowed to take bugreports.");
        }
    }

    private void startBugreportLocked(int callingUid, String callingPackage, FileDescriptor bugreportFd, FileDescriptor screenshotFd, int bugreportMode, IDumpstateListener listener, boolean isScreenshotRequested) {
        if (isDumpstateBinderServiceRunningLocked()) {
            Slog.w(TAG, "'dumpstate' is already running. Cannot start a new bugreport while another one is currently in progress.");
            reportError(listener, 5);
            return;
        }
        IDumpstate ds = startAndGetDumpstateBinderServiceLocked();
        if (ds == null) {
            Slog.w(TAG, "Unable to get bugreport service");
            reportError(listener, 2);
        } else {
            IDumpstateListener myListener = new DumpstateListener(listener, ds);
            try {
                ds.startBugreport(callingUid, callingPackage, bugreportFd, screenshotFd, bugreportMode, myListener, isScreenshotRequested);
            } catch (RemoteException e) {
                cancelBugreport();
            }
        }
    }

    private boolean isDumpstateBinderServiceRunningLocked() {
        return getDumpstateBinderServiceLocked() != null;
    }

    private IDumpstate getDumpstateBinderServiceLocked() {
        return IDumpstate.Stub.asInterface(ServiceManager.getService("dumpstate"));
    }

    private IDumpstate startAndGetDumpstateBinderServiceLocked() {
        SystemProperties.set("ctl.start", BUGREPORT_SERVICE);
        IDumpstate ds = null;
        boolean timedOut = false;
        int totalTimeWaitedMillis = 0;
        int seedWaitTimeMillis = 500;
        while (!timedOut) {
            ds = getDumpstateBinderServiceLocked();
            if (ds != null) {
                Slog.i(TAG, "Got bugreport service handle.");
                break;
            }
            SystemClock.sleep(seedWaitTimeMillis);
            Slog.i(TAG, "Waiting to get dumpstate service handle (" + totalTimeWaitedMillis + "ms)");
            totalTimeWaitedMillis += seedWaitTimeMillis;
            seedWaitTimeMillis *= 2;
            timedOut = ((long) totalTimeWaitedMillis) > 30000;
        }
        if (timedOut) {
            Slog.w(TAG, "Timed out waiting to get dumpstate service handle (" + totalTimeWaitedMillis + "ms)");
        }
        return ds;
    }

    private void reportError(IDumpstateListener listener, int errorCode) {
        try {
            listener.onError(errorCode);
        } catch (RemoteException e) {
            Slog.w(TAG, "onError() transaction threw RemoteException: " + e.getMessage());
        }
    }

    private void logAndThrow(String message) {
        Slog.w(TAG, message);
        throw new IllegalArgumentException(message);
    }

    private final class DumpstateListener extends IDumpstateListener.Stub implements IBinder.DeathRecipient {
        private boolean mDone = false;
        private final IDumpstate mDs;
        private final IDumpstateListener mListener;

        DumpstateListener(IDumpstateListener listener, IDumpstate ds) {
            this.mListener = listener;
            this.mDs = ds;
            try {
                ds.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
                Slog.e(BugreportManagerServiceImpl.TAG, "Unable to register Death Recipient for IDumpstate", e);
            }
        }

        @Override // android.os.IDumpstateListener
        public void onProgress(int progress) throws RemoteException {
            this.mListener.onProgress(progress);
        }

        @Override // android.os.IDumpstateListener
        public void onError(int errorCode) throws RemoteException {
            synchronized (BugreportManagerServiceImpl.this.mLock) {
                this.mDone = true;
            }
            this.mListener.onError(errorCode);
        }

        @Override // android.os.IDumpstateListener
        public void onFinished() throws RemoteException {
            synchronized (BugreportManagerServiceImpl.this.mLock) {
                this.mDone = true;
            }
            this.mListener.onFinished();
        }

        @Override // android.os.IDumpstateListener
        public void onScreenshotTaken(boolean success) throws RemoteException {
            this.mListener.onScreenshotTaken(success);
        }

        @Override // android.os.IDumpstateListener
        public void onUiIntensiveBugreportDumpsFinished(String callingPackage) throws RemoteException {
            this.mListener.onUiIntensiveBugreportDumpsFinished(callingPackage);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (BugreportManagerServiceImpl.this.mLock) {
                if (!this.mDone) {
                    Slog.e(BugreportManagerServiceImpl.TAG, "IDumpstate likely crashed. Notifying listener");
                    try {
                        this.mListener.onError(2);
                    } catch (RemoteException e) {
                    }
                }
            }
            this.mDs.asBinder().unlinkToDeath(this, 0);
        }
    }
}
