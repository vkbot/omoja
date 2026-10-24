.class public abstract Lorg/apache/mina/core/service/AbstractIoService;
.super Ljava/lang/Object;
.source "AbstractIoService.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;

.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final createdExecutor:Z

.field protected final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

.field private handler:Lorg/apache/mina/core/service/IoHandler;

.field private final listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

.field private final serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

.field protected final sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

.field private sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

.field private final stats:Lorg/apache/mina/core/service/IoServiceStatistics;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/mina/core/service/AbstractIoService;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/AbstractIoService$1;-><init>(Lorg/apache/mina/core/service/AbstractIoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

    .line 161
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    .line 163
    new-instance v0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/IoServiceStatistics;-><init>(Lorg/apache/mina/core/service/IoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    .line 195
    if-eqz p1, :cond_3

    .line 199
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getSessionConfigType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;-><init>(Lorg/apache/mina/core/service/IoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    .line 211
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->add(Lorg/apache/mina/core/service/IoServiceListener;)V

    .line 214
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 218
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 220
    if-nez p2, :cond_0

    .line 221
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    goto :goto_0

    .line 224
    :cond_0
    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    .line 228
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/mina/core/service/AbstractIoService;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->threadName:Ljava/lang/String;

    .line 229
    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionConfig type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getSessionConfigType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransportMetadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addListener(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .line 268
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->add(Lorg/apache/mina/core/service/IoServiceListener;)V

    .line 269
    return-void
.end method

.method public final broadcast(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/mina/core/service/AbstractIoService$2;-><init>(Lorg/apache/mina/core/service/AbstractIoService;Ljava/util/List;)V

    return-object v1
.end method

.method public final dispose()V
    .locals 1

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoService;->dispose(Z)V

    .line 309
    return-void
.end method

.method public final dispose(Z)V
    .locals 5
    .param p1, "awaitTermination"    # Z

    .line 316
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    if-eqz v0, :cond_0

    .line 317
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 322
    iput-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->dispose0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 334
    .local v0, "e":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 335
    if-eqz p1, :cond_4

    .line 338
    :try_start_3
    sget-object v1, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    sget-object v1, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "awaitTermination on {} called by thread=[{}]"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, p0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    :cond_2
    const-wide/32 v3, 0x7fffffff

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 344
    sget-object v1, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    sget-object v1, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "awaitTermination on {} finished"

    invoke-interface {v1, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    :cond_3
    goto :goto_1

    .line 347
    :catch_1
    move-exception v1

    .line 348
    .local v1, "e1":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "awaitTermination on [{}] was interrupted"

    invoke-interface {v3, v4, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 354
    .end local v0    # "e":Ljava/util/concurrent/ExecutorService;
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    .line 355
    return-void

    .line 330
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method protected abstract dispose0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final executeWorker(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "worker"    # Ljava/lang/Runnable;

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method protected final executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "worker"    # Ljava/lang/Runnable;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->threadName:Ljava/lang/String;

    .line 480
    .local v0, "actualThreadName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    invoke-direct {v2, p1, v0}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method protected finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .line 542
    return-void
.end method

.method public final getActivationTime()J
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getActivationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    instance-of v1, v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    if-eqz v1, :cond_0

    .line 257
    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current filter chain builder is not a DefaultIoFilterChainBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    return-object v0
.end method

.method public final getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public final getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-object v0
.end method

.method public final getManagedSessionCount()I
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledWriteBytes()I
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getScheduledWriteBytes()I

    move-result v0

    return v0
.end method

.method public getScheduledWriteMessages()I
    .locals 1

    .line 595
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getScheduledWriteMessages()I

    move-result v0

    return v0
.end method

.method public final getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    return-object v0
.end method

.method public getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    return-object v0
.end method

.method protected final initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;
    .param p3, "sessionInitializer"    # Lorg/apache/mina/core/session/IoSessionInitializer;

    .line 488
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getLastReadTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastReadTime(J)V

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getLastWriteTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastWriteTime(J)V

    .line 501
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    move-result-object v1

    .line 502
    invoke-interface {v1, p1}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getAttributeMap(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V
    :try_end_0
    .catch Lorg/apache/mina/core/session/IoSessionInitializationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 507
    nop

    .line 510
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    move-result-object v1

    .line 511
    invoke-interface {v1, p1}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    .line 510
    invoke-virtual {v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    :try_end_1
    .catch Lorg/apache/mina/core/session/IoSessionInitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 516
    nop

    .line 518
    if-eqz p2, :cond_2

    instance-of v0, p2, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz v0, :cond_2

    .line 520
    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_2
    if-eqz p3, :cond_3

    .line 524
    invoke-interface {p3, p1, p2}, Lorg/apache/mina/core/session/IoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 527
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;->finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 528
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/mina/core/session/IoSessionInitializationException;

    const-string v2, "Failed to initialize a writeRequestQueue."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/session/IoSessionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 512
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 513
    .local v0, "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    throw v0

    .line 505
    .end local v0    # "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    :catch_2
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/mina/core/session/IoSessionInitializationException;

    const-string v2, "Failed to initialize an attributeMap."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/session/IoSessionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 504
    .local v0, "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    throw v0
.end method

.method public final isActive()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->isActive()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z

    return v0
.end method

.method public final removeListener(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .line 276
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->remove(Lorg/apache/mina/core/service/IoServiceListener;)V

    .line 277
    return-void
.end method

.method public final setFilterChainBuilder(Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;)V
    .locals 1
    .param p1, "builder"    # Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    goto :goto_0

    .line 247
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    .line 249
    :goto_0
    return-void
.end method

.method public final setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/mina/core/service/IoHandler;

    .line 394
    if-eqz p1, :cond_1

    .line 398
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 403
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler cannot be set while the service is active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSessionDataStructureFactory(Lorg/apache/mina/core/session/IoSessionDataStructureFactory;)V
    .locals 2
    .param p1, "sessionDataStructureFactory"    # Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    .line 418
    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    .line 427
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sessionDataStructureFactory cannot be set while the service is active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionDataStructureFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
