.class public Lcom/mega/nexus/net/wifi/MegaScanResult;
.super Ljava/lang/Object;
.source "MegaScanResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carrierApEapType(Landroid/net/wifi/ScanResult;)I
    .locals 1
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 12
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaScanResultAdapter;->carrierApEapType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method

.method public static carrierName(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 16
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaScanResultAdapter;->carrierName(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCarrierAp(Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 8
    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaScanResultAdapter;->isCarrierAp(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method
