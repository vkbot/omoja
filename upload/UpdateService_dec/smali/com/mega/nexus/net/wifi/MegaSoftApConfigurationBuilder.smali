.class public final Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
.super Ljava/lang/Object;
.source "MegaSoftApConfigurationBuilder.java"


# instance fields
.field private mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 1
    .param p1, "other"    # Landroid/net/wifi/SoftApConfiguration;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 36
    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/SoftApConfiguration;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public setAllowedClientList(Ljava/util/List;)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;"
        }
    .end annotation

    .line 109
    .local p1, "allowedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 110
    return-object p0
.end method

.method public setAutoShutdownEnabled(Z)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "enable"    # Z

    .line 89
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 90
    return-object p0
.end method

.method public setBand(I)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "band"    # I

    .line 70
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 71
    return-object p0
.end method

.method public setBlockedClientList(Ljava/util/List;)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;"
        }
    .end annotation

    .line 116
    .local p1, "blockedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 117
    return-object p0
.end method

.method public setBssid(Landroid/net/MacAddress;)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "bssid"    # Landroid/net/MacAddress;

    .line 51
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 52
    return-object p0
.end method

.method public setChannel(II)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "channel"    # I
    .param p2, "band"    # I

    .line 76
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 77
    return-object p0
.end method

.method public setClientControlByUserEnabled(Z)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 102
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 103
    return-object p0
.end method

.method public setHiddenSsid(Z)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "hiddenSsid"    # Z

    .line 64
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 65
    return-object p0
.end method

.method public setMaxNumberOfClients(I)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "maxNumberOfClients"    # I

    .line 83
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 84
    return-object p0
.end method

.method public setPassphrase(Ljava/lang/String;I)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "passphrase"    # Ljava/lang/String;
    .param p2, "securityType"    # I

    .line 58
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 59
    return-object p0
.end method

.method public setShutdownTimeoutMillis(J)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 96
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 97
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/net/wifi/MegaSoftApConfigurationBuilder;->mBuilder:Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 46
    return-object p0
.end method
