package com.android.server.testharness;

import android.R;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.debug.AdbManagerInternal;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.location.LocationManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.widget.LockPatternUtils;
import com.android.server.LocalServices;
import com.android.server.PersistentDataBlockManagerInternal;
import com.android.server.SystemService;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.PackageManagerService;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.PosixFilePermission;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class TestHarnessModeService extends SystemService {
    private static final String TAG = TestHarnessModeService.class.getSimpleName();
    private static final String TEST_HARNESS_MODE_PROPERTY = "persist.sys.test_harness";
    private PersistentDataBlockManagerInternal mPersistentDataBlockManagerInternal;
    private final IBinder mService;

    public TestHarnessModeService(Context context) {
        super(context);
        this.mService = new Binder() { // from class: com.android.server.testharness.TestHarnessModeService.1
            public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
                new TestHarnessModeShellCommand().exec(this, in, out, err, args, callback, resultReceiver);
            }
        };
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("testharness", this.mService);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            setUpTestHarnessMode();
        } else if (phase == 1000) {
            completeTestHarnessModeSetup();
            showNotificationIfEnabled();
        }
        super.onBootPhase(phase);
    }

    private void setUpTestHarnessMode() {
        Slog.d(TAG, "Setting up test harness mode");
        byte[] testHarnessModeData = getTestHarnessModeData();
        if (testHarnessModeData == null) {
            return;
        }
        setDeviceProvisioned();
        disableLockScreen();
        SystemProperties.set(TEST_HARNESS_MODE_PROPERTY, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
    }

    private void disableLockScreen() {
        UserInfo userInfo = getPrimaryUser();
        LockPatternUtils utils = new LockPatternUtils(getContext());
        utils.setLockScreenDisabled(true, userInfo.id);
    }

    private void completeTestHarnessModeSetup() {
        Slog.d(TAG, "Completing Test Harness Mode setup.");
        byte[] testHarnessModeData = getTestHarnessModeData();
        if (testHarnessModeData == null) {
            return;
        }
        try {
            try {
                setUpAdbFiles(PersistentData.fromBytes(testHarnessModeData));
                configureSettings();
                configureUser();
            } catch (SetUpTestHarnessModeException e) {
                Slog.e(TAG, "Failed to set up Test Harness Mode. Bad data.", e);
            }
        } finally {
            getPersistentDataBlock().clearTestHarnessModeData();
        }
    }

    private byte[] getTestHarnessModeData() {
        PersistentDataBlockManagerInternal blockManager = getPersistentDataBlock();
        if (blockManager == null) {
            Slog.e(TAG, "Failed to start Test Harness Mode; no implementation of PersistentDataBlockManagerInternal was bound!");
            return null;
        }
        byte[] testHarnessModeData = blockManager.getTestHarnessModeData();
        if (testHarnessModeData == null || testHarnessModeData.length == 0) {
            return null;
        }
        return testHarnessModeData;
    }

    private void configureSettings() {
        ContentResolver cr = getContext().getContentResolver();
        Settings.Global.putInt(cr, "adb_enabled", 0);
        AdbManagerInternal adbManager = (AdbManagerInternal) LocalServices.getService(AdbManagerInternal.class);
        if (adbManager.isAdbEnabled((byte) 0)) {
            adbManager.stopAdbdForTransport((byte) 0);
        }
        Settings.Global.putLong(cr, "adb_allowed_connection_time", 0L);
        Settings.Global.putInt(cr, "adb_enabled", 1);
        Settings.Global.putInt(cr, "development_settings_enabled", 1);
        Settings.Global.putInt(cr, "verifier_verify_adb_installs", 0);
        Settings.Global.putInt(cr, "stay_on_while_plugged_in", 7);
        Settings.Global.putInt(cr, "ota_disable_automatic_update", 1);
    }

    private void setUpAdbFiles(PersistentData persistentData) {
        AdbManagerInternal adbManager = (AdbManagerInternal) LocalServices.getService(AdbManagerInternal.class);
        if (adbManager.getAdbKeysFile() != null) {
            writeBytesToFile(persistentData.mAdbKeys, adbManager.getAdbKeysFile().toPath());
        }
        if (adbManager.getAdbTempKeysFile() != null) {
            writeBytesToFile(persistentData.mAdbTempKeys, adbManager.getAdbTempKeysFile().toPath());
        }
    }

    private void configureUser() {
        UserInfo primaryUser = getPrimaryUser();
        ContentResolver.setMasterSyncAutomaticallyAsUser(false, primaryUser.id);
        LocationManager locationManager = (LocationManager) getContext().getSystemService(LocationManager.class);
        locationManager.setLocationEnabledForUser(true, primaryUser.getUserHandle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserInfo getPrimaryUser() {
        UserManager userManager = UserManager.get(getContext());
        return userManager.getPrimaryUser();
    }

    private void writeBytesToFile(byte[] keys, Path adbKeys) {
        try {
            OutputStream fileOutputStream = Files.newOutputStream(adbKeys, new OpenOption[0]);
            fileOutputStream.write(keys);
            fileOutputStream.close();
            Set<PosixFilePermission> permissions = Files.getPosixFilePermissions(adbKeys, new LinkOption[0]);
            permissions.add(PosixFilePermission.GROUP_READ);
            Files.setPosixFilePermissions(adbKeys, permissions);
        } catch (IOException e) {
            Slog.e(TAG, "Failed to set up adb keys", e);
        }
    }

    private void setDeviceProvisioned() {
        ContentResolver cr = getContext().getContentResolver();
        Settings.Global.putInt(cr, "device_provisioned", 1);
        Settings.Secure.putIntForUser(cr, "user_setup_complete", 1, -2);
    }

    private void showNotificationIfEnabled() {
        if (!SystemProperties.getBoolean(TEST_HARNESS_MODE_PROPERTY, false)) {
            return;
        }
        String title = getContext().getString(R.string.permgroupdesc_notifications);
        String message = getContext().getString(R.string.permgroupdesc_nearby_devices);
        Notification notification = new Notification.Builder(getContext(), SystemNotificationChannels.DEVELOPER).setSmallIcon(R.drawable.$$loader_horizontal_watch__5__0).setWhen(0L).setOngoing(true).setTicker(title).setDefaults(0).setColor(getContext().getColor(R.color.system_notification_accent_color)).setContentTitle(title).setContentText(message).setVisibility(1).build();
        NotificationManager notificationManager = (NotificationManager) getContext().getSystemService(NotificationManager.class);
        notificationManager.notifyAsUser(null, 54, notification, UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PersistentDataBlockManagerInternal getPersistentDataBlock() {
        if (this.mPersistentDataBlockManagerInternal == null) {
            Slog.d(TAG, "Getting PersistentDataBlockManagerInternal from LocalServices");
            this.mPersistentDataBlockManagerInternal = (PersistentDataBlockManagerInternal) LocalServices.getService(PersistentDataBlockManagerInternal.class);
        }
        return this.mPersistentDataBlockManagerInternal;
    }

    private class TestHarnessModeShellCommand extends ShellCommand {
        private TestHarnessModeShellCommand() {
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0024  */
        public int onCommand(String cmd) {
            byte b;
            int iHashCode = cmd.hashCode();
            if (iHashCode != -1298848381) {
                if (iHashCode == 1097519758 && cmd.equals("restore")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (cmd.equals("enable")) {
                b = 0;
            } else {
                b = -1;
            }
            if (b == 0 || b == 1) {
                checkPermissions();
                long originalId = Binder.clearCallingIdentity();
                try {
                    if (isDeviceSecure()) {
                        getErrPrintWriter().println("Test Harness Mode cannot be enabled if there is a lock screen");
                        return 2;
                    }
                    return handleEnable();
                } finally {
                    Binder.restoreCallingIdentity(originalId);
                }
            }
            return handleDefaultCommands(cmd);
        }

        private void checkPermissions() {
            TestHarnessModeService.this.getContext().enforceCallingPermission("android.permission.ENABLE_TEST_HARNESS_MODE", "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode");
        }

        private boolean isDeviceSecure() {
            KeyguardManager keyguardManager = (KeyguardManager) TestHarnessModeService.this.getContext().getSystemService(KeyguardManager.class);
            return keyguardManager.isDeviceSecure(TestHarnessModeService.this.getPrimaryUser().id);
        }

        private int handleEnable() {
            AdbManagerInternal adbManager = (AdbManagerInternal) LocalServices.getService(AdbManagerInternal.class);
            File adbKeys = adbManager.getAdbKeysFile();
            File adbTempKeys = adbManager.getAdbTempKeysFile();
            try {
                byte[] adbKeysBytes = getBytesFromFile(adbKeys);
                byte[] adbTempKeysBytes = getBytesFromFile(adbTempKeys);
                PersistentData persistentData = new PersistentData(adbKeysBytes, adbTempKeysBytes);
                PersistentDataBlockManagerInternal blockManager = TestHarnessModeService.this.getPersistentDataBlock();
                if (blockManager == null) {
                    Slog.e(TestHarnessModeService.TAG, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound.");
                    getErrPrintWriter().println("Failed to enable Test Harness Mode");
                    return 1;
                }
                blockManager.setTestHarnessModeData(persistentData.toBytes());
                Intent i = new Intent("android.intent.action.FACTORY_RESET");
                i.setPackage(PackageManagerService.PLATFORM_PACKAGE_NAME);
                i.addFlags(AudioFormat.EVRC);
                i.putExtra("android.intent.extra.REASON", TestHarnessModeService.TAG);
                i.putExtra("android.intent.extra.WIPE_EXTERNAL_STORAGE", true);
                TestHarnessModeService.this.getContext().sendBroadcastAsUser(i, UserHandle.SYSTEM);
                return 0;
            } catch (IOException e) {
                Slog.e(TestHarnessModeService.TAG, "Failed to store ADB keys.", e);
                getErrPrintWriter().println("Failed to enable Test Harness Mode");
                return 1;
            }
        }

        private byte[] getBytesFromFile(File file) throws IOException {
            if (file == null || !file.exists()) {
                return new byte[0];
            }
            Path path = file.toPath();
            InputStream inputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                int size = (int) Files.size(path);
                byte[] bytes = new byte[size];
                int numBytes = inputStream.read(bytes);
                if (numBytes != size) {
                    throw new IOException("Failed to read the whole file");
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return bytes;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("About:");
            pw.println("  Test Harness Mode is a mode that the device can be placed in to prepare");
            pw.println("  the device for running UI tests. The device is placed into this mode by");
            pw.println("  first wiping all data from the device, preserving ADB keys.");
            pw.println();
            pw.println("  By default, the following settings are configured:");
            pw.println("    * Package Verifier is disabled");
            pw.println("    * Stay Awake While Charging is enabled");
            pw.println("    * OTA Updates are disabled");
            pw.println("    * Auto-Sync for accounts is disabled");
            pw.println();
            pw.println("  Other apps may configure themselves differently in Test Harness Mode by");
            pw.println("  checking ActivityManager.isRunningInUserTestHarness()");
            pw.println();
            pw.println("Test Harness Mode commands:");
            pw.println("  help");
            pw.println("    Print this help text.");
            pw.println();
            pw.println("  enable|restore");
            pw.println("    Erase all data from this device and enable Test Harness Mode,");
            pw.println("    preserving the stored ADB keys currently on the device and toggling");
            pw.println("    settings in a way that are conducive to Instrumentation testing.");
        }
    }

    public static class PersistentData {
        static final byte VERSION_1 = 1;
        static final byte VERSION_2 = 2;
        final byte[] mAdbKeys;
        final byte[] mAdbTempKeys;
        final int mVersion;

        PersistentData(byte[] adbKeys, byte[] adbTempKeys) {
            this(2, adbKeys, adbTempKeys);
        }

        PersistentData(int version, byte[] adbKeys, byte[] adbTempKeys) {
            this.mVersion = version;
            this.mAdbKeys = adbKeys;
            this.mAdbTempKeys = adbTempKeys;
        }

        static PersistentData fromBytes(byte[] bytes) throws SetUpTestHarnessModeException {
            try {
                DataInputStream is = new DataInputStream(new ByteArrayInputStream(bytes));
                int version = is.readInt();
                if (version == 1) {
                    is.readBoolean();
                }
                int adbKeysLength = is.readInt();
                byte[] adbKeys = new byte[adbKeysLength];
                is.readFully(adbKeys);
                int adbTempKeysLength = is.readInt();
                byte[] adbTempKeys = new byte[adbTempKeysLength];
                is.readFully(adbTempKeys);
                return new PersistentData(version, adbKeys, adbTempKeys);
            } catch (IOException e) {
                throw new SetUpTestHarnessModeException(e);
            }
        }

        byte[] toBytes() {
            try {
                ByteArrayOutputStream os = new ByteArrayOutputStream();
                DataOutputStream dos = new DataOutputStream(os);
                dos.writeInt(2);
                dos.writeInt(this.mAdbKeys.length);
                dos.write(this.mAdbKeys);
                dos.writeInt(this.mAdbTempKeys.length);
                dos.write(this.mAdbTempKeys);
                dos.close();
                return os.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private static class SetUpTestHarnessModeException extends Exception {
        SetUpTestHarnessModeException(Exception e) {
            super(e);
        }
    }
}
