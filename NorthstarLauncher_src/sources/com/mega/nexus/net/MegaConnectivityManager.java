package com.mega.nexus.net;

import android.net.ConnectivityManager;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public class MegaConnectivityManager {
    public static String INTERNET_STATUS_CHANGE_ACTION = MegaConnectivityManagerAdapter.INTERNET_STATUS_CHANGE_ACTION;
    public static final int TETHERING_WIFI = 0;

    public static abstract class MegaOnStartTetheringCallback {
        public void onTetheringFailed() {
        }

        public void onTetheringStarted() {
        }
    }

    public static void factoryReset(ConnectivityManager connectivityManager) {
        connectivityManager.factoryReset();
    }

    public static void stopTethering(ConnectivityManager connectivityManager, int i) {
        connectivityManager.stopTethering(i);
    }

    public static void startTethering(ConnectivityManager connectivityManager, int i, boolean z, Handler handler) {
        connectivityManager.startTethering(i, z, new ConnectivityManager.OnStartTetheringCallback() { // from class: com.mega.nexus.net.MegaConnectivityManager.1
        }, handler);
    }

    public static void startTethering(ConnectivityManager connectivityManager, int i, boolean z, final MegaOnStartTetheringCallback megaOnStartTetheringCallback, Handler handler) {
        connectivityManager.startTethering(i, z, new ConnectivityManager.OnStartTetheringCallback() { // from class: com.mega.nexus.net.MegaConnectivityManager.2
            public void onTetheringStarted() {
                super.onTetheringStarted();
                megaOnStartTetheringCallback.onTetheringStarted();
            }

            public void onTetheringFailed() {
                super.onTetheringFailed();
                megaOnStartTetheringCallback.onTetheringFailed();
            }
        }, handler);
    }

    public static boolean isInternetAvailable(ConnectivityManager connectivityManager) {
        return MegaConnectivityManagerAdapter.isInternetAvailable(connectivityManager);
    }
}
