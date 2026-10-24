.class public Lcom/mega/nexus/telephony/MegaTelephonyManager;
.super Ljava/lang/Object;
.source "MegaTelephonyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataEnabled(Landroid/telephony/TelephonyManager;I)Z
    .locals 1
    .param p0, "manager"    # Landroid/telephony/TelephonyManager;
    .param p1, "subId"    # I

    .line 12
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 8
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimCount(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "manager"    # Landroid/telephony/TelephonyManager;

    .line 24
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    return v0
.end method

.method public static getSimSerialNumber(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "manager"    # Landroid/telephony/TelephonyManager;
    .param p1, "subId"    # I

    .line 20
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDataEnabled(Landroid/telephony/TelephonyManager;IZ)V
    .locals 0
    .param p0, "manager"    # Landroid/telephony/TelephonyManager;
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 17
    return-void
.end method
