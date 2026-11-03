package com.mega.nexus.net.wifi;

import android.net.Network;
import android.net.wifi.ScanResult;
import android.net.wifi.SoftApConfiguration;
import android.net.wifi.WifiClient;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.net.wifi.hotspot2.ProvisioningCallback;
import android.os.Handler;
import android.util.Pair;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWifiManager {
    public static final String CONFIGURED_NETWORKS_CHANGED_ACTION = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE";
    public static final String EXTRA_WIFI_AP_STATE = "wifi_state";
    public static final int PASSPOINT_HOME_NETWORK = 0;
    public static final int PASSPOINT_ROAMING_NETWORK = 1;
    public static final String WIFI_AP_STATE_CHANGED_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    public static final int WIFI_AP_STATE_DISABLED = 11;
    public static final int WIFI_AP_STATE_DISABLING = 10;
    public static final int WIFI_AP_STATE_ENABLED = 13;
    public static final int WIFI_AP_STATE_ENABLING = 12;
    public static final int WIFI_AP_STATE_FAILED = 14;
    public static final int RSSI_LEVELS = MegaWifiManagerAdapter.RSSI_LEVELS;
    public static final String LINK_CONFIGURATION_CHANGED_ACTION = MegaWifiManagerAdapter.LINK_CONFIGURATION_CHANGED_ACTION;

    public interface ActionListener extends WifiManager.ActionListener {
    }

    public interface SoftApCallback extends WifiManager.SoftApCallback {
    }

    public static void factoryReset(WifiManager wifiManager) {
        wifiManager.factoryReset();
    }

    public static boolean setWifiApConfiguration(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        return wifiManager.setWifiApConfiguration(wifiConfiguration);
    }

    public static WifiConfiguration getWifiApConfiguration(WifiManager wifiManager) {
        return wifiManager.getWifiApConfiguration();
    }

    public static void connect(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        wifiManager.connect(wifiConfiguration, null);
    }

    public static void connect(WifiManager wifiManager, WifiConfiguration wifiConfiguration, ActionListener actionListener) {
        wifiManager.connect(wifiConfiguration, actionListener);
    }

    public static void connect(WifiManager wifiManager, int i, ActionListener actionListener) {
        wifiManager.connect(i, actionListener);
    }

    public static void forget(WifiManager wifiManager, int i) {
        wifiManager.forget(i, null);
    }

    public static void forget(WifiManager wifiManager, int i, ActionListener actionListener) {
        wifiManager.forget(i, actionListener);
    }

    public static void disableEphemeralNetwork(WifiManager wifiManager, String str) {
        wifiManager.disableEphemeralNetwork(str);
    }

    public static void save(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        wifiManager.save(wifiConfiguration, null);
    }

    public static void save(WifiManager wifiManager, WifiConfiguration wifiConfiguration, ActionListener actionListener) {
        wifiManager.save(wifiConfiguration, actionListener);
    }

    public static boolean getHasEverConnected(WifiConfiguration wifiConfiguration) {
        return MegaWifiManagerAdapter.getHasEverConnected(wifiConfiguration);
    }

    public static int getWifiApState(WifiManager wifiManager) {
        return wifiManager.getWifiApState();
    }

    public static boolean isWifiApEnabled(WifiManager wifiManager) {
        return wifiManager.isWifiApEnabled();
    }

    public static void setWifiApConfigurationApMax(WifiConfiguration wifiConfiguration, int i) {
        MegaWifiManagerAdapter.setWifiApConfigurationApMax(wifiConfiguration, i);
    }

    public static Network getCurrentNetwork(WifiManager wifiManager) {
        return wifiManager.getCurrentNetwork();
    }

    public static WifiConfiguration getMatchingWifiConfig(WifiManager wifiManager, ScanResult scanResult) {
        return MegaWifiManagerAdapter.getMatchingWifiConfig(wifiManager, scanResult);
    }

    public static void registerSoftApCallback(WifiManager wifiManager, SoftApCallback softApCallback, Handler handler) {
        MegaWifiManagerAdapter.registerSoftApCallback(wifiManager, softApCallback, handler);
    }

    public static void registerSoftApCallback(WifiManager wifiManager, Executor executor, SoftApCallback softApCallback) {
        MegaWifiManagerAdapter.registerSoftApCallback(wifiManager, executor, softApCallback);
    }

    public static void unregisterSoftApCallback(WifiManager wifiManager, SoftApCallback softApCallback) {
        MegaWifiManagerAdapter.unregisterSoftApCallback(wifiManager, softApCallback);
    }

    public static void setClientAllowed(WifiManager wifiManager, WifiClient wifiClient, boolean z) {
        wifiManager.setClientAllowed(wifiClient, z);
    }

    public static boolean isEnhancedOpenSupported(WifiManager wifiManager) {
        return wifiManager.isEnhancedOpenSupported();
    }

    public static boolean isWpa3SaeSupported(WifiManager wifiManager) {
        return wifiManager.isWpa3SaeSupported();
    }

    public static boolean isWpa3SuiteBSupported(WifiManager wifiManager) {
        return wifiManager.isWpa3SuiteBSupported();
    }

    public static Map<OsuProvider, PasspointConfiguration> getMatchingPasspointConfigsForOsuProviders(WifiManager wifiManager, Set<OsuProvider> set) {
        return wifiManager.getMatchingPasspointConfigsForOsuProviders(set);
    }

    public static int getVerboseLoggingLevel(WifiManager wifiManager) {
        return MegaWifiManagerAdapter.getVerboseLoggingLevel(wifiManager);
    }

    public static List<Pair<WifiConfiguration, Map<Integer, List<ScanResult>>>> getAllMatchingWifiConfigs(WifiManager wifiManager, List<ScanResult> list) {
        return wifiManager.getAllMatchingWifiConfigs(list);
    }

    public static Map<OsuProvider, List<ScanResult>> getMatchingOsuProviders(WifiManager wifiManager, List<ScanResult> list) {
        return wifiManager.getMatchingOsuProviders(list);
    }

    public static boolean isEasyConnectSupported(WifiManager wifiManager) {
        return wifiManager.isEasyConnectSupported();
    }

    public static void startSubscriptionProvisioning(WifiManager wifiManager, OsuProvider osuProvider, Executor executor, ProvisioningCallback provisioningCallback) {
        wifiManager.startSubscriptionProvisioning(osuProvider, executor, provisioningCallback);
    }

    public static SoftApConfiguration getSoftApConfiguration(WifiManager wifiManager) {
        return wifiManager.getSoftApConfiguration();
    }

    public static boolean setSoftApConfiguration(WifiManager wifiManager, SoftApConfiguration softApConfiguration) {
        return wifiManager.setSoftApConfiguration(softApConfiguration);
    }
}
