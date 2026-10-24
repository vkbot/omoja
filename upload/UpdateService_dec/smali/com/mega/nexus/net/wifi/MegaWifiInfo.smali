.class public Lcom/mega/nexus/net/wifi/MegaWifiInfo;
.super Ljava/lang/Object;
.source "MegaWifiInfo.java"


# static fields
.field public static final INVALID_RSSI:I = -0x7f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPasspointFqdn(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 42
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPasspointProviderFriendlyName(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 46
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRxSuccessRate(Landroid/net/wifi/WifiInfo;)D
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 30
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiInfoAdapter;->getRxSuccessRate(Landroid/net/wifi/WifiInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getScore(Landroid/net/wifi/WifiInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 14
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiInfoAdapter;->getScore(Landroid/net/wifi/WifiInfo;)I

    move-result v0

    return v0
.end method

.method public static getTxBadRate(Landroid/net/wifi/WifiInfo;)D
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 26
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiInfoAdapter;->getTxBadRate(Landroid/net/wifi/WifiInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxRetriesRate(Landroid/net/wifi/WifiInfo;)D
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 22
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiInfoAdapter;->getTxRetriesRate(Landroid/net/wifi/WifiInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxSuccessRate(Landroid/net/wifi/WifiInfo;)D
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 18
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiInfoAdapter;->getTxSuccessRate(Landroid/net/wifi/WifiInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static isEphemeral(Landroid/net/wifi/WifiInfo;)Z
    .locals 1
    .param p0, "wifi"    # Landroid/net/wifi/WifiInfo;

    .line 10
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    return v0
.end method

.method public static isOsuAp(Landroid/net/wifi/WifiInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 38
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    return v0
.end method

.method public static isPasspointAp(Landroid/net/wifi/WifiInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;

    .line 34
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    return v0
.end method
