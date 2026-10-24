.class public Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
.super Ljava/lang/Object;
.source "Log4jLogEvent.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/LogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private contextData:Lorg/apache/logging/log4j/util/StringMap;

.field private contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

.field private endOfBatch:Z

.field private includeLocation:Z

.field private final instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

.field private level:Lorg/apache/logging/log4j/Level;

.field private loggerFqcn:Ljava/lang/String;

.field private loggerName:Ljava/lang/String;

.field private marker:Lorg/apache/logging/log4j/Marker;

.field private message:Lorg/apache/logging/log4j/message/Message;

.field private nanoTime:J

.field private source:Ljava/lang/StackTraceElement;

.field private threadId:J

.field private threadName:Ljava/lang/String;

.field private threadPriority:I

.field private thrown:Ljava/lang/Throwable;

.field private thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 90
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$000(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 91
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->endOfBatch:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 3
    .param p1, "other"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 90
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$000(Ljava/util/List;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 91
    invoke-static {}, Lorg/apache/logging/log4j/ThreadContext;->getImmutableStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->endOfBatch:Z

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    instance-of v0, p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->initializeBuilder(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;)V

    .line 107
    return-void

    .line 109
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    if-eqz v0, :cond_1

    .line 110
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->initializeBuilder(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;)V

    .line 111
    return-void

    .line 113
    :cond_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerFqcn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->loggerFqcn:Ljava/lang/String;

    .line 114
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->marker:Lorg/apache/logging/log4j/Marker;

    .line 115
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 116
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->loggerName:Ljava/lang/String;

    .line 117
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->message:Lorg/apache/logging/log4j/message/Message;

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getInstant()Lorg/apache/logging/log4j/core/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/time/Instant;)V

    .line 119
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrown:Ljava/lang/Throwable;

    .line 120
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 121
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isIncludeLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->includeLocation:Z

    .line 122
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->endOfBatch:Z

    .line 123
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->nanoTime:J

    .line 126
    instance-of v0, p1, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    if-eqz v0, :cond_2

    .line 127
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    .line 128
    .local v0, "evt":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 129
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 130
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->source:Ljava/lang/StackTraceElement;

    .line 131
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadId:J

    .line 132
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadName:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadPriority:I

    .line 134
    .end local v0    # "evt":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    goto :goto_2

    .line 135
    :cond_2
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/util/StringMap;

    if-eqz v0, :cond_3

    .line 136
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/StringMap;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->clear()V

    .line 143
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 146
    :goto_1
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 147
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->source:Ljava/lang/StackTraceElement;

    .line 148
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadId:J

    .line 149
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadName:Ljava/lang/String;

    .line 150
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadPriority:I

    .line 152
    :goto_2
    return-void
.end method

.method private initTimeFields()V
    .locals 4

    .line 273
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getEpochMillisecond()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-static {}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$800()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/util/Clock;)V

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 25

    .line 263
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->initTimeFields()V

    .line 264
    new-instance v22, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-object/from16 v1, v22

    iget-object v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->loggerName:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->marker:Lorg/apache/logging/log4j/Marker;

    iget-object v4, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->loggerFqcn:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->level:Lorg/apache/logging/log4j/Level;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->message:Lorg/apache/logging/log4j/message/Message;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrown:Ljava/lang/Throwable;

    iget-object v8, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    iget-object v10, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    iget-wide v11, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadId:J

    iget-object v13, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadName:Ljava/lang/String;

    iget v14, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadPriority:I

    iget-object v15, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->source:Ljava/lang/StackTraceElement;

    move-object/from16 v23, v1

    iget-object v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 266
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getEpochMillisecond()J

    move-result-wide v16

    iget-object v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getNanoOfMillisecond()I

    move-result v18

    move-object/from16 v24, v2

    iget-wide v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->nanoTime:J

    move-wide/from16 v19, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v21}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJLorg/apache/logging/log4j/core/impl/Log4jLogEvent$1;)V

    move-object/from16 v1, v22

    .line 267
    .local v1, "result":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->includeLocation:Z

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setIncludeLocation(Z)V

    .line 268
    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->endOfBatch:Z

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setEndOfBatch(Z)V

    .line 269
    return-object v1
.end method

.method public setContextData(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "contextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contextData"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 212
    return-object p0
.end method

.method public setContextMap(Ljava/util/Map;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
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
            "Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    .local p1, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 207
    :cond_0
    return-object p0
.end method

.method public setContextStack(Lorg/apache/logging/log4j/ThreadContext$ContextStack;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "contextStack"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contextStack"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 217
    return-object p0
.end method

.method public setEndOfBatch(Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
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

    .line 246
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->endOfBatch:Z

    .line 247
    return-object p0
.end method

.method public setIncludeLocation(Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
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

    .line 241
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->includeLocation:Z

    .line 242
    return-object p0
.end method

.method public setInstant(Lorg/apache/logging/log4j/core/time/Instant;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 1
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/time/Instant;)V

    .line 191
    return-object p0
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->level:Lorg/apache/logging/log4j/Level;

    .line 156
    return-object p0
.end method

.method public setLoggerFqcn(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "loggerFqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerFqcn"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->loggerFqcn:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setLoggerName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "loggerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerName"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->loggerName:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setMarker(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "marker"    # Lorg/apache/logging/log4j/Marker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "marker"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->marker:Lorg/apache/logging/log4j/Marker;

    .line 171
    return-object p0
.end method

.method public setMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "message"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->message:Lorg/apache/logging/log4j/message/Message;

    .line 176
    return-object p0
.end method

.method public setNanoTime(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "nanoTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nanoTime"
        }
    .end annotation

    .line 257
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->nanoTime:J

    .line 258
    return-object p0
.end method

.method public setSource(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->source:Ljava/lang/StackTraceElement;

    .line 237
    return-object p0
.end method

.method public setThreadId(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "threadId"
        }
    .end annotation

    .line 221
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadId:J

    .line 222
    return-object p0
.end method

.method public setThreadName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "threadName"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadName:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public setThreadPriority(I)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "threadPriority"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "threadPriority"
        }
    .end annotation

    .line 231
    iput p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->threadPriority:I

    .line 232
    return-object p0
.end method

.method public setThrown(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thrown"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrown:Ljava/lang/Throwable;

    .line 181
    return-object p0
.end method

.method public setThrownProxy(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 0
    .param p1, "thrownProxy"    # Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thrownProxy"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 196
    return-object p0
.end method

.method public setTimeMillis(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .locals 2
    .param p1, "timeMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timeMillis"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 186
    return-object p0
.end method
