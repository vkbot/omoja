.class public Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;,
        Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;,
        Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_THREAD_POOL_SIZE:I = 0x0

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1e

.field private static final DEFAULT_MAX_THREAD_POOL:I = 0x10

.field private static final EXIT_SIGNAL:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private static final seq:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private completedTaskCount:J

.field private final eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile shutdown:Z

.field private final waitingSessions:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    const-class v0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    new-instance v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    new-instance v2, Lorg/apache/mina/core/session/DummySession;

    invoke-direct {v2}, Lorg/apache/mina/core/session/DummySession;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;-><init>(Lorg/apache/mina/core/session/IoSession;Ljava/util/Comparator;)V

    sput-object v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    .line 87
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "tasksQueue"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 112
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 113
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 112
    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .param p1, "maximumPoolSize"    # I

    .line 135
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 135
    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 137
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .line 162
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 164
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 180
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 181
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 219
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 220
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V
    .locals 14
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "eventQueueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lorg/apache/mina/filter/executor/IoEventQueueHandler;",
            "Ljava/util/Comparator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/mina/core/session/IoSession;>;"
    move-object v9, p0

    move v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p8

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

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 248
    if-ltz v10, :cond_3

    .line 252
    if-lez v11, :cond_2

    if-lt v11, v10, :cond_2

    .line 257
    invoke-super {p0, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 258
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 261
    if-nez v12, :cond_0

    .line 262
    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    iput-object v0, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0

    .line 264
    :cond_0
    iput-object v12, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 268
    :goto_0
    iput-object v13, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->comparator:Ljava/util/Comparator;

    .line 270
    if-nez v13, :cond_1

    .line 271
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    goto :goto_1

    .line 273
    :cond_1
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    .line 275
    :goto_1
    return-void

    .line 253
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_3
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
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "eventQueueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 199
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 201
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 9
    .param p1, "maximumPoolSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/mina/core/session/IoSession;>;"
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 149
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 148
    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/mina/core/session/IoSession;>;"
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    .line 122
    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;Ljava/util/Comparator;)V

    .line 124
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    .line 66
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    .line 66
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1500()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 66
    sget-object v0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    .line 66
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    .line 66
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700()Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
    .locals 1

    .line 66
    sget-object v0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;

    .line 66
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;
    .param p1, "x1"    # J

    .line 66
    iput-wide p1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->completedTaskCount:J

    return-wide p1
.end method

.method private addWorker()V
    .locals 5

    .line 315
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 317
    monitor-exit v0

    return-void

    .line 321
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$1;)V

    .line 322
    .local v1, "worker":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 324
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 330
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 332
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v4, :cond_1

    .line 333
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iput v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->largestPoolSize:I

    .line 335
    .end local v1    # "worker":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    .line 342
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->addWorker()V

    .line 347
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 349
    :cond_2
    :goto_0
    return-void
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 567
    instance-of v0, p1, Lorg/apache/mina/core/session/IoEvent;

    if-eqz v0, :cond_0

    .line 570
    return-void

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must be an IoEvent or its subclass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 281
    sget-object v0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 283
    .local v0, "queue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    if-nez v0, :cond_0

    .line 284
    new-instance v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;-><init>(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$1;)V

    move-object v0, v1

    .line 285
    sget-object v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 287
    .local v1, "oldQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    if-eqz v1, :cond_0

    .line 288
    move-object v0, v1

    .line 292
    .end local v1    # "oldQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
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

    .line 477
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
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

    .line 479
    const/4 v1, 0x1

    .line 480
    .local v1, "first":Z
    const-string v2, "\nQueue : ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 483
    .local v3, "elem":Ljava/lang/Runnable;
    const-string v4, ", "

    if-eqz v1, :cond_0

    .line 484
    const/4 v1, 0x0

    goto :goto_1

    .line 486
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :goto_1
    move-object v5, v3

    check-cast v5, Lorg/apache/mina/core/session/IoEvent;

    invoke-virtual {v5}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .end local v3    # "elem":Ljava/lang/Runnable;
    goto :goto_0

    .line 492
    :cond_1
    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    sget-object v2, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    sget-object v2, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 497
    :cond_2
    return-void
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 563
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 564
    return-void
.end method

