package com.android.server.adb;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.debug.AdbManagerInternal;
import android.debug.IAdbManager;
import android.debug.IAdbTransport;
import android.debug.PairDevice;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.sysprop.AdbProperties;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.integrity.AppIntegrityManagerServiceImpl;
import com.android.server.notification.SnoozeHelper;
import com.android.server.utils.PriorityDump;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class AdbService extends IAdbManager.Stub {
    static final String ADBD = "adbd";
    static final String CTL_START = "ctl.start";
    static final String CTL_STOP = "ctl.stop";
    private static final boolean DEBUG = false;
    private static final String TAG = "AdbService";
    private static final String USB_PERSISTENT_CONFIG_PROPERTY = "persist.sys.usb.config";
    private static final String WIFI_PERSISTENT_CONFIG_PROPERTY = "persist.adb.tls_server.enable";
    AtomicInteger mConnectionPort;
    private AdbDebuggingManager.AdbConnectionPortPoller mConnectionPortPoller;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private AdbDebuggingManager mDebuggingManager;
    private boolean mIsAdbUsbEnabled;
    private boolean mIsAdbWifiEnabled;
    private ContentObserver mObserver;
    private final AdbConnectionPortListener mPortListener;
    private final ArrayMap<IBinder, IAdbTransport> mTransports;

    public static class Lifecycle extends SystemService {
        private AdbService mAdbService;

        public Lifecycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.adb.AdbService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? adbService = new AdbService(getContext());
            this.mAdbService = adbService;
            publishBinderService(AppIntegrityManagerServiceImpl.ADB_INSTALLER, adbService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 550) {
                this.mAdbService.systemReady();
            } else if (phase == 1000) {
                FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.adb.-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((AdbService) obj).bootCompleted();
                    }
                }, this.mAdbService));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AdbManagerInternalImpl extends AdbManagerInternal {
        private AdbManagerInternalImpl() {
        }

        public void registerTransport(IAdbTransport transport) {
            AdbService.this.mTransports.put(transport.asBinder(), transport);
        }

        public void unregisterTransport(IAdbTransport transport) {
            AdbService.this.mTransports.remove(transport.asBinder());
        }

        public boolean isAdbEnabled(byte transportType) {
            if (transportType == 0) {
                return AdbService.this.mIsAdbUsbEnabled;
            }
            if (transportType == 1) {
                return AdbService.this.mIsAdbWifiEnabled;
            }
            throw new IllegalArgumentException("isAdbEnabled called with unimplemented transport type=" + ((int) transportType));
        }

        public File getAdbKeysFile() {
            if (AdbService.this.mDebuggingManager == null) {
                return null;
            }
            return AdbService.this.mDebuggingManager.getUserKeyFile();
        }

        public File getAdbTempKeysFile() {
            if (AdbService.this.mDebuggingManager == null) {
                return null;
            }
            return AdbService.this.mDebuggingManager.getAdbTempKeysFile();
        }

        public void startAdbdForTransport(byte transportType) {
            FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.adb.-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((AdbService) obj).setAdbdEnabledForTransport(((Boolean) obj2).booleanValue(), ((Byte) obj3).byteValue());
                }
            }, AdbService.this, true, Byte.valueOf(transportType)));
        }

        public void stopAdbdForTransport(byte transportType) {
            FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.adb.-$$Lambda$AdbService$AdbManagerInternalImpl$jgrEiL2yPVkymVh0sKSMHbmTnmY
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((AdbService) obj).setAdbdEnabledForTransport(((Boolean) obj2).booleanValue(), ((Byte) obj3).byteValue());
                }
            }, AdbService.this, false, Byte.valueOf(transportType)));
        }
    }

    private void initAdbState() {
        try {
            this.mIsAdbUsbEnabled = containsFunction(SystemProperties.get(USB_PERSISTENT_CONFIG_PROPERTY, ""), AppIntegrityManagerServiceImpl.ADB_INSTALLER);
            this.mIsAdbWifiEnabled = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(WIFI_PERSISTENT_CONFIG_PROPERTY, "0"));
            this.mObserver = new AdbSettingsObserver();
            this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("adb_enabled"), false, this.mObserver);
            this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("adb_wifi_enabled"), false, this.mObserver);
        } catch (Exception e) {
            Slog.e(TAG, "Error in initAdbState", e);
        }
    }

    private static boolean containsFunction(String functions, String function) {
        int index = functions.indexOf(function);
        if (index < 0) {
            return false;
        }
        if (index > 0 && functions.charAt(index - 1) != ',') {
            return false;
        }
        int charAfter = function.length() + index;
        if (charAfter < functions.length() && functions.charAt(charAfter) != ',') {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AdbSettingsObserver extends ContentObserver {
        private final Uri mAdbUsbUri;
        private final Uri mAdbWifiUri;

        AdbSettingsObserver() {
            super(null);
            this.mAdbUsbUri = Settings.Global.getUriFor("adb_enabled");
            this.mAdbWifiUri = Settings.Global.getUriFor("adb_wifi_enabled");
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            if (this.mAdbUsbUri.equals(uri)) {
                boolean shouldEnable = Settings.Global.getInt(AdbService.this.mContentResolver, "adb_enabled", 0) > 0;
                FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.adb.-$$Lambda$AdbService$AdbSettingsObserver$j80q7vJz3QArWlwXdP3SN7zmf1A
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((AdbService) obj).setAdbEnabled(((Boolean) obj2).booleanValue(), ((Byte) obj3).byteValue());
                    }
                }, AdbService.this, Boolean.valueOf(shouldEnable), (byte) 0));
            } else if (this.mAdbWifiUri.equals(uri)) {
                boolean shouldEnable2 = Settings.Global.getInt(AdbService.this.mContentResolver, "adb_wifi_enabled", 0) > 0;
                FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.adb.-$$Lambda$AdbService$AdbSettingsObserver$RoyT5Mqx9S17cRYS-VTdgg8I7zc
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((AdbService) obj).setAdbEnabled(((Boolean) obj2).booleanValue(), ((Byte) obj3).byteValue());
                    }
                }, AdbService.this, Boolean.valueOf(shouldEnable2), (byte) 1));
            }
        }
    }

    private AdbService(Context context) {
        this.mConnectionPort = new AtomicInteger(-1);
        this.mPortListener = new AdbConnectionPortListener();
        this.mTransports = new ArrayMap<>();
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mDebuggingManager = new AdbDebuggingManager(context);
        initAdbState();
        LocalServices.addService(AdbManagerInternal.class, new AdbManagerInternalImpl());
    }

    public void systemReady() {
        try {
            int i = 1;
            Settings.Global.putInt(this.mContentResolver, "adb_enabled", this.mIsAdbUsbEnabled ? 1 : 0);
            ContentResolver contentResolver = this.mContentResolver;
            if (!this.mIsAdbWifiEnabled) {
                i = 0;
            }
            Settings.Global.putInt(contentResolver, "adb_wifi_enabled", i);
        } catch (SecurityException e) {
            Slog.d(TAG, "ADB_ENABLED is restricted.");
        }
    }

    public void bootCompleted() {
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.setAdbEnabled(this.mIsAdbUsbEnabled, (byte) 0);
            this.mDebuggingManager.setAdbEnabled(this.mIsAdbWifiEnabled, (byte) 1);
        }
    }

    public void allowDebugging(boolean alwaysAllow, String publicKey) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        Preconditions.checkStringNotEmpty(publicKey);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.allowDebugging(alwaysAllow, publicKey);
        }
    }

    public void denyDebugging() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.denyDebugging();
        }
    }

    public void clearDebuggingKeys() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.clearDebuggingKeys();
            return;
        }
        throw new RuntimeException("Cannot clear ADB debugging keys, AdbDebuggingManager not enabled");
    }

    public boolean isAdbWifiSupported() {
        this.mContext.enforceCallingPermission("android.permission.MANAGE_DEBUGGING", TAG);
        return this.mContext.getPackageManager().hasSystemFeature("android.hardware.wifi");
    }

    public boolean isAdbWifiQrSupported() {
        this.mContext.enforceCallingPermission("android.permission.MANAGE_DEBUGGING", TAG);
        return isAdbWifiSupported() && this.mContext.getPackageManager().hasSystemFeature("android.hardware.camera.any");
    }

    public void allowWirelessDebugging(boolean alwaysAllow, String bssid) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        Preconditions.checkStringNotEmpty(bssid);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.allowWirelessDebugging(alwaysAllow, bssid);
        }
    }

    public void denyWirelessDebugging() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.denyWirelessDebugging();
        }
    }

    public Map<String, PairDevice> getPairedDevices() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            return adbDebuggingManager.getPairedDevices();
        }
        return null;
    }

    public void unpairDevice(String fingerprint) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        Preconditions.checkStringNotEmpty(fingerprint);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.unpairDevice(fingerprint);
        }
    }

    public void enablePairingByPairingCode() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.enablePairingByPairingCode();
        }
    }

    public void enablePairingByQrCode(String serviceName, String password) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        Preconditions.checkStringNotEmpty(serviceName);
        Preconditions.checkStringNotEmpty(password);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.enablePairingByQrCode(serviceName, password);
        }
    }

    public void disablePairing() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.disablePairing();
        }
    }

    public int getAdbWirelessPort() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_DEBUGGING", null);
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            return adbDebuggingManager.getAdbWirelessPort();
        }
        return this.mConnectionPort.get();
    }

    class AdbConnectionPortListener implements AdbDebuggingManager.AdbConnectionPortListener {
        AdbConnectionPortListener() {
        }

        @Override // com.android.server.adb.AdbDebuggingManager.AdbConnectionPortListener
        public void onPortReceived(int port) {
            if (port > 0 && port <= 65535) {
                AdbService.this.mConnectionPort.set(port);
            } else {
                AdbService.this.mConnectionPort.set(-1);
                try {
                    Settings.Global.putInt(AdbService.this.mContentResolver, "adb_wifi_enabled", 0);
                } catch (SecurityException e) {
                    Slog.d(AdbService.TAG, "ADB_ENABLED is restricted.");
                }
            }
            AdbService adbService = AdbService.this;
            adbService.broadcastPortInfo(adbService.mConnectionPort.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastPortInfo(int port) {
        int i;
        Intent intent = new Intent("com.android.server.adb.WIRELESS_DEBUG_STATUS");
        if (port >= 0) {
            i = 4;
        } else {
            i = 5;
        }
        intent.putExtra("status", i);
        intent.putExtra("adb_port", port);
        AdbDebuggingManager.sendBroadcastWithDebugPermission(this.mContext, intent, UserHandle.ALL);
        Slog.i(TAG, "sent port broadcast port=" + port);
    }

    private void startAdbd() {
        SystemProperties.set(CTL_START, ADBD);
    }

    private void stopAdbd() {
        if (!this.mIsAdbUsbEnabled && !this.mIsAdbWifiEnabled) {
            SystemProperties.set(CTL_STOP, ADBD);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdbdEnabledForTransport(boolean enable, byte transportType) {
        if (transportType == 0) {
            this.mIsAdbUsbEnabled = enable;
        } else if (transportType == 1) {
            this.mIsAdbWifiEnabled = enable;
        }
        if (enable) {
            startAdbd();
        } else {
            stopAdbd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdbEnabled(boolean enable, byte transportType) {
        if (transportType == 0 && enable != this.mIsAdbUsbEnabled) {
            this.mIsAdbUsbEnabled = enable;
        } else if (transportType == 1 && enable != this.mIsAdbWifiEnabled) {
            this.mIsAdbWifiEnabled = enable;
            if (!enable) {
                SystemProperties.set(WIFI_PERSISTENT_CONFIG_PROPERTY, "0");
                AdbDebuggingManager.AdbConnectionPortPoller adbConnectionPortPoller = this.mConnectionPortPoller;
                if (adbConnectionPortPoller != null) {
                    adbConnectionPortPoller.cancelAndWait();
                    this.mConnectionPortPoller = null;
                }
            } else if (!((Boolean) AdbProperties.secure().orElse(false)).booleanValue() && this.mDebuggingManager == null) {
                SystemProperties.set(WIFI_PERSISTENT_CONFIG_PROPERTY, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
                AdbDebuggingManager.AdbConnectionPortPoller adbConnectionPortPoller2 = new AdbDebuggingManager.AdbConnectionPortPoller(this.mPortListener);
                this.mConnectionPortPoller = adbConnectionPortPoller2;
                adbConnectionPortPoller2.start();
            }
        } else {
            return;
        }
        if (enable) {
            startAdbd();
        } else {
            stopAdbd();
        }
        for (IAdbTransport transport : this.mTransports.values()) {
            try {
                transport.onAdbEnabled(enable, transportType);
            } catch (RemoteException e) {
                Slog.w(TAG, "Unable to send onAdbEnabled to transport " + transport.toString());
            }
        }
        AdbDebuggingManager adbDebuggingManager = this.mDebuggingManager;
        if (adbDebuggingManager != null) {
            adbDebuggingManager.setAdbEnabled(enable, transportType);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int handleShellCommand(ParcelFileDescriptor in, ParcelFileDescriptor out, ParcelFileDescriptor err, String[] args) {
        return new AdbShellCommand(this).exec(this, in.getFileDescriptor(), out.getFileDescriptor(), err.getFileDescriptor(), args);
    }

    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        DualDumpOutputStream dump;
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
            long ident = Binder.clearCallingIdentity();
            try {
                ArraySet<String> argsSet = new ArraySet<>();
                Collections.addAll(argsSet, args);
                boolean dumpAsProto = false;
                if (argsSet.contains(PriorityDump.PROTO_ARG)) {
                    dumpAsProto = true;
                }
                if (argsSet.size() == 0 || argsSet.contains("-a") || dumpAsProto) {
                    if (dumpAsProto) {
                        dump = new DualDumpOutputStream(new ProtoOutputStream(fd));
                    } else {
                        pw.println("ADB MANAGER STATE (dumpsys adb):");
                        dump = new DualDumpOutputStream(new IndentingPrintWriter(pw, "  "));
                    }
                    if (this.mDebuggingManager != null) {
                        this.mDebuggingManager.dump(dump, "debugging_manager", 1146756268033L);
                    }
                    dump.flush();
                } else {
                    pw.println("Dump current ADB state");
                    pw.println("  No commands available");
                }
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }
}
