.class public Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
.super Ljava/lang/Object;
.source "MutableLogEvent.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LogEvent;
.implements Lorg/apache/logging/log4j/message/ReusableMessage;
.implements Lorg/apache/logging/log4j/message/ParameterVisitable;


# static fields
.field private static final EMPTY:Lorg/apache/logging/log4j/message/Message;


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

.field private messageFormat:Ljava/lang/String;

.field private messageText:Ljava/lang/StringBuilder;

.field private nanoTime:J

.field private parameterCount:S

.field private parameters:[Ljava/lang/Object;

.field transient reserved:Z

.field private source:Ljava/lang/StackTraceElement;

.field private threadId:J

.field private threadName:Ljava/lang/String;

.field private threadPriority:I

.field private thrown:Ljava/lang/Throwable;

.field private thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->EMPTY:Lorg/apache/logging/log4j/message/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;-><init>(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgText"    # Ljava/lang/StringBuilder;
    .param p2, "replacementParameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msgText",
            "replacementParameters"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->endOfBatch:Z

    .line 62
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 67
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->reserved:Z

    .line 75
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    .line 76
    iput-object p2, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private getMessageTextForWriting()Ljava/lang/StringBuilder;
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lorg/apache/logging/log4j/core/util/Constants;->INITIAL_REUSABLE_MESSAGE_SIZE:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

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

    .line 462
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerFqcn:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 126
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 127
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerName:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 129
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageFormat:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrown:Ljava/lang/Throwable;

    .line 131
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 132
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 133
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/StringMap;->clear()V

    .line 140
    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 147
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/logging/log4j/core/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/util/StringBuilders;->trimToMaxSize(Ljava/lang/StringBuilder;I)V

    .line 149
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 150
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_2
    return-void
.end method

.method public createMemento()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 1

    .line 472
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->serialize(Lorg/apache/logging/log4j/core/LogEvent;Z)Ljava/io/Serializable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->deserialize(Ljava/io/Serializable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
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

    .line 256
    .local p1, "action":Lorg/apache/logging/log4j/message/ParameterConsumer;, "Lorg/apache/logging/log4j/message/ParameterConsumer<TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    iget-short v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameterCount:S

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1, v0, p2}, Lorg/apache/logging/log4j/message/ParameterConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 261
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

    .line 276
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method

.method public getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

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

    .line 381
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/StringMap;->toMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Lorg/apache/logging/log4j/core/time/Instant;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->level:Lorg/apache/logging/log4j/Level;

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getLoggerFqcn()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerFqcn:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Lorg/apache/logging/log4j/Marker;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->EMPTY:Lorg/apache/logging/log4j/message/Message;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 206
    :cond_1
    return-object v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 446
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->nanoTime:J

    return-wide v0
.end method

.method public getParameterCount()S
    .locals 1

    .line 297
    iget-short v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameterCount:S

    return v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameterCount:S

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSource()Ljava/lang/StackTraceElement;
    .locals 2

    .line 363
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->source:Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    .line 364
    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerFqcn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    invoke-static {v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 370
    return-object v0

    .line 367
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .line 399
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadId:J

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 417
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadPriority:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrown:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrown:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 328
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getEpochMillisecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public initFrom(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 95
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerFqcn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerFqcn:Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 97
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 98
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerName:Ljava/lang/String;

    .line 99
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrown:Ljava/lang/Throwable;

    .line 100
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 102
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getInstant()Lorg/apache/logging/log4j/core/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/time/Instant;)V

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 109
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 110
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isIncludeLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 111
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadId:J

    .line 112
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadName:Ljava/lang/String;

    .line 113
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadPriority:I

    .line 114
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->endOfBatch:Z

    .line 115
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isIncludeLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    .line 116
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->nanoTime:J

    .line 117
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->setMessage(Lorg/apache/logging/log4j/message/Message;)V

    .line 118
    return-void
.end method

.method initTime(Lorg/apache/logging/log4j/core/util/Clock;Lorg/apache/logging/log4j/core/util/NanoClock;)V
    .locals 4
    .param p1, "clock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .param p2, "nanoClock"    # Lorg/apache/logging/log4j/core/util/NanoClock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "clock",
            "nanoClock"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    instance-of v1, v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    check-cast v0, Lorg/apache/logging/log4j/message/TimestampMessage;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/TimestampMessage;->getTimestamp()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFrom(Lorg/apache/logging/log4j/core/util/Clock;)V

    .line 323
    :goto_0
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->nanoTime:J

    .line 324
    return-void
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

    .line 480
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setContextData(Lorg/apache/logging/log4j/util/StringMap;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 481
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setContextStack(Lorg/apache/logging/log4j/ThreadContext$ContextStack;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->endOfBatch:Z

    .line 482
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setEndOfBatch(Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    .line 483
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setIncludeLocation(Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLevel(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerFqcn:Ljava/lang/String;

    .line 485
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLoggerFqcn(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerName:Ljava/lang/String;

    .line 486
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setLoggerName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 487
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMarker(Lorg/apache/logging/log4j/Marker;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->memento()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setMessage(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->nanoTime:J

    .line 489
    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setNanoTime(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 490
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setSource(Ljava/lang/StackTraceElement;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadId:J

    .line 491
    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThreadId(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadName:Ljava/lang/String;

    .line 492
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThreadName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadPriority:I

    .line 493
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThreadPriority(I)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThrown(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 495
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setThrownProxy(Lorg/apache/logging/log4j/core/impl/ThrowableProxy;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 496
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setInstant(Lorg/apache/logging/log4j/core/time/Instant;)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    .line 498
    return-void
.end method

.method public isEndOfBatch()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->endOfBatch:Z

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    return v0
.end method

.method public memento()Lorg/apache/logging/log4j/message/Message;
    .locals 4

    .line 302
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lorg/apache/logging/log4j/core/impl/MementoMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageFormat:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->getParameters()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/impl/MementoMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method public setContextData(Lorg/apache/logging/log4j/util/StringMap;)V
    .locals 0
    .param p1, "mutableContextData"    # Lorg/apache/logging/log4j/util/StringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mutableContextData"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 386
    return-void
.end method

.method public setContextStack(Lorg/apache/logging/log4j/ThreadContext$ContextStack;)V
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

    .line 394
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 395
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

    .line 441
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->endOfBatch:Z

    .line 442
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

    .line 431
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    .line 432
    return-void
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
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

    .line 189
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->level:Lorg/apache/logging/log4j/Level;

    .line 190
    return-void
.end method

.method public setLoggerFqcn(Ljava/lang/String;)V
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

    .line 168
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerFqcn:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
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

    .line 198
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->loggerName:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setMarker(Lorg/apache/logging/log4j/Marker;)V
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

    .line 177
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->marker:Lorg/apache/logging/log4j/Marker;

    .line 178
    return-void
.end method

.method public setMessage(Lorg/apache/logging/log4j/message/Message;)V
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

    .line 210
    instance-of v0, p1, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-eqz v0, :cond_1

    .line 211
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableMessage;

    .line 212
    .local v0, "reusable":Lorg/apache/logging/log4j/message/ReusableMessage;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->getMessageTextForWriting()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/ReusableMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 213
    invoke-interface {p1}, Lorg/apache/logging/log4j/message/Message;->getFormat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->messageFormat:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/message/ReusableMessage;->swapParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    .line 215
    invoke-interface {v0}, Lorg/apache/logging/log4j/message/ReusableMessage;->getParameterCount()S

    move-result v1

    iput-short v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameterCount:S

    .line 216
    .end local v0    # "reusable":Lorg/apache/logging/log4j/message/ReusableMessage;
    goto :goto_0

    .line 217
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->message:Lorg/apache/logging/log4j/message/Message;

    .line 219
    :goto_0
    return-void
.end method

.method public setNanoTime(J)V
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

    .line 450
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->nanoTime:J

    .line 451
    return-void
.end method

.method public setSource(Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->source:Ljava/lang/StackTraceElement;

    .line 354
    return-void
.end method

.method public setThreadId(J)V
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

    .line 403
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadId:J

    .line 404
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
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

    .line 412
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadName:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setThreadPriority(I)V
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

    .line 421
    iput p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->threadPriority:I

    .line 422
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
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

    .line 314
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->thrown:Ljava/lang/Throwable;

    .line 315
    return-void
.end method

.method public setTimeMillis(J)V
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

    .line 332
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 333
    return-void
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

    .line 287
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    .line 288
    .local v0, "result":[Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->parameters:[Ljava/lang/Object;

    .line 289
    return-object v0
.end method

.method public bridge synthetic toImmutable()Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->toImmutable()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public toImmutable()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->createMemento()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .line 458
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->includeLocation:Z

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;-><init>(Lorg/apache/logging/log4j/core/LogEvent;Z)V

    return-object v0
.end method
