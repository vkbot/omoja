.class public Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "OrderedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;,
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_THREAD_POOL_SIZE:I = 0x0

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1e

.field private static final DEFAULT_MAX_THREAD_POOL:I = 0x10

.field private static final EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private completedTaskCount:J

.field private final eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile shutdown:Z

.field private final waitingSessions:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const-class v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    .line 68
    new-instance v1, Lorg/apache/mina/core/session/DummySession;

    invoke-direct {v1}, Lorg/apache/mina/core/session/DummySession;-><init>()V

    sput-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    .line 71
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "tasksQueue"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 97
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 97
    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "maximumPoolSize"    # I

    .line 111
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 111
    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 113
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .line 125
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 127
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 140
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 141
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 170
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 171
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 13
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "eventQueueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 188
    move-object v9, p0

    move v10, p1

    move v11, p2

    move-object/from16 v12, p7

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    if-ltz v10, :cond_2

    .line 195
    if-lez v11, :cond_1

    if-lt v11, v10, :cond_1

    .line 200
    invoke-super {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 201
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 204
    if-nez v12, :cond_0

    .line 205
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0

    .line 207
    :cond_0
    iput-object v12, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "corePoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "eventQueueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 155
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 156
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 55
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p1, "x1"    # J

    .line 55
    iput-wide p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    return-wide p1
.end method

.method private addWorker()V
    .locals 5

    .line 249
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 251
    monitor-exit v0

    return-void

    .line 255
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    .line 256
    .local v1, "worker":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 258
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 264
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 266
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v4, :cond_1

    .line 267
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iput v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    .line 269
    .end local v1    # "worker":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    .line 276
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 281
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 283
    :cond_2
    :goto_0
    return-void
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 501
    instance-of v0, p1, Lorg/apache/mina/core/session/IoEvent;

    if-eqz v0, :cond_0

    .line 504
    return-void

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must be an IoEvent or its subclass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 215
    sget-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 217
    .local v0, "queue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    if-nez v0, :cond_0

    .line 218
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    move-object v0, v1

    .line 219
    sget-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 221
    .local v1, "oldQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    if-eqz v1, :cond_0

    .line 222
    move-object v0, v1

    .line 226
    .end local v1    # "oldQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    :cond_0
    return-object v0
.end method

.method private print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 6
    .param p2, "event"    # Lorg/apache/mina/core/session/IoEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lorg/apache/mina/core/session/IoEvent;",
            ")V"
        }
    .end annotation

    .line 411
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Adding event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 413
    const/4 v1, 0x1

    .line 414
    .local v1, "first":Z
    const-string v2, "\nQueue : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 417
    .local v3, "elem":Ljava/lang/Runnable;
    const-string v4, ", "

    if-eqz v1, :cond_0

    .line 418
    const/4 v1, 0x0

    goto :goto_1

    .line 420
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_1
    move-object v5, v3

    check-cast v5, Lorg/apache/mina/core/session/IoEvent;

    invoke-virtual {v5}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .end local v3    # "elem":Ljava/lang/Runnable;
    goto :goto_0

    .line 426
    :cond_1
    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 431
    :cond_2
    return-void
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 497
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 498
    return-void
.end method

.method private removeWorker()V
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 288
    monitor-exit v0

    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 321
    .local v0, "deadline":J
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 322
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 324
    .local v3, "waitTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 325
    goto :goto_1

    .line 328
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 329
    .end local v3    # "waitTime":J
    goto :goto_0

    .line 330
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v2

    return v2

    .line 330
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 438
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    .line 443
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 445
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 448
    .local v0, "event":Lorg/apache/mina/core/session/IoEvent;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    .line 451
    .local v1, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v2

    .line 452
    .local v2, "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v3

    .line 459
    .local v3, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    iget-object v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v4, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v4

    .line 461
    .local v4, "offerEvent":Z
    if-eqz v4, :cond_3

    .line 463
    monitor-enter v3

    .line 465
    :try_start_0
    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 467
    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z

    .line 469
    const/4 v5, 0x1

    .local v5, "offerSession":Z
    goto :goto_0

    .line 471
    .end local v5    # "offerSession":Z
    :cond_1
    const/4 v5, 0x0

    .line 474
    .restart local v5    # "offerSession":Z
    :goto_0
    sget-object v6, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    invoke-direct {p0, v3, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V

    .line 477
    :cond_2
    monitor-exit v3

    goto :goto_1

    .end local v5    # "offerSession":Z
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 479
    :cond_3
    const/4 v5, 0x0

    .line 482
    .restart local v5    # "offerSession":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 486
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 489
    :cond_4
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorkerIfNecessary()V

    .line 491
    if-eqz v4, :cond_5

    .line 492
    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v6, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 494
    :cond_5
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    .line 511
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompletedTaskCount()J
    .locals 7

    .line 521
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-wide v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    .line 523
    .local v1, "answer":J
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    .line 524
    .local v4, "w":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->access$400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 525
    .end local v4    # "w":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    goto :goto_0

    .line 527
    :cond_0
    monitor-exit v0

    return-wide v1

    .line 528
    .end local v1    # "answer":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLargestPoolSize()I
    .locals 1

    .line 536
    iget v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .line 554
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 347
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminating()Z
    .locals 2

    .line 562
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartAllCoreThreads()I
    .locals 4

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "answer":I
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 574
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 575
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 576
    add-int/lit8 v0, v0, 0x1

    .line 574
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 578
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 579
    return v0

    .line 578
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prestartCoreThread()Z
    .locals 3

    .line 587
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 589
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

    .line 590
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 592
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public purge()V
    .locals 0

    .line 611
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 618
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 619
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 620
    .local v0, "event":Lorg/apache/mina/core/session/IoEvent;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    .line 621
    .local v1, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 623
    .local v2, "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    if-nez v2, :cond_0

    .line 624
    const/4 v3, 0x0

    return v3

    .line 628
    :cond_0
    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v3

    .line 630
    .local v3, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    monitor-enter v3

    .line 631
    :try_start_0
    invoke-interface {v3, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 632
    .local v4, "removed":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    if-eqz v4, :cond_1

    .line 635
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v5

    invoke-interface {v5, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 638
    :cond_1
    return v4

    .line 632
    .end local v4    # "removed":Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setCorePoolSize(I)V
    .locals 3
    .param p1, "corePoolSize"    # I

    .line 646
    if-ltz p1, :cond_2

    .line 649
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 653
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 654
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 655
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 656
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    .line 655
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 660
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "corePoolSize exceeds maximumPoolSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "corePoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumPoolSize(I)V
    .locals 3
    .param p1, "maximumPoolSize"    # I

    .line 299
    if-lez p1, :cond_1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 303
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 304
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 305
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .line 306
    .local v1, "difference":I
    :goto_0
    if-lez v1, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    .line 308
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 310
    .end local v1    # "difference":I
    :cond_0
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 242
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 361
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    .line 367
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 369
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown()V

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IoSession;

    move-object v2, v1

    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    if-eqz v1, :cond_2

    .line 385
    sget-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    if-ne v2, v1, :cond_0

    .line 386
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 387
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 388
    goto :goto_0

    .line 391
    :cond_0
    sget-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .line 393
    .local v1, "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 395
    :try_start_0
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 396
    .local v5, "task":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v6, p0, v7}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 397
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    nop

    .end local v5    # "task":Ljava/lang/Runnable;
    goto :goto_1

    .line 400
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 401
    monitor-exit v3

    .line 402
    .end local v1    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    goto :goto_0

    .line 401
    .restart local v1    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 404
    .end local v1    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    :cond_2
    return-object v0
.end method
