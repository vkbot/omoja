.class public interface abstract Landroid/net/wifi/WifiManager$SoftApCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApCallback"
.end annotation


# virtual methods
.method public onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .locals 0
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "blockedReason"    # I

    .line 197
    return-void
.end method

.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 0
    .param p1, "softApCapability"    # Landroid/net/wifi/SoftApCapability;

    .line 181
    return-void
.end method

.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    return-void
.end method

.method public onInfoChanged(Landroid/net/wifi/SoftApInfo;)V
    .locals 0
    .param p1, "softApInfo"    # Landroid/net/wifi/SoftApInfo;

    .line 171
    return-void
.end method

.method public onStateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 154
    return-void
.end method
