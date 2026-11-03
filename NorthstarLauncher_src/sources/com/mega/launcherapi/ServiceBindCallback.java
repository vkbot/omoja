package com.mega.launcherapi;

import android.content.ComponentName;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceBindCallback {
    default void onBindingDied(ComponentName componentName) {
    }

    default void onNullBinding(ComponentName componentName) {
    }

    void onServiceConnected(ComponentName componentName, IBinder iBinder);

    void onServiceDisconnected(ComponentName componentName);
}
