.class public Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.source "NioSocketAcceptor.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/ServerSocketChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/SocketAcceptor;"
    }
.end annotation


# instance fields
.field protected volatile selector:Ljava/nio/channels/Selector;

.field protected volatile selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 63
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "processorCount"    # I

    .line 74
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 75
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 76
    return-void
.end method

.method public constructor <init>(ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "processorCount"    # I
    .param p2, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 111
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 112
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 113
    iput-object p2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 98
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 86
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected bridge synthetic accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method protected accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 5
    .param p2, "handle"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/ServerSocketChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz p2, :cond_0

    .line 187
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v1}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 196
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 198
    .local v2, "ch":Ljava/nio/channels/SocketChannel;
    if-nez v2, :cond_2

    .line 199
    return-object v1

    .line 202
    :cond_2
    new-instance v3, Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {v3, p0, p1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 203
    .end local v2    # "ch":Ljava/nio/channels/SocketChannel;
    :catchall_0
    move-exception v2

    .line 204
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Too many open files"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    sget-object v3, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Error Calling Accept on Socket - Sleeping Acceptor Thread. Check the ulimit parameter"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    const-wide/16 v3, 0x32

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :goto_0
    goto :goto_1

    .line 212
    :catch_0
    move-exception v3

    goto :goto_0

    .line 220
    :goto_1
    return-object v1

    .line 216
    :cond_3
    throw v2

    .line 191
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-object v1
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method protected close(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 329
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 333
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 334
    return-void
.end method

.method protected destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 146
    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 168
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 160
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 152
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    .line 122
    return-void
.end method

.method protected init(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    .line 136
    :goto_0
    return-void
.end method

.method protected bridge synthetic localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method protected localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method protected open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .locals 7
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    .line 233
    .local v0, "config":Lorg/apache/mina/transport/socket/SocketSessionConfig;
    const/4 v1, 0x0

    .line 235
    .local v1, "channel":Ljava/nio/channels/ServerSocketChannel;
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v2}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    .line 241
    :goto_0
    const/4 v2, 0x0

    .line 245
    .local v2, "success":Z
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 248
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    .line 251
    .local v3, "socket":Ljava/net/ServerSocket;
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->isReuseAddress()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 254
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSendBufferSize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v4

    sget-object v6, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    sget-object v4, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSendBufferSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/nio/channels/ServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    .line 259
    :cond_1
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v4

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    sget-object v4, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/ServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getBacklog()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    nop

    .line 279
    :try_start_2
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    const/4 v2, 0x1

    .line 282
    .end local v3    # "socket":Ljava/net/ServerSocket;
    if-nez v2, :cond_3

    .line 283
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    .line 286
    :cond_3
    return-object v1

    .line 266
    .restart local v3    # "socket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v4

    .line 269
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while binding on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "newMessage":Ljava/lang/String;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 275
    nop

    .end local v0    # "config":Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .end local v1    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .end local v2    # "success":Z
    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;
    .end local p1    # "localAddress":Ljava/net/SocketAddress;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    .end local v3    # "socket":Ljava/net/ServerSocket;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "newMessage":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "config":Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .restart local v1    # "channel":Ljava/nio/channels/ServerSocketChannel;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;
    .restart local p1    # "localAddress":Ljava/net/SocketAddress;
    :catchall_0
    move-exception v3

    if-nez v2, :cond_4

    .line 283
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    .line 285
    :cond_4
    throw v3
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/ServerSocketChannel;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$1;)V

    return-object v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetSocketAddress;

    .line 175
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    .line 176
    return-void
.end method

.method protected wakeup()V
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 342
    return-void
.end method
