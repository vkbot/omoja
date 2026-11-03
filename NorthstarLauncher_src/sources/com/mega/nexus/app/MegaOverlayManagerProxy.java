package com.mega.nexus.app;

import android.content.om.IOverlayManager;
import android.os.RemoteException;
import android.os.ServiceManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaOverlayManagerProxy {
    private static final String TAG = "MegaOverlayManager";
    IOverlayManager mOverlayManager;

    private static final class Holder {
        private static final MegaOverlayManagerProxy INSTANCE = new MegaOverlayManagerProxy();

        private Holder() {
        }
    }

    private MegaOverlayManagerProxy() {
        this.mOverlayManager = IOverlayManager.Stub.asInterface(ServiceManager.getService("overlay"));
    }

    public static MegaOverlayManagerProxy getInstance() {
        return Holder.INSTANCE;
    }

    public boolean setOverlayEnabled(String str, boolean z, int i) throws RemoteException {
        return this.mOverlayManager.setEnabled(str, z, i);
    }

    public boolean setOverlayEnabledExclusive(String str, boolean z, int i) throws RemoteException {
        return this.mOverlayManager.setEnabledExclusive(str, z, i);
    }
}
