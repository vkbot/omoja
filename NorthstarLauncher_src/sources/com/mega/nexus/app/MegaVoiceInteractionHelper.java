package com.mega.nexus.app;

import android.app.ActivityThread;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.app.IVoiceInteractionManagerService;

/* JADX INFO: loaded from: classes2.dex */
public class MegaVoiceInteractionHelper {
    private static final String TAG = "MegaVoiceInteractionHelper";

    public static void setDisabled(boolean z) {
        IVoiceInteractionManagerService iVoiceInteractionManagerServiceAsInterface = IVoiceInteractionManagerService.Stub.asInterface(ServiceManager.getService("voiceinteraction"));
        if (iVoiceInteractionManagerServiceAsInterface == null) {
            Log.i(TAG, "can not get IVoiceInteractionManagerService!");
            return;
        }
        Log.w(TAG, "IVoiceInteractionManagerService setDisabled: " + z + " by pkg: " + ActivityThread.currentPackageName());
        try {
            iVoiceInteractionManagerServiceAsInterface.setDisabled(z);
        } catch (RemoteException e) {
            Log.w(TAG, "IVoiceInteractionManagerService setDisabled " + z + " error!");
            e.printStackTrace();
        }
    }
}
