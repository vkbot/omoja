.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;
.super Lorg/apache/logging/log4j/core/LoggerContext;
.source "AsyncLoggerContext.java"


# instance fields
.field private final loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext",
            "configLocn"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalContext"    # Ljava/lang/Object;
    .param p3, "configLocn"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "externalContext",
            "configLocn"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/LoggerContext;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/net/URI;)V

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    .line 50
    return-void
.end method

.method private maybeStartHelper(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 94
    instance-of v0, p1, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[{}] Not starting Disruptor for DefaultConfiguration."

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->start()V

    .line 99
    :goto_0
    return-void
.end method


# virtual methods
.method public createRingBufferAdmin()Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->createRingBufferAdmin(Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;
    .locals 2
    .param p1, "ctx"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ctx",
            "name",
            "messageFactory"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/logging/log4j/core/async/AsyncLogger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/logging/log4j/core/async/AsyncLogger;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/logging/log4j/core/LoggerContext;->setName(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->setContextName(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setUseThreadLocals(Z)V
    .locals 1
    .param p1, "useThreadLocals"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "useThreadLocals"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->setUseThreadLocals(Z)V

    .line 126
    return-void
.end method

.method public start()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->start()V

    .line 76
    invoke-super {p0}, Lorg/apache/logging/log4j/core/LoggerContext;->start()V

    .line 77
    return-void
.end method

.method public start(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->maybeStartHelper(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 87
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/LoggerContext;->start(Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 88
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
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

    .line 103
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->setStopping()V

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerContext;->loggerDisruptor:Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerDisruptor;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 106
    invoke-super {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/LoggerContext;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 107
    const/4 v0, 0x1

    return v0
.end method
