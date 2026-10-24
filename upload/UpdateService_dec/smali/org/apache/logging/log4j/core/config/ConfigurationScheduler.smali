.class public Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "ConfigurationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MAX_SCHEDULED_ITEMS:I = 0x5

.field private static final SIMPLE_NAME:Ljava/lang/String;


# instance fields
.field private volatile executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final name:Ljava/lang/String;

.field private scheduledItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log4j2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->SIMPLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->SIMPLE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

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

    .line 50
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    .line 51
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    .line 36
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method private getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 194
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 197
    iget v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    if-lez v0, :cond_0

    .line 198
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "{} starting {} threads"

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    iget v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    iget v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    .line 200
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    const-string v2, "Scheduled"

    .line 201
    invoke-static {v2}, Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;->createDaemonThreadFactory(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/Log4jThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 202
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 204
    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 206
    .end local v0    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "{}: No scheduled items"

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 212
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public decrementScheduledItems()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    if-lez v0, :cond_0

    .line 102
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    .line 104
    :cond_0
    return-void
.end method

.method public incrementScheduledItems()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->isExecutorServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    const-string v2, "{} attempted to increment scheduled items after start"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduledItems:I

    .line 95
    :goto_0
    return-void
.end method

.method public isExecutorServiceSet()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextFireInterval(Ljava/util/Date;)J
    .locals 4
    .param p1, "fireDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fireDate"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "command",
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "callable",
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 116
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "command",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithCron(Lorg/apache/logging/log4j/core/util/CronExpression;Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/config/CronScheduledFuture;
    .locals 1
    .param p1, "cronExpression"    # Lorg/apache/logging/log4j/core/util/CronExpression;
    .param p2, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cronExpression",
            "command"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/util/CronExpression;",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->scheduleWithCron(Lorg/apache/logging/log4j/core/util/CronExpression;Ljava/util/Date;Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithCron(Lorg/apache/logging/log4j/core/util/CronExpression;Ljava/util/Date;Ljava/lang/Runnable;)Lorg/apache/logging/log4j/core/config/CronScheduledFuture;
    .locals 8
    .param p1, "cronExpression"    # Lorg/apache/logging/log4j/core/util/CronExpression;
    .param p2, "startDate"    # Ljava/util/Date;
    .param p3, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "cronExpression",
            "startDate",
            "command"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/util/CronExpression;",
            "Ljava/util/Date;",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 150
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 151
    .local v0, "fireDate":Ljava/util/Date;
    new-instance v1, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;

    invoke-direct {v1, p0, p3, p1}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;-><init>(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;Ljava/lang/Runnable;Lorg/apache/logging/log4j/core/util/CronExpression;)V

    .line 152
    .local v1, "runnable":Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->nextFireInterval(Ljava/util/Date;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 153
    .local v2, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v3, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-direct {v3, v2, v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;-><init>(Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V

    .line 154
    .local v3, "cronScheduledFuture":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<*>;"
    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->setScheduledFuture(Lorg/apache/logging/log4j/core/config/CronScheduledFuture;)V

    .line 155
    sget-object v4, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v6

    const-string v7, "{} scheduled cron expression {} to fire at {}"

    invoke-interface {v4, v7, v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-object v3
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "command",
            "initialDelay",
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 0

    .line 56
    invoke-super {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->start()V

    .line 57
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
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

    .line 61
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->setStopping()V

    .line 62
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->isExecutorServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const-string v3, "{} shutting down threads in {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ie":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 70
    :try_start_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    .line 72
    .local v1, "inner":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    const-string v4, "{} stopped but some scheduled services may not have completed."

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .end local v1    # "inner":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 78
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->setStopped()V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationScheduler [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    .line 267
    .local v1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    const/4 v2, 0x1

    .line 268
    .local v2, "first":Z
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 269
    .local v4, "runnable":Ljava/lang/Runnable;
    if-nez v2, :cond_0

    .line 270
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/4 v2, 0x0

    .line 274
    .end local v4    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 276
    .end local v1    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .end local v2    # "first":Z
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
