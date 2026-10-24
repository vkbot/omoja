.class public final Lorg/apache/logging/log4j/core/appender/AsyncAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "AsyncAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Async"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_QUEUE_SIZE:I = 0x400


# instance fields
.field private final appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

.field private asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

.field private final blocking:Z

.field private final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

.field private errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

.field private final errorRef:Ljava/lang/String;

.field private final includeLocation:Z

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final queueSize:I

.field private final shutdownTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;IZZJLorg/apache/logging/log4j/core/config/Configuration;ZLorg/apache/logging/log4j/core/async/BlockingQueueFactory;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "appenderRefs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p4, "errorRef"    # Ljava/lang/String;
    .param p5, "queueSize"    # I
    .param p6, "blocking"    # Z
    .param p7, "ignoreExceptions"    # Z
    .param p8, "shutdownTimeout"    # J
    .param p10, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p11, "includeLocation"    # Z
    .param p13, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "filter",
            "appenderRefs",
            "errorRef",
            "queueSize",
            "blocking",
            "ignoreExceptions",
            "shutdownTimeout",
            "config",
            "includeLocation",
            "blockingQueueFactory",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "[",
            "Lorg/apache/logging/log4j/core/config/AppenderRef;",
            "Ljava/lang/String;",
            "IZZJ",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Z",
            "Lorg/apache/logging/log4j/core/async/BlockingQueueFactory<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 81
    .local p12, "blockingQueueFactory":Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/BlockingQueueFactory<Lorg/apache/logging/log4j/core/LogEvent;>;"
    move-object v6, p0

    move v7, p5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p7

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 82
    move-object/from16 v0, p12

    invoke-interface {v0, p5}, Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;->create(I)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iput-object v1, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 83
    iput v7, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queueSize:I

    .line 84
    move/from16 v1, p6

    iput-boolean v1, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->blocking:Z

    .line 85
    move-wide/from16 v2, p8

    iput-wide v2, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->shutdownTimeout:J

    .line 86
    move-object/from16 v4, p10

    iput-object v4, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 87
    move-object v5, p3

    iput-object v5, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    .line 88
    move-object v8, p4

    iput-object v8, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorRef:Ljava/lang/String;

    .line 89
    move/from16 v9, p11

    iput-boolean v9, v6, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->includeLocation:Z

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;IZZJLorg/apache/logging/log4j/core/config/Configuration;ZLorg/apache/logging/log4j/core/async/BlockingQueueFactory;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/AsyncAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "x2"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # J
    .param p10, "x8"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p11, "x9"    # Z
    .param p12, "x10"    # Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;
    .param p13, "x11"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p14, "x12"    # Lorg/apache/logging/log4j/core/appender/AsyncAppender$1;

    .line 61
    invoke-direct/range {p0 .. p13}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;IZZJLorg/apache/logging/log4j/core/config/Configuration;ZLorg/apache/logging/log4j/core/async/BlockingQueueFactory;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method public static createAppender([Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;ZJILjava/lang/String;ZLorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/config/Configuration;Z)Lorg/apache/logging/log4j/core/appender/AsyncAppender;
    .locals 16
    .param p0, "appenderRefs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .param p1, "errorRef"    # Ljava/lang/String;
    .param p2, "blocking"    # Z
    .param p3, "shutdownTimeout"    # J
    .param p5, "size"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "includeLocation"    # Z
    .param p8, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p9, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p10, "ignoreExceptions"    # Z
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
            0x10
        }
        names = {
            "appenderRefs",
            "errorRef",
            "blocking",
            "shutdownTimeout",
            "size",
            "name",
            "includeLocation",
            "filter",
            "config",
            "ignoreExceptions"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    move-object/from16 v14, p6

    if-nez v14, :cond_0

    .line 261
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No name provided for AsyncAppender"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    if-nez p0, :cond_1

    .line 265
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "No appender references provided to AsyncAppender {}"

    invoke-interface {v0, v1, v14}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :cond_1
    new-instance v15, Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    new-instance v12, Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;

    invoke-direct {v12}, Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;-><init>()V

    const/4 v13, 0x0

    move-object v0, v15

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move/from16 v6, p2

    move/from16 v7, p10

    move-wide/from16 v8, p3

    move-object/from16 v10, p9

    move/from16 v11, p7

    invoke-direct/range {v0 .. v13}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;IZZJLorg/apache/logging/log4j/core/config/Configuration;ZLorg/apache/logging/log4j/core/async/BlockingQueueFactory;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v15
.end method

.method private handleInterruptedException(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 4
    .param p1, "memento"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "memento"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 220
    .local v0, "appendSuccessful":Z
    if-nez v0, :cond_0

    .line 221
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 222
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v2

    .line 221
    const-string v3, "Interrupted while waiting for a free slot in the AsyncAppender LogEvent-queue {}"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 226
    return v0
.end method

.method private logToErrorAppenderIfNecessary(ZLorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "appendSuccessful"    # Z
    .param p2, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "appendSuccessful",
            "logEvent"
        }
    .end annotation

    .line 230
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 233
    :cond_0
    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 274
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;-><init>()V

    return-object v0
.end method

.method private transfer(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 2
    .param p1, "memento"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "memento"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    instance-of v1, v0, Ljava/util/concurrent/TransferQueue;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/TransferQueue;

    .line 178
    invoke-interface {v0, p1}, Ljava/util/concurrent/TransferQueue;->tryTransfer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    nop

    .line 179
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    :goto_0
    return v0
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 5
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->includeLocation:Z

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createMemento(Lorg/apache/logging/log4j/core/LogEvent;Z)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v0

    .line 157
    .local v0, "memento":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/async/InternalAsyncUtil;->makeMessageImmutable(Lorg/apache/logging/log4j/message/Message;)Lorg/apache/logging/log4j/message/Message;

    .line 158
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->transfer(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->blocking:Z

    if-eqz v1, :cond_1

    .line 160
    invoke-static {}, Lorg/apache/logging/log4j/spi/AbstractLogger;->getRecursionDepth()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 162
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullMessageUtil;->logWarningToStatusLogger()V

    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->logMessageInCurrentThread(Lorg/apache/logging/log4j/core/LogEvent;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;->getRoute(JLorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v1

    .line 167
    .local v1, "route":Lorg/apache/logging/log4j/core/async/EventRoute;
    invoke-virtual {v1, p0, v0}, Lorg/apache/logging/log4j/core/async/EventRoute;->logMessage(Lorg/apache/logging/log4j/core/appender/AsyncAppender;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 168
    .end local v1    # "route":Lorg/apache/logging/log4j/core/async/EventRoute;
    goto :goto_0

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is unable to write primary appenders. queue is full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->error(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->logToErrorAppenderIfNecessary(ZLorg/apache/logging/log4j/core/LogEvent;)V

    .line 174
    :cond_2
    :goto_0
    return-void

    .line 154
    .end local v0    # "memento":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncAppender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppenderRefStrings()[Ljava/lang/String;
    .locals 3

    .line 376
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 378
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getAppenders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getAppenders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getErrorRef()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorRef:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueCapacity()I
    .locals 1

    .line 422
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queueSize:I

    return v0
.end method

.method public getQueueRemainingCapacity()I
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->blocking:Z

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->includeLocation:Z

    return v0
.end method

.method public logMessageInBackgroundThread(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 2
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->handleInterruptedException(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v1

    .line 203
    .local v1, "appendSuccessful":Z
    invoke-direct {p0, v1, p1}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->logToErrorAppenderIfNecessary(ZLorg/apache/logging/log4j/core/LogEvent;)V

    .line 205
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    .end local v1    # "appendSuccessful":Z
    :goto_0
    return-void
.end method

.method public logMessageInCurrentThread(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/core/LogEvent;->setEndOfBatch(Z)V

    .line 189
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->dispatch(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 190
    return-void
.end method

.method public start()V
    .locals 10

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getAppenders()Ljava/util/Map;

    move-result-object v0

    .line 95
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "appenders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderControl;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 97
    .local v5, "appenderRef":Lorg/apache/logging/log4j/core/config/AppenderRef;
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/logging/log4j/core/Appender;

    .line 98
    .local v6, "appender":Lorg/apache/logging/log4j/core/Appender;
    if-eqz v6, :cond_0

    .line 99
    new-instance v7, Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_0
    sget-object v7, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v8, "No appender named {} was configured"

    invoke-interface {v7, v8, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .end local v5    # "appenderRef":Lorg/apache/logging/log4j/core/config/AppenderRef;
    .end local v6    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorRef:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/Appender;

    .line 106
    .local v2, "appender":Lorg/apache/logging/log4j/core/Appender;
    if-eqz v2, :cond_2

    .line 107
    new-instance v3, Lorg/apache/logging/log4j/core/config/AppenderControl;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Lorg/apache/logging/log4j/core/config/AppenderControl;-><init>(Lorg/apache/logging/log4j/core/Appender;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter;)V

    iput-object v3, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

    goto :goto_2

    .line 109
    :cond_2
    sget-object v3, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorRef:Ljava/lang/String;

    const-string v5, "Unable to set up error Appender. No appender named {} was configured"

    invoke-interface {v3, v5, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .end local v2    # "appender":Lorg/apache/logging/log4j/core/Appender;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 113
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    .line 114
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/AppenderControl;Ljava/util/List;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    goto :goto_3

    .line 115
    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->errorRef:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 118
    :goto_3
    invoke-static {}, Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicyFactory;->create()Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    .line 120
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->start()V

    .line 121
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->start()V

    .line 122
    return-void

    .line 116
    :cond_5
    new-instance v2, Lorg/apache/logging/log4j/core/config/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No appenders are available for AsyncAppender "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
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

    .line 126
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->setStopping()V

    .line 127
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 128
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AsyncAppender stopping. Queue still has {} events."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->dispatcher:Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->shutdownTimeout:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->stop(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 134
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interrupted while stopping AsyncAppender {}"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AsyncAppender stopped. Queue has {} events."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 139
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->asyncQueueFullPolicy:Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;

    .line 140
    invoke-static {v1}, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 139
    const-string v3, "AsyncAppender: {} discarded {} events."

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->setStopped()V

    .line 143
    const/4 v0, 0x1

    return v0
.end method
