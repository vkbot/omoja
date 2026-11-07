package com.android.server.am;

import android.app.ActivityThread;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.provider.DeviceConfig;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class CoreSettingsObserver extends ContentObserver {
    private final ActivityManagerService mActivityManagerService;
    private final Bundle mCoreSettings;
    private static final String LOG_TAG = CoreSettingsObserver.class.getSimpleName();
    static final Map<String, Class<?>> sSecureSettingToTypeMap = new HashMap();
    static final Map<String, Class<?>> sSystemSettingToTypeMap = new HashMap();
    static final Map<String, Class<?>> sGlobalSettingToTypeMap = new HashMap();
    static final List<DeviceConfigEntry> sDeviceConfigEntries = new ArrayList();

    static {
        sSecureSettingToTypeMap.put("long_press_timeout", Integer.TYPE);
        sSecureSettingToTypeMap.put("multi_press_timeout", Integer.TYPE);
        sSystemSettingToTypeMap.put("time_12_24", String.class);
        sGlobalSettingToTypeMap.put("debug_view_attributes", Integer.TYPE);
        sGlobalSettingToTypeMap.put("debug_view_attributes_application_package", String.class);
        sGlobalSettingToTypeMap.put("angle_debug_package", String.class);
        sGlobalSettingToTypeMap.put("angle_gl_driver_all_angle", String.class);
        sGlobalSettingToTypeMap.put("angle_gl_driver_selection_pkgs", String.class);
        sGlobalSettingToTypeMap.put("angle_gl_driver_selection_values", String.class);
        sGlobalSettingToTypeMap.put("angle_whitelist", String.class);
        sGlobalSettingToTypeMap.put("show_angle_in_use_dialog_box", String.class);
        sGlobalSettingToTypeMap.put("enable_gpu_debug_layers", Integer.TYPE);
        sGlobalSettingToTypeMap.put("gpu_debug_app", String.class);
        sGlobalSettingToTypeMap.put("gpu_debug_layers", String.class);
        sGlobalSettingToTypeMap.put("gpu_debug_layers_gles", String.class);
        sGlobalSettingToTypeMap.put("gpu_debug_layer_app", String.class);
        sGlobalSettingToTypeMap.put("game_driver_all_apps", Integer.TYPE);
        sGlobalSettingToTypeMap.put("game_driver_opt_in_apps", String.class);
        sGlobalSettingToTypeMap.put("game_driver_prerelease_opt_in_apps", String.class);
        sGlobalSettingToTypeMap.put("game_driver_opt_out_apps", String.class);
        sGlobalSettingToTypeMap.put("game_driver_blacklist", String.class);
        sGlobalSettingToTypeMap.put("game_driver_whitelist", String.class);
        sGlobalSettingToTypeMap.put("game_driver_blacklists", String.class);
        sGlobalSettingToTypeMap.put("game_driver_sphal_libraries", String.class);
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__enable_cursor_drag_from_anywhere", "widget__enable_cursor_drag_from_anywhere", Boolean.TYPE, true));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__min_angle_from_vertical_to_start_cursor_drag", "widget__min_angle_from_vertical_to_start_cursor_drag", Integer.TYPE, 45));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__finger_to_cursor_distance", "widget__finger_to_cursor_distance", Integer.TYPE, -1));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__enable_insertion_handle_gestures", "widget__enable_insertion_handle_gestures", Boolean.TYPE, false));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__insertion_handle_delta_height", "widget__insertion_handle_delta_height", Integer.TYPE, 25));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__insertion_handle_opacity", "widget__insertion_handle_opacity", Integer.TYPE, 50));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__enable_new_magnifier", "widget__enable_new_magnifier", Boolean.TYPE, false));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__magnifier_zoom_factor", "widget__magnifier_zoom_factor", Float.TYPE, Float.valueOf(1.5f)));
        sDeviceConfigEntries.add(new DeviceConfigEntry("widget", "CursorControlFeature__magnifier_aspect_ratio", "widget__magnifier_aspect_ratio", Float.TYPE, Float.valueOf(5.5f)));
    }

    private static class DeviceConfigEntry<T> {
        String coreSettingKey;
        T defaultValue;
        String flag;
        String namespace;
        Class<T> type;

        DeviceConfigEntry(String namespace, String flag, String coreSettingKey, Class<T> type, T defaultValue) {
            this.namespace = namespace;
            this.flag = flag;
            this.coreSettingKey = coreSettingKey;
            this.type = type;
            Objects.requireNonNull(defaultValue);
            this.defaultValue = defaultValue;
        }
    }

    public CoreSettingsObserver(ActivityManagerService activityManagerService) {
        super(activityManagerService.mHandler);
        this.mCoreSettings = new Bundle();
        this.mActivityManagerService = activityManagerService;
        beginObserveCoreSettings();
        sendCoreSettings();
    }

    public Bundle getCoreSettingsLocked() {
        return (Bundle) this.mCoreSettings.clone();
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean selfChange) {
        synchronized (this.mActivityManagerService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                sendCoreSettings();
            } finally {
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void sendCoreSettings() {
        populateSettings(this.mCoreSettings, sSecureSettingToTypeMap);
        populateSettings(this.mCoreSettings, sSystemSettingToTypeMap);
        populateSettings(this.mCoreSettings, sGlobalSettingToTypeMap);
        populateSettingsFromDeviceConfig();
        this.mActivityManagerService.onCoreSettingsChange(this.mCoreSettings);
    }

    private void beginObserveCoreSettings() {
        for (String setting : sSecureSettingToTypeMap.keySet()) {
            Uri uri = Settings.Secure.getUriFor(setting);
            this.mActivityManagerService.mContext.getContentResolver().registerContentObserver(uri, false, this);
        }
        for (String setting2 : sSystemSettingToTypeMap.keySet()) {
            Uri uri2 = Settings.System.getUriFor(setting2);
            this.mActivityManagerService.mContext.getContentResolver().registerContentObserver(uri2, false, this);
        }
        for (String setting3 : sGlobalSettingToTypeMap.keySet()) {
            Uri uri3 = Settings.Global.getUriFor(setting3);
            this.mActivityManagerService.mContext.getContentResolver().registerContentObserver(uri3, false, this);
        }
        HashSet<String> deviceConfigNamespaces = new HashSet<>();
        for (DeviceConfigEntry entry : sDeviceConfigEntries) {
            if (!deviceConfigNamespaces.contains(entry.namespace)) {
                DeviceConfig.addOnPropertiesChangedListener(entry.namespace, ActivityThread.currentApplication().getMainExecutor(), new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.am.-$$Lambda$CoreSettingsObserver$IEGGdL9JzvkvDo5ePJ2OAMEVAVs
                    public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                        this.f$0.lambda$beginObserveCoreSettings$0$CoreSettingsObserver(properties);
                    }
                });
                deviceConfigNamespaces.add(entry.namespace);
            }
        }
    }

    public /* synthetic */ void lambda$beginObserveCoreSettings$0$CoreSettingsObserver(DeviceConfig.Properties prop) {
        onChange(false);
    }

    void populateSettings(Bundle snapshot, Map<String, Class<?>> map) {
        String value;
        Context context = this.mActivityManagerService.mContext;
        for (Map.Entry<String, Class<?>> entry : map.entrySet()) {
            String setting = entry.getKey();
            if (map == sSecureSettingToTypeMap) {
                value = Settings.Secure.getString(context.getContentResolver(), setting);
            } else if (map == sSystemSettingToTypeMap) {
                value = Settings.System.getString(context.getContentResolver(), setting);
            } else {
                value = Settings.Global.getString(context.getContentResolver(), setting);
            }
            if (value == null) {
                snapshot.remove(setting);
            } else {
                Class<?> type = entry.getValue();
                if (type == String.class) {
                    snapshot.putString(setting, value);
                } else if (type == Integer.TYPE) {
                    snapshot.putInt(setting, Integer.parseInt(value));
                } else if (type == Float.TYPE) {
                    snapshot.putFloat(setting, Float.parseFloat(value));
                } else if (type == Long.TYPE) {
                    snapshot.putLong(setting, Long.parseLong(value));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void populateSettingsFromDeviceConfig() {
        for (DeviceConfigEntry deviceConfigEntry : sDeviceConfigEntries) {
            if (deviceConfigEntry.type == String.class) {
                this.mCoreSettings.putString(deviceConfigEntry.coreSettingKey, DeviceConfig.getString(deviceConfigEntry.namespace, deviceConfigEntry.flag, (String) deviceConfigEntry.defaultValue));
            } else if (deviceConfigEntry.type == Integer.TYPE) {
                this.mCoreSettings.putInt(deviceConfigEntry.coreSettingKey, DeviceConfig.getInt(deviceConfigEntry.namespace, deviceConfigEntry.flag, ((Integer) deviceConfigEntry.defaultValue).intValue()));
            } else if (deviceConfigEntry.type == Float.TYPE) {
                this.mCoreSettings.putFloat(deviceConfigEntry.coreSettingKey, DeviceConfig.getFloat(deviceConfigEntry.namespace, deviceConfigEntry.flag, ((Float) deviceConfigEntry.defaultValue).floatValue()));
            } else if (deviceConfigEntry.type == Long.TYPE) {
                this.mCoreSettings.putLong(deviceConfigEntry.coreSettingKey, DeviceConfig.getLong(deviceConfigEntry.namespace, deviceConfigEntry.flag, ((Long) deviceConfigEntry.defaultValue).longValue()));
            } else if (deviceConfigEntry.type == Boolean.TYPE) {
                this.mCoreSettings.putInt(deviceConfigEntry.coreSettingKey, DeviceConfig.getBoolean(deviceConfigEntry.namespace, deviceConfigEntry.flag, ((Boolean) deviceConfigEntry.defaultValue).booleanValue()) ? 1 : 0);
            }
        }
    }
}
