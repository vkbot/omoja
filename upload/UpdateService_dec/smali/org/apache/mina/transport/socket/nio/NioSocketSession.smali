.class Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.super Lorg/apache/mina/transport/socket/nio/NioSession;
.source "NioSocketSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
    }
.end annotation


# static fields
.field static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
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

    const-string v1, "nio"

    const-string v2, "socket"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p3, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoService;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            ")V"
        }
    .end annotation

    .line 59
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;-><init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V

    .line 60
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 61
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private getSocket()Ljava/net/Socket;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bridge synthetic getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 116
    return-object v1

    .line 119
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 121
    .local v0, "socket":Ljava/net/Socket;
    if-nez v0, :cond_1

    .line 122
    return-object v1

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    return-object v1
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return-object v1

    .line 101
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 103
    .local v0, "socket":Ljava/net/Socket;
    if-nez v0, :cond_1

    .line 104
    return-object v1

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    return-object v1
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 130
    invoke-super {p0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getServiceAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public final isSecured()Z
    .locals 3

    .line 346
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 348
    .local v0, "chain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 350
    .local v1, "sslFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    if-eqz v1, :cond_0

    .line 352
    move-object v2, v1

    check-cast v2, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v2, p0}, Lorg/apache/mina/filter/ssl/SslFilter;->isSecured(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    return v2

    .line 354
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
