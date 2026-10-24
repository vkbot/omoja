.class Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "AsyncLoggerDisruptor.java"


# static fields
.field private static final MAX_DRAIN_ATTEMPTS_BEFORE_SHUTDOWN:I = 0xc8

.field private static final SLEEP_MILLIS_BETWEEN_DRAIN_ATTEMPTS:I = 0x32


# instance fields
.field private asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

.field private backgroundThreadId:J

.field private contextName:Ljava/lang/String;

.field private volatile disruptor:Lcom/lmax/disruptor/dsl/Disruptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/dsl/Disruptor<",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final queueFullEnqueueLock:Ljava/lang/Object;

.field private ringBufferSize:I

.field private useThreadLocalTranslator:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "contextName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contextName"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->queueFullEnqueueLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->useThreadLocalTranslator:Z

    .line 61
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    .param p1, "x1"    # J

    .line 46
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->backgroundThreadId:J

    return-wide p1
.end method

.method private static hasBacklog(Lcom/lmax/disruptor/dsl/Disruptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "theDisruptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lmax/disruptor/dsl/Disruptor<",
            "*>;)Z"
        }
    .end annotation

    .line 175
    .local p0, "theDisruptor":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<*>;"
    invoke-virtual {p0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    .line 176
    .local v0, "ringBuffer":Lcom/lmax/disruptor/RingBuffer;, "Lcom/lmax/disruptor/RingBuffer<*>;"
    invoke-virtual {v0}, Lcom/lmax/disruptor/RingBuffer;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lmax/disruptor/RingBuffer;->hasAvailableCapacity(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private hasLog4jBeenShutDown(Lcom/lmax/disruptor/dsl/Disruptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aDisruptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lmax/disruptor/dsl/Disruptor<",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
            ">;)Z"
        }
    .end annotation

    .line 209
    .local p1, "aDisruptor":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    if-nez p1, :cond_0

    .line 210
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Ignoring log event after log4j was shut down"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private logWarningOnNpeFromDisruptorPublish(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "fqcn",
            "msg",
            "thrown"
        }
    .end annotation

    .line 305
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    .line 306
    invoke-interface {p3}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v5

    if-nez p4, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/apache/logging/log4j/core/util/Throwables;->toStringList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 305
    const-string v1, "[{}] Ignoring log event after log4j was shut down: {} [{}] {}{}"

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method private logWarningOnNpeFromDisruptorPublish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V
    .locals 4
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translator"
        }
    .end annotation

    .line 299
    iget-object v0, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->level:Lorg/apache/logging/log4j/Level;

    iget-object v1, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->loggerName:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->message:Lorg/apache/logging/log4j/message/Message;

    iget-object v3, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->thrown:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->logWarningOnNpeFromDisruptorPublish(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 301
    return-void
.end method

.method private remainingDisruptorCapacity()I
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 200
    .local v0, "temp":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->hasLog4jBeenShutDown(Lcom/lmax/disruptor/dsl/Disruptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, -0x1

    return v1

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lmax/disruptor/RingBuffer;->remainingCapacity()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private synchronizeEnqueueWhenQueueFull()Z
    .locals 4

    .line 288
    sget-boolean v0, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->ASYNC_LOGGER_SYNCHRONIZE_ENQUEUE_WHEN_QUEUE_FULL:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->backgroundThreadId:J

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/core/util/Log4jThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0
.end method


# virtual methods
.method public createRingBufferAdmin(Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .locals 2
    .param p1, "jmxContextName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "jmxContextName"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    .line 187
    .local v0, "ring":Lcom/lmax/disruptor/RingBuffer;, "Lcom/lmax/disruptor/RingBuffer<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->forAsyncLogger(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    move-result-object v1

    return-object v1
.end method

.method enqueueLogMessageWhenQueueFull(Lcom/lmax/disruptor/EventTranslatorVararg;Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/StackTraceElement;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 16
    .param p2, "asyncLogger"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p3, "location"    # Ljava/lang/StackTraceElement;
    .param p4, "fqcn"    # Ljava/lang/String;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p7, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p8, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "translator",
            "asyncLogger",
            "location",
            "fqcn",
            "level",
            "marker",
            "msg",
            "thrown"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lmax/disruptor/EventTranslatorVararg<",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
            ">;",
            "Lorg/apache/logging/log4j/core/async/AsyncLogger;",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .local p1, "translator":Lcom/lmax/disruptor/EventTranslatorVararg;, "Lcom/lmax/disruptor/EventTranslatorVararg<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 260
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->synchronizeEnqueueWhenQueueFull()Z

    move-result v0

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x7

    if-eqz v0, :cond_0

    .line 261
    iget-object v15, v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->queueFullEnqueueLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :try_start_1
    iget-object v0, v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    new-array v14, v14, [Ljava/lang/Object;

    aput-object p2, v14, v13

    aput-object p3, v14, v12

    aput-object v3, v14, v11

    aput-object v4, v14, v10

    aput-object p6, v14, v9

    aput-object v5, v14, v8

    aput-object v6, v14, v7

    invoke-virtual {v0, v2, v14}, Lcom/lmax/disruptor/RingBuffer;->publishEvent(Lcom/lmax/disruptor/EventTranslatorVararg;[Ljava/lang/Object;)V

    .line 270
    monitor-exit v15

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    .end local p1    # "translator":Lcom/lmax/disruptor/EventTranslatorVararg;, "Lcom/lmax/disruptor/EventTranslatorVararg<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    .end local p2    # "asyncLogger":Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .end local p3    # "location":Ljava/lang/StackTraceElement;
    .end local p4    # "fqcn":Ljava/lang/String;
    .end local p5    # "level":Lorg/apache/logging/log4j/Level;
    .end local p6    # "marker":Lorg/apache/logging/log4j/Marker;
    .end local p7    # "msg":Lorg/apache/logging/log4j/message/Message;
    .end local p8    # "thrown":Ljava/lang/Throwable;
    :try_start_2
    throw v0

    .line 272
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    .restart local p1    # "translator":Lcom/lmax/disruptor/EventTranslatorVararg;, "Lcom/lmax/disruptor/EventTranslatorVararg<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    .restart local p2    # "asyncLogger":Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .restart local p3    # "location":Ljava/lang/StackTraceElement;
    .restart local p4    # "fqcn":Ljava/lang/String;
    .restart local p5    # "level":Lorg/apache/logging/log4j/Level;
    .restart local p6    # "marker":Lorg/apache/logging/log4j/Marker;
    .restart local p7    # "msg":Lorg/apache/logging/log4j/message/Message;
    .restart local p8    # "thrown":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    new-array v14, v14, [Ljava/lang/Object;

    aput-object p2, v14, v13

    aput-object p3, v14, v12

    aput-object v3, v14, v11

    aput-object v4, v14, v10

    aput-object p6, v14, v9

    aput-object v5, v14, v8

    aput-object v6, v14, v7

    invoke-virtual {v0, v2, v14}, Lcom/lmax/disruptor/RingBuffer;->publishEvent(Lcom/lmax/disruptor/EventTranslatorVararg;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :goto_0
    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-direct {v1, v4, v3, v5, v6}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->logWarningOnNpeFromDisruptorPublish(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 285
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method enqueueLogMessageWhenQueueFull(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V
    .locals 2
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translator"
        }
    .end annotation

    .line 234
    :try_start_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->synchronizeEnqueueWhenQueueFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->queueFullEnqueueLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v1, p1}, Lcom/lmax/disruptor/dsl/Disruptor;->publishEvent(Lcom/lmax/disruptor/EventTranslator;)V

    .line 237
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    .end local p1    # "translator":Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    :try_start_2
    throw v1

    .line 239
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    .restart local p1    # "translator":Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0, p1}, Lcom/lmax/disruptor/dsl/Disruptor;->publishEvent(Lcom/lmax/disruptor/EventTranslator;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    :goto_0
    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->logWarningOnNpeFromDisruptorPublish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 245
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method public getContextName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    return-object v0
.end method

.method getDisruptor()Lcom/lmax/disruptor/dsl/Disruptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lmax/disruptor/dsl/Disruptor<",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    return-object v0
.end method

.method getEventRoute(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;
    .locals 4
    .param p1, "logLevel"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->remainingDisruptorCapacity()I

    move-result v0

    .line 192
    .local v0, "remainingCapacity":I
    if-gez v0, :cond_0

    .line 193
    sget-object v1, Lorg/apache/logging/log4j/core/async/EventRoute;->DISCARD:Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v1

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->backgroundThreadId:J

    invoke-interface {v1, v2, v3, p1}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;->getRoute(JLorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v1

    return-object v1
.end method

.method public isUseThreadLocals()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->useThreadLocalTranslator:Z

    return v0
.end method

.method public setContextName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUseThreadLocals(Z)V
    .locals 4
    .param p1, "allow"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "allow"
        }
    .end annotation

    .line 332
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->useThreadLocalTranslator:Z

    .line 333
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->useThreadLocalTranslator:Z

    if-eqz v2, :cond_0

    const-string v2, "threadlocal"

    goto :goto_0

    :cond_0
    const-string v2, "vararg"

    :goto_0
    const-string v3, "[{}] AsyncLoggers have been modified to use a {} translator"

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public declared-synchronized start()V
    .locals 14

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "[{}] AsyncLoggerDisruptor not starting new disruptor for this context, using existing object."

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "[{}] AsyncLoggerDisruptor is already starting."

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->setStarting()V

    .line 94
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "[{}] AsyncLoggerDisruptor creating new disruptor for this context."

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "AsyncLogger.RingBufferSize"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->calculateRingBufferSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->ringBufferSize:I

    .line 96
    const-string v0, "AsyncLogger.WaitStrategy"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->createWaitStrategy(Ljava/lang/String;)Lcom/lmax/disruptor/WaitStrategy;

    move-result-object v6

    .line 98
    .local v6, "waitStrategy":Lcom/lmax/disruptor/WaitStrategy;
    new-instance v4, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncLogger["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v7, 0x1

    invoke-direct {v4, p0, v0, v7, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor$1;-><init>(Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;Ljava/lang/String;ZI)V

    .line 106
    .local v4, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->create()Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    .line 108
    new-instance v0, Lcom/lmax/disruptor/dsl/Disruptor;

    sget-object v2, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->FACTORY:Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;

    iget v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->ringBufferSize:I

    sget-object v5, Lcom/lmax/disruptor/dsl/ProducerType;->MULTI:Lcom/lmax/disruptor/dsl/ProducerType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/lmax/disruptor/dsl/Disruptor;-><init>(Lcom/lmax/disruptor/EventFactory;ILjava/util/concurrent/ThreadFactory;Lcom/lmax/disruptor/dsl/ProducerType;Lcom/lmax/disruptor/WaitStrategy;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 111
    invoke-static {}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->getAsyncLoggerExceptionHandler()Lcom/lmax/disruptor/ExceptionHandler;

    move-result-object v0

    .line 112
    .local v0, "errorHandler":Lcom/lmax/disruptor/ExceptionHandler;, "Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v1, v0}, Lcom/lmax/disruptor/dsl/Disruptor;->setDefaultExceptionHandler(Lcom/lmax/disruptor/ExceptionHandler;)V

    .line 114
    new-array v1, v7, [Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;

    invoke-direct {v3}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;-><init>()V

    aput-object v3, v1, v2

    .line 115
    .local v1, "handlers":[Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v2, v1}, Lcom/lmax/disruptor/dsl/Disruptor;->handleEventsWith([Lcom/lmax/disruptor/EventHandler;)Lcom/lmax/disruptor/dsl/EventHandlerGroup;

    .line 117
    sget-object v8, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v9, "[{}] Starting AsyncLogger disruptor for this context with ringbufferSize={}, waitStrategy={}, exceptionHandler={}..."

    iget-object v10, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 118
    invoke-virtual {v2}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lmax/disruptor/RingBuffer;->getBufferSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 119
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    .line 117
    move-object v13, v0

    invoke-interface/range {v8 .. v13}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v2}, Lcom/lmax/disruptor/dsl/Disruptor;->start()Lcom/lmax/disruptor/RingBuffer;

    .line 122
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "[{}] AsyncLoggers use a {} translator"

    iget-object v5, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    iget-boolean v7, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->useThreadLocalTranslator:Z

    if-eqz v7, :cond_2

    const-string v7, "threadlocal"

    goto :goto_0

    :cond_2
    const-string v7, "vararg"

    :goto_0
    invoke-interface {v2, v3, v5, v7}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-super {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "errorHandler":Lcom/lmax/disruptor/ExceptionHandler;, "Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    .end local v1    # "handlers":[Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;
    .end local v4    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .end local v6    # "waitStrategy":Lcom/lmax/disruptor/WaitStrategy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->getDisruptor()Lcom/lmax/disruptor/dsl/Disruptor;

    move-result-object v0

    .line 134
    .local v0, "temp":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 135
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    const-string v4, "[{}] AsyncLoggerDisruptor: disruptor for this context already shut down."

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->setStopping()V

    .line 139
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    const-string v4, "[{}] AsyncLoggerDisruptor: shutting down disruptor for this context."

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->hasBacklog(Lcom/lmax/disruptor/dsl/Disruptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 149
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 150
    :catch_0
    move-exception v3

    .line 147
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/lmax/disruptor/dsl/Disruptor;->shutdown(JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Lcom/lmax/disruptor/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    goto :goto_2

    .line 156
    :catch_1
    move-exception v2

    .line 157
    .local v2, "e":Lcom/lmax/disruptor/TimeoutException;
    sget-object v3, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "[{}] AsyncLoggerDisruptor: shutdown timed out after {} {}"

    invoke-interface {v3, v6, v4, v5, p3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->halt()V

    .line 161
    .end local v2    # "e":Lcom/lmax/disruptor/TimeoutException;
    :goto_2
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->contextName:Ljava/lang/String;

    const-string v4, "[{}] AsyncLoggerDisruptor: disruptor has been shut down."

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 164
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    .line 165
    invoke-static {v3}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 164
    const-string v5, "AsyncLoggerDisruptor: {} discarded {} events."

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    :cond_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->setStopped()V

    .line 168
    return v1
.end method

.method tryPublish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)Z
    .locals 2
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translator"
        }
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lmax/disruptor/RingBuffer;->tryPublishEvent(Lcom/lmax/disruptor/EventTranslator;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->logWarningOnNpeFromDisruptorPublish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 225
    const/4 v1, 0x0

    return v1
.end method
