.class public abstract Lorg/apache/mina/core/service/AbstractIoConnector;
.super Lorg/apache/mina/core/service/AbstractIoService;
.source "AbstractIoConnector.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoConnector;


# instance fields
.field private connectTimeoutCheckInterval:J

.field private connectTimeoutInMillis:J

.field private defaultLocalAddress:Ljava/net/SocketAddress;

.field private defaultRemoteAddress:Ljava/net/SocketAddress;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 44
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    .line 46
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    .line 70
    return-void
.end method


# virtual methods
.method public final connect()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 3

    .line 179
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 181
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    return-object v1

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "defaultRemoteAddress is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final connect(Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 5
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 233
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 237
    if-eqz p1, :cond_5

    .line 241
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " (expected: "

    if-eqz v0, :cond_4

    .line 246
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localAddress type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    if-nez v0, :cond_3

    .line 252
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoConnector$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/AbstractIoConnector$1;-><init>(Lorg/apache/mina/core/service/AbstractIoConnector;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoConnector;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    goto :goto_1

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0

    .line 242
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteAddress type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connector is being disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 216
    .local p2, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 193
    .local p1, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 195
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v0, :cond_0

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    return-object v1

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "defaultRemoteAddress is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method protected final finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .line 356
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoConnector$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector$2;-><init>(Lorg/apache/mina/core/service/AbstractIoConnector;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {p2, v0}, Lorg/apache/mina/core/future/IoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    .line 367
    return-void
.end method

.method public final getConnectTimeout()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getConnectTimeoutCheckInterval()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    return-wide v0
.end method

.method public final getConnectTimeoutMillis()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    return-wide v0
.end method

.method public final getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->defaultLocalAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getDefaultRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->defaultRemoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final setConnectTimeout(I)V
    .locals 4
    .param p1, "connectTimeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/service/AbstractIoConnector;->setConnectTimeoutMillis(J)V

    .line 120
    return-void
.end method

.method public setConnectTimeoutCheckInterval(J)V
    .locals 2
    .param p1, "minimumConnectTimeout"    # J

    .line 87
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getConnectTimeoutMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 88
    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    .line 91
    :cond_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    .line 92
    return-void
.end method

.method public final setConnectTimeoutMillis(J)V
    .locals 2
    .param p1, "connectTimeoutInMillis"    # J

    .line 128
    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 129
    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    .line 131
    :cond_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    .line 132
    return-void
.end method

.method public final setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 147
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->defaultLocalAddress:Ljava/net/SocketAddress;

    .line 148
    return-void
.end method

.method public final setDefaultRemoteAddress(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "defaultRemoteAddress"    # Ljava/net/SocketAddress;

    .line 163
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->defaultRemoteAddress:Ljava/net/SocketAddress;

    .line 172
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultRemoteAddress type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultRemoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 374
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    .line 375
    .local v0, "m":Lorg/apache/mina/core/service/TransportMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connector: managedSessionCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getManagedSessionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    return-object v1
.end method
