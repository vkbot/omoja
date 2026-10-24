.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SELECT_TIMEOUT:J = 0x3e8L

.field private static final threadIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final newSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<",
            "TS;>.Processor;>;"
        }
    .end annotation
.end field

.field private final removingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final threadName:Ljava/lang/String;

.field private final trafficControllingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/apache/mina/core/service/IoProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 124
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Lorg/apache/mina/core/future/DefaultIoFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->nextThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    .line 131
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J

    .line 68
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    return-object v0
.end method

.method private nextThreadName()Ljava/lang/String;
    .locals 5

    .line 142
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .local v1, "threadId":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v1, :cond_0

    .line 148
    const/4 v2, 0x1

    .local v2, "newThreadId":I
    goto :goto_0

    .line 151
    .end local v2    # "newThreadId":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 155
    .restart local v2    # "newThreadId":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private read(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 506
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    .line 507
    .local v0, "config":Lorg/apache/mina/core/session/IoSessionConfig;
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    .line 508
    .local v1, "bufferSize":I
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 510
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v3

    .line 513
    .local v3, "hasFragmentation":Z
    const/4 v4, 0x0

    .line 517
    .local v4, "readBytes":I
    if-eqz v3, :cond_1

    .line 519
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v5

    move v6, v5

    .local v6, "ret":I
    if-lez v5, :cond_2

    .line 520
    add-int/2addr v4, v6

    .line 522
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    .line 523
    goto :goto_0

    .line 534
    .end local v6    # "ret":I
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 527
    :cond_1
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    .line 529
    .restart local v6    # "ret":I
    if-lez v6, :cond_2

    .line 530
    move v4, v6

    .line 534
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 535
    nop

    .line 537
    if-lez v4, :cond_5

    .line 538
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    .line 539
    .local v5, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v5, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 540
    const/4 v2, 0x0

    .line 542
    if-eqz v3, :cond_4

    .line 543
    shl-int/lit8 v7, v4, 0x1

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 544
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseReadBufferSize()V

    goto :goto_1

    .line 545
    :cond_3
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v7

    if-ne v4, v7, :cond_4

    .line 546
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBufferSize()V

    .line 549
    .end local v5    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_4
    :goto_1
    goto :goto_2

    .line 551
    :cond_5
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 554
    :goto_2
    if-gez v6, :cond_6

    .line 555
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    .line 556
    .restart local v5    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireInputClosed()V

    .line 568
    .end local v4    # "readBytes":I
    .end local v5    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .end local v6    # "ret":I
    :cond_6
    goto :goto_5

    .line 558
    :catch_0
    move-exception v4

    goto :goto_4

    .line 534
    .restart local v4    # "readBytes":I
    :goto_3
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 535
    nop

    .end local v0    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local v1    # "bufferSize":I
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "hasFragmentation":Z
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .end local p1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    .restart local v0    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local v1    # "bufferSize":I
    .restart local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v3    # "hasFragmentation":Z
    .local v4, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .restart local p1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_4
    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_8

    instance-of v5, v4, Ljava/net/PortUnreachableException;

    if-eqz v5, :cond_7

    const-class v5, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v0

    check-cast v5, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 562
    invoke-virtual {v5}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isCloseOnPortUnreachable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 563
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 566
    :cond_8
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    .line 567
    .restart local v5    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v5, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 569
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_5
    return-void
.end method

.method private scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 421
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    return-void
.end method

.method private startupProcessor()V
    .locals 4

    .line 469
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .line 471
    .local v0, "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    if-nez v0, :cond_0

    .line 472
    new-instance v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V

    move-object v0, v1

    .line 474
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 482
    return-void
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 409
    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract allSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method protected abstract allSessionsCount()I
.end method

.method protected abstract destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final dispose()V
    .locals 2

    .line 179
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    .line 185
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 189
    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    .line 190
    return-void

    .line 186
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 180
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract doDispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 447
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 451
    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/session/SessionState;"
        }
    .end annotation
.end method

.method protected abstract init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isBrokenConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isDisposed()Z
    .locals 1

    .line 171
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    .line 163
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method protected abstract isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isSelectorEmpty()Z
.end method

.method protected abstract isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract registerNewSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 416
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 417
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 418
    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method protected abstract setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/file/FileRegion;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_1

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 581
    .local v3, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 585
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_1
    nop

    .line 586
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 585
    :goto_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    goto :goto_3

    .line 587
    :catch_1
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 589
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_3
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficMask(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 462
    return-void
.end method

.method protected abstract wakeup()V
.end method

.method protected abstract write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .line 431
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 433
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 435
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 438
    :cond_0
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method
