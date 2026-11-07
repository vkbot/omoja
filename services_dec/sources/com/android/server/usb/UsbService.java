package com.android.server.usb;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.hardware.usb.IUsbManager;
import android.hardware.usb.ParcelableUsbPort;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbPort;
import android.hardware.usb.UsbPortStatus;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.server.FgThread;
import com.android.server.SystemServerInitThreadPool;
import com.android.server.SystemService;
import com.android.server.net.watchlist.WatchlistLoggingHandler;
import com.android.server.storage.DiskStatsFileLogger;
import com.android.server.utils.PriorityDump;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;

/* JADX INFO: loaded from: classes2.dex */
public class UsbService extends IUsbManager.Stub {
    private static final String TAG = "UsbService";
    private final UsbAlsaManager mAlsaManager;
    private final Context mContext;
    private int mCurrentUserId;
    private UsbDeviceManager mDeviceManager;
    private UsbHostManager mHostManager;
    private final Object mLock = new Object();
    private final UsbPermissionManager mPermissionManager;
    private UsbPortManager mPortManager;
    private final UsbSettingsManager mSettingsManager;
    private final UserManager mUserManager;

    public static class Lifecycle extends SystemService {
        private final CompletableFuture<Void> mOnActivityManagerPhaseFinished;
        private final CompletableFuture<Void> mOnStartFinished;
        private UsbService mUsbService;

