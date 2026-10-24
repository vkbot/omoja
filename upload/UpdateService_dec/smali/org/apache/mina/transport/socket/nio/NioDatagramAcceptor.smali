.class public final Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "NioDatagramAcceptor.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramAcceptor;
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;",
        "Lorg/apache/mina/transport/socket/DatagramAcceptor;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

.field private static final SELECT_TIMEOUT:J = 0x3e8L


# instance fields
.field private acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectable:Z

.field private volatile selector:Ljava/nio/channels/Selector;

.field private sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 111
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 120
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 121
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 127
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 81
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    .line 93
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 95
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->init()V

    .line 131
    iput-boolean v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_0
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 137
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 134
    :catch_1
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    throw v1

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :goto_2
    iget-boolean v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v1, :cond_1

    .line 139
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 142
    goto :goto_3

    .line 140
    :catch_3
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v0
.end method

.method static synthetic access$002(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # J

    .line 68
    iput-wide p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # J

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->notifyIdleSessions(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    .line 68
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # Ljava/util/Set;

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->processReadySessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # J

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushSessions(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .line 68
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->unregisterHandles()I

    move-result v0

    return v0
.end method

.method private flush(Lorg/apache/mina/transport/socket/nio/NioSession;J)Z
    .locals 10
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 380
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    .line 381
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    const/4 v3, 0x1

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 383
    .local v1, "maxWrittenBytes":I
    const/4 v2, 0x0

    .line 387
    .local v2, "writtenBytes":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v4

    .line 389
    .local v4, "req":Lorg/apache/mina/core/write/WriteRequest;
    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 390
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v6

    move-object v4, v6

    .line 392
    if-nez v4, :cond_0

    .line 393
    invoke-virtual {p0, p1, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    nop

    .line 434
    .end local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    invoke-virtual {p1, v2, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    .line 435
    nop

    .line 437
    return v3

    .line 397
    .restart local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 400
    :cond_1
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 402
    .local v6, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 404
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 405
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 406
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 407
    goto :goto_0

    .line 410
    :cond_2
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v7

    .line 412
    .local v7, "destination":Ljava/net/SocketAddress;
    if-nez v7, :cond_3

    .line 413
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    move-object v7, v9

    .line 416
    :cond_3
    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v9

    .line 418
    .local v9, "localWrittenBytes":I
    if-eqz v9, :cond_5

    if-lt v2, v1, :cond_4

    goto :goto_1

    .line 424
    :cond_4
    invoke-virtual {p0, p1, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 427
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 428
    add-int/2addr v2, v9

    .line 429
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 430
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 432
    .end local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .end local v6    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v7    # "destination":Ljava/net/SocketAddress;
    .end local v9    # "localWrittenBytes":I
    goto :goto_0

    .line 420
    .restart local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v6    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v7    # "destination":Ljava/net/SocketAddress;
    .restart local v9    # "localWrittenBytes":I
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    nop

    .line 434
    invoke-virtual {p1, v2, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    .line 422
    return v5

    .line 434
    .end local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .end local v6    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v7    # "destination":Ljava/net/SocketAddress;
    .end local v9    # "localWrittenBytes":I
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v2, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    .line 435
    throw v3
.end method

.method private flushSessions(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .line 356
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 358
    .local v0, "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    if-nez v0, :cond_0

    .line 359
    nop

    .line 376
    .end local v0    # "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    return-void

    .line 364
    .restart local v0    # "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->unscheduledForFlush()V

    .line 367
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lorg/apache/mina/transport/socket/nio/NioSession;J)Z

    move-result v1

    .line 369
    .local v1, "flushedAll":Z
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->isScheduledForFlush()Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    invoke-direct {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "flushedAll":Z
    :cond_1
    goto :goto_1

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 375
    .end local v0    # "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0
.end method

.method private newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 5
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 323
    .local v0, "handle":Ljava/nio/channels/DatagramChannel;
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    invoke-interface {v2, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->recycle(Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 332
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    if-eqz v2, :cond_0

    .line 333
    monitor-exit v1

    return-object v2

    .line 337
    :cond_0
    invoke-virtual {p0, p0, v0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object v3

    .line 338
    .local v3, "newSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/mina/core/session/IoSessionRecycler;->put(Lorg/apache/mina/core/session/IoSession;)V

    .line 339
    move-object v2, v3

    .line 340
    .end local v3    # "newSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 345
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 346
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 340
    .end local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 324
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown local address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private notifyIdleSessions(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 475
    iget-wide v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 476
    iput-wide p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    .line 477
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    .line 479
    :cond_0
    return-void
.end method

.method private processReadySessions(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 266
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/DatagramChannel;

    .line 268
    .local v2, "handle":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-direct {p0, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->readHandle(Ljava/nio/channels/DatagramChannel;)V

    .line 273
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getManagedSessions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/session/IoSession;

    .line 275
    .local v4, "session":Lorg/apache/mina/core/session/IoSession;
    move-object v5, v4

    check-cast v5, Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 277
    .local v5, "nioSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    invoke-virtual {v5}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v6

    if-ne v6, v2, :cond_1

    .line 278
    invoke-direct {p0, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v4    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local v5    # "nioSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    :cond_1
    goto :goto_1

    .line 287
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    .end local v2    # "handle":Ljava/nio/channels/DatagramChannel;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 288
    goto :goto_0

    .line 287
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 288
    throw v1

    .line 290
    :cond_3
    return-void
.end method

.method private readHandle(Ljava/nio/channels/DatagramChannel;)V
    .locals 4
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 307
    .local v0, "readBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    .line 309
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 312
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 314
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->isReadSuspended()Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 318
    .end local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_0
    return-void
.end method

.method private registerHandles()I
    .locals 8

    .line 218
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 220
    .local v0, "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v0, :cond_0

    .line 221
    nop

    .line 257
    .end local v0    # "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    const/4 v0, 0x0

    return v0

    .line 224
    .restart local v0    # "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v1, "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;Ljava/nio/channels/DatagramChannel;>;"
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    .line 229
    .local v4, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    .line 230
    .local v5, "handle":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {p0, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    nop

    .end local v4    # "socketAddress":Ljava/net/SocketAddress;
    .end local v5    # "handle":Ljava/nio/channels/DatagramChannel;
    goto :goto_1

    .line 233
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 235
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 236
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 238
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    .line 246
    .restart local v5    # "handle":Ljava/nio/channels/DatagramChannel;
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    goto :goto_3

    .line 247
    :catch_0
    move-exception v6

    .line 248
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 250
    .end local v5    # "handle":Ljava/nio/channels/DatagramChannel;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_2

    .line 252
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 238
    :cond_3
    return v3

    .line 243
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 239
    :catch_1
    move-exception v3

    .line 240
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    .line 246
    .local v4, "handle":Ljava/nio/channels/DatagramChannel;
    :try_start_3
    invoke-virtual {p0, v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 249
    goto :goto_5

    .line 247
    :catch_2
    move-exception v5

    .line 248
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 250
    .end local v4    # "handle":Ljava/nio/channels/DatagramChannel;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_4

    .line 252
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 255
    .end local v0    # "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    .end local v1    # "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;Ljava/nio/channels/DatagramChannel;>;"
    .end local v2    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :cond_5
    goto/16 :goto_0

    .line 243
    .restart local v0    # "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    .restart local v1    # "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;Ljava/nio/channels/DatagramChannel;>;"
    .restart local v2    # "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :goto_6
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    .line 246
    .local v5, "handle":Ljava/nio/channels/DatagramChannel;
    :try_start_4
    invoke-virtual {p0, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 249
    goto :goto_8

    .line 247
    :catch_3
    move-exception v6

    .line 248
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 250
    .end local v5    # "handle":Ljava/nio/channels/DatagramChannel;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8
    goto :goto_7

    .line 252
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 254
    :cond_7
    throw v3
.end method

.method private scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->setScheduledForFlush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 298
    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startupAcceptor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 485
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 487
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 488
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 493
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    .line 495
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 499
    :goto_0
    return-void
.end method

.method private unregisterHandles()I
    .locals 7

    .line 441
    const/4 v0, 0x0

    .line 444
    .local v0, "nHandles":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 445
    .local v1, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v1, :cond_0

    .line 446
    nop

    .line 470
    .end local v1    # "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    return v0

    .line 450
    .restart local v1    # "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    .line 451
    .local v3, "socketAddress":Ljava/net/SocketAddress;
    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    .line 453
    .local v4, "handle":Ljava/nio/channels/DatagramChannel;
    if-nez v4, :cond_1

    .line 454
    goto :goto_1

    .line 458
    :cond_1
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    .line 459
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 464
    goto :goto_3

    .line 463
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 460
    :catch_0
    move-exception v5

    .line 461
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 465
    .end local v3    # "socketAddress":Ljava/net/SocketAddress;
    .end local v4    # "handle":Ljava/nio/channels/DatagramChannel;
    :goto_3
    goto :goto_1

    .line 463
    .restart local v3    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v4    # "handle":Ljava/nio/channels/DatagramChannel;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 464
    throw v2

    .line 467
    .end local v3    # "socketAddress":Ljava/net/SocketAddress;
    .end local v4    # "handle":Ljava/nio/channels/DatagramChannel;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 468
    .end local v1    # "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->add(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public add(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 511
    return-void
.end method

.method protected final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 524
    .local v0, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 534
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 537
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 538
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 541
    nop

    .line 544
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 546
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    .line 553
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 555
    .local v1, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    .line 556
    .local v3, "handle":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {p0, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v3    # "handle":Ljava/nio/channels/DatagramChannel;
    goto :goto_0

    .line 559
    :cond_0
    return-object v1

    .line 547
    .end local v1    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 540
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 541
    throw v1
.end method

.method protected close(Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 565
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 570
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 571
    return-void
.end method

.method protected destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 577
    :cond_0
    return-void
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->unbind()V

    .line 585
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 586
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 587
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public flush(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 594
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 597
    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 601
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 606
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public final getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .line 624
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    .line 503
    return-void
.end method

.method protected isReadable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 2
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;

    .line 628
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 630
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    return v1

    .line 631
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method protected isWritable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 2
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;

    .line 638
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 640
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    return v1

    .line 641
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method protected localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;
    .locals 7
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 648
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 649
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 651
    .local v1, "inetAddress":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    move-object v2, v1

    check-cast v2, Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 656
    .local v2, "ipV6Address":[B
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 658
    .local v4, "ipV4Address":[B
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    invoke-static {v4}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 661
    .local v3, "inet4Adress":Ljava/net/InetAddress;
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v5

    .line 663
    .end local v2    # "ipV6Address":[B
    .end local v3    # "inet4Adress":Ljava/net/InetAddress;
    .end local v4    # "ipV4Address":[B
    :cond_0
    return-object v0
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 4
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 686
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 690
    if-eqz p1, :cond_1

    .line 694
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isActive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 700
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 703
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/mina/core/RuntimeIoException;

    const-string v3, "Failed to create a session."

    invoke-direct {v2, v3, v1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    throw v2

    .line 701
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v1

    .line 702
    .local v1, "e":Ljava/lang/Throwable;
    nop

    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    throw v1

    .line 696
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t create a session from a unbound service."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    throw v1

    .line 706
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 691
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Acceptor is being disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 2
    .param p2, "handle"    # Ljava/nio/channels/DatagramChannel;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .line 669
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v0}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 671
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;Ljava/net/SocketAddress;)V

    .line 676
    .local v1, "newSession":Lorg/apache/mina/transport/socket/nio/NioDatagramSession;
    invoke-virtual {v1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 678
    return-object v1

    .line 672
    .end local v1    # "newSession":Lorg/apache/mina/transport/socket/nio/NioDatagramSession;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 6
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 710
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 711
    .local v0, "ch":Ljava/nio/channels/DatagramChannel;
    const/4 v1, 0x0

    .line 713
    .local v1, "success":Z
    :try_start_0
    new-instance v2, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;

    invoke-direct {v2, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 714
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    nop

    .line 732
    :try_start_2
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    const/4 v1, 0x1

    .line 735
    if-nez v1, :cond_0

    .line 736
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    .line 740
    :cond_0
    return-object v0

    .line 718
    :catch_0
    move-exception v2

    .line 721
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while binding on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\noriginal message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "newMessage":Ljava/lang/String;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 724
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 727
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 729
    nop

    .end local v0    # "ch":Ljava/nio/channels/DatagramChannel;
    .end local v1    # "success":Z
    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "localAddress":Ljava/net/SocketAddress;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 735
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "newMessage":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "ch":Ljava/nio/channels/DatagramChannel;
    .restart local v1    # "success":Z
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "localAddress":Ljava/net/SocketAddress;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 736
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    .line 738
    :cond_1
    throw v2
.end method

.method protected receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "buffer"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 744
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->remove(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public remove(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 752
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 753
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 754
    return-void
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected select(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    return v0
.end method

.method protected selectedHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "buffer"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 769
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetSocketAddress;

    .line 774
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    .line 775
    return-void
.end method

.method protected setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "isInterested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 778
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 780
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_0

    .line 781
    return-void

    .line 784
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 786
    .local v1, "newInterestOps":I
    if-eqz p2, :cond_1

    .line 787
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 789
    :cond_1
    and-int/lit8 v1, v1, -0x5

    .line 792
    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 793
    return-void
.end method

.method public final setSessionRecycler(Lorg/apache/mina/core/session/IoSessionRecycler;)V
    .locals 3
    .param p1, "sessionRecycler"    # Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 797
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 802
    if-nez p1, :cond_0

    .line 803
    sget-object v1, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    move-object p1, v1

    .line 806
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 807
    monitor-exit v0

    .line 808
    return-void

    .line 799
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "sessionRecycler can\'t be set while the acceptor is bound."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .end local p1    # "sessionRecycler":Lorg/apache/mina/core/session/IoSessionRecycler;
    throw v1

    .line 807
    .restart local p0    # "this":Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .restart local p1    # "sessionRecycler":Lorg/apache/mina/core/session/IoSessionRecycler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final unbind0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 815
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 817
    .local v0, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 819
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 821
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 823
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    .line 826
    return-void

    .line 824
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->updateTrafficControl(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 834
    return-void
.end method

.method protected wakeup()V
    .locals 1

    .line 837
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 838
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 11
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 847
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    .line 848
    .local v2, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v3

    .line 849
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v4

    const/4 v5, 0x1

    ushr-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 851
    .local v3, "maxWrittenBytes":I
    const/4 v4, 0x0

    .line 855
    .local v4, "writtenBytes":I
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 857
    .local v6, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 859
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 860
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 861
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 862
    return-void

    .line 868
    :cond_0
    :goto_0
    const/4 v7, 0x0

    if-nez p2, :cond_2

    .line 869
    :try_start_0
    invoke-interface {v2, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v9

    move-object p2, v9

    .line 871
    if-nez p2, :cond_1

    .line 872
    invoke-virtual {p0, p1, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 873
    goto :goto_2

    .line 876
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 879
    :cond_2
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v6, v9

    .line 881
    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v9

    if-nez v9, :cond_3

    .line 883
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 884
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v7

    invoke-interface {v7, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 885
    goto :goto_0

    .line 888
    :cond_3
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v9

    .line 890
    .local v9, "destination":Ljava/net/SocketAddress;
    if-nez v9, :cond_4

    .line 891
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v10

    move-object v9, v10

    .line 894
    :cond_4
    invoke-virtual {p0, p1, v6, v9}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v10

    .line 896
    .local v10, "localWrittenBytes":I
    if-eqz v10, :cond_6

    if-lt v4, v3, :cond_5

    goto :goto_1

    .line 905
    :cond_5
    invoke-virtual {p0, p1, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 908
    invoke-virtual {p1, v8}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 909
    add-int/2addr v4, v10

    .line 910
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 912
    goto :goto_2

    .line 898
    :cond_6
    :goto_1
    invoke-virtual {p0, p1, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 900
    invoke-interface {v2, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 901
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    goto :goto_2

    .line 918
    .end local v9    # "destination":Ljava/net/SocketAddress;
    .end local v10    # "localWrittenBytes":I
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 915
    :catch_0
    move-exception v5

    .line 916
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p1, v4, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    .line 919
    nop

    .line 920
    return-void

    .line 918
    :goto_3
    invoke-virtual {p1, v4, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    .line 919
    throw v5
.end method
