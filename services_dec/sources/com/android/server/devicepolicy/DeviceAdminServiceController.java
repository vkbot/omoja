package com.android.server.devicepolicy;

import android.app.admin.DeviceAdminService;
import android.app.admin.IDeviceAdminService;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.os.IBinder;
import android.util.SparseArray;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.am.PersistentConnection;
import com.android.server.appbinding.AppBindingUtils;

/* JADX INFO: loaded from: classes.dex */
public class DeviceAdminServiceController {
    static final boolean DEBUG = false;
    static final String TAG = "DevicePolicyManager";
    private final DevicePolicyConstants mConstants;
    final Context mContext;
    private final Handler mHandler;
    private final DevicePolicyManagerService.Injector mInjector;
    private final DevicePolicyManagerService mService;
    final Object mLock = new Object();
    private final SparseArray<DevicePolicyServiceConnection> mConnections = new SparseArray<>();

    static void debug(String format, Object... args) {
    }

    private class DevicePolicyServiceConnection extends PersistentConnection<IDeviceAdminService> {
        public DevicePolicyServiceConnection(int userId, ComponentName componentName) {
            super(DeviceAdminServiceController.TAG, DeviceAdminServiceController.this.mContext, DeviceAdminServiceController.this.mHandler, userId, componentName, DeviceAdminServiceController.this.mConstants.DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC, DeviceAdminServiceController.this.mConstants.DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE, DeviceAdminServiceController.this.mConstants.DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC, DeviceAdminServiceController.this.mConstants.DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC);
        }

        @Override // com.android.server.am.PersistentConnection
        protected int getBindFlags() {
            return 67108864;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.server.am.PersistentConnection
        public IDeviceAdminService asInterface(IBinder binder) {
            return IDeviceAdminService.Stub.asInterface(binder);
        }
    }

    public DeviceAdminServiceController(DevicePolicyManagerService service, DevicePolicyConstants constants) {
        this.mService = service;
        DevicePolicyManagerService.Injector injector = service.mInjector;
        this.mInjector = injector;
        this.mContext = injector.mContext;
        this.mHandler = new Handler(BackgroundThread.get().getLooper());
        this.mConstants = constants;
    }

    private ServiceInfo findService(String packageName, int userId) {
        return AppBindingUtils.findService(packageName, userId, "android.app.action.DEVICE_ADMIN_SERVICE", "android.permission.BIND_DEVICE_ADMIN", DeviceAdminService.class, this.mInjector.getIPackageManager(), new StringBuilder());
    }

    public void startServiceForOwner(String packageName, int userId, String actionForLog) {
        long token = this.mInjector.binderClearCallingIdentity();
        try {
            synchronized (this.mLock) {
                ServiceInfo service = findService(packageName, userId);
                if (service == null) {
                    debug("Owner package %s on u%d has no service.", packageName, Integer.valueOf(userId));
                    disconnectServiceOnUserLocked(userId, actionForLog);
                    this.mInjector.binderRestoreCallingIdentity(token);
                    return;
                }
                PersistentConnection<IDeviceAdminService> existing = this.mConnections.get(userId);
                if (existing != null) {
                    debug("Disconnecting from existing service connection.", packageName, Integer.valueOf(userId));
                    disconnectServiceOnUserLocked(userId, actionForLog);
                }
                debug("Owner package %s on u%d has service %s for %s", packageName, Integer.valueOf(userId), service.getComponentName().flattenToShortString(), actionForLog);
                DevicePolicyServiceConnection conn = new DevicePolicyServiceConnection(userId, service.getComponentName());
                this.mConnections.put(userId, conn);
                conn.bind();
                this.mInjector.binderRestoreCallingIdentity(token);
            }
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(token);
            throw th;
        }
    }

    public void stopServiceForOwner(int userId, String actionForLog) {
        long token = this.mInjector.binderClearCallingIdentity();
        try {
            synchronized (this.mLock) {
                disconnectServiceOnUserLocked(userId, actionForLog);
            }
            this.mInjector.binderRestoreCallingIdentity(token);
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(token);
            throw th;
        }
    }

    private void disconnectServiceOnUserLocked(int userId, String actionForLog) {
        DevicePolicyServiceConnection conn = this.mConnections.get(userId);
        if (conn != null) {
            debug("Stopping service for u%d if already running for %s.", Integer.valueOf(userId), actionForLog);
            conn.unbind();
            this.mConnections.remove(userId);
        }
    }

    public void dump(IndentingPrintWriter pw) {
        synchronized (this.mLock) {
            if (this.mConnections.size() == 0) {
                return;
            }
            pw.println("Owner Services:");
            pw.increaseIndent();
            for (int i = 0; i < this.mConnections.size(); i++) {
                int userId = this.mConnections.keyAt(i);
                pw.print("User: ");
                pw.println(userId);
                DevicePolicyServiceConnection con = this.mConnections.valueAt(i);
                pw.increaseIndent();
                con.dump("", pw);
                pw.decreaseIndent();
            }
            pw.decreaseIndent();
        }
    }
}
