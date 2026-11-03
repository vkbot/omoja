package com.mega.nexus.net.wifi;

import android.net.wifi.WifiInfo;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWifiInfo {
    public static final int INVALID_RSSI = -127;

    public static boolean isEphemeral(WifiInfo wifiInfo) {
        return wifiInfo.isEphemeral();
    }

    public static int getScore(WifiInfo wifiInfo) {
        return MegaWifiInfoAdapter.getScore(wifiInfo);
    }

    public static double getTxSuccessRate(WifiInfo wifiInfo) {
        return MegaWifiInfoAdapter.getTxSuccessRate(wifiInfo);
    }

    public static double getTxRetriesRate(WifiInfo wifiInfo) {
        return MegaWifiInfoAdapter.getTxRetriesRate(wifiInfo);
    }

    public static double getTxBadRate(WifiInfo wifiInfo) {
        return MegaWifiInfoAdapter.getTxBadRate(wifiInfo);
    }

    public static double getRxSuccessRate(WifiInfo wifiInfo) {
        return MegaWifiInfoAdapter.getRxSuccessRate(wifiInfo);
    }

    public static boolean isPasspointAp(WifiInfo wifiInfo) {
        return wifiInfo.isPasspointAp();
    }

    public static boolean isOsuAp(WifiInfo wifiInfo) {
        return wifiInfo.isOsuAp();
    }

    public static String getPasspointFqdn(WifiInfo wifiInfo) {
        return wifiInfo.getPasspointFqdn();
    }

    public static String getPasspointProviderFriendlyName(WifiInfo wifiInfo) {
        return wifiInfo.getPasspointProviderFriendlyName();
    }
}
