package com.android.server.utils;

import android.provider.DeviceConfig;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceConfigInterface {
    public static final DeviceConfigInterface REAL = new DeviceConfigInterface() { // from class: com.android.server.utils.DeviceConfigInterface.1
        @Override // com.android.server.utils.DeviceConfigInterface
        public String getProperty(String namespace, String name) {
            return DeviceConfig.getProperty(namespace, name);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public String getString(String namespace, String name, String defaultValue) {
            return DeviceConfig.getString(namespace, name, defaultValue);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public int getInt(String namespace, String name, int defaultValue) {
            return DeviceConfig.getInt(namespace, name, defaultValue);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public long getLong(String namespace, String name, long defaultValue) {
            return DeviceConfig.getLong(namespace, name, defaultValue);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public boolean getBoolean(String namespace, String name, boolean defaultValue) {
            return DeviceConfig.getBoolean(namespace, name, defaultValue);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public float getFloat(String namespace, String name, float defaultValue) {
            return DeviceConfig.getFloat(namespace, name, defaultValue);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public void addOnPropertiesChangedListener(String namespace, Executor executor, DeviceConfig.OnPropertiesChangedListener listener) {
            DeviceConfig.addOnPropertiesChangedListener(namespace, executor, listener);
        }

        @Override // com.android.server.utils.DeviceConfigInterface
        public void removeOnPropertiesChangedListener(DeviceConfig.OnPropertiesChangedListener listener) {
            DeviceConfig.removeOnPropertiesChangedListener(listener);
        }
    };

    void addOnPropertiesChangedListener(String str, Executor executor, DeviceConfig.OnPropertiesChangedListener onPropertiesChangedListener);

    boolean getBoolean(String str, String str2, boolean z);

    float getFloat(String str, String str2, float f);

    int getInt(String str, String str2, int i);

    long getLong(String str, String str2, long j);

    String getProperty(String str, String str2);

    String getString(String str, String str2, String str3);

    void removeOnPropertiesChangedListener(DeviceConfig.OnPropertiesChangedListener onPropertiesChangedListener);
}
