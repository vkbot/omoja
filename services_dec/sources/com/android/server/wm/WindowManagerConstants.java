package com.android.server.wm;

import android.provider.DeviceConfig;
import com.android.server.pm.PackageManagerService;
import com.android.server.utils.DeviceConfigInterface;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class WindowManagerConstants {
    static final String KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS = "system_gesture_exclusion_log_debounce_millis";
    private static final int MIN_GESTURE_EXCLUSION_LIMIT_DP = 200;
    private final DeviceConfigInterface mDeviceConfig;
    private final WindowManagerGlobalLock mGlobalLock;
    private final DeviceConfig.OnPropertiesChangedListener mListenerAndroid;
    private final DeviceConfig.OnPropertiesChangedListener mListenerWindowManager;
    boolean mSystemGestureExcludedByPreQStickyImmersive;
    int mSystemGestureExclusionLimitDp;
    long mSystemGestureExclusionLogDebounceTimeoutMillis;
    private final Runnable mUpdateSystemGestureExclusionCallback;

    WindowManagerConstants(final WindowManagerService service, DeviceConfigInterface deviceConfig) {
        this(service.mGlobalLock, new Runnable() { // from class: com.android.server.wm.-$$Lambda$WindowManagerConstants$YOsWod8qOtbBnduZqPrYHSwyJ5E
            @Override // java.lang.Runnable
            public final void run() {
                service.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((DisplayContent) obj).updateSystemGestureExclusionLimit();
                    }
                });
            }
        }, deviceConfig);
    }

    WindowManagerConstants(WindowManagerGlobalLock globalLock, Runnable updateSystemGestureExclusionCallback, DeviceConfigInterface deviceConfig) {
        Objects.requireNonNull(globalLock);
        this.mGlobalLock = globalLock;
        Objects.requireNonNull(updateSystemGestureExclusionCallback);
        this.mUpdateSystemGestureExclusionCallback = updateSystemGestureExclusionCallback;
        this.mDeviceConfig = deviceConfig;
        this.mListenerAndroid = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.wm.-$$Lambda$WindowManagerConstants$vqhvZbTPHnj84vQKH9wjAhgVP44
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.onAndroidPropertiesChanged(properties);
            }
        };
        this.mListenerWindowManager = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.wm.-$$Lambda$WindowManagerConstants$H0Vnr9H2xLD72_22unzb68d1fSM
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.onWindowPropertiesChanged(properties);
            }
        };
    }

    void start(Executor executor) {
        this.mDeviceConfig.addOnPropertiesChangedListener(PackageManagerService.PLATFORM_PACKAGE_NAME, executor, this.mListenerAndroid);
        this.mDeviceConfig.addOnPropertiesChangedListener("window_manager", executor, this.mListenerWindowManager);
        updateSystemGestureExclusionLogDebounceMillis();
        updateSystemGestureExclusionLimitDp();
        updateSystemGestureExcludedByPreQStickyImmersive();
    }

    void dispose() {
        this.mDeviceConfig.removeOnPropertiesChangedListener(this.mListenerAndroid);
        this.mDeviceConfig.removeOnPropertiesChangedListener(this.mListenerWindowManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    public void onAndroidPropertiesChanged(DeviceConfig.Properties properties) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                boolean updateSystemGestureExclusionLimit = false;
                for (String name : properties.getKeyset()) {
                    if (name == null) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    byte b = -1;
                    int iHashCode = name.hashCode();
                    if (iHashCode != -1271675449) {
                        if (iHashCode == 316878247 && name.equals("system_gesture_exclusion_limit_dp")) {
                            b = 0;
                        }
                    } else if (name.equals("system_gestures_excluded_by_pre_q_sticky_immersive")) {
                        b = 1;
                    }
                    if (b == 0) {
                        updateSystemGestureExclusionLimitDp();
                        updateSystemGestureExclusionLimit = true;
                    } else if (b == 1) {
                        updateSystemGestureExcludedByPreQStickyImmersive();
                        updateSystemGestureExclusionLimit = true;
                    }
                }
                if (updateSystemGestureExclusionLimit) {
                    this.mUpdateSystemGestureExclusionCallback.run();
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWindowPropertiesChanged(DeviceConfig.Properties properties) {
        synchronized (this.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                for (String name : properties.getKeyset()) {
                    if (name == null) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    byte b = -1;
                    if (name.hashCode() == -125834358 && name.equals(KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS)) {
                        b = 0;
                    }
                    if (b == 0) {
                        updateSystemGestureExclusionLogDebounceMillis();
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private void updateSystemGestureExclusionLogDebounceMillis() {
        this.mSystemGestureExclusionLogDebounceTimeoutMillis = this.mDeviceConfig.getLong("window_manager", KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS, 0L);
    }

    private void updateSystemGestureExclusionLimitDp() {
        this.mSystemGestureExclusionLimitDp = Math.max(200, this.mDeviceConfig.getInt(PackageManagerService.PLATFORM_PACKAGE_NAME, "system_gesture_exclusion_limit_dp", 0));
    }

    private void updateSystemGestureExcludedByPreQStickyImmersive() {
        this.mSystemGestureExcludedByPreQStickyImmersive = this.mDeviceConfig.getBoolean(PackageManagerService.PLATFORM_PACKAGE_NAME, "system_gestures_excluded_by_pre_q_sticky_immersive", false);
    }

    void dump(PrintWriter pw) {
        pw.println("WINDOW MANAGER CONSTANTS (dumpsys window constants):");
        pw.print("  ");
        pw.print(KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS);
        pw.print("=");
        pw.println(this.mSystemGestureExclusionLogDebounceTimeoutMillis);
        pw.print("  ");
        pw.print("system_gesture_exclusion_limit_dp");
        pw.print("=");
        pw.println(this.mSystemGestureExclusionLimitDp);
        pw.print("  ");
        pw.print("system_gestures_excluded_by_pre_q_sticky_immersive");
        pw.print("=");
        pw.println(this.mSystemGestureExcludedByPreQStickyImmersive);
        pw.println();
    }
}
