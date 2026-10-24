.class public Lorg/apache/ftpserver/listener/ListenerFactory;
.super Ljava/lang/Object;
.source "ListenerFactory.java"


# instance fields
.field private blockedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blockedSubnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field

.field private dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

.field private idleTimeout:I

.field private implicitSsl:Z

.field private port:I

.field private serverAddress:Ljava/lang/String;

.field private sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

.field private ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    .line 50
    new-instance v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;-><init>()V

    .line 51
    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 53
    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/ftpserver/listener/Listener;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    .line 50
    new-instance v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;-><init>()V

    .line 51
    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 53
    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 76
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    .line 78
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 79
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->isImplicitSsl()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    .line 80
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 81
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getIdleTimeout()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    .line 84
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getBlockedAddresses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    .line 85
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getBlockedSubnets()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    .line 86
    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getSessionFilter()Lorg/apache/ftpserver/ipfilter/SessionFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 87
    return-void
.end method


# virtual methods
.method public createListener()Lorg/apache/ftpserver/listener/Listener;
    .locals 19

    move-object/from16 v1, p0

    .line 95
    :try_start_0
    iget-object v0, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 100
    iget-object v0, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Usage of SessionFilter in combination with blockedAddesses/subnets is not supported. "

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    new-instance v0, Lorg/apache/ftpserver/listener/nio/NioListener;

    iget-object v3, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    iget v4, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    iget-boolean v5, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    iget-object v6, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iget-object v7, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    iget v8, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    iget-object v9, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/apache/ftpserver/listener/nio/NioListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/SessionFilter;)V

    return-object v0

    .line 107
    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/ftpserver/listener/nio/NioListener;

    iget-object v11, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    iget v12, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    iget-boolean v13, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    iget-object v14, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iget-object v15, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    iget v2, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    iget-object v3, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    iget-object v4, v1, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    move-object v10, v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lorg/apache/ftpserver/listener/nio/NioListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v3, "Unknown host"

    invoke-direct {v2, v3, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    return-object v0
.end method

.method public getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    return-object v0
.end method

.method public getIdleTimeout()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionFilter()Lorg/apache/ftpserver/ipfilter/SessionFilter;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    return v0
.end method

.method public setBlockedAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    .local p1, "blockedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    .line 259
    return-void
.end method

.method public setBlockedSubnets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    .local p1, "blockedSubnets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/firewall/Subnet;>;"
    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    .line 281
    return-void
.end method

.method public setDataConnectionConfiguration(Lorg/apache/ftpserver/DataConnectionConfiguration;)V
    .locals 0
    .param p1, "dataConnectionConfig"    # Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 214
    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    .line 215
    return-void
.end method

.method public setIdleTimeout(I)V
    .locals 0
    .param p1, "idleTimeout"    # I

    .line 233
    iput p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    .line 234
    return-void
.end method

.method public setImplicitSsl(Z)V
    .locals 0
    .param p1, "implicitSsl"    # Z

    .line 136
    iput-boolean p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    .line 137
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 156
    iput p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    .line 157
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverAddress"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setSessionFilter(Lorg/apache/ftpserver/ipfilter/SessionFilter;)V
    .locals 0
    .param p1, "sessionFilter"    # Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 301
    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->sessionFilter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 302
    return-void
.end method

.method public setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V
    .locals 0
    .param p1, "ssl"    # Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 194
    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 195
    return-void
.end method
