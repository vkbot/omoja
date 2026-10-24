.class public Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
.super Ljava/lang/Object;
.source "RingBufferLogEvent.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LogEvent;
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Ljava/lang/CharSequence;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;
    }
.end annotation


# static fields
.field private static final EMPTY:Lorg/apache/logging/log4j/message/Message;

.field public static final FACTORY:Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;

.field private static final serialVersionUID:J = 0x756f7c7a278e2d26L


# instance fields
.field private transient asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

.field private contextData:Lorg/apache/logging/log4j/util/StringMap;

.field private contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

.field private endOfBatch:Z

.field private fqcn:Ljava/lang/String;

.field private includeLocation:Z

.field private final instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

.field private level:Lorg/apache/logging/log4j/Level;

.field private location:Ljava/lang/StackTraceElement;

.field private loggerName:Ljava/lang/String;

.field private marker:Lorg/apache/logging/log4j/Marker;

.field private message:Lorg/apache/logging/log4j/message/Message;

.field private messageFormat:Ljava/lang/String;

.field private messageText:Ljava/lang/StringBuilder;

.field private nanoTime:J

.field private parameterCount:S

.field private parameters:[Ljava/lang/Object;

.field private populated:Z

.field private threadId:J

.field private threadName:Ljava/lang/String;

.field private threadPriority:I

.field private transient thrown:Ljava/lang/Throwable;

.field private thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;-><init>(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->FACTORY:Lorg/apache/logging/log4j/core/async/RingBufferLogEvent$Factory;

    .line 52
    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->EMPTY:Lorg/apache/logging/log4j/message/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->endOfBatch:Z

    .line 82
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    return-void
.end method

.method private getMessageTextForWriting()Ljava/lang/StringBuilder;
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lorg/apache/logging/log4j/core/util/Constants;->INITIAL_REUSABLE_MESSAGE_SIZE:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private initTime(Lorg/apache/logging/log4j/core/util/Clock;)V
    .locals 4
    .param p1, "clock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clock"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    instance-of v1, v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    check-cast v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/TimestampMessage;->getTimestamp()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/util/Clock;)V

    .line 120
    :goto_0
    return-void
.end method

.method private setMessage(Lorg/apache/logging/log4j/message/Message;)V
    .locals 2
    .param p1, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 128
    instance-of v0, p1, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-eqz v0, :cond_1

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableMessage;

    .line 130
    .local v0, "reusable":Lorg/apache/logging/log4j/message/ReusableMessage;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getMessageTextForWriting()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/ReusableMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 131
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/ReusableMessage;->getFormat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageFormat:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/ReusableMessage;->swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    .line 133
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/ReusableMessage;->getParameterCount()S

    move-result v1

    iput-short v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameterCount:S

    .line 134
    .end local v0    # "reusable":Lorg/apache/logging/log4j/message/ReusableMessage;
    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 137
    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 441
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->populated:Z

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    .line 404
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->loggerName:Ljava/lang/String;

    .line 405
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 406
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->fqcn:Ljava/lang/String;

    .line 407
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 408
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 409
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageFormat:Ljava/lang/String;

    .line 410
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    .line 411
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 412
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 413
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->location:Ljava/lang/StackTraceElement;

    .line 414
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    if-eqz v1, :cond_1

    .line 415
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    goto :goto_0

    .line 418
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->clear()V

    .line 423
    :cond_1
    :goto_0
    sget-boolean v1, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/logging/log4j/core/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    .line 426
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 427
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 433
    :cond_2
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    .line 434
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    .line 436
    :cond_3
    :goto_1
    return-void
.end method

.method public createMemento()Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1

    .line 449
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public execute(Z)V
    .locals 1
    .param p1, "endOfBatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "endOfBatch"
        }
    .end annotation

    .line 155
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->endOfBatch:Z

    .line 156
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/async/AsyncLogger;->actualAsyncLog(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;)V

    .line 157
    return-void
.end method

.method public forEachParameter(Lorg/apache/logging/log4j/message/ParameterConsumer;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/message/ParameterConsumer<",
            "TS;>;TS;)V"
        }
    .end annotation

    .line 287
    .local p1, "action":Lorg/apache/logging/log4j/message/ParameterConsumer;, "Lorg/apache/logging/log4j/message/ParameterConsumer<TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    iget-short v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameterCount:S

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1, v0, p2}, Lorg/apache/logging/log4j/message/ParameterConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 288
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 292
    .end local v0    # "i":S
    :cond_0
    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 262
    return-void
.end method

.method public getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

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

    .line 354
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->toMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0
.end method

.method public getInstant()Lorg/apache/logging/log4j/core/time/Instant;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->level:Lorg/apache/logging/log4j/Level;

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getLoggerFqcn()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->fqcn:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Lorg/apache/logging/log4j/Marker;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->EMPTY:Lorg/apache/logging/log4j/message/Message;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 219
    :cond_1
    return-object v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 394
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->nanoTime:J

    return-wide v0
