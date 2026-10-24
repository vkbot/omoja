.class public Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;
.super Ljava/lang/Object;
.source "ConfigurationScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CronRunnable"
.end annotation


# instance fields
.field private final cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

.field private final runnable:Ljava/lang/Runnable;

.field private scheduledFuture:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;Ljava/lang/Runnable;Lorg/apache/logging/log4j/core/util/CronExpression;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "cronExpression"    # Lorg/apache/logging/log4j/core/util/CronExpression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "runnable",
            "cronExpression"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    .line 223
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->runnable:Ljava/lang/Runnable;

    .line 224
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 233
    const-string v0, "{} Cron expression {} scheduled to fire again at {}"

    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->scheduledFuture:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->getFireTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 234
    .local v1, "millis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 235
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    const-string v4, "{} Cron thread woke up {} millis early. Sleeping"

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-static {v5}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$000(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v3

    .line 242
    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .end local v1    # "millis":J
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_1

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "{} caught error running command"

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$000(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    .end local v1    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :goto_1
    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 247
    .local v1, "fireDate":Ljava/util/Date;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->nextFireInterval(Ljava/util/Date;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, v3, v4, v5}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 248
    .local v2, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$000(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/util/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->scheduledFuture:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->reset(Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V

    .line 251
    .end local v1    # "fireDate":Ljava/util/Date;
    .end local v2    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    nop

    .line 252
    return-void

    .line 246
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 247
    .local v2, "fireDate":Ljava/util/Date;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-virtual {v3, v2}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->nextFireInterval(Ljava/util/Date;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v4, v5, v6}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 248
    .local v3, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->this$0:Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;

    invoke-static {v5}, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;->access$000(Lorg/apache/logging/log4j/core/config/ConfigurationScheduler;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v5, v6, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->scheduledFuture:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-virtual {v0, v3, v2}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->reset(Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V

    .line 251
    .end local v2    # "fireDate":Ljava/util/Date;
    .end local v3    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    throw v1
.end method

.method public setScheduledFuture(Lorg/apache/logging/log4j/core/config/CronScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 227
    .local p1, "future":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<*>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->scheduledFuture:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CronRunnable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->cronExpression:Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getCronExpression()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/ConfigurationScheduler$CronRunnable;->scheduledFuture:Lorg/apache/logging/log4j/core/config/CronScheduledFuture;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->getFireTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
