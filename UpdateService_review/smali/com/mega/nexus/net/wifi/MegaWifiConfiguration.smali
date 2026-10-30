.class public Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;
.super Ljava/lang/Object;
.source "MegaWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/net/wifi/MegaWifiConfiguration$KeyMgmt;
    }
.end annotation


# static fields
.field public static final AP_BAND_5GHZ:I

.field public static final DISABLED_ASSOCIATION_REJECTION:I = 0x1

.field public static final DISABLED_AUTHENTICATION_FAILURE:I = 0x2

.field public static final DISABLED_BY_WRONG_PASSWORD:I = 0x8

.field public static final DISABLED_DHCP_FAILURE:I = 0x3

.field public static final DISABLED_DNS_FAILURE:I

.field public static final INET4ADDRESS_ANY:Ljava/net/InetAddress;

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static final INVALID_RSSI:I

.field public static final METERED_OVERRIDE_METERED:I = 0x1

.field public static final METERED_OVERRIDE_NONE:I = 0x0

.field public static final NETWORK_SELECTION_DISABLED_MAX:I

.field public static final NETWORK_SELECTION_ENABLE:I

.field public static final NETWORK_SELECTION_ENABLED:I = 0x0

.field public static final NETWORK_SELECTION_PERMANENTLY_DISABLED:I = 0x2

.field public static final NETWORK_SELECTION_TEMPORARY_DISABLED:I = 0x1

.field public static final STATUS_AP_UNABLE_TO_HANDLE_NEW_STA:I

.field public static final WPA2_PSK:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->INVALID_RSSI:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->INVALID_RSSI:I

    .line 24
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->DISABLED_DNS_FAILURE:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->DISABLED_DNS_FAILURE:I

    .line 28
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->NETWORK_SELECTION_ENABLE:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->NETWORK_SELECTION_ENABLE:I

    .line 30
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->NETWORK_SELECTION_DISABLED_MAX:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->NETWORK_SELECTION_DISABLED_MAX:I

    .line 32
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->STATUS_AP_UNABLE_TO_HANDLE_NEW_STA:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->STATUS_AP_UNABLE_TO_HANDLE_NEW_STA:I

    .line 44
    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->AP_BAND_5GHZ:I

    sput v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->AP_BAND_5GHZ:I

    .line 46
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sput-object v0, Lcom/mega/nexus/net/wifi/MegaWifiConfiguration;->INET4ADDRESS_ANY:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildNewConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 205
    invoke-static {}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->buildNewConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getAssociationStatus(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 91
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->getAssociationStatus(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public static getAuthType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 169
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    return v0
.end method

.method public static getCaCertificateAliases(Landroid/net/wifi/WifiConfiguration;)[Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 145
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaPath(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 165
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientCertificateAlias(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 153
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreatorName(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCreatorUid(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 181
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    return v0
.end method

.method public static getDisableReasonCounter(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "reason"    # I

    .line 109
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0

    return v0

    .line 110
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDisableTime(Landroid/net/wifi/WifiConfiguration;)J
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 102
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v0

    return-wide v0

    .line 103
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getIpAssignment(Landroid/net/wifi/WifiConfiguration;)Landroid/net/IpConfiguration$IpAssignment;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 124
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->getIpAssignment(Landroid/net/wifi/WifiConfiguration;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    return-object v0
.end method

.method public static getIpConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/IpConfiguration;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 132
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getMeteredOverride(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 173
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return v0
.end method

.method public static getNetworkDisableReasonString(Landroid/net/wifi/WifiConfiguration;I)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "index"    # I

    .line 116
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->getNetworkDisableReasonString(Landroid/net/wifi/WifiConfiguration;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkSelectionDisableReason(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 76
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    return v0

    .line 77
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 61
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v0

    return v0

    .line 62
    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public static getNetworkStatusString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 95
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static getShare(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "cfg"    # Landroid/net/wifi/WifiConfiguration;

    .line 49
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    return v0
.end method

.method public static getStaticIpConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/StaticIpConfiguration;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 128
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->getStaticIpConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static hasNoInternetAccess(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 87
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v0

    return v0
.end method

.method public static isEphemeral(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 193
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    return v0
.end method

.method public static isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .line 57
    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    return v0
.end method

.method public static isMeteredHint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 189
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    return v0
.end method

.method public static isNetworkEnabled(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 68
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->isNetworkEnabled(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 72
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->isNetworkPermanentlyDisabled(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static isNotRecommended(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 83
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->isNotRecommended(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static numAssociation(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 201
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    return v0
.end method

.method public static selfAdded(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 197
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->selfAdded(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static setCaCertificateAlias(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "alias"    # Ljava/lang/String;

    .line 157
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->setCaCertificateAlias(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static setCaCertificateAliases(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)V
    .locals 0
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "aliases"    # [Ljava/lang/String;

    .line 141
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->setCaCertificateAliases(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static setCaPath(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "path"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static setClientCertificateAlias(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "alias"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static setIpConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)V
    .locals 0
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "ipCfg"    # Landroid/net/IpConfiguration;

    .line 137
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 138
    return-void
.end method

.method public static setRquirePMF(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "require"    # Z

    .line 185
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->setRquirePMF(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 186
    return-void
.end method

.method public static setShare(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0
    .param p0, "cfg"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "shared"    # Z

    .line 53
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 54
    return-void
.end method

.method public static setWifiApConfigurationApMax(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "max"    # I

    .line 120
    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiConfigurationAdapter;->setWifiApConfigurationApMax(Landroid/net/wifi/WifiConfiguration;I)V

    .line 121
    return-void
.end method
