.class public Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
.super Ljava/lang/Object;
.source "Log4jLogEvent.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LogEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;,
        Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    }
.end annotation


# static fields
.field private static final CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

.field private static final CONTEXT_DATA_INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

.field private static volatile nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock; = null

.field private static final serialVersionUID:J = -0x747b0310a2153243L


# instance fields
.field private final contextData:Lorg/apache/logging/log4j/util/StringMap;

.field private final contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

.field private endOfBatch:Z

.field private includeLocation:Z

.field private final instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

.field private final level:Lorg/apache/logging/log4j/Level;

.field private final loggerFqcn:Ljava/lang/String;

.field private final loggerName:Ljava/lang/String;

.field private final marker:Lorg/apache/logging/log4j/Marker;

.field private message:Lorg/apache/logging/log4j/message/Message;

.field private final transient nanoTime:J

.field private source:Ljava/lang/StackTraceElement;

.field private threadId:J

.field private threadName:Ljava/lang/String;

.field private threadPriority:I

.field private final transient thrown:Ljava/lang/Throwable;

.field private thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->getClock()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    .line 57
    new-instance v0, Lorg/apache/logging/log4j/core/util/DummyNanoClock;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/DummyNanoClock;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 58
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CONTEXT_DATA_INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 288
    const/4 v1, 0x0

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    sget-object v15, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 289
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v16

    .line 288
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v17}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;J)V

    .line 290
    return-void
.end method

