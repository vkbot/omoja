.class public final Lr2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->INVALID_RSSI:I

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->DISABLED_DNS_FAILURE:I

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->NETWORK_SELECTION_ENABLE:I

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->NETWORK_SELECTION_DISABLED_MAX:I

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->STATUS_AP_UNABLE_TO_HANDLE_NEW_STA:I

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->AP_BAND_5GHZ:I

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    return p0
.end method

.method public static d(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-void
.end method

.method public static f(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    return-void
.end method
