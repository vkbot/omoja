.class public Lorg/apache/logging/log4j/core/config/CronScheduledFuture;
.super Ljava/lang/Object;
.source "CronScheduledFuture.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ScheduledFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<",
            "TV;>.FutureData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V
    .locals 1
    .param p2, "runDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "future",
            "runDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    .local p1, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;-><init>(Lorg/apache/logging/log4j/core/config/CronScheduledFuture;Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    .line 35
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "delayed"
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1
    .param p1, "delayed"    # Ljava/util/concurrent/Delayed;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delayed"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unit"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFireTime()Ljava/util/Date;
    .locals 1

    .line 38
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$000(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 62
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 67
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;->access$100(Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method reset(Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V
    .locals 1
    .param p2, "runDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "future",
            "runDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/apache/logging/log4j/core/config/CronScheduledFuture;, "Lorg/apache/logging/log4j/core/config/CronScheduledFuture<TV;>;"
    .local p1, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;-><init>(Lorg/apache/logging/log4j/core/config/CronScheduledFuture;Ljava/util/concurrent/ScheduledFuture;Ljava/util/Date;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/CronScheduledFuture;->futureData:Lorg/apache/logging/log4j/core/config/CronScheduledFuture$FutureData;

    .line 43
    return-void
.end method
