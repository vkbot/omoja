.class public Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;
.super Ljava/lang/Object;
.source "DefaultDataConnectionConfiguration.java"

# interfaces
.implements Lorg/apache/ftpserver/DataConnectionConfiguration;


# instance fields
.field private final activeEnabled:Z

.field private final activeIpCheck:Z

.field private final activeLocalAddress:Ljava/lang/String;

.field private final activeLocalPort:I

.field private final idleTime:I

.field private final implicitSsl:Z

.field private final passiveAddress:Ljava/lang/String;

.field private final passiveExternalAddress:Ljava/lang/String;

.field private final passiveIpCheck:Z

.field private final passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

.field private final ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>(ILorg/apache/ftpserver/ssl/SslConfiguration;ZZLjava/lang/String;ILjava/lang/String;Lorg/apache/ftpserver/impl/PassivePorts;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "idleTime"    # I
    .param p2, "ssl"    # Lorg/apache/ftpserver/ssl/SslConfiguration;
    .param p3, "activeEnabled"    # Z
    .param p4, "activeIpCheck"    # Z
    .param p5, "activeLocalAddress"    # Ljava/lang/String;
    .param p6, "activeLocalPort"    # I
    .param p7, "passiveAddress"    # Ljava/lang/String;
    .param p8, "passivePorts"    # Lorg/apache/ftpserver/impl/PassivePorts;
    .param p9, "passiveExternalAddress"    # Ljava/lang/String;
    .param p10, "passiveIpCheck"    # Z
    .param p11, "implicitSsl"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->idleTime:I

    .line 62
    iput-object p2, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 63
    iput-boolean p3, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeEnabled:Z

    .line 64
    iput-boolean p4, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeIpCheck:Z

    .line 65
    iput-object p5, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalAddress:Ljava/lang/String;

    .line 66
    iput p6, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalPort:I

    .line 67
    iput-object p7, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveAddress:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    .line 69
    iput-object p9, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveExternalAddress:Ljava/lang/String;

    .line 70
    iput-boolean p10, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveIpCheck:Z

    .line 71
    iput-boolean p11, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->implicitSsl:Z

    .line 72
    return-void
.end method


# virtual methods
.method public getActiveLocalAddress()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveLocalPort()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalPort:I

    return v0
.end method

.method public getIdleTime()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->idleTime:I

    return v0
.end method

.method public getPassiveAddress()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassiveExernalAddress()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveExternalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassivePorts()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/PassivePorts;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isActiveEnabled()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeEnabled:Z

    return v0
.end method

.method public isActiveIpCheck()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeIpCheck:Z

    return v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->implicitSsl:Z

    return v0
.end method

.method public isPassiveIpCheck()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveIpCheck:Z

    return v0
.end method

.method public declared-synchronized releasePassivePort(I)V
    .locals 1
    .param p1, "port"    # I

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/PassivePorts;->releasePort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestPassivePort()I
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/PassivePorts;->reserveNextPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 132
    .end local p0    # "this":Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
