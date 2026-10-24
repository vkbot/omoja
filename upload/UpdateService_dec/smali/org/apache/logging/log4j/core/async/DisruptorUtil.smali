.class final Lorg/apache/logging/log4j/core/async/DisruptorUtil;
.super Ljava/lang/Object;
.source "DisruptorUtil.java"


# static fields
.field static final ASYNC_CONFIG_SYNCHRONIZE_ENQUEUE_WHEN_QUEUE_FULL:Z

.field static final ASYNC_LOGGER_SYNCHRONIZE_ENQUEUE_WHEN_QUEUE_FULL:Z

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final RINGBUFFER_DEFAULT_SIZE:I = 0x40000

.field private static final RINGBUFFER_MIN_SIZE:I = 0x80

.field private static final RINGBUFFER_NO_GC_DEFAULT_SIZE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 54
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 55
    const-string v1, "AsyncLogger.SynchronizeEnqueueWhenQueueFull"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->ASYNC_LOGGER_SYNCHRONIZE_ENQUEUE_WHEN_QUEUE_FULL:Z

    .line 56
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 57
    const-string v1, "AsyncLoggerConfig.SynchronizeEnqueueWhenQueueFull"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->ASYNC_CONFIG_SYNCHRONIZE_ENQUEUE_WHEN_QUEUE_FULL:Z

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static calculateRingBufferSize(Ljava/lang/String;)I
    .locals 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 105
    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    .line 106
    .local v0, "ringBufferSize":I
    :goto_0
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v1, p0, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "userPreferredRBSize":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, "size":I
    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 111
    const/16 v2, 0x80

    .line 112
    sget-object v4, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Invalid RingBufferSize {}, using minimum size {}."

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 112
    invoke-interface {v4, v5, v1, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    move v0, v2

    .line 118
    .end local v2    # "size":I
    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Invalid RingBufferSize {}, using default size {}."

    invoke-interface {v3, v5, v1, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Integers;->ceilingNextPowerOfTwo(I)I

    move-result v2

    return v2
.end method

.method static createWaitStrategy(Ljava/lang/String;)Lcom/lmax/disruptor/WaitStrategy;
    .locals 9
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "propertyName"
        }
    .end annotation

    .line 63
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "Timeout"

    invoke-virtual {v0, p0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "strategy":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "property {}={}"

    invoke-interface {v2, v3, p0, v0}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->toRootUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "strategyUp":Ljava/lang/String;
    const-wide/16 v3, 0xa

    invoke-static {p0, v1, v3, v4}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->parseAdditionalLongProperty(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    .line 69
    .local v3, "timeoutMillis":J
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "YIELD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_1
    const-string v1, "SLEEP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "BLOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_3
    const-string v1, "BUSYSPIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v1, "TIMEOUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    .line 86
    new-instance v1, Lcom/lmax/disruptor/TimeoutBlockingWaitStrategy;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v3, v4, v5}, Lcom/lmax/disruptor/TimeoutBlockingWaitStrategy;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Lcom/lmax/disruptor/TimeoutBlockingWaitStrategy;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v3, v4, v5}, Lcom/lmax/disruptor/TimeoutBlockingWaitStrategy;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v1

    .line 82
    :cond_2
    new-instance v1, Lcom/lmax/disruptor/BusySpinWaitStrategy;

    invoke-direct {v1}, Lcom/lmax/disruptor/BusySpinWaitStrategy;-><init>()V

    return-object v1

    .line 80
    :cond_3
    new-instance v1, Lcom/lmax/disruptor/BlockingWaitStrategy;

    invoke-direct {v1}, Lcom/lmax/disruptor/BlockingWaitStrategy;-><init>()V

    return-object v1

    .line 78
    :cond_4
    new-instance v1, Lcom/lmax/disruptor/YieldingWaitStrategy;

    invoke-direct {v1}, Lcom/lmax/disruptor/YieldingWaitStrategy;-><init>()V

    return-object v1

    .line 71
    :cond_5
    const-wide/16 v5, 0x64

    .line 72
    const-string v1, "SleepTimeNs"

    invoke-static {p0, v1, v5, v6}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->parseAdditionalLongProperty(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 73
    .local v5, "sleepTimeNs":J
    const-string v1, "Retries"

    invoke-static {p0, v1}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->getFullPropertyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v7

    const/16 v8, 0xc8

    invoke-virtual {v7, v1, v8}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v7

    .line 76
    .local v7, "retries":I
    new-instance v8, Lcom/lmax/disruptor/SleepingWaitStrategy;

    invoke-direct {v8, v7, v5, v6}, Lcom/lmax/disruptor/SleepingWaitStrategy;-><init>(IJ)V

    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x238526bf -> :sswitch_4
        -0x14d16a45 -> :sswitch_3
        0x3c5cc6d -> :sswitch_2
        0x4b536b7 -> :sswitch_1
        0x508676d -> :sswitch_0
    .end sparse-switch
.end method

.method static getAsyncLoggerConfigExceptionHandler()Lcom/lmax/disruptor/ExceptionHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lmax/disruptor/ExceptionHandler<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "AsyncLoggerConfig.ExceptionHandler"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "cls":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    new-instance v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDefaultExceptionHandler;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDefaultExceptionHandler;-><init>()V

    return-object v1

    .line 145
    :cond_0
    nop

    .line 146
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lmax/disruptor/ExceptionHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 148
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;>;"
    :catch_0
    move-exception v1

    .line 149
    .local v1, "ignored":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Invalid AsyncLoggerConfig.ExceptionHandler value: error creating {}: "

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    new-instance v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDefaultExceptionHandler;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDefaultExceptionHandler;-><init>()V

    return-object v2
.end method

.method static getAsyncLoggerExceptionHandler()Lcom/lmax/disruptor/ExceptionHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lmax/disruptor/ExceptionHandler<",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "AsyncLogger.ExceptionHandler"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cls":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 125
    new-instance v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerDefaultExceptionHandler;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDefaultExceptionHandler;-><init>()V

    return-object v1

    .line 129
    :cond_0
    nop

    .line 130
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 131
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lmax/disruptor/ExceptionHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 132
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;>;"
    :catch_0
    move-exception v1

    .line 133
    .local v1, "ignored":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Invalid AsyncLogger.ExceptionHandler value: error creating {}: "

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    new-instance v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerDefaultExceptionHandler;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDefaultExceptionHandler;-><init>()V

    return-object v2
.end method

.method public static getExecutorThreadId(Ljava/util/concurrent/ExecutorService;)J
    .locals 5
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "executor"
        }
    .end annotation

    .line 162
    sget-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$DisruptorUtil$K_WcRF3eb1GE3VZGif7NKll6Uno;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 164
    .local v0, "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Could not obtain executor thread Id. Giving up to avoid the risk of application deadlock."

    .line 168
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not obtain executor thread Id. Giving up to avoid the risk of application deadlock."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getFullPropertyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strategyKey"    # Ljava/lang/String;
    .param p1, "additionalKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "strategyKey",
            "additionalKey"
        }
    .end annotation

    .line 91
    const-string v0, "AsyncLogger."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncLoggerConfig."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$getExecutorThreadId$0()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static parseAdditionalLongProperty(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "additionalKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "propertyName",
            "additionalKey",
            "defaultValue"
        }
    .end annotation

    .line 100
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->getFullPropertyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method
