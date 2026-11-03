package com.mega.nexus.view;

import android.os.RemoteException;
import com.mega.nexus.MegaNexusManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWindowManager extends MegaNexusManager {
    private static final String WINDOW_MANAGER_SERVICE_CLASS_NAME = "android.view.IWindowManager";

    private static final class Holder {
        private static final MegaWindowManager INSTANCE = new MegaWindowManager();

        private Holder() {
        }
    }

    private MegaWindowManager() {
        setMethodName("android.view.WindowManagerGlobal", "getWindowManagerService");
    }

    public static MegaWindowManager getInstance() {
        return Holder.INSTANCE;
    }

    public void registerUserActivityListener(IUserActivityListener iUserActivityListener) {
        try {
            if (getNexusService() != null) {
                getNexusService().registerUserActivityListener(iUserActivityListener);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unRegisterUserActivityListener(IUserActivityListener iUserActivityListener) {
        try {
            if (getNexusService() != null) {
                getNexusService().unRegisterUserActivityListener(iUserActivityListener);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
