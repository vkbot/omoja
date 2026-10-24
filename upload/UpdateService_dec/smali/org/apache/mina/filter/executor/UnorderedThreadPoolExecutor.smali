.class public Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "UnorderedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final EXIT_SIGNAL:Ljava/lang/Runnable;


# instance fields
.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile maximumPoolSize:I

.field private final queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private volatile shutdown:Z

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maximumPoolSize"    # I

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(II)V

    .line 97
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .line 106
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    .line 107
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 118
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 119
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 146
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 147
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 13
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 161
    move-object v9, p0

    move v10, p1

    move v11, p2

    move-object/from16 v12, p7

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    if-ltz v10, :cond_2

    .line 167
    if-eqz v11, :cond_1

    if-lt v11, v10, :cond_1

    .line 171
    if-nez v12, :cond_0

    .line 172
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    iput-object v0, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0

    .line 174
    :cond_0
    iput-object v12, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 177
    :goto_0
    iput v10, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 178
    iput v11, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    .line 179
    return-void

    .line 168
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

    .line 164
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
    .param p6, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 132
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 133
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .line 55
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .line 55
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # J

    .line 55
    iput-wide p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private addWorker()V
    .locals 5

    .line 194
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    if-lt v1, v2, :cond_0

    .line 196
    monitor-exit v0

    return-void

    .line 199
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V

    .line 200
    .local v1, "worker":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 202
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 208
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 210
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v4, :cond_1

    .line 211
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iput v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    .line 213
    .end local v1    # "worker":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 220
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    .line 222
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 224
    :cond_2
    :goto_0
    return-void
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 352
    instance-of v0, p1, Lorg/apache/mina/core/session/IoEvent;

    if-eqz v0, :cond_0

    .line 355
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must be an IoEvent or its subclass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 349
    return-void
.end method

.method private removeWorker()V
    .locals 3

    .line 227
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-gt v1, v2, :cond_0

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
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

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 261
    .local v0, "deadline":J
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 262
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 264
    .local v3, "waitTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 265
    goto :goto_1

    .line 268
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 269
    .end local v3    # "waitTime":J
    goto :goto_0

    .line 270
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v2

    return v2

    .line 270
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 327
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 333
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 334
    .local v0, "e":Lorg/apache/mina/core/session/IoEvent;
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v1

    .line 336
    .local v1, "offeredEvent":Z
    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 340
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorkerIfNecessary()V

    .line 342
    if-eqz v1, :cond_2

    .line 343
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 345
    :cond_2
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    .line 359
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompletedTaskCount()J
    .locals 7

    .line 366
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-wide v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    .line 368
    .local v1, "answer":J
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    .line 369
    .local v4, "w":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 370
    .end local v4    # "w":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    goto :goto_0

    .line 372
    :cond_0
    monitor-exit v0

    return-wide v1

    .line 373
    .end local v1    # "answer":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCorePoolSize()I
    .locals 1

    .line 440
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    .line 378
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .line 383
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .line 390
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 281
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminating()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartAllCoreThreads()I
    .locals 4

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "answer":I
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 404
    :try_start_0
    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 405
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 404
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 408
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 409
    return v0

    .line 408
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prestartCoreThread()Z
    .locals 3

    .line 414
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_0

    .line 416
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    .line 417
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 420
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 421
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public purge()V
    .locals 0

    .line 427
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 431
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 432
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v1, p0, v2}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 435
    :cond_0
    return v0
.end method

.method public setCorePoolSize(I)V
    .locals 3
    .param p1, "corePoolSize"    # I

    .line 445
    if-ltz p1, :cond_2

    .line 448
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    if-gt p1, v0, :cond_1

    .line 452
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 453
    :try_start_0
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-le v1, p1, :cond_0

    .line 454
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 455
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->removeWorker()V

    .line 454
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 449
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "corePoolSize exceeds maximumPoolSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
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

    .line 242
    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-lt p1, v0, :cond_1

    .line 246
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 247
    :try_start_0
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    .line 248
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .line 249
    .local v1, "difference":I
    :goto_0
    if-lez v1, :cond_0

    .line 250
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->removeWorker()V

    .line 251
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 253
    .end local v1    # "difference":I
    :cond_0
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 243
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

    .line 191
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 292
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    .line 298
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown()V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v2, v1

    .local v2, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 312
    sget-object v1, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    if-ne v2, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    sget-object v3, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 314
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 315
    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v1, p0, v3}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 319
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    return-object v0
.end method
