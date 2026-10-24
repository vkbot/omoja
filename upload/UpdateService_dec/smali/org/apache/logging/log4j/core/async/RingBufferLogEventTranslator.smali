.class public Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;
.super Ljava/lang/Object;
.source "RingBufferLogEventTranslator.java"

# interfaces
.implements Lcom/lmax/disruptor/EventTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lmax/disruptor/EventTranslator<",
        "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;


# instance fields
.field private asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

.field private clock:Lorg/apache/logging/log4j/core/util/Clock;

.field private contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

.field protected fqcn:Ljava/lang/String;

.field protected level:Lorg/apache/logging/log4j/Level;

.field private location:Ljava/lang/StackTraceElement;

.field loggerName:Ljava/lang/String;

.field protected marker:Lorg/apache/logging/log4j/Marker;

.field protected message:Lorg/apache/logging/log4j/message/Message;

.field private nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

.field private threadId:J

.field private threadName:Ljava/lang/String;

.field private threadPriority:I

.field protected thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadId:J

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadName:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadPriority:I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 12

    .line 74
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->setBasicValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/ThreadContext$ContextStack;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V

    .line 86
    return-void
.end method

.method public setBasicValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/ThreadContext$ContextStack;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V
    .locals 0
    .param p1, "anAsyncLogger"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p2, "aLoggerName"    # Ljava/lang/String;
    .param p3, "aMarker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "theFqcn"    # Ljava/lang/String;
    .param p5, "aLevel"    # Lorg/apache/logging/log4j/Level;
    .param p6, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "aThrowable"    # Ljava/lang/Throwable;
    .param p8, "aContextStack"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p9, "aLocation"    # Ljava/lang/StackTraceElement;
    .param p10, "aClock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .param p11, "aNanoClock"    # Lorg/apache/logging/log4j/core/util/NanoClock;
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
            "anAsyncLogger",
            "aLoggerName",
            "aMarker",
            "theFqcn",
            "aLevel",
            "msg",
            "aThrowable",
            "aContextStack",
            "aLocation",
            "aClock",
            "aNanoClock"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    .line 93
    iput-object p2, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->loggerName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->marker:Lorg/apache/logging/log4j/Marker;

    .line 95
    iput-object p4, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->fqcn:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->level:Lorg/apache/logging/log4j/Level;

    .line 97
    iput-object p6, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->message:Lorg/apache/logging/log4j/message/Message;

    .line 98
    iput-object p7, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->thrown:Ljava/lang/Throwable;

    .line 99
    iput-object p8, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 100
    iput-object p9, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->location:Ljava/lang/StackTraceElement;

    .line 101
    iput-object p10, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clock:Lorg/apache/logging/log4j/core/util/Clock;

    .line 102
    iput-object p11, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 103
    return-void
.end method

.method public bridge synthetic translateTo(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "event",
            "sequence"
        }
    .end annotation

    .line 37
    check-cast p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->translateTo(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;J)V

    return-void
.end method

.method public translateTo(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;J)V
    .locals 19
    .param p1, "event"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .param p2, "sequence"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "sequence"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 60
    :try_start_0
    iget-object v3, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->loggerName:Ljava/lang/String;

    iget-object v5, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->marker:Lorg/apache/logging/log4j/Marker;

    iget-object v6, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->fqcn:Ljava/lang/String;

    iget-object v7, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->level:Lorg/apache/logging/log4j/Level;

    iget-object v8, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->message:Lorg/apache/logging/log4j/message/Message;

    iget-object v9, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->thrown:Ljava/lang/Throwable;

    sget-object v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->INJECTOR:Lorg/apache/logging/log4j/core/ContextDataInjector;

    const/4 v2, 0x0

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v10

    check-cast v10, Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v0, v2, v10}, Lorg/apache/logging/log4j/core/ContextDataInjector;->injectContextData(Ljava/util/List;Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v10

    iget-object v11, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    iget-wide v12, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadId:J

    iget-object v14, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadName:Ljava/lang/String;

    iget v15, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadPriority:I

    iget-object v0, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->location:Ljava/lang/StackTraceElement;

    iget-object v2, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clock:Lorg/apache/logging/log4j/core/util/Clock;

    move-object/from16 v16, v0

    iget-object v0, v1, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->nanoClock:Lorg/apache/logging/log4j/core/util/NanoClock;

    .line 60
    move-object/from16 v17, v2

    move-object/from16 v2, p1

    move-object/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->setValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clear()V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->clear()V

    throw v0
.end method

.method public updateThreadValues()V
    .locals 3

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 107
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadId:J

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventTranslator;->threadPriority:I

    .line 110
    return-void
.end method
