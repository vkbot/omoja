.class public Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;
.super Ljava/lang/Object;
.source "LockingReliabilityStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
.implements Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;


# instance fields
.field private volatile isStopping:Z

.field private final loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

.field private final reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;


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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 39
    const-string v0, "loggerConfig was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 40
    return-void
.end method

.method private beforeLogEvent()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->isStopping:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public afterLogEvent()V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    return-void
.end method

.method public beforeStopAppenders()V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 136
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->isStopping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->reconfigureLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
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

    .line 152
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

    .line 105
    .local p1, "next":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 106
    .local v0, "result":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->beforeLogEvent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 108
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

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

    .line 110
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

    .line 72
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v9

    .line 74
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

    .line 76
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    .line 77
    nop

    .line 78
    return-void

    .line 76
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

    .line 53
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v7

    .line 55
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

    .line 57
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    .line 58
    nop

    .line 59
    return-void

    .line 57
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

    .line 88
    .local p1, "reconfigured":Lorg/apache/logging/log4j/util/Supplier;, "Lorg/apache/logging/log4j/util/Supplier<Lorg/apache/logging/log4j/core/config/LoggerConfig;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/LockingReliabilityStrategy;->getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    .line 90
    .local v0, "config":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->afterLogEvent()V

    throw v1
.end method
