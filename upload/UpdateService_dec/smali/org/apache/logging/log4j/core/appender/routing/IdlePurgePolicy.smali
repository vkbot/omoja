.class public Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "IdlePurgePolicy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/Scheduled;
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IdlePurgePolicy"
    printObject = true
.end annotation


# instance fields
.field private final appendersUsage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final checkInterval:J

.field private volatile future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private routingAppender:Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;

.field private final scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

.field private final timeToLive:J


# direct methods
.method public constructor <init>(JJLorg/apache/logging/log4j/core/config/ConfigurationScheduler;)V
    .locals 1
    .param p1, "timeToLive"    # J
    .param p3, "checkInterval"    # J
    .param p5, "scheduler"    # Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeToLive",
            "checkInterval",
            "scheduler"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->appendersUsage:Ljava/util/concurrent/ConcurrentMap;

    .line 51
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->timeToLive:J

    .line 52
    iput-wide p3, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->checkInterval:J

    .line 53
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    .line 54
    return-void
.end method

.method public static createPurgePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/routing/PurgePolicy;
    .locals 12
    .param p0, "timeToLive"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "timeToLive"
        .end annotation
    .end param
    .param p1, "checkInterval"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "checkInterval"
        .end annotation
    .end param
    .param p2, "timeUnit"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "timeUnit"
        .end annotation
    .end param
    .param p3, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeToLive",
            "checkInterval",
            "timeUnit",
            "configuration"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 138
    if-nez p0, :cond_0

    .line 139
    sget-object v0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "A timeToLive value is required"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    if-nez p2, :cond_1

    .line 144
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .local v0, "units":Ljava/util/concurrent/TimeUnit;
    goto :goto_0

    .line 147
    .end local v0    # "units":Ljava/util/concurrent/TimeUnit;
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .restart local v0    # "units":Ljava/util/concurrent/TimeUnit;
    goto :goto_0

    .line 148
    .end local v0    # "units":Ljava/util/concurrent/TimeUnit;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Invalid timeUnit value {}. timeUnit set to MINUTES"

    invoke-interface {v1, v2, p2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v0, v1

    .line 154
    .local v0, "units":Ljava/util/concurrent/TimeUnit;
    :goto_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 155
    .local v1, "ttl":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 156
    sget-object v5, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "timeToLive must be positive. timeToLive set to 0"

    invoke-interface {v5, v6}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 157
    const-wide/16 v1, 0x0

    .line 161
    :cond_2
    if-nez p1, :cond_3

    .line 162
    move-wide v3, v1

    .local v3, "ci":J
    goto :goto_1

    .line 164
    .end local v3    # "ci":J
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 165
    .local v5, "ci":J
    cmp-long v3, v5, v3

    if-gez v3, :cond_4

    .line 166
    sget-object v3, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "checkInterval must be positive. checkInterval set equal to timeToLive = {}"

    invoke-interface {v3, v7, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    move-wide v3, v1

    .end local v5    # "ci":J
    .restart local v3    # "ci":J
    goto :goto_1

    .line 165
    .end local v3    # "ci":J
    .restart local v5    # "ci":J
    :cond_4
    move-wide v3, v5

    .line 171
    .end local v5    # "ci":J
    .restart local v3    # "ci":J
    :goto_1
    new-instance v11, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;

    invoke-interface {p3}, Lorg/apache/logging/log4j/core/config/Configuration;->getScheduler()Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    move-result-object v10

    move-object v5, v11

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct/range {v5 .. v10}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;-><init>(JJLorg/apache/logging/log4j/core/config/ConfigurationScheduler;)V

    return-object v11
.end method

.method private scheduleNext()V
    .locals 6

    .line 107
    const-wide v0, 0x7fffffffffffffffL

    .line 108
    .local v0, "updateTime":J
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->appendersUsage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 112
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 115
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->timeToLive:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 116
    .local v2, "interval":J
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, v2, v3, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 117
    .end local v2    # "interval":J
    goto :goto_1

    .line 119
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->scheduler:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->checkInterval:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, v3, v4, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 121
    :goto_1
    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;)V
    .locals 0
    .param p1, "routingAppender"    # Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "routingAppender"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->routingAppender:Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;

    .line 59
    return-void
.end method

.method public purge()V
    .locals 9

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->timeToLive:J

    sub-long/2addr v0, v2

    .line 75
    .local v0, "createTime":J
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->appendersUsage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 77
    .local v4, "entryValue":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 78
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->appendersUsage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    sget-object v6, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Removing appender {}"

    invoke-interface {v6, v8, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v6, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->routingAppender:Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/appender/routing/RoutingAppender;->deleteAppender(Ljava/lang/String;)V

    .line 83
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "entryValue":J
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->purge()V

    .line 103
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->scheduleNext()V

    .line 104
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

    .line 63
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->setStopping()V

    .line 64
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->future:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->stop(Ljava/util/concurrent/Future;)Z

    move-result v0

    .line 65
    .local v0, "stopped":Z
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->setStopped()V

    .line 66
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeToLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->timeToLive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "event"
        }
    .end annotation

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "now":J
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->appendersUsage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->future:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->future:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/routing/IdlePurgePolicy;->scheduleNext()V

    .line 95
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 98
    :cond_1
    :goto_0
    return-void
.end method
