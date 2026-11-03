package com.mega.nexus;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.mega.nexus.os.MegaServiceManager;
import com.mega.nexus.util.ReflectionHelpers;

/* JADX INFO: loaded from: classes2.dex */
public class MegaNexusManager {
    public static final String MEGA_NEXUS_SERVICE_NAME = "com.mega.NexusService";
    private static final long NEXUS_SERVICE_BINDER_POLLING_INTERVAL_MS = 30;
    private static final long NEXUS_SERVICE_BINDER_POLLING_MAX_RETRY = 100;
    public static final String TAG = "MegaNexusManager";
    private static IBinder sBinder;
    private static Object sClazz;
    private static IBinder.DeathRecipient sDeathRecipient = new IBinder.DeathRecipient() { // from class: com.mega.nexus.MegaNexusManager.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.e(MegaNexusManager.TAG, "binderDied");
            if (MegaNexusManager.sBinder != null) {
                MegaNexusManager.sBinder.unlinkToDeath(this, 0);
            }
            IMegaNexusManager unused = MegaNexusManager.sIMegaNexusManager = null;
            Object unused2 = MegaNexusManager.sReflectService = null;
        }
    };
    private static IMegaNexusManager sIMegaNexusManager;
    private static String sMethodName;
    private static Object sReflectService;

    public void setMethodName(Object obj, String str) {
        sClazz = obj;
        sMethodName = str;
    }

    private static IMegaNexusManager getService() {
        int i = 0;
        while (true) {
            IBinder service = MegaServiceManager.getService(MEGA_NEXUS_SERVICE_NAME);
            sBinder = service;
            if (service != null) {
                try {
                    service.linkToDeath(sDeathRecipient, 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                return IMegaNexusManager.Stub.asInterface(sBinder);
            }
            i++;
            if (i > NEXUS_SERVICE_BINDER_POLLING_MAX_RETRY) {
                Log.e(TAG, "cannot get car_service, waited for car service (ms):3000", new RuntimeException("Null nexus service!"));
                return null;
            }
            try {
                Thread.sleep(NEXUS_SERVICE_BINDER_POLLING_INTERVAL_MS);
            } catch (InterruptedException unused) {
                Log.e(TAG, "interrupted while waiting for car_service", new RuntimeException("Get nexus service interrupted!"));
                return null;
            }
        }
    }

    public static synchronized IMegaNexusManager getNexusService() {
        if (sIMegaNexusManager == null) {
            sIMegaNexusManager = getService();
        }
        return sIMegaNexusManager;
    }

    private static Object getReflectInstance() {
        Object obj = sClazz;
        if (obj instanceof String) {
            return ReflectionHelpers.callStaticMethod((String) obj, sMethodName, (ReflectionHelpers.ClassParameter<?>[]) new ReflectionHelpers.ClassParameter[0]);
        }
        return ReflectionHelpers.callStaticMethod((Class<?>) obj, sMethodName, (ReflectionHelpers.ClassParameter<?>[]) new ReflectionHelpers.ClassParameter[0]);
    }

    public static synchronized Object getReflectService() {
        if (sReflectService == null) {
            sReflectService = getReflectInstance();
        }
        return sReflectService;
    }
}
