package com.mega.nexus.media;

import android.os.RemoteException;
import android.util.Log;
import com.mega.nexus.MegaNexusManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaCarAudioManager extends MegaNexusManager {

    private static final class Holder {
        private static final MegaCarAudioManager INSTANCE = new MegaCarAudioManager();

        private Holder() {
        }
    }

    public static MegaCarAudioManager getInstance() {
        return Holder.INSTANCE;
    }

    public List<String> getCurrentFocusPackages(int i) {
        if (getNexusService() == null) {
            return new ArrayList();
        }
        try {
            return getNexusService().getCurrentFocusPackages(i);
        } catch (RemoteException unused) {
            Log.e(MegaNexusManager.TAG, "failed to invoke getCurrentFocusPackages");
            return new ArrayList();
        }
    }

    public int setGroupMute(int i, boolean z) {
        if (getNexusService() == null) {
            Log.e(MegaNexusManager.TAG, "failed to get nexus service");
            return -1;
        }
        try {
            return getNexusService().setGroupMute(i, z);
        } catch (RemoteException unused) {
            Log.e(MegaNexusManager.TAG, "failed to invoke setGroupMute");
            return -1;
        }
    }

    public boolean getGroupMute(int i) {
        if (getNexusService() == null) {
            Log.e(MegaNexusManager.TAG, "failed to get nexus service");
            return false;
        }
        try {
            return getNexusService().getGroupMute(i);
        } catch (RemoteException unused) {
            Log.e(MegaNexusManager.TAG, "failed to invoke getGroupMute");
            return false;
        }
    }

    public int setOneKeyMute(boolean z) {
        if (getNexusService() == null) {
            Log.e(MegaNexusManager.TAG, "failed to get nexus service");
            return -1;
        }
        try {
            return getNexusService().setOneKeyMute(z);
        } catch (RemoteException unused) {
            Log.e(MegaNexusManager.TAG, "failed to invoke setOneKeyMute");
            return -1;
        }
    }

    public boolean isOneKeyMute() {
        if (getNexusService() == null) {
            Log.e(MegaNexusManager.TAG, "failed to get nexus service");
            return false;
        }
        try {
            return getNexusService().isOneKeyMute();
        } catch (RemoteException unused) {
            Log.e(MegaNexusManager.TAG, "failed to invoke isOneKeyMute");
            return false;
        }
    }

    public List<String> getCurrentDuckFocusPackages(int i) {
        if (getNexusService() == null) {
            return new ArrayList();
        }
        try {
            return getNexusService().getCurrentDuckFocusPackages(i);
        } catch (RemoteException unused) {
            Log.e(MegaNexusManager.TAG, "failed to invoke getCurrentDuckFocusPackages");
            return new ArrayList();
        }
    }
}
