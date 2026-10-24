.class public final Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;
.source "CronTriggeringPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/Scheduled;
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "CronTriggeringPolicy"
    printObject = true
.end annotation


# static fields
.field private static final defaultSchedule:Ljava/lang/String; = "0 0 0 * * ?"


# instance fields
.field private final checkOnStartup:Z

.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

.field private future:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile lastRollDate:Ljava/util/Date;

.field private manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/util/CronExpression;ZLorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 1
    .param p1, "schedule"    # Lorg/apache/logging/log4j/core/util/CronExpression;
    .param p2, "checkOnStartup"    # Z
    .param p3, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "schedule",
            "checkOnStartup",
            "configuration"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    .line 53
    const-string v0, "schedule"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/CronExpression;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    .line 54
    const-string v0, "configuration"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 55
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->checkOnStartup:Z

    .line 56
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;

    .line 41
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->rollover()V

    return-void
.end method

.method public static createPolicy(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;
    .locals 5
    .param p0, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p1, "evaluateOnStartup"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "evaluateOnStartup"
        .end annotation
    .end param
    .param p2, "schedule"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "schedule"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "configuration",
            "evaluateOnStartup",
            "schedule"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 126
    .local v0, "checkOnStartup":Z
    const-string v1, "0 0 0 * * ?"

    if-nez p2, :cond_0

    .line 127
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "No schedule specified, defaulting to Daily"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;)V

    .line 128
    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->getSchedule(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/CronExpression;

    move-result-object v1

    .local v1, "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    goto :goto_0

    .line 130
    .end local v1    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    :cond_0
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->getSchedule(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/CronExpression;

    move-result-object v2

    .line 131
    .local v2, "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    if-nez v2, :cond_1

    .line 132
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Invalid expression specified. Defaulting to Daily"

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 133
    invoke-static {v1}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->getSchedule(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/CronExpression;

    move-result-object v1

    .end local v2    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local v1    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    goto :goto_0

    .line 131
    .end local v1    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local v2    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    :cond_1
    move-object v1, v2

    .line 136
    .end local v2    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local v1    # "cronExpression":Lorg/apache/logging/log4j/core/util/CronExpression;
    :goto_0
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;-><init>(Lorg/apache/logging/log4j/core/util/CronExpression;ZLorg/apache/logging/log4j/core/config/Configuration;)V

    return-object v2
.end method

.method private static getSchedule(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/CronExpression;
    .locals 4
    .param p0, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .line 141
    :try_start_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/util/CronExpression;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "pe":Ljava/text/ParseException;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid cron expression - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v1, 0x0

    return-object v1
.end method

.method private rollover()V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getPrevFireTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->lastRollDate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->rollover(Ljava/util/Date;Ljava/util/Date;)V

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->future:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->getFireTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->lastRollDate:Ljava/util/Date;

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public getCronExpression()Lorg/apache/logging/log4j/core/util/CronExpression;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    return-object v0
.end method

.method public initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 7
    .param p1, "aManager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aManager"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 68
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getPrevFireTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 69
    .local v1, "lastRollForFile":Ljava/util/Date;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->getPrevFireTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 70
    .local v2, "lastRegularRoll":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setCurrentFileTime(J)V

    .line 71
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "LastRollForFile {}, LastRegularRole {}"

    invoke-interface {v3, v4, v1, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setPrevFileTime(J)V

    .line 73
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setTimeBased(Z)V

    .line 74
    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->checkOnStartup:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->lastRollDate:Ljava/util/Date;

    .line 77
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->rollover()V

    .line 80
    :cond_0
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/config/Configuration;->getScheduler()Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    move-result-object v3

    .line 81
    .local v3, "scheduler":Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->isExecutorServiceSet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->incrementScheduledItems()V

    .line 85
    :cond_1
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->isStarted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 86
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->start()V

    .line 88
    :cond_2
    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->lastRollDate:Ljava/util/Date;

    .line 89
    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v5, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$CronTrigger;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy$1;)V

    invoke-virtual {v3, v4, v0, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduleWithCron(Lorg/apache/logging/log4j/core/util/CronExpression;Ljava/util/Date;Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->future:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    .line 90
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
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

    .line 157
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->setStopping()V

    .line 158
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->future:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->stop(Ljava/util/concurrent/Future;)Z

    move-result v0

    .line 159
    .local v0, "stopped":Z
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->setStopped()V

    .line 160
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronTriggeringPolicy(schedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/CronTriggeringPolicy;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
