.class public Lorg/apache/ftpserver/DataConnectionConfigurationFactory;
.super Ljava/lang/Object;
.source "DataConnectionConfigurationFactory.java"


# instance fields
.field private activeEnabled:Z

.field private activeIpCheck:Z

.field private activeLocalAddress:Ljava/lang/String;

.field private activeLocalPort:I

.field private idleTime:I

.field private implicitSsl:Z

.field private log:Lorg/slf4j/Logger;

.field private passiveAddress:Ljava/lang/String;

.field private passiveExternalAddress:Ljava/lang/String;

.field private passiveIpCheck:Z

.field private passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

.field private ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->log:Lorg/slf4j/Logger;

    .line 42
    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    .line 48
    iput-boolean v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    .line 52
    new-instance v2, Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ftpserver/impl/PassivePorts;-><init>(Ljava/util/Set;Z)V

    iput-object v2, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    .line 53
    iput-boolean v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveIpCheck:Z

    return-void
.end method

.method private checkValidAddresses()V
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 77
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v2, "Unknown host"

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 13

    .line 62
    invoke-direct {p0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->checkValidAddresses()V

    .line 63
    new-instance v12, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;

    iget v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    iget-object v2, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iget-boolean v3, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    iget-boolean v4, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    iget-object v5, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalAddress:Ljava/lang/String;

    iget v6, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    iget-object v7, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    iget-object v9, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    iget-boolean v10, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveIpCheck:Z

    iget-boolean v11, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->implicitSsl:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;-><init>(ILorg/apache/ftpserver/ssl/SslConfiguration;ZZLjava/lang/String;ILjava/lang/String;Lorg/apache/ftpserver/impl/PassivePorts;Ljava/lang/String;ZZ)V

    return-object v12
.end method

.method public getActiveLocalAddress()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveLocalPort()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    return v0
.end method

.method public getIdleTime()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    return v0
.end method

.method public getPassiveAddress()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassiveExternalAddress()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassivePorts()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/PassivePorts;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isActiveEnabled()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    return v0
.end method

.method public isActiveIpCheck()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    return v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->implicitSsl:Z

    return v0
.end method

.method public isPassiveIpCheck()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveIpCheck:Z

    return v0
.end method

.method public declared-synchronized releasePassivePort(I)V
    .locals 1
    .param p1, "port"    # I

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/PassivePorts;->releasePort(I)V

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 288
    .end local p0    # "this":Lorg/apache/ftpserver/DataConnectionConfigurationFactory;
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestPassivePort()I
    .locals 5

    monitor-enter p0

    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, "dataPort":I
    const/4 v1, 0x2

    .line 235
    .local v1, "loopTimes":I
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 237
    .local v2, "currThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 238
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 241
    iget-object v4, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v4}, Lorg/apache/ftpserver/impl/PassivePorts;->reserveNextPort()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 244
    if-ne v0, v3, :cond_0

    .line 246
    :try_start_1
    iget-object v3, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->log:Lorg/slf4j/Logger;

    const-string v4, "We\'re waiting for a passive port, might be stuck"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    goto :goto_0

    .line 248
    .end local p0    # "this":Lorg/apache/ftpserver/DataConnectionConfigurationFactory;
    :catch_0
    move-exception v3

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    monitor-exit p0

    return v0

    .line 232
    .end local v0    # "dataPort":I
    .end local v1    # "loopTimes":I
    .end local v2    # "currThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setActiveEnabled(Z)V
    .locals 0
    .param p1, "activeEnabled"    # Z

    .line 113
    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    .line 114
    return-void
.end method

.method public setActiveIpCheck(Z)V
    .locals 0
    .param p1, "activeIpCheck"    # Z

    .line 129
    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    .line 130
    return-void
.end method

.method public setActiveLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "activeLocalAddress"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalAddress:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setActiveLocalPort(I)V
    .locals 0
    .param p1, "activeLocalPort"    # I

    .line 161
    iput p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    .line 162
    return-void
.end method

.method public setIdleTime(I)V
    .locals 0
    .param p1, "idleTime"    # I

    .line 97
    iput p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    .line 98
    return-void
.end method

.method public setImplicitSsl(Z)V
    .locals 0
    .param p1, "implicitSsl"    # Z

    .line 322
    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->implicitSsl:Z

    .line 323
    return-void
.end method

.method public setPassiveAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "passiveAddress"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setPassiveExternalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "passiveExternalAddress"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setPassiveIpCheck(Z)V
    .locals 0
    .param p1, "passiveIpCheck"    # Z

    .line 224
    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveIpCheck:Z

    .line 225
    return-void
.end method

.method public setPassivePorts(Ljava/lang/String;)V
    .locals 2
    .param p1, "passivePorts"    # Ljava/lang/String;

    .line 280
    new-instance v0, Lorg/apache/ftpserver/impl/PassivePorts;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/PassivePorts;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    .line 281
    return-void
.end method

.method public setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V
    .locals 0
    .param p1, "ssl"    # Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 307
    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 308
    return-void
.end method
