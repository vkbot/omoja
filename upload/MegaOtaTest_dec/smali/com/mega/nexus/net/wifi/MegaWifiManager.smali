.class public Lcom/mega/nexus/net/wifi/MegaWifiManager;
.super Ljava/lang/Object;
.source "MegaWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;,
        Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String;

.field public static final PASSPOINT_HOME_NETWORK:I = 0x0

.field public static final PASSPOINT_ROAMING_NETWORK:I = 0x1

.field public static final RSSI_LEVELS:I

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->RSSI_LEVELS:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiManager;->RSSI_LEVELS:I

    .line 39
    sget-object v0, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/mega/nexus/net/wifi/MegaWifiManager;->LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/net/wifi/WifiManager;ILcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "networkId"    # I
    .param p2, "listener"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 73
    return-void
.end method

.method public static connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 61
    return-void
.end method

.method public static connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 67
    return-void
.end method

.method public static disableEphemeralNetwork(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static factoryReset(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 46
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 47
    return-void
.end method

.method public static forget(Landroid/net/wifi/WifiManager;I)V
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "netId"    # I

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 81
    return-void
.end method

.method public static forget(Landroid/net/wifi/WifiManager;ILcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "netId"    # I
    .param p2, "listener"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 87
    return-void
.end method

.method public static getAllMatchingWifiConfigs(Landroid/net/wifi/WifiManager;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;>;>;"
        }
    .end annotation

    .line 179
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentNetwork(Landroid/net/wifi/WifiManager;)Landroid/net/Network;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 122
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public static getHasEverConnected(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 106
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->getHasEverConnected(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static getMatchingOsuProviders(Landroid/net/wifi/WifiManager;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 184
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMatchingPasspointConfigsForOsuProviders(Landroid/net/wifi/WifiManager;Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/Set<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 170
    .local p1, "osuProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getMatchingWifiConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 127
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->getMatchingWifiConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getSoftApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/SoftApConfiguration;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 199
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getVerboseLoggingLevel(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 174
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->getVerboseLoggingLevel(Landroid/net/wifi/WifiManager;)I

    move-result v0

    return v0
.end method

.method public static getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 55
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiApState(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 110
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    return v0
.end method

.method public static isEasyConnectSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 188
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result v0

    return v0
.end method

.method public static isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 156
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v0

    return v0
.end method

.method public static isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 114
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public static isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 160
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v0

    return v0
.end method

.method public static isWpa3SuiteBSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;

    .line 164
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v0

    return v0
.end method

.method public static registerSoftApCallback(Landroid/net/wifi/WifiManager;Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;Landroid/os/Handler;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "callback"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 133
    invoke-static {p0, p1, p2}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->registerSoftApCallback(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    .line 135
    return-void
.end method

.method public static registerSoftApCallback(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;

    .line 140
    invoke-static {p0, p1, p2}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->registerSoftApCallback(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 142
    return-void
.end method

.method public static save(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 97
    return-void
.end method

.method public static save(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$ActionListener;

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 103
    return-void
.end method

.method public static setClientAllowed(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiClient;Z)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "isAllowed"    # Z

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setClientAllowed(Landroid/net/wifi/WifiClient;Z)V

    .line 153
    return-void
.end method

.method public static setSoftApConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;

    .line 204
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static setWifiApConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .line 51
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static setWifiApConfigurationApMax(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "max"    # I

    .line 118
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->setWifiApConfigurationApMax(Landroid/net/wifi/WifiConfiguration;I)V

    .line 119
    return-void
.end method

.method public static startSubscriptionProvisioning(Landroid/net/wifi/WifiManager;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/hotspot2/ProvisioningCallback;

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    .line 196
    return-void
.end method

.method public static unregisterSoftApCallback(Landroid/net/wifi/WifiManager;Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;)V
    .locals 0
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "callback"    # Lcom/mega/nexus/net/wifi/MegaWifiManager$SoftApCallback;

    .line 146
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 148
    return-void
.end method
