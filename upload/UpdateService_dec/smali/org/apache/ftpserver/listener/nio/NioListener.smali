.class public Lorg/apache/ftpserver/listener/nio/NioListener;
.super Lorg/apache/ftpserver/listener/nio/AbstractListener;
.source "NioListener.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

.field private address:Ljava/net/InetSocketAddress;

.field private context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private handler:Lorg/apache/ftpserver/impl/FtpHandler;

.field suspended:Z


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

    .line 82
    .local p7, "blockedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p8, "blockedSubnets":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/filter/firewall/Subnet;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/ftpserver/listener/nio/AbstractListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V

    .line 64
    const-class v0, Lorg/apache/ftpserver/listener/nio/NioListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    .line 72
    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;

    invoke-direct {v0}, Lorg/apache/ftpserver/impl/DefaultFtpHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    .line 83
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

    .line 89
    invoke-direct/range {p0 .. p7}, Lorg/apache/ftpserver/listener/nio/AbstractListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/SessionFilter;)V

    .line 64
    const-class v0, Lorg/apache/ftpserver/listener/nio/NioListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    .line 72
    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;

    invoke-direct {v0}, Lorg/apache/ftpserver/impl/DefaultFtpHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    .line 90
    return-void
.end method

.method private updatePort()V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/listener/nio/NioListener;->setPort(I)V

    .line 184
    return-void
.end method


