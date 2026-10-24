.class public abstract Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.super Ljava/lang/Object;
.source "AbstractAction.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/Action;


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private complete:Z

.field private interrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->complete:Z

    .line 42
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->interrupted:Z

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 85
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->interrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract execute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isComplete()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->complete:Z

    return v0
.end method

.method public isInterrupted()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->interrupted:Z

    return v0
.end method

.method protected reportException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ex"
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception reported by action \'{}\'"

    invoke-interface {v0, v2, v1, p1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->interrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 66
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->execute()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 69
    .end local p0    # "this":Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Error;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->reportException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->reportException(Ljava/lang/Exception;)V

    .line 73
    .end local v0    # "ex":Ljava/lang/Exception;
    nop

    .line 75
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->complete:Z

    .line 76
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;->interrupted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
