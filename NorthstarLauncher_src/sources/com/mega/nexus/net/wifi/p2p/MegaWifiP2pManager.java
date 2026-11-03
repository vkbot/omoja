package com.mega.nexus.net.wifi.p2p;

import android.net.wifi.p2p.WifiP2pManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWifiP2pManager {
    public static void setDeviceName(WifiP2pManager wifiP2pManager, WifiP2pManager.Channel channel, String str, WifiP2pManager.ActionListener actionListener) {
        wifiP2pManager.setDeviceName(channel, str, actionListener);
    }
}
