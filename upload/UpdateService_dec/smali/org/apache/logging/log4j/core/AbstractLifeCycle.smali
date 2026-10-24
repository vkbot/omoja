.class public Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LifeCycle2;


# static fields
.field public static final DEFAULT_STOP_TIMEOUT:I

.field public static final DEFAULT_STOP_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private volatile state:Lorg/apache/logging/log4j/core/LifeCycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->DEFAULT_STOP_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    return-void
.end method

.method protected static getStatusLogger()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method


# virtual methods
.method protected equalsImpl(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 56
    return v1

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 59
    return v1

    .line 61
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/LifeCycle;

    .line 62
    .local v2, "other":Lorg/apache/logging/log4j/core/LifeCycle;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/LifeCycle;->getState()Lorg/apache/logging/log4j/core/LifeCycle$State;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 63
    return v1

    .line 65
    :cond_3
    return v0
.end method

.method public getState()Lorg/apache/logging/log4j/core/LifeCycle$State;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    return-object v0
.end method

.method protected hashCodeImpl()I
    .locals 4

    .line 74
    const/16 v0, 0x1f

    .line 75
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 76
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/LifeCycle$State;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 77
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public initialize()V
    .locals 1

    .line 126
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 127
    return-void
.end method

.method public isInitialized()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->INITIALIZED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarting()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopping()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    sget-object v1, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setStarted()V
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V

    .line 104
    return-void
.end method

.method protected setStarting()V
    .locals 1

    .line 107
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STARTING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V

    .line 108
    return-void
.end method

.method protected setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V
    .locals 0
    .param p1, "newState"    # Lorg/apache/logging/log4j/core/LifeCycle$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newState"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 114
    return-void
.end method

.method protected setStopped()V
    .locals 1

    .line 117
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V

    .line 118
    return-void
.end method

.method protected setStopping()V
    .locals 1

    .line 121
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPING:Lorg/apache/logging/log4j/core/LifeCycle$State;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->setState(Lorg/apache/logging/log4j/core/LifeCycle$State;)V

    .line 122
    return-void
.end method

.method public start()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->setStarted()V

    .line 132
    return-void
.end method

.method public stop()V
    .locals 3

    .line 136
    sget-object v0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->DEFAULT_STOP_TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->stop(JLjava/util/concurrent/TimeUnit;)Z

    .line 137
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

    .line 152
    sget-object v0, Lorg/apache/logging/log4j/core/LifeCycle$State;->STOPPED:Lorg/apache/logging/log4j/core/LifeCycle$State;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLifeCycle;->state:Lorg/apache/logging/log4j/core/LifeCycle$State;

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected stop(Ljava/util/concurrent/Future;)Z
    .locals 3
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
            "Ljava/util/concurrent/Future<",
            "*>;)Z"
        }
    .end annotation

    .line 140
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v0, 0x1

    .line 141
    .local v0, "stopped":Z
    if-eqz p1, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    return v2

    .line 147
    :cond_2
    :goto_1
    return v0
.end method
