package com.android.server;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.VersionedPackage;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.RecoverySystem;
import android.os.RemoteCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.ExceptionUtils;
import android.util.MathUtils;
import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.am.SettingsToPropertiesMapper;
import com.android.server.pm.PackageManagerServiceUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class RescueParty {
    static final long DEFAULT_OBSERVING_DURATION_MS = TimeUnit.DAYS.toMillis(2);
    static final int LEVEL_FACTORY_RESET = 4;
    static final int LEVEL_NONE = 0;
    static final int LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS = 3;
    static final int LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES = 2;
    static final int LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS = 1;
    private static final String NAME = "rescue-party-observer";
    private static final int PERSISTENT_MASK = 9;
    private static final String PROP_DEVICE_CONFIG_DISABLE_FLAG = "persist.device_config.configuration.disable_rescue_party";
    private static final String PROP_DISABLE_RESCUE = "persist.sys.disable_rescue";
    static final String PROP_ENABLE_RESCUE = "persist.sys.enable_rescue";
    static final String PROP_RESCUE_BOOT_COUNT = "sys.rescue_boot_count";
    static final String PROP_RESCUE_LEVEL = "sys.rescue_level";
    private static final String PROP_VIRTUAL_DEVICE = "ro.hardware.virtual_device";
    static final String TAG = "RescueParty";

    public static void registerHealthObserver(Context context) {
        PackageWatchdog.getInstance(context).registerHealthObserver(RescuePartyObserver.getInstance(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isDisabled() {
        if (SystemProperties.getBoolean(PROP_ENABLE_RESCUE, false)) {
            return false;
        }
        if (SystemProperties.getBoolean(PROP_DEVICE_CONFIG_DISABLE_FLAG, false)) {
            Slog.v(TAG, "Disabled because of DeviceConfig flag");
            return true;
        }
        if (Build.IS_ENG) {
            Slog.v(TAG, "Disabled because of eng build");
            return true;
        }
        if (Build.IS_USERDEBUG && isUsbActive()) {
            Slog.v(TAG, "Disabled because of active USB connection");
            return true;
        }
        if (!SystemProperties.getBoolean(PROP_DISABLE_RESCUE, false)) {
            return false;
        }
        Slog.v(TAG, "Disabled because of manual property");
        return true;
    }

    public static boolean isAttemptingFactoryReset() {
        return SystemProperties.getInt(PROP_RESCUE_LEVEL, 0) == 4;
    }

    public static void onSettingsProviderPublished(final Context context) {
        handleNativeRescuePartyResets();
        executeRescueLevel(context, null);
        ContentResolver contentResolver = context.getContentResolver();
        Settings.Config.registerMonitorCallback(contentResolver, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.-$$Lambda$RescueParty$M16YDzk6heHIMmIiCwHVSe9Y_o8
            public final void onResult(Bundle bundle) {
                RescueParty.handleMonitorCallback(context, bundle);
            }
        }));
    }

    static long getElapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x002e  */
    public static void handleMonitorCallback(Context context, Bundle result) {
        byte b;
        String callbackType = result.getString("monitor_callback_type", "");
        int iHashCode = callbackType.hashCode();
        if (iHashCode != -751689299) {
            if (iHashCode == 1166372032 && callbackType.equals("access_callback")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (callbackType.equals("namespace_updated_callback")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            String updatedNamespace = result.getString("namespace");
            if (updatedNamespace != null) {
                startObservingPackages(context, updatedNamespace);
                return;
            }
            return;
        }
        if (b == 1) {
            String callingPackage = result.getString("calling_package", null);
            String namespace = result.getString("namespace", null);
            if (namespace == null || callingPackage == null) {
                return;
            }
            RescuePartyObserver.getInstance(context).recordDeviceConfigAccess(callingPackage, namespace);
            return;
        }
        Slog.w(TAG, "Unrecognized DeviceConfig callback");
    }

    private static void startObservingPackages(Context context, String updatedNamespace) {
        RescuePartyObserver rescuePartyObserver = RescuePartyObserver.getInstance(context);
        Collection<? extends String> callingPackages = rescuePartyObserver.getCallingPackagesSet(updatedNamespace);
        if (callingPackages == null) {
            return;
        }
        List<String> callingPackageList = new ArrayList<>();
        callingPackageList.addAll(callingPackages);
        Slog.i(TAG, "Starting to observe: " + callingPackageList + ", updated namespace: " + updatedNamespace);
        PackageWatchdog.getInstance(context).startObservingHealth(rescuePartyObserver, callingPackageList, DEFAULT_OBSERVING_DURATION_MS);
    }

    private static void handleNativeRescuePartyResets() {
        if (SettingsToPropertiesMapper.isNativeFlagsResetPerformed()) {
            String[] resetNativeCategories = SettingsToPropertiesMapper.getResetNativeCategories();
            for (String str : resetNativeCategories) {
                DeviceConfig.resetToDefaults(4, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getNextRescueLevel() {
        return MathUtils.constrain(SystemProperties.getInt(PROP_RESCUE_LEVEL, 0) + 1, 0, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void incrementRescueLevel(int triggerUid) {
        int level = getNextRescueLevel();
        SystemProperties.set(PROP_RESCUE_LEVEL, Integer.toString(level));
        EventLogTags.writeRescueLevel(level, triggerUid);
        PackageManagerServiceUtils.logCriticalInfo(5, "Incremented rescue level to " + levelToString(level) + " triggered by UID " + triggerUid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void executeRescueLevel(Context context, String failedPackage) {
        int level = SystemProperties.getInt(PROP_RESCUE_LEVEL, 0);
        if (level == 0) {
            return;
        }
        Slog.w(TAG, "Attempting rescue level " + levelToString(level));
        try {
            executeRescueLevelInternal(context, level, failedPackage);
            EventLogTags.writeRescueSuccess(level);
            PackageManagerServiceUtils.logCriticalInfo(3, "Finished rescue level " + levelToString(level));
        } catch (Throwable t) {
            logRescueException(level, t);
        }
    }

    private static void executeRescueLevelInternal(final Context context, final int level, String failedPackage) throws Exception {
        FrameworkStatsLog.write(CecMessageType.REPORT_AUDIO_STATUS, level);
        SystemProperties.set("sys.state.monitor.value", "rescue-level-" + level + "_" + failedPackage);
        if (level == 1) {
            resetAllSettings(context, 2, failedPackage);
            return;
        }
        if (level == 2) {
            resetAllSettings(context, 3, failedPackage);
            return;
        }
        if (level == 3) {
            resetAllSettings(context, 4, failedPackage);
        } else if (level == 4) {
            Runnable runnable = new Runnable() { // from class: com.android.server.RescueParty.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        RecoverySystem.rebootPromptAndWipeUserData(context, RescueParty.TAG);
                    } catch (Throwable t) {
                        RescueParty.logRescueException(level, t);
                    }
                }
            };
            Thread thread = new Thread(runnable);
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logRescueException(int level, Throwable t) {
        String msg = ExceptionUtils.getCompleteMessage(t);
        EventLogTags.writeRescueFailure(level, msg);
        PackageManagerServiceUtils.logCriticalInfo(6, "Failed rescue level " + levelToString(level) + ": " + msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int mapRescueLevelToUserImpact(int rescueLevel) {
        if (rescueLevel == 1 || rescueLevel == 2) {
            return 1;
        }
        if (rescueLevel == 3 || rescueLevel == 4) {
            return 5;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPackageUid(Context context, String packageName) {
        try {
            return context.getPackageManager().getPackageUid(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    private static void resetAllSettings(Context context, int mode, String failedPackage) throws Exception {
        Exception res = null;
        ContentResolver resolver = context.getContentResolver();
        try {
            resetDeviceConfig(context, mode, failedPackage);
        } catch (Exception e) {
            res = new RuntimeException("Failed to reset config settings", e);
        }
        try {
            Settings.Global.resetToDefaultsAsUser(resolver, null, mode, 0);
        } catch (Exception e2) {
            res = new RuntimeException("Failed to reset global settings", e2);
        }
        for (int userId : getAllUserIds()) {
            try {
                Settings.Secure.resetToDefaultsAsUser(resolver, null, mode, userId);
            } catch (Exception e3) {
                res = new RuntimeException("Failed to reset secure settings for " + userId, e3);
            }
        }
        if (res != null) {
            throw res;
        }
    }

    private static void resetDeviceConfig(Context context, int resetMode, String failedPackage) {
        if (!shouldPerformScopedResets() || failedPackage == null) {
            DeviceConfig.resetToDefaults(resetMode, (String) null);
        } else {
            performScopedReset(context, resetMode, failedPackage);
        }
    }

    private static boolean shouldPerformScopedResets() {
        int rescueLevel = MathUtils.constrain(SystemProperties.getInt(PROP_RESCUE_LEVEL, 0), 0, 4);
        return rescueLevel <= 2;
    }

    private static void performScopedReset(Context context, int resetMode, String failedPackage) {
        RescuePartyObserver rescuePartyObserver = RescuePartyObserver.getInstance(context);
        Set<String> affectedNamespaces = rescuePartyObserver.getAffectedNamespaceSet(failedPackage);
        if (affectedNamespaces == null) {
            DeviceConfig.resetToDefaults(resetMode, (String) null);
            return;
        }
        Slog.w(TAG, "Performing scoped reset for package: " + failedPackage + ", affected namespaces: " + Arrays.toString(affectedNamespaces.toArray()));
        Iterator<String> it = affectedNamespaces.iterator();
        while (it.hasNext()) {
            DeviceConfig.resetToDefaults(resetMode, it.next());
        }
    }

    public static class RescuePartyObserver implements PackageWatchdog.PackageHealthObserver {
        static RescuePartyObserver sRescuePartyObserver;
        private final Context mContext;
        private final Map<String, Set<String>> mCallingPackageNamespaceSetMap = new HashMap();
        private final Map<String, Set<String>> mNamespaceCallingPackageSetMap = new HashMap();

        private RescuePartyObserver(Context context) {
            this.mContext = context;
        }

        public static RescuePartyObserver getInstance(Context context) {
            RescuePartyObserver rescuePartyObserver;
            synchronized (RescuePartyObserver.class) {
                if (sRescuePartyObserver == null) {
                    sRescuePartyObserver = new RescuePartyObserver(context);
                }
                rescuePartyObserver = sRescuePartyObserver;
            }
            return rescuePartyObserver;
        }

        static void reset() {
            synchronized (RescuePartyObserver.class) {
                sRescuePartyObserver = null;
            }
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public int onHealthCheckFailed(VersionedPackage failedPackage, int failureReason) {
            if (RescueParty.isDisabled()) {
                return 0;
            }
            if (failureReason == 3 || failureReason == 4) {
                return RescueParty.mapRescueLevelToUserImpact(RescueParty.getNextRescueLevel());
            }
            return 0;
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public boolean execute(VersionedPackage failedPackage, int failureReason) {
            if (RescueParty.isDisabled()) {
                return false;
            }
            if (failureReason != 3 && failureReason != 4) {
                return false;
            }
            int triggerUid = RescueParty.getPackageUid(this.mContext, failedPackage.getPackageName());
            RescueParty.incrementRescueLevel(triggerUid);
            RescueParty.executeRescueLevel(this.mContext, failedPackage == null ? null : failedPackage.getPackageName());
            return true;
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public boolean isPersistent() {
            return true;
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public boolean mayObservePackage(String packageName) {
            PackageManager pm = this.mContext.getPackageManager();
            try {
                if (pm.getModuleInfo(packageName, 0) != null) {
                    return true;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            try {
                ApplicationInfo info = pm.getApplicationInfo(packageName, 0);
                return (info.flags & 9) == 9;
            } catch (PackageManager.NameNotFoundException e2) {
                return false;
            }
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public int onBootLoop() {
            if (!RescueParty.isDisabled()) {
                return RescueParty.mapRescueLevelToUserImpact(RescueParty.getNextRescueLevel());
            }
            return 0;
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public boolean executeBootLoopMitigation() {
            if (RescueParty.isDisabled()) {
                return false;
            }
            RescueParty.incrementRescueLevel(0);
            RescueParty.executeRescueLevel(this.mContext, null);
            return true;
        }

        @Override // com.android.server.PackageWatchdog.PackageHealthObserver
        public String getName() {
            return RescueParty.NAME;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void recordDeviceConfigAccess(String callingPackage, String namespace) {
            Set<String> namespaceSet = this.mCallingPackageNamespaceSetMap.get(callingPackage);
            if (namespaceSet == null) {
                namespaceSet = new ArraySet();
                this.mCallingPackageNamespaceSetMap.put(callingPackage, namespaceSet);
            }
            namespaceSet.add(namespace);
            Set<String> callingPackageSet = this.mNamespaceCallingPackageSetMap.get(namespace);
            if (callingPackageSet == null) {
                callingPackageSet = new ArraySet();
            }
            callingPackageSet.add(callingPackage);
            this.mNamespaceCallingPackageSetMap.put(namespace, callingPackageSet);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized Set<String> getAffectedNamespaceSet(String failedPackage) {
            return this.mCallingPackageNamespaceSetMap.get(failedPackage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized Set<String> getCallingPackagesSet(String namespace) {
            return this.mNamespaceCallingPackageSetMap.get(namespace);
        }
    }

    private static int[] getAllUserIds() {
        int[] userIds = {0};
        try {
            for (File file : FileUtils.listFilesOrEmpty(Environment.getDataSystemDeDirectory())) {
                try {
                    int userId = Integer.parseInt(file.getName());
                    if (userId != 0) {
                        userIds = ArrayUtils.appendInt(userIds, userId);
                    }
                } catch (NumberFormatException e) {
                }
            }
        } catch (Throwable t) {
            Slog.w(TAG, "Trouble discovering users", t);
        }
        return userIds;
    }

    private static boolean isUsbActive() {
        if (SystemProperties.getBoolean(PROP_VIRTUAL_DEVICE, false)) {
            Slog.v(TAG, "Assuming virtual device is connected over USB");
            return true;
        }
        try {
            String state = FileUtils.readTextFile(new File("/sys/class/android_usb/android0/state"), 128, "");
            return "CONFIGURED".equals(state.trim());
        } catch (Throwable t) {
            Slog.w(TAG, "Failed to determine if device was on USB", t);
            return false;
        }
    }

    private static String levelToString(int level) {
        if (level == 0) {
            return "NONE";
        }
        if (level == 1) {
            return "RESET_SETTINGS_UNTRUSTED_DEFAULTS";
        }
        if (level == 2) {
            return "RESET_SETTINGS_UNTRUSTED_CHANGES";
        }
        if (level == 3) {
            return "RESET_SETTINGS_TRUSTED_DEFAULTS";
        }
        if (level == 4) {
            return "FACTORY_RESET";
        }
        return Integer.toString(level);
    }
}
