.class public Landroid/net/NetworkKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field public type:I

.field public wifiKey:Landroid/net/WifiKey;


# direct methods
.method public constructor <init>(Landroid/net/WifiKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
