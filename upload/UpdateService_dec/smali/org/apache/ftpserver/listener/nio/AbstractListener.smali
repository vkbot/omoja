.class public abstract Lorg/apache/ftpserver/listener/nio/AbstractListener;
.super Ljava/lang/Object;
.source "AbstractListener.java"

# interfaces
.implements Lorg/apache/ftpserver/listener/Listener;


# instance fields
.field private final blockedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blockedSubnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field

.field private final dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

.field private final idleTimeout:I

.field private final implicitSsl:Z

.field private port:I

.field private final serverAddress:Ljava/lang/String;

.field private final sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

.field private final ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "implicitSsl"    # Z
    .param p4, "sslConfiguration"    # Lorg/apache/ftpserver/ssl/SslConfiguration;
    .param p5, "dataConnectionConfig"    # Lorg/apache/ftpserver/DataConnectionConfiguration;
    .param p6, "idleTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lorg/apache/ftpserver/ssl/SslConfiguration;",
            "Lorg/apache/ftpserver/DataConnectionConfiguration;",
            "I",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    .local p7, "blockedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p8, "blockedSubnets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/firewall/Subnet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    .line 69
    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->serverAddress:Ljava/lang/String;

    .line 70
    iput p2, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    .line 71
    iput-boolean p3, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->implicitSsl:Z

    .line 72
    iput-object p5, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 73
    iput-object p4, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 74
    iput p6, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->idleTimeout:I

    .line 75
    invoke-static {p7, p8}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->createBlackListFilter(Ljava/util/List;Ljava/util/List;)Lorg/apache/ftpserver/ipfilter/SessionFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 76
    iput-object p7, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedAddresses:Ljava/util/List;

    .line 77
    iput-object p8, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedSubnets:Ljava/util/List;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/SessionFilter;)V
    .locals 1
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "implicitSsl"    # Z
    .param p4, "sslConfiguration"    # Lorg/apache/ftpserver/ssl/SslConfiguration;
    .param p5, "dataConnectionConfig"    # Lorg/apache/ftpserver/DataConnectionConfiguration;
    .param p6, "idleTimeout"    # I
    .param p7, "sessionFilter"    # Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    .line 87
    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->serverAddress:Ljava/lang/String;

    .line 88
    iput p2, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    .line 89
    iput-boolean p3, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->implicitSsl:Z

    .line 90
    iput-object p5, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 91
    iput-object p4, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 92
    iput p6, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->idleTimeout:I

    .line 93
    iput-object p7, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedAddresses:Ljava/util/List;

    .line 95
    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedSubnets:Ljava/util/List;

    .line 96
    return-void
.end method

.method private static createBlackListFilter(Ljava/util/List;Ljava/util/List;)Lorg/apache/ftpserver/ipfilter/SessionFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)",
            "Lorg/apache/ftpserver/ipfilter/SessionFilter;"
        }
    .end annotation

    .line 111
    .local p0, "blockedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p1, "blockedSubnets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/firewall/Subnet;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;

    sget-object v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;)V

    .line 116
    .local v0, "ipFilter":Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_1
    if-eqz p0, :cond_2

    .line 120
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 121
    .local v2, "address":Ljava/net/InetAddress;
    new-instance v3, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v4, 0x20

    invoke-direct {v3, v2, v4}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 124
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getBlockedAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getBlockedSubnets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedSubnets:Ljava/util/List;

    return-object v0
.end method

.method public getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    return-object v0
.end method

.method public getIdleTimeout()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->idleTimeout:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionFilter()Lorg/apache/ftpserver/ipfilter/SessionFilter;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->implicitSsl:Z

    return v0
.end method

.method protected setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 146
    iput p1, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    .line 147
    return-void
.end method
