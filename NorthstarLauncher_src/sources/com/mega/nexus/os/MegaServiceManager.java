package com.mega.nexus.os;

import android.os.IBinder;
import android.os.ServiceManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaServiceManager {
    public static IBinder getService(String str) {
        return ServiceManager.getService(str);
    }

    public static void addService(String str, IBinder iBinder) {
        ServiceManager.addService(str, iBinder);
    }
}