        public Lifecycle(Context context) {
            super(context);
            this.mOnStartFinished = new CompletableFuture<>();
            this.mOnActivityManagerPhaseFinished = new CompletableFuture<>();
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.usb.-$$Lambda$UsbService$Lifecycle$KjOG0MXO3C0J-L5Ymrj6FnSwXwQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStart$0$UsbService$Lifecycle();
                }
            }, "UsbService$Lifecycle#onStart");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.usb.UsbService] */
        public /* synthetic */ void lambda$onStart$0$UsbService$Lifecycle() {
            ?? usbService = new UsbService(getContext());
            this.mUsbService = usbService;
            publishBinderService("usb", usbService);
            this.mOnStartFinished.complete(null);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 550) {
                SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.usb.-$$Lambda$UsbService$Lifecycle$sV0bZ5BCi6DR9FlGZbY2PyYUP58
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBootPhase$1$UsbService$Lifecycle();
                    }
                }, "UsbService$Lifecycle#onBootPhase");
            } else if (phase == 1000) {
                this.mOnActivityManagerPhaseFinished.join();
                this.mUsbService.bootCompleted();
            }
        }

        public /* synthetic */ void lambda$onBootPhase$1$UsbService$Lifecycle() {
            this.mOnStartFinished.join();
            this.mUsbService.systemReady();
            this.mOnActivityManagerPhaseFinished.complete(null);
        }

        @Override // com.android.server.SystemService
        public void onUserSwitching(SystemService.TargetUser from, final SystemService.TargetUser to) {
            FgThread.getHandler().postAtFrontOfQueue(new Runnable() { // from class: com.android.server.usb.-$$Lambda$UsbService$Lifecycle$uW1Zp8w_9pHt-c93nC2qQFOakXo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUserSwitching$2$UsbService$Lifecycle(to);
                }
            });
        }

        public /* synthetic */ void lambda$onUserSwitching$2$UsbService$Lifecycle(SystemService.TargetUser to) {
            this.mUsbService.onSwitchUser(to.getUserIdentifier());
        }

        @Override // com.android.server.SystemService
        public void onUserStopping(SystemService.TargetUser userInfo) {
            this.mUsbService.onStopUser(userInfo.getUserHandle());
        }

        @Override // com.android.server.SystemService
        public void onUserUnlocking(SystemService.TargetUser userInfo) {
            this.mUsbService.onUnlockUser(userInfo.getUserIdentifier());
        }
    }

    UsbUserSettingsManager getSettingsForUser(int userId) {
        return this.mSettingsManager.getSettingsForUser(userId);
    }

    UsbUserPermissionManager getPermissionsForUser(int userId) {
        return this.mPermissionManager.getPermissionsForUser(userId);
    }

    public UsbService(Context context) {
        this.mContext = context;
        this.mUserManager = (UserManager) context.getSystemService(UserManager.class);
        this.mSettingsManager = new UsbSettingsManager(context, this);
        this.mPermissionManager = new UsbPermissionManager(context, this);
        this.mAlsaManager = new UsbAlsaManager(context);
        PackageManager pm = this.mContext.getPackageManager();
        if (pm.hasSystemFeature("android.hardware.usb.host")) {
            this.mHostManager = new UsbHostManager(context, this.mAlsaManager, this.mPermissionManager);
        }
        if (new File("/sys/class/android_usb").exists()) {
            this.mDeviceManager = new UsbDeviceManager(context, this.mAlsaManager, this.mSettingsManager, this.mPermissionManager);
        }
        if (this.mHostManager != null || this.mDeviceManager != null) {
            this.mPortManager = new UsbPortManager(context);
        }
        onSwitchUser(0);
        BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.android.server.usb.UsbService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED".equals(action) && UsbService.this.mDeviceManager != null) {
                    UsbService.this.mDeviceManager.updateUserRestrictions();
                }
            }
        };
        IntentFilter filter = new IntentFilter();
        filter.setPriority(1000);
        filter.addAction("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
        this.mContext.registerReceiver(receiver, filter, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSwitchUser(int newUserId) {
        synchronized (this.mLock) {
            this.mCurrentUserId = newUserId;
            UsbProfileGroupSettingsManager settings = this.mSettingsManager.getSettingsForProfileGroup(UserHandle.of(newUserId));
            if (this.mHostManager != null) {
                this.mHostManager.setCurrentUserSettings(settings);
            }
            if (this.mDeviceManager != null) {
                this.mDeviceManager.setCurrentUser(newUserId, settings);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStopUser(UserHandle stoppedUser) {
        this.mSettingsManager.remove(stoppedUser);
    }

    public void systemReady() {
        this.mAlsaManager.systemReady();
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            usbDeviceManager.systemReady();
        }
        UsbHostManager usbHostManager = this.mHostManager;
        if (usbHostManager != null) {
            usbHostManager.systemReady();
        }
        UsbPortManager usbPortManager = this.mPortManager;
        if (usbPortManager != null) {
            usbPortManager.systemReady();
        }
    }

    public void bootCompleted() {
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            usbDeviceManager.bootCompleted();
        }
    }

    public void onUnlockUser(int user) {
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            usbDeviceManager.onUnlockUser(user);
        }
    }

    public void getDeviceList(Bundle devices) {
        UsbHostManager usbHostManager = this.mHostManager;
        if (usbHostManager != null) {
            usbHostManager.getDeviceList(devices);
        }
    }

    public ParcelFileDescriptor openDevice(String deviceName, String packageName) {
        ParcelFileDescriptor fd = null;
        if (this.mHostManager != null && deviceName != null) {
            int uid = Binder.getCallingUid();
            int pid = Binder.getCallingPid();
            int user = UserHandle.getUserId(uid);
            long ident = clearCallingIdentity();
            try {
                synchronized (this.mLock) {
                    if (this.mUserManager.isSameProfileGroup(user, this.mCurrentUserId)) {
                        fd = this.mHostManager.openDevice(deviceName, getPermissionsForUser(user), packageName, pid, uid);
                    } else {
                        Slog.w(TAG, "Cannot open " + deviceName + " for user " + user + " as user is not active.");
                    }
                }
                restoreCallingIdentity(ident);
            } catch (Throwable th) {
                restoreCallingIdentity(ident);
                throw th;
            }
        }
        return fd;
    }

    public UsbAccessory getCurrentAccessory() {
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            return usbDeviceManager.getCurrentAccessory();
        }
        return null;
    }

    public ParcelFileDescriptor openAccessory(UsbAccessory accessory) {
        if (this.mDeviceManager != null) {
            int uid = Binder.getCallingUid();
            int user = UserHandle.getUserId(uid);
            long ident = clearCallingIdentity();
            try {
                synchronized (this.mLock) {
                    if (this.mUserManager.isSameProfileGroup(user, this.mCurrentUserId)) {
                        ParcelFileDescriptor parcelFileDescriptorOpenAccessory = this.mDeviceManager.openAccessory(accessory, getPermissionsForUser(user), uid);
                        restoreCallingIdentity(ident);
                        return parcelFileDescriptorOpenAccessory;
                    }
                    Slog.w(TAG, "Cannot open " + accessory + " for user " + user + " as user is not active.");
                    restoreCallingIdentity(ident);
                    return null;
                }
            } catch (Throwable th) {
                restoreCallingIdentity(ident);
                throw th;
            }
        }
        return null;
    }

    public ParcelFileDescriptor getControlFd(long function) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_MTP", null);
        return this.mDeviceManager.getControlFd(function);
    }

    public void setDevicePackage(UsbDevice device, String packageName, int userId) {
        Objects.requireNonNull(device);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle user = UserHandle.of(userId);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).setDevicePackage(device, packageName, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void setAccessoryPackage(UsbAccessory accessory, String packageName, int userId) {
        Objects.requireNonNull(accessory);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle user = UserHandle.of(userId);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).setAccessoryPackage(accessory, packageName, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void addDevicePackagesToPreferenceDenied(UsbDevice device, String[] packageNames, UserHandle user) {
        Objects.requireNonNull(device);
        String[] packageNames2 = (String[]) Preconditions.checkArrayElementsNotNull(packageNames, DiskStatsFileLogger.PACKAGE_NAMES_KEY);
        Objects.requireNonNull(user);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).addDevicePackagesToDenied(device, packageNames2, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void addAccessoryPackagesToPreferenceDenied(UsbAccessory accessory, String[] packageNames, UserHandle user) {
        Objects.requireNonNull(accessory);
        String[] packageNames2 = (String[]) Preconditions.checkArrayElementsNotNull(packageNames, DiskStatsFileLogger.PACKAGE_NAMES_KEY);
        Objects.requireNonNull(user);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).addAccessoryPackagesToDenied(accessory, packageNames2, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void removeDevicePackagesFromPreferenceDenied(UsbDevice device, String[] packageNames, UserHandle user) {
        Objects.requireNonNull(device);
        String[] packageNames2 = (String[]) Preconditions.checkArrayElementsNotNull(packageNames, DiskStatsFileLogger.PACKAGE_NAMES_KEY);
        Objects.requireNonNull(user);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).removeDevicePackagesFromDenied(device, packageNames2, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void removeAccessoryPackagesFromPreferenceDenied(UsbAccessory accessory, String[] packageNames, UserHandle user) {
        Objects.requireNonNull(accessory);
        String[] packageNames2 = (String[]) Preconditions.checkArrayElementsNotNull(packageNames, DiskStatsFileLogger.PACKAGE_NAMES_KEY);
        Objects.requireNonNull(user);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).removeAccessoryPackagesFromDenied(accessory, packageNames2, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void setDevicePersistentPermission(UsbDevice device, int uid, UserHandle user, boolean shouldBeGranted) {
        Objects.requireNonNull(device);
        Objects.requireNonNull(user);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long token = Binder.clearCallingIdentity();
        try {
            this.mPermissionManager.getPermissionsForUser(user).setDevicePersistentPermission(device, uid, shouldBeGranted);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void setAccessoryPersistentPermission(UsbAccessory accessory, int uid, UserHandle user, boolean shouldBeGranted) {
        Objects.requireNonNull(accessory);
        Objects.requireNonNull(user);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long token = Binder.clearCallingIdentity();
        try {
            this.mPermissionManager.getPermissionsForUser(user).setAccessoryPersistentPermission(accessory, uid, shouldBeGranted);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public boolean hasDevicePermission(UsbDevice device, String packageName) {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        int userId = UserHandle.getUserId(uid);
        long token = Binder.clearCallingIdentity();
        try {
            return getPermissionsForUser(userId).hasPermission(device, packageName, pid, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public boolean hasAccessoryPermission(UsbAccessory accessory) {
        int uid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(uid);
        long token = Binder.clearCallingIdentity();
        try {
            return getPermissionsForUser(userId).hasPermission(accessory, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void requestDevicePermission(UsbDevice device, String packageName, PendingIntent pi) {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        int userId = UserHandle.getUserId(uid);
        long token = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).requestPermission(device, packageName, pi, pid, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void requestAccessoryPermission(UsbAccessory accessory, String packageName, PendingIntent pi) {
        int uid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(uid);
        long token = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).requestPermission(accessory, packageName, pi, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void grantDevicePermission(UsbDevice device, int uid) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        int userId = UserHandle.getUserId(uid);
        long token = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).grantDevicePermission(device, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void grantAccessoryPermission(UsbAccessory accessory, int uid) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        int userId = UserHandle.getUserId(uid);
        long token = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).grantAccessoryPermission(accessory, uid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public boolean hasDefaults(String packageName, int userId) {
        String packageName2 = (String) Preconditions.checkStringNotEmpty(packageName);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle user = UserHandle.of(userId);
        long token = Binder.clearCallingIdentity();
        try {
            return this.mSettingsManager.getSettingsForProfileGroup(user).hasDefaults(packageName2, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void clearDefaults(String packageName, int userId) {
        String packageName2 = (String) Preconditions.checkStringNotEmpty(packageName);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle user = UserHandle.of(userId);
        long token = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(user).clearDefaults(packageName2, user);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void setCurrentFunctions(long functions) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkArgument(UsbManager.areSettableFunctions(functions));
        Preconditions.checkState(this.mDeviceManager != null);
        this.mDeviceManager.setCurrentFunctions(functions);
    }

    public void setCurrentFunction(String functions, boolean usbDataUnlocked) {
        setCurrentFunctions(UsbManager.usbFunctionsFromString(functions));
    }

    public boolean isFunctionEnabled(String function) {
        return (getCurrentFunctions() & UsbManager.usbFunctionsFromString(function)) != 0;
    }

    public long getCurrentFunctions() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkState(this.mDeviceManager != null);
        return this.mDeviceManager.getCurrentFunctions();
    }

    public void setScreenUnlockedFunctions(long functions) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkArgument(UsbManager.areSettableFunctions(functions));
        Preconditions.checkState(this.mDeviceManager != null);
        this.mDeviceManager.setScreenUnlockedFunctions(functions);
    }

    public long getScreenUnlockedFunctions() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkState(this.mDeviceManager != null);
        return this.mDeviceManager.getScreenUnlockedFunctions();
    }

    public void resetUsbGadget() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkNotNull(this.mDeviceManager, "DeviceManager must not be null");
        long ident = Binder.clearCallingIdentity();
        try {
            this.mDeviceManager.resetUsbGadget();
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public List<ParcelableUsbPort> getPorts() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long ident = Binder.clearCallingIdentity();
        try {
            if (this.mPortManager != null) {
                UsbPort[] ports = this.mPortManager.getPorts();
                ArrayList<ParcelableUsbPort> parcelablePorts = new ArrayList<>();
                for (UsbPort usbPort : ports) {
                    parcelablePorts.add(ParcelableUsbPort.of(usbPort));
                }
                Binder.restoreCallingIdentity(ident);
                return parcelablePorts;
            }
            Binder.restoreCallingIdentity(ident);
            return null;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public UsbPortStatus getPortStatus(String portId) {
        Objects.requireNonNull(portId, "portId must not be null");
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long ident = Binder.clearCallingIdentity();
        try {
            return this.mPortManager != null ? this.mPortManager.getPortStatus(portId) : null;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void setPortRoles(String portId, int powerRole, int dataRole) {
        Objects.requireNonNull(portId, "portId must not be null");
        UsbPort.checkRoles(powerRole, dataRole);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long ident = Binder.clearCallingIdentity();
        try {
            if (this.mPortManager != null) {
                this.mPortManager.setPortRoles(portId, powerRole, dataRole, null);
            }
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void enableContaminantDetection(String portId, boolean enable) {
        Objects.requireNonNull(portId, "portId must not be null");
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long ident = Binder.clearCallingIdentity();
        try {
            if (this.mPortManager != null) {
                this.mPortManager.enableContaminantDetection(portId, enable, null);
            }
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void setUsbDeviceConnectionHandler(ComponentName usbDeviceConnectionHandler) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        synchronized (this.mLock) {
            if (this.mCurrentUserId == UserHandle.getCallingUserId()) {
                if (this.mHostManager != null) {
                    this.mHostManager.setUsbDeviceConnectionHandler(usbDeviceConnectionHandler);
                }
            } else {
                throw new IllegalArgumentException("Only the current user can register a usb connection handler");
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:146:0x0237  */
    /* JADX WARN: Code duplicated, block: B:176:0x0293  */
    /* JADX WARN: Code duplicated, block: B:205:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:222:0x035b  */
    /* JADX WARN: Code duplicated, block: B:233:0x0395 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:235:0x03a0 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:241:0x03c6 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:243:0x03d1 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:249:0x03f8 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:251:0x0403 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:257:0x0438 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:259:0x0443 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:265:0x0462 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:267:0x046d A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:268:0x0476 A[Catch: all -> 0x0560, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:276:0x0553 A[Catch: all -> 0x0560, TRY_LEAVE, TryCatch #1 {all -> 0x0560, blocks: (B:276:0x0553, B:225:0x0367, B:227:0x036f, B:229:0x0373, B:231:0x037a, B:233:0x0395, B:235:0x03a0, B:237:0x03a4, B:239:0x03ab, B:241:0x03c6, B:243:0x03d1, B:245:0x03d5, B:247:0x03d9, B:249:0x03f8, B:251:0x0403, B:253:0x0407, B:255:0x0419, B:257:0x0438, B:259:0x0443, B:261:0x0447, B:263:0x044b, B:265:0x0462, B:267:0x046d, B:268:0x0476), top: B:302:0x003a }] */
    /* JADX WARN: Code duplicated, block: B:281:0x0562 A[Catch: all -> 0x05d0, TryCatch #0 {all -> 0x05d0, blocks: (B:278:0x0559, B:282:0x0573, B:284:0x0577, B:285:0x0583, B:287:0x0587, B:288:0x0593, B:290:0x0597, B:291:0x05a3, B:281:0x0562), top: B:300:0x0551 }] */
    /* JADX WARN: Code duplicated, block: B:284:0x0577 A[Catch: all -> 0x05d0, TryCatch #0 {all -> 0x05d0, blocks: (B:278:0x0559, B:282:0x0573, B:284:0x0577, B:285:0x0583, B:287:0x0587, B:288:0x0593, B:290:0x0597, B:291:0x05a3, B:281:0x0562), top: B:300:0x0551 }] */
    /* JADX WARN: Code duplicated, block: B:287:0x0587 A[Catch: all -> 0x05d0, TryCatch #0 {all -> 0x05d0, blocks: (B:278:0x0559, B:282:0x0573, B:284:0x0577, B:285:0x0583, B:287:0x0587, B:288:0x0593, B:290:0x0597, B:291:0x05a3, B:281:0x0562), top: B:300:0x0551 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0086  */
    /* JADX WARN: Code duplicated, block: B:290:0x0597 A[Catch: all -> 0x05d0, TryCatch #0 {all -> 0x05d0, blocks: (B:278:0x0559, B:282:0x0573, B:284:0x0577, B:285:0x0583, B:287:0x0587, B:288:0x0593, B:290:0x0597, B:291:0x05a3, B:281:0x0562), top: B:300:0x0551 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x0170  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) throws Throwable {
        byte b;
        int mode;
        byte b2;
        int powerRole;
        byte b3;
        int dataRole;
        byte b4;
        int supportedModes;
        byte b5;
        int powerRole2;
        byte b6;
        int dataRole2;
        DualDumpOutputStream dump;
        if (!DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            return;
        }
        IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
        long ident = Binder.clearCallingIdentity();
        try {
            ArraySet<String> argsSet = new ArraySet<>();
            Collections.addAll(argsSet, args);
            boolean dumpAsProto = argsSet.contains(PriorityDump.PROTO_ARG);
            try {
                try {
                    if (args != null) {
                        try {
                            if (args.length == 0 || args[0].equals("-a") || dumpAsProto) {
                                if (dumpAsProto) {
                                    dump = new DualDumpOutputStream(new ProtoOutputStream(fd));
                                } else {
                                    pw.println("USB MANAGER STATE (dumpsys usb):");
                                    dump = new DualDumpOutputStream(new IndentingPrintWriter(pw, "  "));
                                }
                                if (this.mDeviceManager != null) {
                                    this.mDeviceManager.dump(dump, "device_manager", 1146756268033L);
                                }
                                if (this.mHostManager != null) {
                                    this.mHostManager.dump(dump, "host_manager", 1146756268034L);
                                }
                                if (this.mPortManager != null) {
                                    this.mPortManager.dump(dump, "port_manager", 1146756268035L);
                                }
                                this.mAlsaManager.dump(dump, "alsa_manager", 1146756268036L);
                                this.mSettingsManager.dump(dump, "settings_manager", 1146756268037L);
                                this.mPermissionManager.dump(dump, "permissions_manager", 1146756268038L);
                                dump.flush();
                                Binder.restoreCallingIdentity(ident);
                            }
                            if ("set-port-roles".equals(args[0]) && args.length == 4) {
                                String portId = args[1];
                                String str = args[2];
                                int iHashCode = str.hashCode();
                                if (iHashCode != -896505829) {
                                    if (iHashCode != -440560135) {
                                        b5 = (iHashCode == 3530387 && str.equals("sink")) ? (byte) 1 : (byte) -1;
                                    } else if (str.equals("no-power")) {
                                        b5 = 2;
                                    }
                                } else if (str.equals("source")) {
                                    b5 = 0;
                                }
                                if (b5 == 0) {
                                    powerRole2 = 1;
                                } else if (b5 == 1) {
                                    powerRole2 = 2;
                                } else {
                                    if (b5 != 2) {
                                        pw.println("Invalid power role: " + args[2]);
                                        Binder.restoreCallingIdentity(ident);
                                        return;
                                    }
                                    powerRole2 = 0;
                                }
                                String str2 = args[3];
                                int iHashCode2 = str2.hashCode();
                                if (iHashCode2 != -1335157162) {
                                    if (iHashCode2 != 3208616) {
                                        b6 = (iHashCode2 == 2063627318 && str2.equals("no-data")) ? (byte) 2 : (byte) -1;
                                    } else if (str2.equals(WatchlistLoggingHandler.WatchlistEventKeys.HOST)) {
                                        b6 = 0;
                                    }
                                } else if (str2.equals("device")) {
                                    b6 = 1;
                                }
                                if (b6 == 0) {
                                    dataRole2 = 1;
                                } else if (b6 == 1) {
                                    dataRole2 = 2;
                                } else {
                                    if (b6 != 2) {
                                        pw.println("Invalid data role: " + args[3]);
                                        Binder.restoreCallingIdentity(ident);
                                        return;
                                    }
                                    dataRole2 = 0;
                                }
                                if (this.mPortManager != null) {
                                    this.mPortManager.setPortRoles(portId, powerRole2, dataRole2, pw);
                                    pw.println();
                                    this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                }
                            } else if ("add-port".equals(args[0]) && args.length == 3) {
                                String portId2 = args[1];
                                String str3 = args[2];
                                switch (str3.hashCode()) {
                                    case 99374:
                                        b4 = !str3.equals("dfp") ? (byte) -1 : (byte) 1;
                                        break;
                                    case 115711:
                                        if (str3.equals("ufp")) {
                                            b4 = 0;
                                        }
                                        break;
                                    case 3094652:
                                        if (str3.equals("dual")) {
                                            b4 = 2;
                                        }
                                        break;
                                    case 3387192:
                                        if (str3.equals("none")) {
                                            b4 = 3;
                                        }
                                        break;
                                    default:
                                        break;
                                }
                                if (b4 == 0) {
                                    supportedModes = 1;
                                } else if (b4 == 1) {
                                    supportedModes = 2;
                                } else if (b4 == 2) {
                                    supportedModes = 3;
                                } else {
                                    if (b4 != 3) {
                                        pw.println("Invalid mode: " + args[2]);
                                        Binder.restoreCallingIdentity(ident);
                                        return;
                                    }
                                    supportedModes = 0;
                                }
                                if (this.mPortManager != null) {
                                    this.mPortManager.addSimulatedPort(portId2, supportedModes, pw);
                                    pw.println();
                                    this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                }
                            } else if ("connect-port".equals(args[0])) {
                                try {
                                    if (args.length == 5) {
                                        String portId3 = args[1];
                                        boolean canChangeMode = args[2].endsWith("?");
                                        String strRemoveLastChar = canChangeMode ? removeLastChar(args[2]) : args[2];
                                        int iHashCode3 = strRemoveLastChar.hashCode();
                                        if (iHashCode3 != 99374) {
                                            if (iHashCode3 == 115711 && strRemoveLastChar.equals("ufp")) {
                                                b = 0;
                                            } else {
                                                b = -1;
                                            }
                                        } else if (strRemoveLastChar.equals("dfp")) {
                                            b = 1;
                                        } else {
                                            b = -1;
                                        }
                                        if (b == 0) {
                                            mode = 1;
                                        } else {
                                            if (b != 1) {
                                                pw.println("Invalid mode: " + args[2]);
                                                Binder.restoreCallingIdentity(ident);
                                                return;
                                            }
                                            mode = 2;
                                        }
                                        boolean canChangePowerRole = args[3].endsWith("?");
                                        String strRemoveLastChar2 = canChangePowerRole ? removeLastChar(args[3]) : args[3];
                                        int iHashCode4 = strRemoveLastChar2.hashCode();
                                        if (iHashCode4 != -896505829) {
                                            if (iHashCode4 == 3530387 && strRemoveLastChar2.equals("sink")) {
                                                b2 = 1;
                                            } else {
                                                b2 = -1;
                                            }
                                        } else if (strRemoveLastChar2.equals("source")) {
                                            b2 = 0;
                                        } else {
                                            b2 = -1;
                                        }
                                        if (b2 == 0) {
                                            powerRole = 1;
                                        } else {
                                            if (b2 != 1) {
                                                pw.println("Invalid power role: " + args[3]);
                                                Binder.restoreCallingIdentity(ident);
                                                return;
                                            }
                                            powerRole = 2;
                                        }
                                        boolean canChangeDataRole = args[4].endsWith("?");
                                        String strRemoveLastChar3 = canChangeDataRole ? removeLastChar(args[4]) : args[4];
                                        int iHashCode5 = strRemoveLastChar3.hashCode();
                                        if (iHashCode5 != -1335157162) {
                                            if (iHashCode5 == 3208616 && strRemoveLastChar3.equals(WatchlistLoggingHandler.WatchlistEventKeys.HOST)) {
                                                b3 = 0;
                                            } else {
                                                b3 = -1;
                                            }
                                        } else if (strRemoveLastChar3.equals("device")) {
                                            b3 = 1;
                                        } else {
                                            b3 = -1;
                                        }
                                        if (b3 == 0) {
                                            dataRole = 1;
                                        } else {
                                            if (b3 != 1) {
                                                pw.println("Invalid data role: " + args[4]);
                                                Binder.restoreCallingIdentity(ident);
                                                return;
                                            }
                                            dataRole = 2;
                                        }
                                        if (this.mPortManager != null) {
                                            this.mPortManager.connectSimulatedPort(portId3, mode, canChangeMode, powerRole, canChangePowerRole, dataRole, canChangeDataRole, pw);
                                            pw.println();
                                            this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                        }
                                    } else if (!"disconnect-port".equals(args[0]) && args.length == 2) {
                                        String portId4 = args[1];
                                        if (this.mPortManager != null) {
                                            this.mPortManager.disconnectSimulatedPort(portId4, pw);
                                            pw.println();
                                            this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                        }
                                    } else if (!"remove-port".equals(args[0]) && args.length == 2) {
                                        String portId5 = args[1];
                                        if (this.mPortManager != null) {
                                            this.mPortManager.removeSimulatedPort(portId5, pw);
                                            pw.println();
                                            this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                        }
                                    } else if ("reset".equals(args[0]) || args.length != 1) {
                                        if (!"set-contaminant-status".equals(args[0]) && args.length == 3) {
                                            String portId6 = args[1];
                                            Boolean wet = Boolean.valueOf(Boolean.parseBoolean(args[2]));
                                            if (this.mPortManager != null) {
                                                this.mPortManager.simulateContaminantStatus(portId6, wet.booleanValue(), pw);
                                                pw.println();
                                                this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                            }
                                        } else if ("ports".equals(args[0]) || args.length != 1) {
                                            if ("dump-descriptors".equals(args[0])) {
                                                this.mHostManager.dumpDescriptors(pw, args);
                                            } else {
                                                pw.println("Dump current USB state or issue command:");
                                                pw.println("  ports");
                                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                pw.println("  disconnect-port <id>");
                                                pw.println("  remove-port <id>");
                                                pw.println("  reset");
                                                pw.println();
                                                pw.println("Example USB type C port role switch:");
                                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                pw.println();
                                                pw.println("Example USB type C port simulation with full capabilities:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                pw.println("  dumpsys usb ports");
                                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB type C port where only power role can be changed:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB OTG port where id pin determines function:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB device-only port:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example simulate contaminant status:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                pw.println();
                                                pw.println("Example USB device descriptors:");
                                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                            }
                                        } else if (this.mPortManager != null) {
                                            this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                        }
                                    } else if (this.mPortManager != null) {
                                        this.mPortManager.resetSimulation(pw);
                                        pw.println();
                                        this.mPortManager.dump(new DualDumpOutputStream(new IndentingPrintWriter(pw, "  ")), "", 0L);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                }
                            } else if (!"disconnect-port".equals(args[0])) {
                                if (!"remove-port".equals(args[0])) {
                                    if ("reset".equals(args[0])) {
                                        if (!"set-contaminant-status".equals(args[0])) {
                                            if ("ports".equals(args[0])) {
                                                if ("dump-descriptors".equals(args[0])) {
                                                    this.mHostManager.dumpDescriptors(pw, args);
                                                } else {
                                                    pw.println("Dump current USB state or issue command:");
                                                    pw.println("  ports");
                                                    pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                    pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                    pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                    pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                    pw.println("  disconnect-port <id>");
                                                    pw.println("  remove-port <id>");
                                                    pw.println("  reset");
                                                    pw.println();
                                                    pw.println("Example USB type C port role switch:");
                                                    pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                    pw.println();
                                                    pw.println("Example USB type C port simulation with full capabilities:");
                                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                    pw.println("  dumpsys usb ports");
                                                    pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                    pw.println("  dumpsys usb remove-port \"matrix\"");
                                                    pw.println("  dumpsys usb reset");
                                                    pw.println();
                                                    pw.println("Example USB type C port where only power role can be changed:");
                                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                    pw.println("  dumpsys usb reset");
                                                    pw.println();
                                                    pw.println("Example USB OTG port where id pin determines function:");
                                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                    pw.println("  dumpsys usb reset");
                                                    pw.println();
                                                    pw.println("Example USB device-only port:");
                                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                    pw.println("  dumpsys usb reset");
                                                    pw.println();
                                                    pw.println("Example simulate contaminant status:");
                                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                    pw.println();
                                                    pw.println("Example USB device descriptors:");
                                                    pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                    pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                    pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                    pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                                }
                                            } else if ("dump-descriptors".equals(args[0])) {
                                                this.mHostManager.dumpDescriptors(pw, args);
                                            } else {
                                                pw.println("Dump current USB state or issue command:");
                                                pw.println("  ports");
                                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                pw.println("  disconnect-port <id>");
                                                pw.println("  remove-port <id>");
                                                pw.println("  reset");
                                                pw.println();
                                                pw.println("Example USB type C port role switch:");
                                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                pw.println();
                                                pw.println("Example USB type C port simulation with full capabilities:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                pw.println("  dumpsys usb ports");
                                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB type C port where only power role can be changed:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB OTG port where id pin determines function:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB device-only port:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example simulate contaminant status:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                pw.println();
                                                pw.println("Example USB device descriptors:");
                                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                            }
                                        } else if ("ports".equals(args[0])) {
                                            if ("dump-descriptors".equals(args[0])) {
                                                this.mHostManager.dumpDescriptors(pw, args);
                                            } else {
                                                pw.println("Dump current USB state or issue command:");
                                                pw.println("  ports");
                                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                pw.println("  disconnect-port <id>");
                                                pw.println("  remove-port <id>");
                                                pw.println("  reset");
                                                pw.println();
                                                pw.println("Example USB type C port role switch:");
                                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                pw.println();
                                                pw.println("Example USB type C port simulation with full capabilities:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                pw.println("  dumpsys usb ports");
                                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB type C port where only power role can be changed:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB OTG port where id pin determines function:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB device-only port:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example simulate contaminant status:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                pw.println();
                                                pw.println("Example USB device descriptors:");
                                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                            }
                                        } else if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if (!"set-contaminant-status".equals(args[0])) {
                                        if ("ports".equals(args[0])) {
                                            if ("dump-descriptors".equals(args[0])) {
                                                this.mHostManager.dumpDescriptors(pw, args);
                                            } else {
                                                pw.println("Dump current USB state or issue command:");
                                                pw.println("  ports");
                                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                pw.println("  disconnect-port <id>");
                                                pw.println("  remove-port <id>");
                                                pw.println("  reset");
                                                pw.println();
                                                pw.println("Example USB type C port role switch:");
                                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                pw.println();
                                                pw.println("Example USB type C port simulation with full capabilities:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                pw.println("  dumpsys usb ports");
                                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB type C port where only power role can be changed:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB OTG port where id pin determines function:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB device-only port:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example simulate contaminant status:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                pw.println();
                                                pw.println("Example USB device descriptors:");
                                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                            }
                                        } else if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("ports".equals(args[0])) {
                                        if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("reset".equals(args[0])) {
                                    if (!"set-contaminant-status".equals(args[0])) {
                                        if ("ports".equals(args[0])) {
                                            if ("dump-descriptors".equals(args[0])) {
                                                this.mHostManager.dumpDescriptors(pw, args);
                                            } else {
                                                pw.println("Dump current USB state or issue command:");
                                                pw.println("  ports");
                                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                pw.println("  disconnect-port <id>");
                                                pw.println("  remove-port <id>");
                                                pw.println("  reset");
                                                pw.println();
                                                pw.println("Example USB type C port role switch:");
                                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                pw.println();
                                                pw.println("Example USB type C port simulation with full capabilities:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                pw.println("  dumpsys usb ports");
                                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB type C port where only power role can be changed:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB OTG port where id pin determines function:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB device-only port:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example simulate contaminant status:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                pw.println();
                                                pw.println("Example USB device descriptors:");
                                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                            }
                                        } else if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("ports".equals(args[0])) {
                                        if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if (!"set-contaminant-status".equals(args[0])) {
                                    if ("ports".equals(args[0])) {
                                        if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("ports".equals(args[0])) {
                                    if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("dump-descriptors".equals(args[0])) {
                                    this.mHostManager.dumpDescriptors(pw, args);
                                } else {
                                    pw.println("Dump current USB state or issue command:");
                                    pw.println("  ports");
                                    pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                    pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                    pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                    pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                    pw.println("  disconnect-port <id>");
                                    pw.println("  remove-port <id>");
                                    pw.println("  reset");
                                    pw.println();
                                    pw.println("Example USB type C port role switch:");
                                    pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                    pw.println();
                                    pw.println("Example USB type C port simulation with full capabilities:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                    pw.println("  dumpsys usb ports");
                                    pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                    pw.println("  dumpsys usb remove-port \"matrix\"");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB type C port where only power role can be changed:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB OTG port where id pin determines function:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB device-only port:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example simulate contaminant status:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                    pw.println();
                                    pw.println("Example USB device descriptors:");
                                    pw.println("  dumpsys usb dump-descriptors -dump-short");
                                    pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                    pw.println("  dumpsys usb dump-descriptors -dump-list");
                                    pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                }
                            } else if (!"remove-port".equals(args[0])) {
                                if ("reset".equals(args[0])) {
                                    if (!"set-contaminant-status".equals(args[0])) {
                                        if ("ports".equals(args[0])) {
                                            if ("dump-descriptors".equals(args[0])) {
                                                this.mHostManager.dumpDescriptors(pw, args);
                                            } else {
                                                pw.println("Dump current USB state or issue command:");
                                                pw.println("  ports");
                                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                                pw.println("  disconnect-port <id>");
                                                pw.println("  remove-port <id>");
                                                pw.println("  reset");
                                                pw.println();
                                                pw.println("Example USB type C port role switch:");
                                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                                pw.println();
                                                pw.println("Example USB type C port simulation with full capabilities:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                                pw.println("  dumpsys usb ports");
                                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB type C port where only power role can be changed:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB OTG port where id pin determines function:");
                                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example USB device-only port:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                                pw.println("  dumpsys usb reset");
                                                pw.println();
                                                pw.println("Example simulate contaminant status:");
                                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                                pw.println();
                                                pw.println("Example USB device descriptors:");
                                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                            }
                                        } else if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("ports".equals(args[0])) {
                                        if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if (!"set-contaminant-status".equals(args[0])) {
                                    if ("ports".equals(args[0])) {
                                        if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("ports".equals(args[0])) {
                                    if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("dump-descriptors".equals(args[0])) {
                                    this.mHostManager.dumpDescriptors(pw, args);
                                } else {
                                    pw.println("Dump current USB state or issue command:");
                                    pw.println("  ports");
                                    pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                    pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                    pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                    pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                    pw.println("  disconnect-port <id>");
                                    pw.println("  remove-port <id>");
                                    pw.println("  reset");
                                    pw.println();
                                    pw.println("Example USB type C port role switch:");
                                    pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                    pw.println();
                                    pw.println("Example USB type C port simulation with full capabilities:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                    pw.println("  dumpsys usb ports");
                                    pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                    pw.println("  dumpsys usb remove-port \"matrix\"");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB type C port where only power role can be changed:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB OTG port where id pin determines function:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB device-only port:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example simulate contaminant status:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                    pw.println();
                                    pw.println("Example USB device descriptors:");
                                    pw.println("  dumpsys usb dump-descriptors -dump-short");
                                    pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                    pw.println("  dumpsys usb dump-descriptors -dump-list");
                                    pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                }
                            } else if ("reset".equals(args[0])) {
                                if (!"set-contaminant-status".equals(args[0])) {
                                    if ("ports".equals(args[0])) {
                                        if ("dump-descriptors".equals(args[0])) {
                                            this.mHostManager.dumpDescriptors(pw, args);
                                        } else {
                                            pw.println("Dump current USB state or issue command:");
                                            pw.println("  ports");
                                            pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                            pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                            pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                            pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                            pw.println("  disconnect-port <id>");
                                            pw.println("  remove-port <id>");
                                            pw.println("  reset");
                                            pw.println();
                                            pw.println("Example USB type C port role switch:");
                                            pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                            pw.println();
                                            pw.println("Example USB type C port simulation with full capabilities:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                            pw.println("  dumpsys usb ports");
                                            pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                            pw.println("  dumpsys usb remove-port \"matrix\"");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB type C port where only power role can be changed:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB OTG port where id pin determines function:");
                                            pw.println("  dumpsys usb add-port \"matrix\" dual");
                                            pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example USB device-only port:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                            pw.println("  dumpsys usb reset");
                                            pw.println();
                                            pw.println("Example simulate contaminant status:");
                                            pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                            pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                            pw.println();
                                            pw.println("Example USB device descriptors:");
                                            pw.println("  dumpsys usb dump-descriptors -dump-short");
                                            pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                            pw.println("  dumpsys usb dump-descriptors -dump-list");
                                            pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                        }
                                    } else if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("ports".equals(args[0])) {
                                    if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("dump-descriptors".equals(args[0])) {
                                    this.mHostManager.dumpDescriptors(pw, args);
                                } else {
                                    pw.println("Dump current USB state or issue command:");
                                    pw.println("  ports");
                                    pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                    pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                    pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                    pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                    pw.println("  disconnect-port <id>");
                                    pw.println("  remove-port <id>");
                                    pw.println("  reset");
                                    pw.println();
                                    pw.println("Example USB type C port role switch:");
                                    pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                    pw.println();
                                    pw.println("Example USB type C port simulation with full capabilities:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                    pw.println("  dumpsys usb ports");
                                    pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                    pw.println("  dumpsys usb remove-port \"matrix\"");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB type C port where only power role can be changed:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB OTG port where id pin determines function:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB device-only port:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example simulate contaminant status:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                    pw.println();
                                    pw.println("Example USB device descriptors:");
                                    pw.println("  dumpsys usb dump-descriptors -dump-short");
                                    pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                    pw.println("  dumpsys usb dump-descriptors -dump-list");
                                    pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                }
                            } else if (!"set-contaminant-status".equals(args[0])) {
                                if ("ports".equals(args[0])) {
                                    if ("dump-descriptors".equals(args[0])) {
                                        this.mHostManager.dumpDescriptors(pw, args);
                                    } else {
                                        pw.println("Dump current USB state or issue command:");
                                        pw.println("  ports");
                                        pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                        pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                        pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                        pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                        pw.println("  disconnect-port <id>");
                                        pw.println("  remove-port <id>");
                                        pw.println("  reset");
                                        pw.println();
                                        pw.println("Example USB type C port role switch:");
                                        pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                        pw.println();
                                        pw.println("Example USB type C port simulation with full capabilities:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                        pw.println("  dumpsys usb ports");
                                        pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                        pw.println("  dumpsys usb remove-port \"matrix\"");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB type C port where only power role can be changed:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB OTG port where id pin determines function:");
                                        pw.println("  dumpsys usb add-port \"matrix\" dual");
                                        pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example USB device-only port:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                        pw.println("  dumpsys usb reset");
                                        pw.println();
                                        pw.println("Example simulate contaminant status:");
                                        pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                        pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                        pw.println();
                                        pw.println("Example USB device descriptors:");
                                        pw.println("  dumpsys usb dump-descriptors -dump-short");
                                        pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                        pw.println("  dumpsys usb dump-descriptors -dump-list");
                                        pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                    }
                                } else if ("dump-descriptors".equals(args[0])) {
                                    this.mHostManager.dumpDescriptors(pw, args);
                                } else {
                                    pw.println("Dump current USB state or issue command:");
                                    pw.println("  ports");
                                    pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                    pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                    pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                    pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                    pw.println("  disconnect-port <id>");
                                    pw.println("  remove-port <id>");
                                    pw.println("  reset");
                                    pw.println();
                                    pw.println("Example USB type C port role switch:");
                                    pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                    pw.println();
                                    pw.println("Example USB type C port simulation with full capabilities:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                    pw.println("  dumpsys usb ports");
                                    pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                    pw.println("  dumpsys usb remove-port \"matrix\"");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB type C port where only power role can be changed:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB OTG port where id pin determines function:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB device-only port:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example simulate contaminant status:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                    pw.println();
                                    pw.println("Example USB device descriptors:");
                                    pw.println("  dumpsys usb dump-descriptors -dump-short");
                                    pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                    pw.println("  dumpsys usb dump-descriptors -dump-list");
                                    pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                }
                            } else if ("ports".equals(args[0])) {
                                if ("dump-descriptors".equals(args[0])) {
                                    this.mHostManager.dumpDescriptors(pw, args);
                                } else {
                                    pw.println("Dump current USB state or issue command:");
                                    pw.println("  ports");
                                    pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                    pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                    pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                    pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                    pw.println("  disconnect-port <id>");
                                    pw.println("  remove-port <id>");
                                    pw.println("  reset");
                                    pw.println();
                                    pw.println("Example USB type C port role switch:");
                                    pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                    pw.println();
                                    pw.println("Example USB type C port simulation with full capabilities:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                    pw.println("  dumpsys usb ports");
                                    pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                    pw.println("  dumpsys usb remove-port \"matrix\"");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB type C port where only power role can be changed:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB OTG port where id pin determines function:");
                                    pw.println("  dumpsys usb add-port \"matrix\" dual");
                                    pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example USB device-only port:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                    pw.println("  dumpsys usb reset");
                                    pw.println();
                                    pw.println("Example simulate contaminant status:");
                                    pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                    pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                    pw.println();
                                    pw.println("Example USB device descriptors:");
                                    pw.println("  dumpsys usb dump-descriptors -dump-short");
                                    pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                    pw.println("  dumpsys usb dump-descriptors -dump-list");
                                    pw.println("  dumpsys usb dump-descriptors -dump-raw");
                                }
                            } else if ("dump-descriptors".equals(args[0])) {
                                this.mHostManager.dumpDescriptors(pw, args);
                            } else {
                                pw.println("Dump current USB state or issue command:");
                                pw.println("  ports");
                                pw.println("  set-port-roles <id> <source|sink|no-power> <host|device|no-data>");
                                pw.println("  add-port <id> <ufp|dfp|dual|none>");
                                pw.println("  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>");
                                pw.println("    (add ? suffix if mode, power role, or data role can be changed)");
                                pw.println("  disconnect-port <id>");
                                pw.println("  remove-port <id>");
                                pw.println("  reset");
                                pw.println();
                                pw.println("Example USB type C port role switch:");
                                pw.println("  dumpsys usb set-port-roles \"default\" source device");
                                pw.println();
                                pw.println("Example USB type C port simulation with full capabilities:");
                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                pw.println("  dumpsys usb connect-port \"matrix\" ufp? sink? device?");
                                pw.println("  dumpsys usb ports");
                                pw.println("  dumpsys usb disconnect-port \"matrix\"");
                                pw.println("  dumpsys usb remove-port \"matrix\"");
                                pw.println("  dumpsys usb reset");
                                pw.println();
                                pw.println("Example USB type C port where only power role can be changed:");
                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source? host");
                                pw.println("  dumpsys usb reset");
                                pw.println();
                                pw.println("Example USB OTG port where id pin determines function:");
                                pw.println("  dumpsys usb add-port \"matrix\" dual");
                                pw.println("  dumpsys usb connect-port \"matrix\" dfp source host");
                                pw.println("  dumpsys usb reset");
                                pw.println();
                                pw.println("Example USB device-only port:");
                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                pw.println("  dumpsys usb connect-port \"matrix\" ufp sink device");
                                pw.println("  dumpsys usb reset");
                                pw.println();
                                pw.println("Example simulate contaminant status:");
                                pw.println("  dumpsys usb add-port \"matrix\" ufp");
                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" true");
                                pw.println("  dumpsys usb set-contaminant-status \"matrix\" false");
                                pw.println();
                                pw.println("Example USB device descriptors:");
                                pw.println("  dumpsys usb dump-descriptors -dump-short");
                                pw.println("  dumpsys usb dump-descriptors -dump-tree");
                                pw.println("  dumpsys usb dump-descriptors -dump-list");
                                pw.println("  dumpsys usb dump-descriptors -dump-raw");
                            }
                            Binder.restoreCallingIdentity(ident);
                        } catch (Throwable th2) {
                            th = th2;
                        }
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                    if (dumpAsProto) {
                        dump = new DualDumpOutputStream(new ProtoOutputStream(fd));
                    } else {
                        pw.println("USB MANAGER STATE (dumpsys usb):");
                        dump = new DualDumpOutputStream(new IndentingPrintWriter(pw, "  "));
                    }
                    if (this.mDeviceManager != null) {
                        this.mDeviceManager.dump(dump, "device_manager", 1146756268033L);
                    }
                    if (this.mHostManager != null) {
                        this.mHostManager.dump(dump, "host_manager", 1146756268034L);
                    }
                    if (this.mPortManager != null) {
                        this.mPortManager.dump(dump, "port_manager", 1146756268035L);
                    }
                    this.mAlsaManager.dump(dump, "alsa_manager", 1146756268036L);
                    this.mSettingsManager.dump(dump, "settings_manager", 1146756268037L);
                    this.mPermissionManager.dump(dump, "permissions_manager", 1146756268038L);
                    dump.flush();
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private static String removeLastChar(String value) {
        return value.substring(0, value.length() - 1);
    }
}
