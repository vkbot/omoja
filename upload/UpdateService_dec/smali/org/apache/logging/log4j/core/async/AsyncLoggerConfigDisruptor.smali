.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "AsyncLoggerConfigDisruptor.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;,
        Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/lmax/disruptor/EventFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/EventFactory<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_DRAIN_ATTEMPTS_BEFORE_SHUTDOWN:I = 0xc8

.field private static final MUTABLE_FACTORY:Lcom/lmax/disruptor/EventFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/EventFactory<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final MUTABLE_TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/EventTranslatorTwoArg<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLEEP_MILLIS_BETWEEN_DRAIN_ATTEMPTS:I = 0x32

.field private static final TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/EventTranslatorTwoArg<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile alreadyLoggedWarning:Z

.field private asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

.field private backgroundThreadId:J

.field private volatile disruptor:Lcom/lmax/disruptor/dsl/Disruptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/dsl/Disruptor<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/lmax/disruptor/EventFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/EventFactory<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mutable:Ljava/lang/Boolean;

.field private final queueFullEnqueueLock:Ljava/lang/Object;

.field private ringBufferSize:I

.field private translator:Lcom/lmax/disruptor/EventTranslatorTwoArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lmax/disruptor/EventTranslatorTwoArg<",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    sget-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$0y7romzMROvwTM397DBhHZkongk;

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->FACTORY:Lcom/lmax/disruptor/EventFactory;

    .line 140
    sget-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$fXFVaAWecYKe-0A4WLq1_BYLA1A;

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->MUTABLE_FACTORY:Lcom/lmax/disruptor/EventFactory;

    .line 145
    sget-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$BDdMBO3uWGXBH_Qtyo3wdKXXYFo;

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    .line 154
    sget-object v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$C11RQlAapRHGBkVa6DiB3HVGGt4;->INSTANCE:Lorg/apache/logging/log4j/core/async/-$$Lambda$AsyncLoggerConfigDisruptor$C11RQlAapRHGBkVa6DiB3HVGGt4;

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->MUTABLE_TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 162
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->mutable:Ljava/lang/Boolean;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->queueFullEnqueueLock:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method static synthetic access$202(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->backgroundThreadId:J

    return-wide p1
.end method

.method private enqueue(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V
    .locals 3
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "asyncLoggerConfig"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "logEvent",
            "asyncLoggerConfig"
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->synchronizeEnqueueWhenQueueFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->queueFullEnqueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v1}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->translator:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    invoke-virtual {v1, v2, p1, p2}, Lcom/lmax/disruptor/RingBuffer;->publishEvent(Lcom/lmax/disruptor/EventTranslatorTwoArg;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->translator:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    invoke-virtual {v0, v1, p1, p2}, Lcom/lmax/disruptor/RingBuffer;->publishEvent(Lcom/lmax/disruptor/EventTranslatorTwoArg;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    :goto_0
    return-void
.end method

.method private ensureImmutable(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 382
    move-object v0, p1

    .line 383
    .local v0, "result":Lorg/apache/logging/log4j/core/LogEvent;
    instance-of v1, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    if-eqz v1, :cond_0

    .line 390
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->createMemento()Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    .line 392
    :cond_0
    return-object v0
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

    .line 274
    .local p0, "theDisruptor":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<*>;"
    invoke-virtual {p0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    .line 275
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
            "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 299
    .local p1, "aDisruptor":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;"
    if-nez p1, :cond_0

    .line 300
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Ignoring log event after log4j was shut down"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$static$0()Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
    .locals 2

    .line 140
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    new-instance v1, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;-><init>(Lorg/apache/logging/log4j/core/impl/MutableLogEvent;)V

    return-object v0
.end method

.method static synthetic lambda$static$1(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;JLorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V
    .locals 0
    .param p0, "ringBufferElement"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
    .param p1, "sequence"    # J
    .param p3, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p4, "loggerConfig"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "ringBufferElement",
            "sequence",
            "logEvent",
            "loggerConfig"
        }
    .end annotation

    .line 147
    invoke-static {p0, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$002(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    .line 148
    invoke-static {p0, p4}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$102(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 149
    return-void
.end method

.method static synthetic lambda$static$2(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;JLorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V
    .locals 1
    .param p0, "ringBufferElement"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
    .param p1, "sequence"    # J
    .param p3, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p4, "loggerConfig"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "ringBufferElement",
            "sequence",
            "logEvent",
            "loggerConfig"
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$000(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->initFrom(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 157
    invoke-static {p0, p4}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$102(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 158
    return-void
.end method

.method private prepareEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->ensureImmutable(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    .line 323
    .local v0, "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-eqz v1, :cond_2

    .line 324
    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    if-eqz v1, :cond_0

    .line 325
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->makeMessageImmutable()V

    goto :goto_0

    .line 326
    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->translator:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->MUTABLE_TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    if-eq v1, v2, :cond_3

    .line 331
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->createMemento()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->showWarningAboutCustomLogEventWithReusableMessage(Lorg/apache/logging/log4j/core/LogEvent;)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    .line 339
    :cond_3
    :goto_0
    return-object v0
.end method

.method private remainingDisruptorCapacity()I
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 289
    .local v0, "temp":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;"
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->hasLog4jBeenShutDown(Lcom/lmax/disruptor/dsl/Disruptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, -0x1

    return v1

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lmax/disruptor/RingBuffer;->remainingCapacity()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private showWarningAboutCustomLogEventWithReusableMessage(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 4
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 343
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->alreadyLoggedWarning:Z

    if-nez v0, :cond_0

    .line 344
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v3, "Custom log event of type {} contains a mutable message of type {}. AsyncLoggerConfig does not know how to make an immutable copy of this message. This may result in ConcurrentModificationExceptions or incorrect log messages if the application modifies objects in the message while the background thread is writing it to the appenders."

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->alreadyLoggedWarning:Z

    .line 352
    :cond_0
    return-void
.end method

.method private synchronizeEnqueueWhenQueueFull()Z
    .locals 4

    .line 365
    sget-boolean v0, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->ASYNC_CONFIG_SYNCHRONIZE_ENQUEUE_WHEN_QUEUE_FULL:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->backgroundThreadId:J

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/core/util/Log4jThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0
.end method


# virtual methods
.method public createRingBufferAdmin(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .locals 1
    .param p1, "contextName"    # Ljava/lang/String;
    .param p2, "loggerConfigName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "loggerConfigName"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;->forAsyncLoggerConfig(Lcom/lmax/disruptor/RingBuffer;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    move-result-object v0

    return-object v0
.end method

.method public enqueueEvent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "asyncLoggerConfig"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "asyncLoggerConfig"
        }
    .end annotation

    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->prepareEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    .line 311
    .local v0, "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    invoke-direct {p0, v0, p2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->enqueue(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    .line 315
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v2

    .line 316
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/util/Throwables;->toStringList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    const-string v5, "Ignoring log event after log4j was shut down: {} [{}] {}"

    invoke-interface {v1, v5, v2, v3, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    return-void
.end method

.method public getEventRoute(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;
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

    .line 280
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->remainingDisruptorCapacity()I

    move-result v0

    .line 281
    .local v0, "remainingCapacity":I
    if-gez v0, :cond_0

    .line 282
    sget-object v1, Lorg/apache/logging/log4j/core/async/EventRoute;->DISCARD:Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v1

    .line 284
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->backgroundThreadId:J

    invoke-interface {v1, v2, v3, p1}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;->getRoute(JLorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v1

    return-object v1
.end method

.method public setLogEventFactory(Lorg/apache/logging/log4j/core/impl/LogEventFactory;)V
    .locals 1
    .param p1, "logEventFactory"    # Lorg/apache/logging/log4j/core/impl/LogEventFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEventFactory"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->mutable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->mutable:Ljava/lang/Boolean;

    .line 181
    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "AsyncLoggerConfigDisruptor not starting new disruptor for this configuration, using existing object."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "AsyncLoggerConfigDisruptor creating new disruptor for this configuration."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 197
    const-string v0, "AsyncLoggerConfig.RingBufferSize"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->calculateRingBufferSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->ringBufferSize:I

    .line 198
    const-string v0, "AsyncLoggerConfig.WaitStrategy"

    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->createWaitStrategy(Ljava/lang/String;)Lcom/lmax/disruptor/WaitStrategy;

    move-result-object v6

    .line 200
    .local v6, "waitStrategy":Lcom/lmax/disruptor/WaitStrategy;
    new-instance v4, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;

    const-string v0, "AsyncLoggerConfig"

    const/4 v1, 0x5

    const/4 v7, 0x1

    invoke-direct {v4, p0, v0, v7, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;-><init>(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;Ljava/lang/String;ZI)V

    .line 208
    .local v4, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->create()Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    .line 210
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->mutable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->MUTABLE_TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->TRANSLATOR:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->translator:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    .line 211
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->mutable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->MUTABLE_FACTORY:Lcom/lmax/disruptor/EventFactory;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->FACTORY:Lcom/lmax/disruptor/EventFactory;

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->factory:Lcom/lmax/disruptor/EventFactory;

    .line 212
    new-instance v0, Lcom/lmax/disruptor/dsl/Disruptor;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->factory:Lcom/lmax/disruptor/EventFactory;

    iget v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->ringBufferSize:I

    sget-object v5, Lcom/lmax/disruptor/dsl/ProducerType;->MULTI:Lcom/lmax/disruptor/dsl/ProducerType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/lmax/disruptor/dsl/Disruptor;-><init>(Lcom/lmax/disruptor/EventFactory;ILjava/util/concurrent/ThreadFactory;Lcom/lmax/disruptor/dsl/ProducerType;Lcom/lmax/disruptor/WaitStrategy;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 214
    invoke-static {}, Lorg/apache/logging/log4j/core/async/DisruptorUtil;->getAsyncLoggerConfigExceptionHandler()Lcom/lmax/disruptor/ExceptionHandler;

    move-result-object v0

    .line 215
    .local v0, "errorHandler":Lcom/lmax/disruptor/ExceptionHandler;, "Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v1, v0}, Lcom/lmax/disruptor/dsl/Disruptor;->setDefaultExceptionHandler(Lcom/lmax/disruptor/ExceptionHandler;)V

    .line 217
    new-array v1, v7, [Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;-><init>(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;)V

    aput-object v3, v1, v2

    .line 218
    .local v1, "handlers":[Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v2, v1}, Lcom/lmax/disruptor/dsl/Disruptor;->handleEventsWith([Lcom/lmax/disruptor/EventHandler;)Lcom/lmax/disruptor/dsl/EventHandlerGroup;

    .line 220
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Starting AsyncLoggerConfig disruptor for this configuration with ringbufferSize={}, waitStrategy={}, exceptionHandler={}..."

    iget-object v5, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 221
    invoke-virtual {v5}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lmax/disruptor/RingBuffer;->getBufferSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 222
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-interface {v2, v3, v5, v7, v0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v2}, Lcom/lmax/disruptor/dsl/Disruptor;->start()Lcom/lmax/disruptor/RingBuffer;

    .line 224
    invoke-super {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "errorHandler":Lcom/lmax/disruptor/ExceptionHandler;, "Lcom/lmax/disruptor/ExceptionHandler<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;"
    .end local v1    # "handlers":[Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;
    .end local v4    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .end local v6    # "waitStrategy":Lcom/lmax/disruptor/WaitStrategy;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
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

    .line 233
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 234
    .local v0, "temp":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 235
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "AsyncLoggerConfigDisruptor: disruptor for this configuration already shut down."

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 236
    return v1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->setStopping()V

    .line 239
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "AsyncLoggerConfigDisruptor: shutting down disruptor for this configuration."

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    .line 247
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->hasBacklog(Lcom/lmax/disruptor/dsl/Disruptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 249
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_1

    .line 250
    :catch_0
    move-exception v3

    .line 247
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/lmax/disruptor/dsl/Disruptor;->shutdown(JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Lcom/lmax/disruptor/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    goto :goto_2

    .line 256
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Lcom/lmax/disruptor/TimeoutException;
    sget-object v3, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "AsyncLoggerConfigDisruptor: shutdown timed out after {} {}"

    invoke-interface {v3, v5, v4, p3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->halt()V

    .line 260
    .end local v2    # "e":Lcom/lmax/disruptor/TimeoutException;
    :goto_2
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "AsyncLoggerConfigDisruptor: disruptor has been shut down."

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 263
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    .line 264
    invoke-static {v3}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 263
    const-string v5, "AsyncLoggerConfigDisruptor: {} discarded {} events."

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    :cond_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->setStopped()V

    .line 267
    return v1
.end method

.method public tryEnqueue(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)Z
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "asyncLoggerConfig"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "asyncLoggerConfig"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->prepareEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    .line 378
    .local v0, "logEvent":Lorg/apache/logging/log4j/core/LogEvent;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->disruptor:Lcom/lmax/disruptor/dsl/Disruptor;

    invoke-virtual {v1}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;->translator:Lcom/lmax/disruptor/EventTranslatorTwoArg;

    invoke-virtual {v1, v2, v0, p2}, Lcom/lmax/disruptor/RingBuffer;->tryPublishEvent(Lcom/lmax/disruptor/EventTranslatorTwoArg;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
