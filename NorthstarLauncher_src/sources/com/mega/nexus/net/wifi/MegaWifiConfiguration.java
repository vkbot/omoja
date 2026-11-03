package com.mega.nexus.net.wifi;

import android.net.IpConfiguration;
import android.net.StaticIpConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import java.net.Inet4Address;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public class MegaWifiConfiguration {
    public static final int DISABLED_ASSOCIATION_REJECTION = 1;
    public static final int DISABLED_AUTHENTICATION_FAILURE = 2;
    public static final int DISABLED_BY_WRONG_PASSWORD = 8;
    public static final int DISABLED_DHCP_FAILURE = 3;
    public static final int INVALID_NETWORK_ID = -1;
    public static final int METERED_OVERRIDE_METERED = 1;
    public static final int METERED_OVERRIDE_NONE = 0;
    public static final int NETWORK_SELECTION_ENABLED = 0;
    public static final int NETWORK_SELECTION_PERMANENTLY_DISABLED = 2;
    public static final int NETWORK_SELECTION_TEMPORARY_DISABLED = 1;
    public static final int WPA2_PSK = 4;
    public static final int INVALID_RSSI = MegaWifiConfigurationAdapter.INVALID_RSSI;
    public static final int DISABLED_DNS_FAILURE = MegaWifiConfigurationAdapter.DISABLED_DNS_FAILURE;
    public static final int NETWORK_SELECTION_ENABLE = MegaWifiConfigurationAdapter.NETWORK_SELECTION_ENABLE;
    public static final int NETWORK_SELECTION_DISABLED_MAX = MegaWifiConfigurationAdapter.NETWORK_SELECTION_DISABLED_MAX;
    public static final int STATUS_AP_UNABLE_TO_HANDLE_NEW_STA = MegaWifiConfigurationAdapter.STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
    public static final int AP_BAND_5GHZ = MegaWifiConfigurationAdapter.AP_BAND_5GHZ;
    public static final InetAddress INET4ADDRESS_ANY = Inet4Address.ANY;

    public static class KeyMgmt {
        public static final int OWE = 9;
        public static final int SAE = 8;
        public static final int SUITE_B_192 = 10;
        public static final int WPA2_PSK = 4;
    }

    public static boolean getShare(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.shared;
    }

    public static void setShare(WifiConfiguration wifiConfiguration, boolean z) {
        wifiConfiguration.shared = z;
    }

    public static boolean isMetered(WifiConfiguration wifiConfiguration, WifiInfo wifiInfo) {
        return WifiConfiguration.isMetered(wifiConfiguration, wifiInfo);
    }

    public static int getNetworkSelectionStatus(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null || wifiConfiguration.getNetworkSelectionStatus() == null) {
            return 2;
        }
        return wifiConfiguration.getNetworkSelectionStatus().getNetworkSelectionStatus();
    }

    public static boolean isNetworkEnabled(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.isNetworkEnabled(wifiConfiguration);
    }

    public static boolean isNetworkPermanentlyDisabled(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.isNetworkPermanentlyDisabled(wifiConfiguration);
    }

    public static int getNetworkSelectionDisableReason(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null || wifiConfiguration.getNetworkSelectionStatus() == null) {
            return 0;
        }
        return wifiConfiguration.getNetworkSelectionStatus().getNetworkSelectionDisableReason();
    }

    public static boolean isNotRecommended(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.isNotRecommended(wifiConfiguration);
    }

    public static boolean hasNoInternetAccess(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.hasNoInternetAccess();
    }

    public static int getAssociationStatus(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.getAssociationStatus(wifiConfiguration);
    }

    public static String getNetworkStatusString(WifiConfiguration wifiConfiguration) {
        return (wifiConfiguration == null || wifiConfiguration.getNetworkSelectionStatus() == null) ? "" : wifiConfiguration.getNetworkSelectionStatus().getNetworkStatusString();
    }

    public static long getDisableTime(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null || wifiConfiguration.getNetworkSelectionStatus() == null) {
            return 0L;
        }
        return wifiConfiguration.getNetworkSelectionStatus().getDisableTime();
    }

    public static int getDisableReasonCounter(WifiConfiguration wifiConfiguration, int i) {
        if (wifiConfiguration == null || wifiConfiguration.getNetworkSelectionStatus() == null) {
            return 0;
        }
        return wifiConfiguration.getNetworkSelectionStatus().getDisableReasonCounter(i);
    }

    public static String getNetworkDisableReasonString(WifiConfiguration wifiConfiguration, int i) {
        return MegaWifiConfigurationAdapter.getNetworkDisableReasonString(wifiConfiguration, i);
    }

    public static void setWifiApConfigurationApMax(WifiConfiguration wifiConfiguration, int i) {
        MegaWifiConfigurationAdapter.setWifiApConfigurationApMax(wifiConfiguration, i);
    }

    public static IpConfiguration.IpAssignment getIpAssignment(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.getIpAssignment(wifiConfiguration);
    }

    public static StaticIpConfiguration getStaticIpConfiguration(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.getStaticIpConfiguration(wifiConfiguration);
    }

    public static IpConfiguration getIpConfiguration(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.getIpConfiguration();
    }

    public static void setIpConfiguration(WifiConfiguration wifiConfiguration, IpConfiguration ipConfiguration) {
        wifiConfiguration.setIpConfiguration(ipConfiguration);
    }

    public static void setCaCertificateAliases(WifiConfiguration wifiConfiguration, String[] strArr) {
        MegaWifiConfigurationAdapter.setCaCertificateAliases(wifiConfiguration, strArr);
    }

    public static String[] getCaCertificateAliases(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.enterpriseConfig.getCaCertificateAliases();
    }

    public static void setClientCertificateAlias(WifiConfiguration wifiConfiguration, String str) {
        wifiConfiguration.enterpriseConfig.setClientCertificateAlias(str);
    }

    public static String getClientCertificateAlias(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.enterpriseConfig.getClientCertificateAlias();
    }

    public static void setCaCertificateAlias(WifiConfiguration wifiConfiguration, String str) {
        MegaWifiConfigurationAdapter.setCaCertificateAlias(wifiConfiguration, str);
    }

    public static void setCaPath(WifiConfiguration wifiConfiguration, String str) {
        wifiConfiguration.enterpriseConfig.setCaPath(str);
    }

    public static String getCaPath(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.enterpriseConfig.getCaPath();
    }

    public static int getAuthType(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.getAuthType();
    }

    public static int getMeteredOverride(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.meteredOverride;
    }

    public static String getCreatorName(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.creatorName;
    }

    public static int getCreatorUid(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.creatorUid;
    }

    public static void setRquirePMF(WifiConfiguration wifiConfiguration, boolean z) {
        MegaWifiConfigurationAdapter.setRquirePMF(wifiConfiguration, z);
    }

    public static boolean isMeteredHint(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.meteredHint;
    }

    public static boolean isEphemeral(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.isEphemeral();
    }

    public static boolean selfAdded(WifiConfiguration wifiConfiguration) {
        return MegaWifiConfigurationAdapter.selfAdded(wifiConfiguration);
    }

    public static int numAssociation(WifiConfiguration wifiConfiguration) {
        return wifiConfiguration.numAssociation;
    }

    public static WifiConfiguration buildNewConfig() {
        return MegaWifiConfigurationAdapter.buildNewConfig();
    }
}
