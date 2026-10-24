.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "AbstractPollingIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;"
    }
.end annotation


# instance fields
.field private acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<",
            "TS;TH;>.Acceptor;>;"
        }
    .end annotation
.end field

.field protected backlog:I

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "TH;>;"
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

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field protected reuseAddress:Z

.field private volatile selectable:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "processorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "processorCount"    # I
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2, p3, p4}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 157
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 196
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "createdProcessor"    # Z
    .param p5, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;Z",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 75
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    .line 87
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 101
    const/16 v0, 0x32

    iput v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 224
    if-eqz p3, :cond_2

    .line 228
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 229
    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    .line 233
    :try_start_0
    invoke-virtual {p0, p5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->init(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 237
    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 245
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :goto_0
    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 251
    :cond_0
    :goto_1
    return-void

    .line 243
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 240
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .end local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .end local p4    # "createdProcessor":Z
    .end local p5    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    throw v1

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .restart local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .restart local p4    # "createdProcessor":Z
    .restart local p5    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .end local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .end local p4    # "createdProcessor":Z
    .end local p5    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .restart local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .restart local p4    # "createdProcessor":Z
    .restart local p5    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    :goto_2
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v1, :cond_1

    .line 245
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 248
    goto :goto_3

    .line 246
    :catch_3
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "processor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 173
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "x2"    # Lorg/apache/mina/core/future/IoFuture;
    .param p3, "x3"    # Lorg/apache/mina/core/session/IoSessionInitializer;

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return v0
.end method

.method static synthetic access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method private startupAcceptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 398
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    .line 404
    .local v0, "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    if-nez v0, :cond_2

    .line 405
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 406
    new-instance v1, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V

    move-object v0, v1

    .line 408
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 414
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;TH;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
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

    .line 345
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 349
    .local v0, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 359
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 361
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 364
    nop

    .line 367
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 369
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    .line 376
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v1, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

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

    .line 379
    .local v3, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    goto :goto_0

    .line 382
    :cond_0
    return-object v1

    .line 370
    .end local v1    # "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 363
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 364
    throw v1
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unbind()V

    .line 334
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 335
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 336
    return-void
.end method

.method public getBacklog()I
    .locals 1

    .line 676
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    return v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .line 723
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract init(Ljava/nio/channels/spi/SelectorProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isReuseAddress()Z
    .locals 1

    .line 699
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    return v0
.end method

.method protected abstract localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/net/SocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 669
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
.end method

.method public setBacklog(I)V
    .locals 3
    .param p1, "backlog"    # I

    .line 686
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    iput p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 688
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .end local p1    # "backlog":I
    throw v1

    .line 692
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .restart local p1    # "backlog":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "reuseAddress"    # Z

    .line 709
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 715
    monitor-exit v0

    .line 716
    return-void

    .line 711
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .end local p1    # "reuseAddress":Z
    throw v1

    .line 715
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .restart local p1    # "reuseAddress":Z
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

    .line 421
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 423
    .local v0, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 425
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 427
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 428
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    .line 431
    return-void

    .line 429
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method protected abstract wakeup()V
.end method