.method public constructor <init>(J)V
    .locals 20
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timestamp"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v15, p1

    .line 298
    const/4 v1, 0x0

    move-object v6, v1

    check-cast v6, Ljava/lang/Throwable;

    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 299
    invoke-interface {v1}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v18

    .line 298
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJ)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 18
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/StackTraceElement;
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
            "loggerFQCN",
            "source",
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
            ")V"
        }
    .end annotation

    .line 355
    .local p7, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static/range {p7 .. p7}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createContextData(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v8

    .line 356
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->cloneStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    :goto_0
    move-object v9, v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v15, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    sget-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 362
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v16

    .line 355
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v14, p4

    invoke-direct/range {v0 .. v17}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;J)V

    .line 363
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "t"    # Ljava/lang/Throwable;
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
            "loggerName",
            "marker",
            "loggerFQCN",
            "level",
            "message",
            "t"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/util/Map;Lorg/apache/logging/log4j/ThreadContext$ContextStack;Ljava/lang/String;Ljava/lang/StackTraceElement;J)V
    .locals 20
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "t"    # Ljava/lang/Throwable;
    .param p8, "ndc"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p9, "threadName"    # Ljava/lang/String;
    .param p10, "location"    # Ljava/lang/StackTraceElement;
    .param p11, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
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
            "loggerFQCN",
            "level",
            "message",
            "t",
            "mdc",
            "ndc",
            "threadName",
            "location",
            "timestampMillis"
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
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/ThreadContext$ContextStack;",
            "Ljava/lang/String;",
            "Ljava/lang/StackTraceElement;",
            "J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p7, "mdc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    move-object/from16 v14, p10

    move-wide/from16 v15, p11

    .line 385
    invoke-static/range {p7 .. p7}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createContextData(Ljava/util/Map;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v8

    sget-object v7, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 386
    invoke-interface {v7}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v18

    .line 385
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJ)V

    .line 387
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;J)V
    .locals 14
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .param p7, "thrownProxy"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p8, "contextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .param p9, "contextStack"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p10, "threadId"    # J
    .param p12, "threadName"    # Ljava/lang/String;
    .param p13, "threadPriority"    # I
    .param p14, "source"    # Ljava/lang/StackTraceElement;
    .param p15, "nanoTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
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
            "loggerFQCN",
            "level",
            "message",
            "thrown",
            "thrownProxy",
            "contextData",
            "contextStack",
            "threadId",
            "threadName",
            "threadPriority",
            "source",
            "nanoTime"
        }
    .end annotation

    .line 465
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v3, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v3}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    iput-object v3, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 75
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    .line 466
    iput-object v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    .line 467
    move-object/from16 v3, p2

    iput-object v3, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 468
    move-object/from16 v4, p3

    iput-object v4, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    .line 469
    if-nez p4, :cond_0

    sget-object v5, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    iput-object v5, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 470
    iput-object v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 471
    move-object/from16 v5, p6

    iput-object v5, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    .line 472
    move-object/from16 v6, p7

    iput-object v6, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 473
    if-nez p8, :cond_1

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object/from16 v7, p8

    :goto_1
    iput-object v7, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 474
    if-nez p9, :cond_2

    sget-object v7, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    goto :goto_2

    :cond_2
    move-object/from16 v7, p9

    :goto_2
    iput-object v7, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 475
    move-wide/from16 v7, p10

    iput-wide v7, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    .line 476
    move-object/from16 v9, p12

    iput-object v9, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    .line 477
    move/from16 v10, p13

    iput v10, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    .line 478
    move-object/from16 v11, p14

    iput-object v11, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 479
    instance-of v12, v2, Lorg/apache/logging/log4j/message/LoggerNameAwareMessage;

    if-eqz v12, :cond_3

    .line 480
    move-object v12, v2

    check-cast v12, Lorg/apache/logging/log4j/message/LoggerNameAwareMessage;

    invoke-interface {v12, p1}, Lorg/apache/logging/log4j/message/LoggerNameAwareMessage;->setLoggerName(Ljava/lang/String;)V

    .line 482
    :cond_3
    move-wide/from16 v12, p15

    iput-wide v12, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoTime:J

    .line 483
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJ)V
    .locals 17
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .param p7, "thrownProxy"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p8, "contextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .param p9, "contextStack"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p10, "threadId"    # J
    .param p12, "threadName"    # Ljava/lang/String;
    .param p13, "threadPriority"    # I
    .param p14, "source"    # Ljava/lang/StackTraceElement;
    .param p15, "timestampMillis"    # J
    .param p17, "nanoOfMillisecond"    # I
    .param p18, "nanoTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
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
            "loggerFQCN",
            "level",
            "message",
            "thrown",
            "thrownProxy",
            "contextData",
            "contextStack",
            "threadId",
            "threadName",
            "threadPriority",
            "source",
            "timestampMillis",
            "nanoOfMillisecond",
            "nanoTime"
        }
    .end annotation

    move-object/from16 v15, p5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v15, p18

    .line 443
    invoke-direct/range {v0 .. v16}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;J)V

    .line 444
    move-object/from16 v0, p5

    instance-of v1, v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/TimestampMessage;

    .line 445
    invoke-interface {v1}, Lorg/apache/logging/log4j/message/TimestampMessage;->getTimestamp()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p15

    .line 447
    .local v1, "millis":J
    :goto_0
    move-object/from16 v3, p0

    iget-object v4, v3, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    move/from16 v5, p17

    invoke-virtual {v4, v1, v2, v5}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 448
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJLorg/apache/logging/log4j/core/impl/Log4jLogEvent$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/logging/log4j/Level;
    .param p5, "x4"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "x5"    # Ljava/lang/Throwable;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p8, "x7"    # Lorg/apache/logging/log4j/util/StringMap;
    .param p9, "x8"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p10, "x9"    # J
    .param p12, "x10"    # Ljava/lang/String;
    .param p13, "x11"    # I
    .param p14, "x12"    # Ljava/lang/StackTraceElement;
    .param p15, "x13"    # J
    .param p17, "x14"    # I
    .param p18, "x15"    # J
    .param p20, "x16"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$1;

    .line 53
    invoke-direct/range {p0 .. p19}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;J)V
    .locals 17
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .param p7, "thrownProxy"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p8, "contextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .param p9, "contextStack"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p10, "threadId"    # J
    .param p12, "threadName"    # Ljava/lang/String;
    .param p13, "threadPriority"    # I
    .param p14, "source"    # Ljava/lang/StackTraceElement;
    .param p15, "clock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .param p16, "nanoTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
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
            "loggerFQCN",
            "level",
            "message",
            "thrown",
            "thrownProxy",
            "contextData",
            "contextStack",
            "threadId",
            "threadName",
            "threadPriority",
            "source",
            "clock",
            "nanoTime"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-wide/from16 v15, p16

    .line 454
    invoke-direct/range {v0 .. v16}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;J)V

    .line 455
    move-object/from16 v0, p5

    instance-of v1, v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    if-eqz v1, :cond_0

    .line 456
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    move-object v3, v0

    check-cast v3, Lorg/apache/logging/log4j/message/TimestampMessage;

    invoke-interface {v3}, Lorg/apache/logging/log4j/message/TimestampMessage;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    move-object/from16 v3, p15

    goto :goto_0

    .line 458
    :cond_0
    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    move-object/from16 v3, p15

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/util/Clock;)V

    .line 460
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 18
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "loggerFQCN"    # Ljava/lang/String;
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
            "loggerFQCN",
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
            ")V"
        }
    .end annotation

    .line 331
    .local p6, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static/range {p6 .. p6}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createContextData(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v8

    .line 332
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->cloneStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    :goto_0
    move-object v9, v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    sget-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 338
    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v16

    .line 331
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v17}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;J)V

    .line 339
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 53
    invoke-static {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createContextData(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/core/time/MutableInstant;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    return v0
.end method

.method static synthetic access$3600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 53
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    return v0
.end method

.method static synthetic access$800()Lorg/apache/logging/log4j/core/util/Clock;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    return-object v0
.end method

.method public static canDeserialize(Ljava/io/Serializable;)Z
    .locals 1
    .param p0, "event"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 763
    instance-of v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    return v0
.end method

.method private static createContextData(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;)",
            "Lorg/apache/logging/log4j/util/StringMap;"
        }
    .end annotation

    .line 496
    .local p0, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 497
    .local v0, "reusable":Lorg/apache/logging/log4j/util/StringMap;
    sget-object v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->CONTEXT_DATA_INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

    invoke-interface {v1, p0, v0}, Lorg/apache/logging/log4j/core/ContextDataInjector;->injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    return-object v1
.end method

.method private static createContextData(Ljava/util/Map;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contextMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/util/StringMap;"
        }
    .end annotation

    .line 486
    .local p0, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 487
    .local v0, "result":Lorg/apache/logging/log4j/util/StringMap;
    if-eqz p0, :cond_0

    .line 488
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 489
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 492
    :cond_0
    return-object v0
.end method

.method public static createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Ljava/util/Map;Lorg/apache/logging/log4j/ThreadContext$ContextStack;Ljava/lang/String;Ljava/lang/StackTraceElement;J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 21
    .param p0, "loggerName"    # Ljava/lang/String;
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p2, "loggerFQCN"    # Ljava/lang/String;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "thrown"    # Ljava/lang/Throwable;
    .param p6, "thrownProxy"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .param p8, "ndc"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p9, "threadName"    # Ljava/lang/String;
    .param p10, "location"    # Ljava/lang/StackTraceElement;
    .param p11, "timestamp"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
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
            "loggerFQCN",
            "level",
            "message",
            "thrown",
            "thrownProxy",
            "mdc",
            "ndc",
            "threadName",
            "location",
            "timestamp"
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
            "Ljava/lang/Throwable;",
            "Lorg/apache/logging/log4j/core/impl/ThrowableProxy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/logging/log4j/ThreadContext$ContextStack;",
            "Ljava/lang/String;",
            "Ljava/lang/StackTraceElement;",
            "J)",
            "Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .local p7, "mdc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    move-object/from16 v14, p10

    move-wide/from16 v15, p11

    .line 413
    new-instance v20, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-object/from16 v0, v20

    .line 414
    invoke-static/range {p7 .. p7}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createContextData(Ljava/util/Map;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v8

    sget-object v10, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    invoke-interface {v10}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v18

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v19}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJ)V

    .line 415
    .local v0, "result":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    return-object v0
