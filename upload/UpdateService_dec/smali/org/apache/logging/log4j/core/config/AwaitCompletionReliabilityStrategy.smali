.class public Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;
.super Ljava/lang/Object;
.source "AwaitCompletionReliabilityStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
.implements Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

.field private final noLogEvents:Ljava/util/concurrent/locks/Condition;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final shutdownLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 1
    .param p1, "loggerConfig"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerConfig"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    .line 43
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->noLogEvents:Ljava/util/concurrent/locks/Condition;

    .line 47
    const-string v0, "loggerConfig is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 48
    return-void
.end method

.method private beforeLogEvent()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private signalCompletionIfShutdown()V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    .line 134
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->noLogEvents:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private waitForCompletion()V
    .locals 6

    .line 156
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "retries":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_0

    .line 178
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 165
    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->noLogEvents:Ljava/util/concurrent/locks/Condition;

    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "ie":Ljava/lang/InterruptedException;
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 172
    goto :goto_2

    .line 174
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 178
    .end local v0    # "retries":I
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public afterLogEvent()V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->signalCompletionIfShutdown()V

    .line 130
    :cond_0
    return-void
.end method

.method public beforeStopAppenders()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->waitForCompletion()V

    .line 150
    return-void
.end method

.method public beforeStopConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 192
    return-void
.end method

.method public getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;)",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;"
        }
    .end annotation

    .line 113
    .local p1, "next":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 114
    .local v0, "result":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->beforeLogEvent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 116
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    if-ne v0, v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v1

    :goto_0
    return-object v1

    .line 118
    :cond_1
    return-object v0
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 10
    .param p2, "loggerName"    # Ljava/lang/String;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p6, "level"    # Lorg/apache/logging/log4j/Level;
    .param p7, "data"    # Lorg/apache/logging/log4j/message/Message;
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
            "reconfigured",
            "loggerName",
            "fqcn",
            "location",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StackTraceElement;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 80
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v9

    .line 82
    .local v9, "config":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    .line 85
    nop

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    throw v1
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 8
    .param p2, "loggerName"    # Ljava/lang/String;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "data"    # Lorg/apache/logging/log4j/message/Message;
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
            "reconfigured",
            "loggerName",
            "fqcn",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v7

    .line 63
    .local v7, "config":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    .line 66
    nop

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    throw v0
.end method

.method public log(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 3
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reconfigured",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")V"
        }
    .end annotation

    .line 96
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/AwaitCompletionReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    .line 98
    .local v0, "config":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    throw v1
.end method
