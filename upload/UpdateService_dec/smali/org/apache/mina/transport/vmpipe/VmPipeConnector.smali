.class public final Lorg/apache/mina/transport/vmpipe/VmPipeConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "VmPipeConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;
    }
.end annotation


# static fields
.field private static final LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static nextLocalPort:I


# instance fields
.field private idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    .line 160
    const/4 v0, -0x1

    sput v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    .line 162
    new-instance v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;)V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;-><init>(Ljava/util/concurrent/Executor;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 64
    new-instance v0, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 65
    new-instance v0, Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    .line 68
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    const-string v1, "idleStatusChecker"

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    return-object v0
.end method

.method private static nextLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    monitor-enter v0

    .line 166
    :try_start_0
    sget v1, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    if-ltz v1, :cond_0

    .line 167
    const/4 v1, -0x1

    sput v1, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    .line 169
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_2

    .line 170
    new-instance v2, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    sget v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    invoke-direct {v2, v3}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    .line 171
    .local v2, "answer":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v0

    return-object v2

    .line 169
    .end local v2    # "answer":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t assign a local VM pipe port."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 9
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

    .line 91
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipe;

    .line 92
    .local v0, "entry":Lorg/apache/mina/transport/vmpipe/VmPipe;
    if-nez v0, :cond_0

    .line 93
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Endpoint unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    return-object v1

    .line 96
    :cond_0
    new-instance v1, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    move-object v7, v1

    .line 101
    .local v7, "future":Lorg/apache/mina/core/future/DefaultConnectFuture;
    :try_start_0
    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    .local v4, "actualLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    nop

    .line 106
    new-instance v8, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v5

    move-object v1, v8

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoServiceListenerSupport;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/transport/vmpipe/VmPipe;)V

    .line 108
    .local v1, "localSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    invoke-virtual {p0, v1, v7, p3}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 111
    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 115
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    .line 116
    .local v2, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 120
    iget-object v3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/session/IdleStatusChecker;->addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .end local v2    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    nop

    .line 127
    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v2

    .line 128
    .local v2, "remoteSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    invoke-virtual {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->doFinishSessionInitialization(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 130
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 131
    .local v3, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getAcceptor()Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 134
    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 135
    iget-object v5, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v5, v2}, Lorg/apache/mina/core/session/IdleStatusChecker;->addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    goto :goto_0

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v3}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    .line 144
    invoke-virtual {v2}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v3}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    .line 146
    return-object v7

    .line 121
    .end local v2    # "remoteSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v7, v2}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    .line 123
    return-object v7

    .line 102
    .end local v1    # "localSession":Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "actualLocalAddress":Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    :catch_2
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v2

    return-object v2
.end method

.method protected dispose0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancel()V

    .line 156
    return-void
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method
