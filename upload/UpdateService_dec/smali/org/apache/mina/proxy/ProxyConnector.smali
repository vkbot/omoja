.class public Lorg/apache/mina/proxy/ProxyConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "ProxyConnector.java"


# static fields
.field private static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private connector:Lorg/apache/mina/transport/socket/SocketConnector;

.field private future:Lorg/apache/mina/core/future/DefaultConnectFuture;

.field private final proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 66
    new-instance v8, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lorg/apache/mina/core/buffer/IoBuffer;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-class v1, Lorg/apache/mina/core/file/FileRegion;

    aput-object v1, v7, v0

    const-string v1, "proxy"

    const-string v2, "proxyconnector"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lorg/apache/mina/proxy/ProxyConnector;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 72
    iput-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    .line 77
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-direct {v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/transport/socket/SocketConnector;)V
    .locals 2
    .param p1, "connector"    # Lorg/apache/mina/transport/socket/SocketConnector;

    .line 102
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/ProxyConnector;-><init>(Lorg/apache/mina/transport/socket/SocketConnector;Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/transport/socket/SocketConnector;Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "connector"    # Lorg/apache/mina/transport/socket/SocketConnector;
    .param p2, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 113
    invoke-direct {p0, p2, p3}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    .line 77
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-direct {v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    .line 114
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/ProxyConnector;->setConnector(Lorg/apache/mina/transport/socket/SocketConnector;)V

    .line 115
    return-void
.end method

.method private setConnector(Lorg/apache/mina/transport/socket/SocketConnector;)V
    .locals 3
    .param p1, "connector"    # Lorg/apache/mina/transport/socket/SocketConnector;

    .line 221
    if-eqz p1, :cond_1

    .line 225
    iput-object p1, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    .line 226
    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 234
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketConnector;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyFilter:Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-virtual {v1, v0, v2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 235
    return-void

    .line 222
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connector cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelConnectFuture()V
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->cancel()Z

    .line 193
    return-void
.end method

.method protected connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 4
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

    .line 162
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/apache/mina/proxy/ProxyConnector;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    .line 165
    .local v0, "handler":Lorg/apache/mina/core/service/IoHandler;
    instance-of v1, v0, Lorg/apache/mina/proxy/AbstractProxyIoHandler;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    invoke-interface {v1, v0}, Lorg/apache/mina/transport/socket/SocketConnector;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    .line 170
    new-instance v1, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    goto :goto_0

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IoHandler must be an instance of AbstractProxyIoHandler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "handler":Lorg/apache/mina/core/service/IoHandler;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    iget-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;

    iget-object v3, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-direct {v2, p3, v3}, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;-><init>(Lorg/apache/mina/core/session/IoSessionInitializer;Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/transport/socket/SocketConnector;->connect(Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    .line 181
    .local v0, "conFuture":Lorg/apache/mina/core/future/ConnectFuture;
    iget-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    return-object v1

    .line 182
    :cond_3
    :goto_1
    return-object v0
.end method

.method protected dispose0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketConnector;->dispose()V

    .line 245
    :cond_0
    return-void
.end method

.method protected fireConnected(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 202
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    .line 203
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->future:Lorg/apache/mina/core/future/DefaultConnectFuture;

    return-object v0
.end method

.method public final getConnector()Lorg/apache/mina/transport/socket/SocketConnector;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    return-object v0
.end method

.method public getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/mina/proxy/ProxyConnector;->connector:Lorg/apache/mina/transport/socket/SocketConnector;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 251
    sget-object v0, Lorg/apache/mina/proxy/ProxyConnector;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public setProxyIoSession(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 136
    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1, p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setConnector(Lorg/apache/mina/proxy/ProxyConnector;)V

    .line 145
    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/proxy/ProxyConnector;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    .line 146
    iput-object p1, p0, Lorg/apache/mina/proxy/ProxyConnector;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 147
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySession.proxyAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySession object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
