package com.mega.nexus.app;

import android.os.RemoteException;
import android.util.Log;
import com.mega.nexus.MegaNexusManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaNexusUtil extends MegaNexusManager {
    public static void disableSystemUIGesture(boolean z) {
        try {
            if (getNexusService() == null) {
                Log.e(MegaNexusManager.TAG, "disableSystemUIGesture in ReflectionVersion is no Implemented");
            } else {
                getNexusService().disableSystemUIGesture(z);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static void disableFivePointerGesture(boolean z) {
        try {
            if (getNexusService() == null) {
                Log.e(MegaNexusManager.TAG, "disableFivePointerGesture in ReflectionVersion is no Implemented");
            } else {
                getNexusService().disableFivePointerGesture(z);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static void disableSystemUIGestureByDisplay(boolean z, int i) {
        try {
            if (getNexusService() == null) {
                Log.e(MegaNexusManager.TAG, "disableSystemUIGestureByDisplay not Implemented for reflection");
            } else {
                getNexusService().disableSystemUIGestureByDisplay(z, i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public static void disableFivePointerGestureByDisplay(boolean z, int i) {
        try {
            if (getNexusService() == null) {
                Log.e(MegaNexusManager.TAG, "disableFivePointerGestureByDisplay not Implemented for reflection");
            } else {
                getNexusService().disableFivePointerGestureByDisplay(z, i);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
