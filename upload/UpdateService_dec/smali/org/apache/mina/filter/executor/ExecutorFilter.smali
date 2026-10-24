.class public Lorg/apache/mina/filter/executor/ExecutorFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ExecutorFilter.java"


# static fields
.field private static final BASE_THREAD_NUMBER:I = 0x0

.field private static final DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

.field private static final DEFAULT_KEEPALIVE_TIME:J = 0x1eL

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x10

.field private static final MANAGEABLE_EXECUTOR:Z = true

.field private static final NOT_MANAGEABLE_EXECUTOR:Z = false


# instance fields
.field private eventTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private manageableExecutor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 155
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 157
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 161
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 162
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .param p1, "maximumPoolSize"    # I

    .line 172
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 174
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 178
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 179
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .line 190
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 192
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 193
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 196
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 197
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 208
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 210
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 211
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 214
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 215
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 248
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 250
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 254
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 255
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 269
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 271
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 275
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    move-object v3, p0

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 276
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .param p8, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 401
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 403
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 407
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    move-object v2, p0

    move-object/from16 v3, p8

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 408
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 379
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 381
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 385
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 386
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 228
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 230
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 231
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 234
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 235
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .param p7, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 358
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 360
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 361
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 364
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    move-object v2, p0

    move-object/from16 v3, p7

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 365
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 337
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 339
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    .line 340
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 343
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p6}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 344
    return-void
.end method

.method public varargs constructor <init>(II[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 317
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 319
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 320
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 323
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 324
    return-void
.end method

.method public varargs constructor <init>(I[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "maximumPoolSize"    # I
    .param p2, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 300
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 302
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 303
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 306
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 415
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 417
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 418
    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 426
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 429
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 284
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 286
    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 287
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 290
    .local v0, "newExecutor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 291
    return-void
.end method

.method private varargs init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "manageableExecutor"    # Z
    .param p3, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 461
    if-eqz p1, :cond_0

    .line 465
    invoke-direct {p0, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V

    .line 466
    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    .line 467
    iput-boolean p2, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    .line 468
    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 3
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .line 438
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 439
    :cond_0
    sget-object p1, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    .line 443
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    .line 446
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    return-void

    .line 447
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 476
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 479
    :cond_0
    return-void
.end method

.method public final exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 552
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 554
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 555
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 556
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 558
    :goto_0
    return-void
.end method

.method public final filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 606
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 607
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 608
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 610
    :goto_0
    return-void
.end method

.method public final filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 591
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 593
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 594
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 595
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 597
    :goto_0
    return-void
.end method

.method protected fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/mina/core/filterchain/IoFilterEvent;

    .line 494
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 567
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 568
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 569
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 571
    :goto_0
    return-void
.end method

.method public final messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 578
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 580
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 581
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 582
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 584
    :goto_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    return-void

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 526
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 528
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 529
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 530
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 532
    :goto_0
    return-void
.end method

.method public final sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .line 539
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 541
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 542
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 543
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 545
    :goto_0
    return-void
.end method

.method public final sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 513
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 515
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 516
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    goto :goto_0

    .line 517
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 519
    :goto_0
    return-void
.end method
