.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "AbstractPollingIoConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;,
        Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoConnector;"
    }
.end annotation


# instance fields
.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TS;TH;>.ConnectionRequest;>;"
        }
    .end annotation
.end field

.field private final connectQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TS;TH;>.ConnectionRequest;>;"
        }
    .end annotation
.end field

.field private final connectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TS;TH;>.Connector;>;"
        }
    .end annotation
.end field

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation
.end field

.field private volatile selectable:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V
    .locals 3
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

    .line 99
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    new-instance v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v0, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 100
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V
    .locals 3
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

    .line 120
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    new-instance v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v0, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
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

    .line 162
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 163
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "createdProcessor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;Z)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    .line 77
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v0}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 191
    if-eqz p3, :cond_2

    .line 195
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 196
    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->createdProcessor:Z

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->init()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez v0, :cond_0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :goto_0
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 206
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 203
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .end local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .end local p4    # "createdProcessor":Z
    throw v1

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .restart local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .restart local p4    # "createdProcessor":Z
    :catch_2
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .end local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .end local p4    # "createdProcessor":Z
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .restart local p1    # "sessionConfig":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .restart local p4    # "createdProcessor":Z
    :goto_2
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez v1, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    goto :goto_3

    .line 209
    :catch_3
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    throw v0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "processor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 2
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;Z)V

    .line 140
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "x2"    # Lorg/apache/mina/core/future/IoFuture;
    .param p3, "x3"    # Lorg/apache/mina/core/session/IoSessionInitializer;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->createdProcessor:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    .line 67
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method private startupWorker()V
    .locals 3

    .line 402
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectable:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 404
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;

    .line 409
    .local v0, "connector":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.Connector;"
    if-nez v0, :cond_1

    .line 410
    new-instance v1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V

    move-object v0, v1

    .line 412
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->executeWorker(Ljava/lang/Runnable;)V

    .line 416
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract allHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TH;>;"
        }
    .end annotation
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

.method protected abstract connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Ljava/net/SocketAddress;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 6
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

    .line 366
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    .local p3, "sessionInitializer":Lorg/apache/mina/core/session/IoSessionInitializer;, "Lorg/apache/mina/core/session/IoSessionInitializer<+Lorg/apache/mina/core/future/ConnectFuture;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    const/4 v1, 0x0

    .line 369
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 370
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    new-instance v2, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v2}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    .line 372
    .local v2, "future":Lorg/apache/mina/core/future/ConnectFuture;
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->processor:Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p0, v3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;

    move-result-object v3

    .line 373
    .local v3, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p0, v3, v2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 375
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    const/4 v1, 0x1

    .line 377
    nop

    .line 384
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 386
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    goto :goto_0

    .line 387
    :catch_0
    move-exception v4

    .line 388
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 377
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v2

    .line 380
    .end local v2    # "future":Lorg/apache/mina/core/future/ConnectFuture;
    .end local v3    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_1
    const/4 v1, 0x1

    .line 384
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 386
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 389
    :goto_1
    goto :goto_2

    .line 387
    :catch_1
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 393
    :cond_2
    :goto_2
    new-instance v2, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    invoke-direct {v2, p0, v0, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/lang/Object;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 394
    .local v2, "request":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->connectQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    .line 396
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    .line 398
    return-object v2

    .line 384
    .end local v2    # "request":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>.ConnectionRequest;"
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 381
    :catch_2
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v2}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 386
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 389
    goto :goto_3

    .line 387
    :catch_3
    move-exception v4

    .line 388
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 382
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v3

    .line 384
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 386
    :try_start_5
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->close(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 389
    goto :goto_5

    .line 387
    :catch_4
    move-exception v3

    .line 388
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 391
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    throw v2
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TS;TH;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->startupWorker()V

    .line 356
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    .line 357
    return-void
.end method

.method protected abstract finishConnect(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TS;TH;>.ConnectionRequest;"
        }
    .end annotation
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
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

.method protected abstract newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
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

.method protected abstract register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "TS;TH;>.ConnectionRequest;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select(I)I
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

.method protected abstract wakeup()V
.end method