.method private removeWorker()V
    .locals 3

    .line 352
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 354
    monitor-exit v0

    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
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

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 387
    .local v0, "deadline":J
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 388
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 390
    .local v3, "waitTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 391
    goto :goto_1

    .line 394
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 395
    .end local v3    # "waitTime":J
    goto :goto_0

    .line 396
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->isTerminated()Z

    move-result v2

    return v2

    .line 396
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 504
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 511
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 514
    .local v0, "event":Lorg/apache/mina/core/session/IoEvent;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    .line 517
    .local v1, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    move-result-object v2

    .line 518
    .local v2, "sessionTasksQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;

    move-result-object v3

    .line 525
    .local v3, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    iget-object v4, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v4, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v4

    .line 527
    .local v4, "offerEvent":Z
    if-eqz v4, :cond_3

    .line 529
    monitor-enter v3

    .line 531
    :try_start_0
    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 533
    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$300(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 534
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$302(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;Z)Z

    .line 535
    const/4 v5, 0x1

    .local v5, "offerSession":Z
    goto :goto_0

    .line 537
    .end local v5    # "offerSession":Z
    :cond_1
    const/4 v5, 0x0

    .line 540
    .restart local v5    # "offerSession":Z
    :goto_0
    sget-object v6, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    invoke-direct {p0, v3, v0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V

    .line 543
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

    .line 545
    :cond_3
    const/4 v5, 0x0

    .line 548
    .restart local v5    # "offerSession":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 552
    iget-object v6, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    iget-object v8, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->comparator:Ljava/util/Comparator;

    invoke-direct {v7, v1, v8}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;-><init>(Lorg/apache/mina/core/session/IoSession;Ljava/util/Comparator;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 555
    :cond_4
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->addWorkerIfNecessary()V

    .line 557
    if-eqz v4, :cond_5

    .line 558
    iget-object v6, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v6, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 560
    :cond_5
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    .line 577
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 578
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompletedTaskCount()J
    .locals 7

    .line 587
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-wide v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->completedTaskCount:J

    .line 589
    .local v1, "answer":J
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;

    .line 590
    .local v4, "w":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    invoke-static {v4}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;->access$400(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 591
    .end local v4    # "w":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$Worker;
    goto :goto_0

    .line 593
    :cond_0
    monitor-exit v0

    return-wide v1

    .line 594
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

    .line 602
    iget v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .line 610
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 612
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

    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .line 620
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 413
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminating()Z
    .locals 2

    .line 628
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartAllCoreThreads()I
    .locals 4

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "answer":I
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 640
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 641
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->addWorker()V

    .line 642
    add-int/lit8 v0, v0, 0x1

    .line 640
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 644
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 645
    return v0

    .line 644
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prestartCoreThread()Z
    .locals 3

    .line 653
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 655
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->addWorker()V

    .line 656
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 658
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public purge()V
    .locals 0

    .line 677
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 684
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    .line 685
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 686
    .local v0, "event":Lorg/apache/mina/core/session/IoEvent;
    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    .line 687
    .local v1, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v2, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 689
    .local v2, "sessionTasksQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    if-nez v2, :cond_0

    .line 690
    const/4 v3, 0x0

    return v3

    .line 694
    :cond_0
    invoke-static {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;

    move-result-object v3

    .line 696
    .local v3, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    monitor-enter v3

    .line 697
    :try_start_0
    invoke-interface {v3, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 698
    .local v4, "removed":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    if-eqz v4, :cond_1

    .line 701
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v5

    invoke-interface {v5, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 704
    :cond_1
    return v4

    .line 698
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

    .line 712
    if-ltz p1, :cond_2

    .line 715
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 719
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 720
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 721
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 722
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->removeWorker()V

    .line 721
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 726
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 716
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "corePoolSize exceeds maximumPoolSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
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

    .line 365
    if-lez p1, :cond_1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 370
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 371
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .line 372
    .local v1, "difference":I
    :goto_0
    if-lez v1, :cond_0

    .line 373
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->removeWorker()V

    .line 374
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 376
    .end local v1    # "difference":I
    :cond_0
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 366
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

    .line 308
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 427
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    .line 428
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->shutdown:Z

    .line 433
    iget-object v0, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 435
    iget-object v2, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 437
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 438
    return-void

    .line 437
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

    .line 445
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->shutdown()V

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    move-object v2, v1

    .local v2, "entry":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;
    if-eqz v1, :cond_2

    .line 451
    sget-object v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;

    if-ne v2, v1, :cond_0

    .line 452
    iget-object v3, p0, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 453
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 454
    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {v2}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionEntry;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v3, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;

    .line 459
    .local v1, "sessionTasksQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 461
    :try_start_0
    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;

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

    .line 462
    .local v5, "task":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v6, p0, v7}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 463
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    nop

    .end local v5    # "task":Ljava/lang/Runnable;
    goto :goto_1

    .line 466
    :cond_1
    invoke-static {v1}, Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;->access$200(Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 467
    monitor-exit v3

    .line 468
    .end local v1    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    goto :goto_0

    .line 467
    .restart local v1    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 470
    .end local v1    # "sessionTasksQueue":Lorg/apache/mina/filter/executor/PriorityThreadPoolExecutor$SessionQueue;
    :cond_2
    return-object v0
.end method
