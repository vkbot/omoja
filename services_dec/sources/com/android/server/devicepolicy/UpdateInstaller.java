package com.android.server.devicepolicy;

import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.StartInstallingUpdateCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.os.FileUtils;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
abstract class UpdateInstaller {
    static final String TAG = "UpdateInstaller";
    private StartInstallingUpdateCallback mCallback;
    private DevicePolicyConstants mConstants;
    protected Context mContext;
    protected File mCopiedUpdateFile;
    private DevicePolicyManagerService.Injector mInjector;
    private ParcelFileDescriptor mUpdateFileDescriptor;

    public abstract void installUpdateInThread();

    protected UpdateInstaller(Context context, ParcelFileDescriptor updateFileDescriptor, StartInstallingUpdateCallback callback, DevicePolicyManagerService.Injector injector, DevicePolicyConstants constants) {
        this.mContext = context;
        this.mCallback = callback;
        this.mUpdateFileDescriptor = updateFileDescriptor;
        this.mInjector = injector;
        this.mConstants = constants;
    }

    public void startInstallUpdate() {
        this.mCopiedUpdateFile = null;
        if (!isBatteryLevelSufficient()) {
            notifyCallbackOnError(5, "The battery level must be above " + this.mConstants.BATTERY_THRESHOLD_NOT_CHARGING + " while not charging orabove " + this.mConstants.BATTERY_THRESHOLD_CHARGING + " while charging");
            return;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.android.server.devicepolicy.-$$Lambda$UpdateInstaller$CxDofI1o0YOUvaV_mdNG4ke1uck
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startInstallUpdate$0$UpdateInstaller();
            }
        });
        thread.setPriority(10);
        thread.start();
    }

    public /* synthetic */ void lambda$startInstallUpdate$0$UpdateInstaller() {
        File fileCopyUpdateFileToDataOtaPackageDir = copyUpdateFileToDataOtaPackageDir();
        this.mCopiedUpdateFile = fileCopyUpdateFileToDataOtaPackageDir;
        if (fileCopyUpdateFileToDataOtaPackageDir == null) {
            notifyCallbackOnError(1, "Error while copying file.");
        } else {
            installUpdateInThread();
        }
    }

    private boolean isBatteryLevelSufficient() {
        Intent batteryStatus = this.mContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        float batteryPercentage = calculateBatteryPercentage(batteryStatus);
        boolean isBatteryPluggedIn = batteryStatus.getIntExtra("plugged", -1) > 0;
        if (isBatteryPluggedIn) {
            return batteryPercentage >= ((float) this.mConstants.BATTERY_THRESHOLD_CHARGING);
        }
        return batteryPercentage >= ((float) this.mConstants.BATTERY_THRESHOLD_NOT_CHARGING);
    }

    private float calculateBatteryPercentage(Intent batteryStatus) {
        int level = batteryStatus.getIntExtra("level", -1);
        int scale = batteryStatus.getIntExtra("scale", -1);
        return (level * 100) / scale;
    }

    private File copyUpdateFileToDataOtaPackageDir() {
        try {
            File destination = createNewFileWithPermissions();
            copyToFile(destination);
            return destination;
        } catch (IOException e) {
            Log.w(TAG, "Failed to copy update file to OTA directory", e);
            notifyCallbackOnError(1, Log.getStackTraceString(e));
            return null;
        }
    }

    private File createNewFileWithPermissions() throws IOException {
        File destination = File.createTempFile("update", ".zip", new File(Environment.getDataDirectory() + "/ota_package"));
        FileUtils.setPermissions(destination, 484, -1, -1);
        return destination;
    }

    private void copyToFile(File destination) throws IOException {
        OutputStream out = new FileOutputStream(destination);
        try {
            InputStream in = new ParcelFileDescriptor.AutoCloseInputStream(this.mUpdateFileDescriptor);
            try {
                FileUtils.copy(in, out);
                in.close();
                out.close();
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                out.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    void cleanupUpdateFile() {
        File file = this.mCopiedUpdateFile;
        if (file != null && file.exists()) {
            this.mCopiedUpdateFile.delete();
        }
    }

    protected void notifyCallbackOnError(int errorCode, String errorMessage) {
        cleanupUpdateFile();
        DevicePolicyEventLogger.createEvent(74).setInt(errorCode).write();
        try {
            this.mCallback.onStartInstallingUpdateError(errorCode, errorMessage);
        } catch (RemoteException e) {
            Log.d(TAG, "Error while calling callback", e);
        }
    }

    protected void notifyCallbackOnSuccess() {
        cleanupUpdateFile();
        this.mInjector.powerManagerReboot("deviceowner");
    }
}
