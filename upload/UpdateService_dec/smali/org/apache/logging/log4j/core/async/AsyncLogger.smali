.class public Lorg/apache/logging/log4j/core/async/AsyncLogger;
.super Lorg/apache/logging/log4j/core/Logger;
.source "AsyncLogger.java"

# interfaces
.implements Lcom/lmax/disruptor/EventTranslatorVararg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/Logger;",
        "Lcom/lmax/disruptor/EventTranslatorVararg<",
        "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

.field private static final CONTEXT_DATA_INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

.field private static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;


# instance fields
.field private volatile includeLocation:Z

.field private final loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

.field private volatile nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

.field private final threadLocalTranslator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;",
            ">;"
        }
    .end annotation
.end field

.field private final threadLocalTranslatorType:Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

.field private final varargTranslatorType:Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    .line 74
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->getClock()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    .line 75
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->CONTEXT_DATA_INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

    .line 77
    invoke-static {}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->create()Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;)V
    .locals 1
    .param p1, "context"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .param p4, "loggerDisruptor"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "name",
            "messageFactory",
            "loggerDisruptor"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/Logger;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 79
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->threadLocalTranslator:Ljava/lang/ThreadLocal;

    .line 148
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLogger$1;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger$1;-><init>(Lorg/apache/logging/log4j/core/async/AsyncLogger;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->threadLocalTranslatorType:Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

    .line 161
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLogger$2;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger$2;-><init>(Lorg/apache/logging/log4j/core/async/AsyncLogger;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->varargTranslatorType:Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

    .line 96
    iput-object p4, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    .line 97
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isIncludeLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->includeLocation:Z

    .line 98
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/StackTraceElement;
    .param p3, "x3"    # Lorg/apache/logging/log4j/Level;
    .param p4, "x4"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "x5"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "x6"    # Ljava/lang/Throwable;

    .line 67
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logWithThreadLocalTranslator(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/logging/log4j/Level;
    .param p3, "x3"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "x4"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "x5"    # Ljava/lang/Throwable;

    .line 67
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logWithThreadLocalTranslator(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/StackTraceElement;
    .param p3, "x3"    # Lorg/apache/logging/log4j/Level;
    .param p4, "x4"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "x5"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "x6"    # Ljava/lang/Throwable;

    .line 67
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logWithVarargTranslator(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/logging/log4j/Level;
    .param p3, "x3"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "x4"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "x5"    # Ljava/lang/Throwable;

    .line 67
    invoke-direct/range {p0 .. p5}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logWithVarargTranslator(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method private calcLocationIfRequested(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fqcn"
        }
    .end annotation

    .line 312
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->includeLocation:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCachedTranslator()Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->threadLocalTranslator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;

    .line 120
    .local v0, "result":Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    if-nez v0, :cond_0

    .line 121
    new-instance v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;-><init>()V

    move-object v0, v1

    .line 122
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->threadLocalTranslator:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method private static getContextData(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 2
    .param p0, "event"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    .line 507
    .local v0, "contextData":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    .line 509
    .local v1, "temp":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 510
    return-object v1

    .line 512
    .end local v1    # "temp":Lorg/apache/logging/log4j/util/StringMap;
    :cond_0
    return-object v0
.end method

.method private getTranslatorType()Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->isUseThreadLocals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->threadLocalTranslatorType:Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->varargTranslatorType:Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

    :goto_0
    return-object v0
.end method

.method private handleRingBufferFull(Ljava/lang/StackTraceElement;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "location"    # Ljava/lang/StackTraceElement;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "location",
            "fqcn",
            "level",
            "marker",
            "msg",
            "thrown"
        }
    .end annotation

    .line 445
    move-object v9, p0

    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 447
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullMessageUtil;->logWarningToStatusLogger()V

    .line 448
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logMessageInCurrentThread(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v0, v9, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    move-object v10, p3

    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->getEventRoute(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v11

    .line 452
    .local v11, "eventRoute":Lorg/apache/logging/log4j/core/async/EventRoute;
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger$3;->$SwitchMap$org$apache$logging$log4j$core$async$EventRoute:[I

    invoke-virtual {v11}, Lorg/apache/logging/log4j/core/async/EventRoute;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 467
    goto :goto_0

    .line 469
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown EventRoute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logMessageInCurrentThread(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 465
    goto :goto_0

    .line 454
    :cond_3
    iget-object v0, v9, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->enqueueLogMessageWhenQueueFull(Lcom/lmax/disruptor/EventTranslatorVararg;Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/StackTraceElement;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 462
    nop

    .line 471
    :goto_0
    return-void
.end method

.method private handleRingBufferFull(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V
    .locals 9
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translator"
        }
    .end annotation

    .line 235
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 237
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullMessageUtil;->logWarningToStatusLogger()V

    .line 238
    iget-object v3, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->fqcn:Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->level:Lorg/apache/logging/log4j/Level;

    iget-object v5, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->marker:Lorg/apache/logging/log4j/Marker;

    iget-object v6, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->message:Lorg/apache/logging/log4j/message/Message;

    iget-object v7, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->thrown:Ljava/lang/Throwable;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logMessageInCurrentThread(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 240
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clear()V

    .line 241
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    iget-object v2, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->getEventRoute(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v0

    .line 244
    .local v0, "eventRoute":Lorg/apache/logging/log4j/core/async/EventRoute;
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLogger$3;->$SwitchMap$org$apache$logging$log4j$core$async$EventRoute:[I

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/EventRoute;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 254
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clear()V

    .line 255
    goto :goto_0

    .line 257
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown EventRoute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_2
    iget-object v4, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->fqcn:Ljava/lang/String;

    iget-object v5, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->level:Lorg/apache/logging/log4j/Level;

    iget-object v6, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->marker:Lorg/apache/logging/log4j/Marker;

    iget-object v7, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->message:Lorg/apache/logging/log4j/message/Message;

    iget-object v8, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->thrown:Ljava/lang/Throwable;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->logMessageInCurrentThread(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 251
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clear()V

    .line 252
    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->enqueueLogMessageWhenQueueFull(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 247
    nop

    .line 259
    :goto_0
    return-void
.end method

.method private initTranslator(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/StackTraceElement;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p6, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "fqcn",
            "location",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 265
    move-object v12, p0

    iget-object v2, v12, Lorg/apache/logging/log4j/core/async/AsyncLogger;->name:Ljava/lang/String;

    .line 270
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v8

    sget-object v10, Lorg/apache/logging/log4j/core/async/AsyncLogger;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    iget-object v11, v12, Lorg/apache/logging/log4j/core/async/AsyncLogger;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 265
    move-object v0, p1

    move-object v1, p0

    move-object/from16 v3, p5

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p3

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->setBasicValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/ThreadContext$ContextStack;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V

    .line 276
    return-void
.end method

.method private initTranslator(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 14
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "translator",
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 281
    move-object v12, p0

    iget-object v2, v12, Lorg/apache/logging/log4j/core/async/AsyncLogger;->name:Ljava/lang/String;

    .line 286
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v8

    .line 289
    move-object/from16 v13, p2

    invoke-direct {p0, v13}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->calcLocationIfRequested(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v9

    sget-object v10, Lorg/apache/logging/log4j/core/async/AsyncLogger;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    iget-object v11, v12, Lorg/apache/logging/log4j/core/async/AsyncLogger;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 281
    move-object v0, p1

    move-object v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->setBasicValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/ThreadContext$ContextStack;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V

    .line 293
    return-void
.end method

.method private initTranslatorThreadValues(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V
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

    .line 297
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    sget-object v1, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->UNCACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->updateThreadValues()V

    .line 300
    :cond_0
    return-void
.end method

.method private isReused(Lorg/apache/logging/log4j/message/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 180
    instance-of v0, p1, Lorg/apache/logging/log4j/message/ReusableMessage;

    return v0
.end method

.method private logWithThreadLocalTranslator(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/StackTraceElement;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "location",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getCachedTranslator()Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;

    move-result-object v8

    .line 223
    .local v8, "translator":Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->initTranslator(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 224
    invoke-direct {p0, v8}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->initTranslatorThreadValues(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 225
    invoke-direct {p0, v8}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->publish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 226
    return-void
.end method

.method private logWithThreadLocalTranslator(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getCachedTranslator()Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;

    move-result-object v7

    .line 200
    .local v7, "translator":Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->initTranslator(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 201
    invoke-direct {p0, v7}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->initTranslatorThreadValues(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 202
    invoke-direct {p0, v7}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->publish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 203
    return-void
.end method

.method private logWithVarargTranslator(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/StackTraceElement;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "location",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->getDisruptor()Lcom/lmax/disruptor/dsl/Disruptor;

    move-result-object v0

    .line 372
    .local v0, "disruptor":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    if-nez v0, :cond_0

    .line 373
    sget-object v1, Lorg/apache/logging/log4j/core/async/AsyncLogger;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v2, "Ignoring log event after Log4j has been shut down."

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 374
    return-void

    .line 377
    :cond_0
    invoke-direct {p0, p5}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->isReused(Lorg/apache/logging/log4j/message/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    invoke-static {p5}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    .line 381
    :cond_1
    invoke-virtual {v0}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    aput-object p6, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/lmax/disruptor/RingBuffer;->tryPublishEvent(Lcom/lmax/disruptor/EventTranslatorVararg;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 389
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->handleRingBufferFull(Ljava/lang/StackTraceElement;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 391
    :cond_2
    return-void
.end method

.method private logWithVarargTranslator(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->getDisruptor()Lcom/lmax/disruptor/dsl/Disruptor;

    move-result-object v7

    .line 332
    .local v7, "disruptor":Lcom/lmax/disruptor/dsl/Disruptor;, "Lcom/lmax/disruptor/dsl/Disruptor<Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;>;"
    if-nez v7, :cond_0

    .line 333
    sget-object v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    const-string v1, "Ignoring log event after Log4j has been shut down."

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->error(Ljava/lang/String;)V

    .line 334
    return-void

    .line 337
    :cond_0
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->isReused(Lorg/apache/logging/log4j/message/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    invoke-static {p4}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    .line 340
    :cond_1
    const/4 v0, 0x0

    .line 342
    .local v0, "location":Ljava/lang/StackTraceElement;
    invoke-virtual {v7}, Lcom/lmax/disruptor/dsl/Disruptor;->getRingBuffer()Lcom/lmax/disruptor/RingBuffer;

    move-result-object v2

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v4, 0x1

    .line 344
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->calcLocationIfRequested(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v5

    move-object v1, v5

    .end local v0    # "location":Ljava/lang/StackTraceElement;
    .local v1, "location":Ljava/lang/StackTraceElement;
    aput-object v5, v3, v4

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const/4 v0, 0x4

    aput-object p3, v3, v0

    const/4 v0, 0x5

    aput-object p4, v3, v0

    const/4 v0, 0x6

    aput-object p5, v3, v0

    .line 342
    invoke-virtual {v2, p0, v3}, Lcom/lmax/disruptor/RingBuffer;->tryPublishEvent(Lcom/lmax/disruptor/EventTranslatorVararg;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->handleRingBufferFull(Ljava/lang/StackTraceElement;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 352
    :cond_2
    return-void
.end method

.method private onPropertiesPresent(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;Ljava/util/List;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;)V"
        }
    .end annotation

    .line 493
    .local p2, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getContextData(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 494
    .local v0, "contextData":Lorg/apache/logging/log4j/util/StringMap;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 495
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/core/config/Property;

    .line 496
    .local v3, "prop":Lorg/apache/logging/log4j/core/config/Property;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/logging/log4j/util/StringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 497
    goto :goto_1

    .line 499
    :cond_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v4, v4, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v4}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/config/Property;->evaluate(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    .end local v3    # "prop":Lorg/apache/logging/log4j/core/config/Property;
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->setContextData(Lorg/apache/logging/log4j/util/StringMap;)V

    .line 503
    return-void
.end method

.method private publish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V
    .locals 1
    .param p1, "translator"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translator"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->tryPublish(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->handleRingBufferFull(Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public actualAsyncLog(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 482
    .local v0, "privateConfigLoggerConfig":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 484
    .local v1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    if-eqz v1, :cond_0

    .line 485
    invoke-direct {p0, p1, v1}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->onPropertiesPresent(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;Ljava/util/List;)V

    .line 488
    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->log(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 489
    return-void
.end method

.method getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    return-object v0
.end method

.method public log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "fqcn",
            "location",
            "message",
            "throwable"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getTranslatorType()Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

    move-result-object v0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;->log(Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getTranslatorType()Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/async/AsyncLogger$TranslatorType;->log(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method logMessageInCurrentThread(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    .line 436
    .local v0, "strategy":Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 437
    return-void
.end method

.method public bridge synthetic translateTo(Ljava/lang/Object;J[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "event",
            "sequence",
            "args"
        }
    .end annotation

    .line 67
    check-cast p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->translateTo(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;J[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs translateTo(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;J[Ljava/lang/Object;)V
    .locals 29
    .param p1, "event"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .param p2, "sequence"    # J
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "sequence",
            "args"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 401
    const/4 v1, 0x0

    aget-object v1, p4, v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/apache/logging/log4j/core/async/AsyncLogger;

    .local v17, "asyncLogger":Lorg/apache/logging/log4j/core/async/AsyncLogger;
    move-object/from16 v1, v17

    .line 402
    const/4 v2, 0x1

    aget-object v2, p4, v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/StackTraceElement;

    .local v18, "location":Ljava/lang/StackTraceElement;
    move-object/from16 v14, v18

    .line 403
    const/4 v2, 0x2

    aget-object v2, p4, v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    .local v19, "fqcn":Ljava/lang/String;
    move-object/from16 v4, v19

    .line 404
    const/4 v2, 0x3

    aget-object v2, p4, v2

    move-object/from16 v20, v2

    check-cast v20, Lorg/apache/logging/log4j/Level;

    .local v20, "level":Lorg/apache/logging/log4j/Level;
    move-object/from16 v5, v20

    .line 405
    const/4 v2, 0x4

    aget-object v2, p4, v2

    move-object/from16 v21, v2

    check-cast v21, Lorg/apache/logging/log4j/Marker;

    .local v21, "marker":Lorg/apache/logging/log4j/Marker;
    move-object/from16 v3, v21

    .line 406
    const/4 v2, 0x5

    aget-object v2, p4, v2

    move-object/from16 v22, v2

    check-cast v22, Lorg/apache/logging/log4j/message/Message;

    .local v22, "message":Lorg/apache/logging/log4j/message/Message;
    move-object/from16 v6, v22

    .line 407
    const/4 v2, 0x6

    aget-object v2, p4, v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/Throwable;

    .local v23, "thrown":Ljava/lang/Throwable;
    move-object/from16 v7, v23

    .line 410
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v24

    .local v24, "contextStack":Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    move-object/from16 v9, v24

    .line 412
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    .line 413
    .local v25, "currentThread":Ljava/lang/Thread;
    sget-object v2, Lorg/apache/logging/log4j/core/async/AsyncLogger;->THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->getThreadName()Ljava/lang/String;

    move-result-object v26

    .local v26, "threadName":Ljava/lang/String;
    move-object/from16 v12, v26

    .line 414
    invoke-virtual/range {v17 .. v17}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lorg/apache/logging/log4j/core/async/AsyncLogger;->CONTEXT_DATA_INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

    .line 417
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/util/StringMap;

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/apache/logging/log4j/core/ContextDataInjector;->injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v8

    .line 418
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getPriority()I

    move-result v13

    sget-object v15, Lorg/apache/logging/log4j/core/async/AsyncLogger;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    move-object/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    move-object/from16 v16, v1

    .line 414
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual/range {v0 .. v16}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->setValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V

    .line 420
    return-void
.end method

.method protected updateConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/config/Configuration;->getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isIncludeLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLogger;->includeLocation:Z

    .line 110
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/Logger;->updateConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 111
    return-void
.end method
