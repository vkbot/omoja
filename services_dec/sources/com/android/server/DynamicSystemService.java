package com.android.server;

import android.content.Context;
import android.gsi.AvbPublicKey;
import android.gsi.GsiProgress;
import android.gsi.IGsiService;
import android.gsi.IGsiServiceCallback;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.image.IDynamicSystemService;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.util.Slog;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class DynamicSystemService extends IDynamicSystemService.Stub {
    private static final int GSID_ROUGH_TIMEOUT_MS = 8192;
    private static final String PATH_DEFAULT = "/data/gsi/";
    private static final String TAG = "DynamicSystemService";
    private Context mContext;
    private String mDsuSlot;
    private volatile IGsiService mGsiService;
    private String mInstallPath;

    DynamicSystemService(Context context) {
        this.mContext = context;
    }

    private IGsiService getGsiService() {
        checkPermission();
        if (this.mGsiService != null) {
            return this.mGsiService;
        }
        return IGsiService.Stub.asInterface(ServiceManager.waitForService("gsiservice"));
    }

    private void checkPermission() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_DYNAMIC_SYSTEM") != 0) {
            throw new SecurityException("Requires MANAGE_DYNAMIC_SYSTEM permission");
        }
    }

    class GsiServiceCallback extends IGsiServiceCallback.Stub {
        private int mResult = -1;

        GsiServiceCallback() {
        }

        @Override // android.gsi.IGsiServiceCallback
        public synchronized void onResult(int result) {
            this.mResult = result;
            notify();
        }

        public int getResult() {
            return this.mResult;
        }
    }

    public boolean startInstallation(String dsuSlot) throws RemoteException {
        IGsiService service = getGsiService();
        this.mGsiService = service;
        String path = SystemProperties.get("os.aot.path");
        if (path.isEmpty()) {
            int userId = UserHandle.myUserId();
            StorageVolume[] volumes = StorageManager.getVolumeList(userId, 256);
            for (StorageVolume volume : volumes) {
                if (!volume.isEmulated() && volume.isRemovable() && "mounted".equals(volume.getState())) {
                    File sdCard = volume.getPathFile();
                    if (sdCard.isDirectory()) {
                        path = new File(sdCard, dsuSlot).getPath();
                        break;
                    }
                }
            }
            if (path.isEmpty()) {
                path = PATH_DEFAULT + dsuSlot;
            }
            Slog.i(TAG, "startInstallation -> " + path);
        }
        this.mInstallPath = path;
        this.mDsuSlot = dsuSlot;
        if (service.openInstall(path) != 0) {
            Slog.i(TAG, "Failed to open " + path);
            return false;
        }
        return true;
    }

    public boolean createPartition(String name, long size, boolean readOnly) throws RemoteException {
        IGsiService service = getGsiService();
        if (service.createPartition(name, size, readOnly) != 0) {
            Slog.i(TAG, "Failed to install " + name);
            return false;
        }
        return true;
    }

    public boolean finishInstallation() throws RemoteException {
        IGsiService service = getGsiService();
        if (service.closeInstall() != 0) {
            Slog.i(TAG, "Failed to finish installation");
            return false;
        }
        return true;
    }

    public GsiProgress getInstallationProgress() throws RemoteException {
        return getGsiService().getInstallProgress();
    }

    public boolean abort() throws RemoteException {
        return getGsiService().cancelGsiInstall();
    }

    public boolean isInUse() {
        return SystemProperties.getBoolean("ro.gsid.image_running", false);
    }

    public boolean isInstalled() {
        boolean installed = SystemProperties.getBoolean("gsid.image_installed", false);
        Slog.i(TAG, "isInstalled(): " + installed);
        return installed;
    }

    public boolean isEnabled() throws RemoteException {
        return getGsiService().isGsiEnabled();
    }

    public boolean remove() throws RemoteException {
        try {
            GsiServiceCallback callback = new GsiServiceCallback();
            synchronized (callback) {
                getGsiService().removeGsiAsync(callback);
                callback.wait(8192L);
            }
            return callback.getResult() == 0;
        } catch (InterruptedException e) {
            Slog.e(TAG, "remove() was interrupted");
            return false;
        }
    }

    public boolean setEnable(boolean enable, boolean oneShot) throws RemoteException {
        IGsiService gsiService = getGsiService();
        if (enable) {
            try {
                if (this.mDsuSlot == null) {
                    this.mDsuSlot = gsiService.getActiveDsuSlot();
                }
                GsiServiceCallback callback = new GsiServiceCallback();
                synchronized (callback) {
                    gsiService.enableGsiAsync(oneShot, this.mDsuSlot, callback);
                    callback.wait(8192L);
                }
                return callback.getResult() == 0;
            } catch (InterruptedException e) {
                Slog.e(TAG, "setEnable() was interrupted");
                return false;
            }
        }
        return gsiService.disableGsi();
    }

    public boolean setAshmem(ParcelFileDescriptor ashmem, long size) {
        try {
            return getGsiService().setGsiAshmem(ashmem, size);
        } catch (RemoteException e) {
            throw new RuntimeException(e.toString());
        }
    }

    public boolean submitFromAshmem(long size) {
        try {
            return getGsiService().commitGsiChunkFromAshmem(size);
        } catch (RemoteException e) {
            throw new RuntimeException(e.toString());
        }
    }

    public boolean getAvbPublicKey(AvbPublicKey dst) {
        try {
            return getGsiService().getAvbPublicKey(dst) == 0;
        } catch (RemoteException e) {
            throw new RuntimeException(e.toString());
        }
    }
}
