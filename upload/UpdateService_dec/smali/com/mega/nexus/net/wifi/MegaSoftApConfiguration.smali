.class public Lcom/mega/nexus/net/wifi/MegaSoftApConfiguration;
.super Ljava/lang/Object;
.source "MegaSoftApConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllowedClientList(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .locals 1
    .param p0, "configuration"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApConfiguration;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBlockedClientList(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .locals 1
    .param p0, "configuration"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApConfiguration;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