.end method

.method public static createMemento(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1
    .param p0, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 787
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public static createMemento(Lorg/apache/logging/log4j/core/LogEvent;Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 1
    .param p0, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "includeLocation"
        }
    .end annotation

    .line 796
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->serialize(Lorg/apache/logging/log4j/core/LogEvent;Z)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->deserialize(Ljava/io/Serializable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Ljava/io/Serializable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 23
    .param p0, "event"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 767
    move-object/from16 v0, p0

    const-string v1, "Event cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 768
    instance-of v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    if-eqz v1, :cond_0

    .line 769
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 770
    .local v1, "proxy":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;
    new-instance v22, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-object/from16 v2, v22

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$900(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1000(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/Marker;

    move-result-object v4

    .line 771
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/Level;

    move-result-object v6

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v7

    .line 772
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v9

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v10

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1700(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v11

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1800(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)J

    move-result-wide v12

    .line 773
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$1900(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2000(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)I

    move-result v15

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/StackTraceElement;

    move-result-object v16

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)J

    move-result-wide v17

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)I

    move-result v19

    .line 774
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)J

    move-result-wide v20

    invoke-direct/range {v2 .. v21}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJ)V

    .line 775
    .local v2, "result":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setEndOfBatch(Z)V

    .line 776
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->access$2600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setIncludeLocation(Z)V

    .line 777
    return-object v2

    .line 779
    .end local v1    # "proxy":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;
    .end local v2    # "result":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event is not a serialized LogEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNanoClock()Lorg/apache/logging/log4j/core/util/NanoClock;
    .locals 1

    .line 505
    sget-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 1

    .line 284
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 783
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Lorg/apache/logging/log4j/core/LogEvent;Z)Ljava/io/Serializable;
    .locals 2
    .param p0, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "includeLocation"
        }
    .end annotation

    .line 741
    instance-of v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    if-eqz v0, :cond_0

    .line 742
    invoke-interface {p0}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 743
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    move-object v1, p0

    check-cast v1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    invoke-direct {v0, v1, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;-><init>(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;Z)V

    return-object v0

    .line 745
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;-><init>(Lorg/apache/logging/log4j/core/LogEvent;Z)V

    return-object v0
.end method

.method public static serialize(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;Z)Ljava/io/Serializable;
    .locals 1
    .param p0, "event"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "includeLocation"
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 759
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;-><init>(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;Z)V

    return-object v0
.end method

.method public static setNanoClock(Lorg/apache/logging/log4j/core/util/NanoClock;)V
    .locals 3
    .param p0, "nanoClock"    # Lorg/apache/logging/log4j/core/util/NanoClock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nanoClock"
        }
    .end annotation

    .line 517
    const-string v0, "NanoClock must be non-null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/core/util/NanoClock;

    sput-object v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 518
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Using {} for nanosecond timestamps."

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 1

    .line 526
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 811
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 812
    return v0

    .line 814
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 818
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 820
    .local v2, "that":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    iget-boolean v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    if-eq v3, v4, :cond_2

    .line 821
    return v1

    .line 823
    :cond_2
    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    iget-boolean v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    if-eq v3, v4, :cond_3

    .line 824
    return v1

    .line 826
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/time/MutableInstant;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 827
    return v1

    .line 829
    :cond_4
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoTime:J

    iget-wide v5, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 830
    return v1

    .line 832
    :cond_5
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_6
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 833
    :goto_0
    return v1

    .line 835
    :cond_7
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    if-eqz v3, :cond_8

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/Level;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_8
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    if-eqz v3, :cond_9

    .line 836
    :goto_1
    return v1

    .line 838
    :cond_9
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    if-eqz v3, :cond_a

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_a
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    if-eqz v3, :cond_b

    .line 839
    :goto_2
    return v1

    .line 841
    :cond_b
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    if-eqz v3, :cond_c

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_c
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    if-eqz v3, :cond_d

    .line 842
    :goto_3
    return v1

    .line 844
    :cond_d
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    if-eqz v3, :cond_e

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_4

    :cond_e
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    if-eqz v3, :cond_f

    .line 845
    :goto_4
    return v1

    .line 847
    :cond_f
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 848
    return v1

    .line 850
    :cond_10
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 851
    return v1

    .line 853
    :cond_11
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    if-eqz v3, :cond_12

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_5

    :cond_12
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    if-eqz v3, :cond_13

    .line 854
    :goto_5
    return v1

    .line 856
    :cond_13
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    iget-wide v5, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    .line 857
    return v1

    .line 859
    :cond_14
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_6

    :cond_15
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 860
    :goto_6
    return v1

    .line 862
    :cond_16
    iget v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    iget v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    if-eq v3, v4, :cond_17

    .line 863
    return v1

    .line 865
    :cond_17
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_7

    :cond_18
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    if-eqz v3, :cond_19

    .line 866
    :goto_7
    return v1

    .line 868
    :cond_19
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-eqz v3, :cond_1a

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_8

    :cond_1a
    iget-object v3, v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-eqz v3, :cond_1b

    .line 869
    :goto_8
    return v1

    .line 872
    :cond_1b
    return v0

    .line 815
    .end local v2    # "that":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    :cond_1c
    :goto_9
    return v1
