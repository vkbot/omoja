package com.android.server.storage;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.IVold;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.os.UserHandle;
import android.os.storage.VolumeInfo;
import android.util.Slog;
import android.util.SparseArray;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class StorageSessionController {
    private static final String TAG = "StorageSessionController";
    private final Context mContext;
    private volatile int mExternalStorageServiceAppId;
    private volatile ComponentName mExternalStorageServiceComponent;
    private volatile String mExternalStorageServicePackageName;
    private final boolean mIsFuseEnabled;
    private volatile boolean mIsResetting;
    private final Object mLock = new Object();
    private final SparseArray<StorageUserConnection> mConnections = new SparseArray<>();

    public StorageSessionController(Context context, boolean isFuseEnabled) {
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mIsFuseEnabled = isFuseEnabled;
    }

    public void onVolumeMount(ParcelFileDescriptor deviceFd, VolumeInfo vol) throws ExternalStorageServiceException {
        if (!shouldHandle(vol)) {
            return;
        }
        Slog.i(TAG, "On volume mount " + vol);
        String sessionId = vol.getId();
        int userId = vol.getMountUserId();
        synchronized (this.mLock) {
            StorageUserConnection connection = this.mConnections.get(userId);
            if (connection == null) {
                Slog.i(TAG, "Creating connection for user: " + userId);
                connection = new StorageUserConnection(this.mContext, userId, this);
                this.mConnections.put(userId, connection);
            }
            Slog.i(TAG, "Creating and starting session with id: " + sessionId);
            connection.startSession(sessionId, deviceFd, vol.getPath().getPath(), vol.getInternalPath().getPath());
        }
    }

    public void notifyVolumeStateChanged(VolumeInfo vol) throws ExternalStorageServiceException {
        if (!shouldHandle(vol)) {
            return;
        }
        String sessionId = vol.getId();
        int userId = vol.getMountUserId();
        synchronized (this.mLock) {
            StorageUserConnection connection = this.mConnections.get(userId);
            if (connection != null) {
                Slog.i(TAG, "Notifying volume state changed for session with id: " + sessionId);
                connection.notifyVolumeStateChanged(sessionId, vol.buildStorageVolume(this.mContext, userId, false));
            } else {
                Slog.w(TAG, "No available storage user connection for userId : " + userId);
            }
        }
    }

    public StorageUserConnection onVolumeRemove(VolumeInfo vol) {
        if (!shouldHandle(vol)) {
            return null;
        }
        Slog.i(TAG, "On volume remove " + vol);
        String sessionId = vol.getId();
        int userId = vol.getMountUserId();
        synchronized (this.mLock) {
            StorageUserConnection connection = this.mConnections.get(userId);
            if (connection != null) {
                Slog.i(TAG, "Removed session for vol with id: " + sessionId);
                connection.removeSession(sessionId);
                return connection;
            }
            Slog.w(TAG, "Session already removed for vol with id: " + sessionId);
            return null;
        }
    }

    public void onVolumeUnmount(VolumeInfo vol) {
        StorageUserConnection connection = onVolumeRemove(vol);
        Slog.i(TAG, "On volume unmount " + vol);
        if (connection != null) {
            String sessionId = vol.getId();
            try {
                connection.removeSessionAndWait(sessionId);
            } catch (ExternalStorageServiceException e) {
                Slog.e(TAG, "Failed to end session for vol with id: " + sessionId, e);
            }
        }
    }

    public void onUnlockUser(int userId) throws ExternalStorageServiceException {
        Slog.i(TAG, "On user unlock " + userId);
        if (shouldHandle(null) && userId == 0) {
            initExternalStorageServiceComponent();
        }
    }

    public void onUserStopping(int userId) {
        StorageUserConnection connection;
        if (!shouldHandle(null)) {
            return;
        }
        synchronized (this.mLock) {
            connection = this.mConnections.get(userId);
        }
        if (connection != null) {
            Slog.i(TAG, "Removing all sessions for user: " + userId);
            connection.removeAllSessions();
            return;
        }
        Slog.w(TAG, "No connection found for user: " + userId);
    }

    public void onReset(IVold vold, Runnable resetHandlerRunnable) {
        if (!shouldHandle(null)) {
            return;
        }
        SparseArray<StorageUserConnection> connections = new SparseArray<>();
        synchronized (this.mLock) {
            this.mIsResetting = true;
            Slog.i(TAG, "Started resetting external storage service...");
            for (int i = 0; i < this.mConnections.size(); i++) {
                connections.put(this.mConnections.keyAt(i), this.mConnections.valueAt(i));
            }
        }
        for (int i2 = 0; i2 < connections.size(); i2++) {
            StorageUserConnection connection = connections.valueAt(i2);
            for (String sessionId : connection.getAllSessionIds()) {
                try {
                    Slog.i(TAG, "Unmounting " + sessionId);
                    vold.unmount(sessionId);
                    Slog.i(TAG, "Unmounted " + sessionId);
                } catch (ServiceSpecificException | RemoteException e) {
                    Slog.e(TAG, "Failed to unmount volume: " + sessionId, e);
                }
                try {
                    Slog.i(TAG, "Exiting " + sessionId);
                    connection.removeSessionAndWait(sessionId);
                    Slog.i(TAG, "Exited " + sessionId);
                } catch (ExternalStorageServiceException | IllegalStateException e2) {
                    Slog.e(TAG, "Failed to exit session: " + sessionId + ". Killing MediaProvider...", e2);
                    killExternalStorageService(connections.keyAt(i2));
                }
            }
            connection.close();
        }
        resetHandlerRunnable.run();
        synchronized (this.mLock) {
            this.mConnections.clear();
            this.mIsResetting = false;
            Slog.i(TAG, "Finished resetting external storage service");
        }
    }

    private void initExternalStorageServiceComponent() throws ExternalStorageServiceException {
        Slog.i(TAG, "Initialialising...");
        ProviderInfo provider = this.mContext.getPackageManager().resolveContentProvider("media", 1835008);
        if (provider == null) {
            throw new ExternalStorageServiceException("No valid MediaStore provider found");
        }
        this.mExternalStorageServicePackageName = provider.applicationInfo.packageName;
        this.mExternalStorageServiceAppId = UserHandle.getAppId(provider.applicationInfo.uid);
        Intent intent = new Intent("android.service.storage.ExternalStorageService");
        intent.setPackage(this.mExternalStorageServicePackageName);
        ResolveInfo resolveInfo = this.mContext.getPackageManager().resolveService(intent, CecMessageType.REPORT_PHYSICAL_ADDRESS);
        if (resolveInfo == null || resolveInfo.serviceInfo == null) {
            throw new ExternalStorageServiceException("No valid ExternalStorageService component found");
        }
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        ComponentName name = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        if (!"android.permission.BIND_EXTERNAL_STORAGE_SERVICE".equals(serviceInfo.permission)) {
            throw new ExternalStorageServiceException(name.flattenToShortString() + " does not require permission android.permission.BIND_EXTERNAL_STORAGE_SERVICE");
        }
        this.mExternalStorageServiceComponent = name;
    }

    public ComponentName getExternalStorageServiceComponentName() {
        return this.mExternalStorageServiceComponent;
    }

    private void killExternalStorageService(int userId) {
        IActivityManager am = ActivityManager.getService();
        try {
            am.killApplication(this.mExternalStorageServicePackageName, this.mExternalStorageServiceAppId, userId, "storage_session_controller reset");
        } catch (RemoteException e) {
            Slog.i(TAG, "Failed to kill the ExtenalStorageService for user " + userId);
        }
    }

    public static boolean isEmulatedOrPublic(VolumeInfo vol) {
        return vol.type == 2 || (vol.type == 0 && vol.isVisible());
    }

    public static class ExternalStorageServiceException extends Exception {
        public ExternalStorageServiceException(Throwable cause) {
            super(cause);
        }

        public ExternalStorageServiceException(String message) {
            super(message);
        }

        public ExternalStorageServiceException(String message, Throwable cause) {
            super(message, cause);
        }
    }

    private boolean shouldHandle(VolumeInfo vol) {
        return this.mIsFuseEnabled && !this.mIsResetting && (vol == null || isEmulatedOrPublic(vol));
    }
}