.end method

.method public getParameterCount()S
    .locals 1

    .line 282
    iget-short v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameterCount:S

    return v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameterCount:S

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSource()Ljava/lang/StackTraceElement;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->location:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .line 364
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadId:J

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 374
    iget v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadPriority:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 2

    .line 333
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    instance-of v1, v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/TimestampMessage;->getTimestamp()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getEpochMillisecond()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public initializeBuilder(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;)V
    .locals 3
    .param p1, "builder"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setContextData(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 459
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setContextStack(Lorg/apache/logging/log4j/ThreadContext$ContextStack;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->endOfBatch:Z

    .line 460
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setEndOfBatch(Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->includeLocation:Z

    .line 461
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setIncludeLocation(Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->fqcn:Ljava/lang/String;

    .line 463
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLoggerFqcn(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->loggerName:Ljava/lang/String;

    .line 464
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLoggerName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 465
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMarker(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->memento()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->nanoTime:J

    .line 467
    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setNanoTime(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->location:Ljava/lang/StackTraceElement;

    .line 468
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setSource(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadId:J

    .line 469
    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThreadId(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadName:Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThreadName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadPriority:I

    .line 471
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThreadPriority(I)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThrown(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 473
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThrownProxy(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 474
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setInstant(Lorg/apache/logging/log4j/core/time/Instant;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    .line 476
    return-void
.end method

.method public isEndOfBatch()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->endOfBatch:Z

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->includeLocation:Z

    return v0
.end method

.method public isPopulated()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->populated:Z

    return v0
.end method

.method public length()I
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 4

    .line 296
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lorg/apache/logging/log4j/core/impl/MementoMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageFormat:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->getParameters()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/impl/MementoMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method setContextData(Lorg/apache/logging/log4j/util/StringMap;)V
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

    .line 348
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 349
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

    .line 178
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->endOfBatch:Z

    .line 179
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

    .line 188
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->includeLocation:Z

    .line 189
    return-void
.end method

.method public setValues(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V
    .locals 16
    .param p1, "anAsyncLogger"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p2, "aLoggerName"    # Ljava/lang/String;
    .param p3, "aMarker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "theFqcn"    # Ljava/lang/String;
    .param p5, "aLevel"    # Lorg/apache/logging/log4j/Level;
    .param p6, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "aThrowable"    # Ljava/lang/Throwable;
    .param p8, "mutableContextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .param p9, "aContextStack"    # Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .param p10, "threadId"    # J
    .param p12, "threadName"    # Ljava/lang/String;
    .param p13, "threadPriority"    # I
    .param p14, "aLocation"    # Ljava/lang/StackTraceElement;
    .param p15, "clock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .param p16, "nanoClock"    # Lorg/apache/logging/log4j/core/util/NanoClock;
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
            "anAsyncLogger",
            "aLoggerName",
            "aMarker",
            "theFqcn",
            "aLevel",
            "msg",
            "aThrowable",
            "mutableContextData",
            "aContextStack",
            "threadId",
            "threadName",
            "threadPriority",
            "aLocation",
            "clock",
            "nanoClock"
        }
    .end annotation

    .line 95
    move-object/from16 v0, p0

    move/from16 v1, p13

    iput v1, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadPriority:I

    .line 96
    move-wide/from16 v2, p10

    iput-wide v2, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadId:J

    .line 97
    move-object/from16 v4, p5

    iput-object v4, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 98
    move-object/from16 v5, p12

    iput-object v5, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->threadName:Ljava/lang/String;

    .line 99
    move-object/from16 v6, p2

    iput-object v6, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->loggerName:Ljava/lang/String;

    .line 100
    move-object/from16 v7, p6

    invoke-direct {v0, v7}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->setMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 101
    move-object/from16 v8, p15

    invoke-direct {v0, v8}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->initTime(Lorg/apache/logging/log4j/core/util/Clock;)V

    .line 102
    invoke-interface/range {p16 .. p16}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->nanoTime:J

    .line 103
    move-object/from16 v9, p7

    iput-object v9, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrown:Ljava/lang/Throwable;

    .line 104
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 105
    move-object/from16 v10, p3

    iput-object v10, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 106
    move-object/from16 v11, p4

    iput-object v11, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->fqcn:Ljava/lang/String;

    .line 107
    move-object/from16 v12, p14

    iput-object v12, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->location:Ljava/lang/StackTraceElement;

    .line 108
    move-object/from16 v13, p8

    iput-object v13, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 109
    move-object/from16 v14, p9

    iput-object v14, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 110
    move-object/from16 v15, p1

    iput-object v15, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->asyncLogger:Lorg/apache/logging/log4j/core/async/AsyncLogger;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->populated:Z

    .line 112
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "emptyReplacement"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "emptyReplacement"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    .line 273
    .local v0, "result":[Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->parameters:[Ljava/lang/Object;

    .line 274
    return-object v0
.end method

.method public toImmutable()Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->createMemento()Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    return-object v0
.end method