# virtual methods
.method public declared-synchronized getActiveSessions()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/ftpserver/impl/FtpIoSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    .line 252
    .local v0, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 254
    .local v1, "ftpSessions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ftpserver/impl/FtpIoSession;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IoSession;

    .line 255
    .local v3, "session":Lorg/apache/mina/core/session/IoSession;
    new-instance v4, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v5, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v4, v3, v5}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    nop

    .end local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    goto :goto_0

    .line 258
    .end local p0    # "this":Lorg/apache/ftpserver/listener/nio/NioListener;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 249
    .end local v0    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/mina/core/session/IoSession;>;"
    .end local v1    # "ftpSessions":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ftpserver/impl/FtpIoSession;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStopped()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    return v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 220
    :try_start_1
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Resuming listener"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketAcceptor;->bind(Ljava/net/SocketAddress;)V

    .line 222
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Listener resumed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->updatePort()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    goto :goto_0

    .line 227
    .end local p0    # "this":Lorg/apache/ftpserver/listener/nio/NioListener;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Failed to resume listener"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lorg/apache/ftpserver/impl/FtpServerContext;)V
    .locals 7
    .param p1, "context"    # Lorg/apache/ftpserver/impl/FtpServerContext;

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->isStopped()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 103
    :try_start_1
    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    .line 105
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    .line 107
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 110
    .end local p0    # "this":Lorg/apache/ftpserver/listener/nio/NioListener;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    .line 113
    :goto_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/transport/socket/SocketAcceptor;->setReuseAddress(Z)V

    .line 114
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    const/16 v2, 0x800

    invoke-interface {v0, v2}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReadBufferSize(I)V

    .line 115
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getIdleTimeout()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 117
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    const/16 v2, 0x200

    invoke-interface {v0, v2}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReceiveBufferSize(I)V

    .line 119
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    invoke-direct {v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;-><init>()V

    .line 121
    .local v0, "mdcFilter":Lorg/apache/mina/filter/logging/MdcInjectionFilter;
    iget-object v2, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v2}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v2

    const-string v3, "mdcFilter"

    invoke-virtual {v2, v3, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 123
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getSessionFilter()Lorg/apache/ftpserver/ipfilter/SessionFilter;

    move-result-object v2

    .line 125
    .local v2, "sessionFilter":Lorg/apache/ftpserver/ipfilter/SessionFilter;
    if-eqz v2, :cond_1

    .line 127
    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "sessionFilter"

    new-instance v5, Lorg/apache/ftpserver/ipfilter/MinaSessionFilter;

    invoke-direct {v5, v2}, Lorg/apache/ftpserver/ipfilter/MinaSessionFilter;-><init>(Lorg/apache/ftpserver/ipfilter/SessionFilter;)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 130
    :cond_1
    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "threadPool"

    new-instance v5, Lorg/apache/mina/filter/executor/ExecutorFilter;

    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/mina/filter/executor/ExecutorFilter;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 131
    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "codec"

    new-instance v5, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    new-instance v6, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;

    invoke-direct {v6}, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;-><init>()V

    invoke-direct {v5, v6}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 132
    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "mdcFilter2"

    invoke-virtual {v3, v4, v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 133
    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "logger"

    new-instance v5, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;

    invoke-direct {v5}, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 135
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->isImplicitSsl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .local v3, "ssl_conf":Lorg/apache/ftpserver/ssl/SslConfiguration;
    :try_start_2
    new-instance v4, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .local v4, "ssl_filter":Lorg/apache/mina/filter/ssl/SslFilter;
    nop

    .line 145
    :try_start_3
    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v5

    sget-object v6, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v5, v6, :cond_2

    .line 146
    invoke-virtual {v4, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->setNeedClientAuth(Z)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v5

    sget-object v6, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v5, v6, :cond_3

    .line 148
    invoke-virtual {v4, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->setWantClientAuth(Z)V

    .line 151
    :cond_3
    :goto_1
    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 152
    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledProtocol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v4, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->setEnabledProtocols([Ljava/lang/String;)V

    .line 155
    :cond_4
    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 156
    invoke-interface {v3}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 159
    :cond_5
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v1}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    const-string v5, "sslFilter"

    invoke-virtual {v1, v5, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_2

    .line 141
    .end local v4    # "ssl_filter":Lorg/apache/mina/filter/ssl/SslFilter;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v5, "SSL could not be initialized, check configuration"

    invoke-direct {v4, v5}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .end local p1    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    throw v4

    .line 162
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "ssl_conf":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .restart local p1    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, p1, p0}, Lorg/apache/ftpserver/impl/FtpHandler;->init(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/listener/Listener;)V

    .line 163
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    new-instance v3, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;

    iget-object v4, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-direct {v3, p1, v4}, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;-><init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpHandler;)V

    invoke-interface {v1, v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :try_start_4
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    invoke-interface {v1, v3}, Lorg/apache/mina/transport/socket/SocketAcceptor;->bind(Ljava/net/SocketAddress;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    nop

    .line 171
    :try_start_5
    invoke-direct {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->updatePort()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    .end local v0    # "mdcFilter":Lorg/apache/mina/filter/logging/MdcInjectionFilter;
    .end local v2    # "sessionFilter":Lorg/apache/ftpserver/ipfilter/SessionFilter;
    nop

    .line 179
    monitor-exit p0

    return-void

    .line 167
    .restart local v0    # "mdcFilter":Lorg/apache/mina/filter/logging/MdcInjectionFilter;
    .restart local v2    # "sessionFilter":Lorg/apache/ftpserver/ipfilter/SessionFilter;
    :catch_1
    move-exception v1

    .line 168
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v3, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", check configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    .end local v0    # "mdcFilter":Lorg/apache/mina/filter/logging/MdcInjectionFilter;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "sessionFilter":Lorg/apache/ftpserver/ipfilter/SessionFilter;
    .restart local p1    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    :catch_2
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->stop()V

    .line 177
    throw v0

    .line 98
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 95
    .end local p1    # "context":Lorg/apache/ftpserver/impl/FtpServerContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->unbind()V

    .line 193
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->dispose()V

    .line 194
    iput-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    .line 197
    .end local p0    # "this":Lorg/apache/ftpserver/listener/nio/NioListener;
    :cond_0
    iput-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->context:Lorg/apache/ftpserver/impl/FtpServerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspend()V
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Suspending listener"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->unbind()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    .line 242
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Listener suspended"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local p0    # "this":Lorg/apache/ftpserver/listener/nio/NioListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
