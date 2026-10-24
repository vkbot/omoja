.class public Landroid/net/NetworkKey;
.super Ljava/lang/Object;
.source "NetworkKey.java"


# static fields
.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field public type:I

.field public wifiKey:Landroid/net/WifiKey;


# direct methods
.method public constructor <init>(Landroid/net/WifiKey;)V
    .locals 2
    .param p1, "wifiKey"    # Landroid/net/WifiKey;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;
    .locals 2
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