.end method

.method public getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    return-object v0
.end method

.method public getContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->toMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object v0
.end method

.method public getInstant()Lorg/apache/logging/log4j/core/time/Instant;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getLoggerFqcn()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Lorg/apache/logging/log4j/Marker;
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 719
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoTime:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/StackTraceElement;
    .locals 2

    .line 687
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    .line 688
    return-object v0

    .line 690
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 693
    :cond_1
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 694
    return-object v0

    .line 691
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadId()J
    .locals 4

    .line 570
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    .line 573
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 583
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    .line 585
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 590
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    .line 593
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 2

    .line 628
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 631
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 601
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getEpochMillisecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 878
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerFqcn:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 879
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/logging/log4j/Marker;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 880
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/logging/log4j/Level;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 881
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 882
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 883
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/time/MutableInstant;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 884
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->nanoTime:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int/2addr v0, v3

    .line 885
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrown:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    add-int/2addr v2, v3

    .line 886
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    add-int/2addr v0, v3

    .line 887
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/apache/logging/log4j/util/StringMap;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    add-int/2addr v2, v3

    .line 888
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    move v3, v1

    :goto_6
    add-int/2addr v0, v3

    .line 889
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadId:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 890
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadName:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    add-int/2addr v0, v3

    .line 891
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->threadPriority:I

    ushr-int/lit8 v4, v3, 0x20

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 892
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->source:Ljava/lang/StackTraceElement;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    .line 893
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    add-int/2addr v1, v2

    .line 894
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    add-int/2addr v0, v2

    .line 896
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isEndOfBatch()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    return v0
.end method

.method public makeMessageImmutable()V
    .locals 4

    .line 565
    new-instance v0, Lorg/apache/logging/log4j/core/impl/MementoMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v1}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v2}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v3}, Lorg/apache/logging/log4j/message/Message;->getParameters()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/impl/MementoMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 566
    return-void
.end method

.method public setEndOfBatch(Z)V
    .locals 0
    .param p1, "endOfBatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "endOfBatch"
        }
    .end annotation

    .line 714
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->endOfBatch:Z

    .line 715
    return-void
.end method

.method public setIncludeLocation(Z)V
    .locals 0
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeLocation"
        }
    .end annotation

    .line 704
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    .line 705
    return-void
.end method

.method public bridge synthetic toImmutable()Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->toImmutable()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public toImmutable()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->makeMessageImmutable()V

    .line 534
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "root"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->loggerName:Ljava/lang/String;

    .line 803
    .local v1, "n":Ljava/lang/String;
    :goto_0
    const-string v2, "Logger="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v2, " Level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string v2, " Message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 727
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 728
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->includeLocation:Z

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;-><init>(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;Z)V

    return-object v0
.end method
