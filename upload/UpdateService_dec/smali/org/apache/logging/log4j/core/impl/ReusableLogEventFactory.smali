.class public Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;
.super Ljava/lang/Object;
.source "ReusableLogEventFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/impl/LogEventFactory;
.implements Lorg/apache/logging/log4j/core/impl/LocationAwareLogEventFactory;


# static fields
.field private static final CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

.field private static final THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

.field private static final mutableLogEventThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/core/impl/MutableLogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final injector:Lorg/apache/logging/log4j/core/ContextDataInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->create()Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->getClock()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->mutableLogEventThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

    return-void
.end method

.method private static createInstance(Lorg/apache/logging/log4j/core/impl/MutableLogEvent;)Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    .locals 3
    .param p0, "existing"    # Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 109
    new-instance v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;-><init>()V

    .line 112
    .local v0, "result":Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setThreadId(J)V

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setThreadName(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setThreadPriority(I)V

    .line 115
    if-nez p0, :cond_0

    .line 116
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->mutableLogEventThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-object v0
.end method

.method private static getOrCreateMutableLogEvent()Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    .locals 2

    .line 104
    sget-object v0, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->mutableLogEventThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    .line 105
    .local v0, "result":Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->reserved:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->createInstance(Lorg/apache/logging/log4j/core/impl/MutableLogEvent;)Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public static release(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p0, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 128
    instance-of v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    if-eqz v0, :cond_0

    .line 129
    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    .line 130
    .local v0, "mutableLogEvent":Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->clear()V

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->reserved:Z

    .line 133
    .end local v0    # "mutableLogEvent":Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 3
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p8, "t"    # Ljava/lang/Throwable;
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
            "loggerName",
            "marker",
            "fqcn",
            "location",
            "level",
            "message",
            "properties",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "Ljava/lang/StackTraceElement;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/logging/log4j/core/LogEvent;"
        }
    .end annotation

    .line 80
    .local p7, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->getOrCreateMutableLogEvent()Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    move-result-object v0

    .line 81
    .local v0, "result":Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->reserved:Z

    .line 85
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setLoggerName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setMarker(Lorg/apache/logging/log4j/Marker;)V

    .line 87
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setLoggerFqcn(Ljava/lang/String;)V

    .line 88
    if-nez p5, :cond_0

    sget-object v1, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    goto :goto_0

    :cond_0
    move-object v1, p5

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setLevel(Lorg/apache/logging/log4j/Level;)V

    .line 89
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 90
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->initTime(Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V

    .line 91
    invoke-virtual {v0, p8}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setThrown(Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setSource(Ljava/lang/StackTraceElement;)V

    .line 93
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v1, p7, v2}, Lorg/apache/logging/log4j/core/ContextDataInjector;->injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setContextData(Lorg/apache/logging/log4j/util/StringMap;)V

    .line 94
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getDepth()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->cloneStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setContextStack(Lorg/apache/logging/log4j/ThreadContext$ContextStack;)V

    .line 96
    sget-object v1, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->THREAD_NAME_CACHING_STRATEGY:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    sget-object v2, Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;->UNCACHED:Lorg/apache/logging/log4j/core/async/ThreadNameCachingStrategy;

    if-ne v1, v2, :cond_2

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setThreadName(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setThreadPriority(I)V

    .line 100
    :cond_2
    return-object v0
.end method

.method public createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 9
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "t"    # Ljava/lang/Throwable;
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
            "loggerName",
            "marker",
            "fqcn",
            "level",
            "message",
            "properties",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/logging/log4j/core/LogEvent;"
        }
    .end annotation

    .line 60
    .local p6, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/apache/logging/log4j/core/impl/ReusableLogEventFactory;->createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    return-object v0
.end method
