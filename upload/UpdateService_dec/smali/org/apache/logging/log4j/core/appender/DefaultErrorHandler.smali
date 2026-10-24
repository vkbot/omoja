.class public Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/ErrorHandler;


# static fields
.field private static final EXCEPTION_INTERVAL_NANOS:J

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MAX_EXCEPTION_COUNT:I = 0x3


# instance fields
.field private final appender:Lorg/apache/logging/log4j/core/Appender;

.field private exceptionCount:I

.field private lastExceptionInstantNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->EXCEPTION_INTERVAL_NANOS:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/Appender;)V
    .locals 4
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appender"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->exceptionCount:I

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->EXCEPTION_INTERVAL_NANOS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->lastExceptionInstantNanos:J

    .line 50
    const-string v0, "appender"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/Appender;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->appender:Lorg/apache/logging/log4j/core/Appender;

    .line 51
    return-void
.end method

.method private acquirePermit()Z
    .locals 6

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 102
    .local v0, "currentInstantNanos":J
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->lastExceptionInstantNanos:J

    sub-long v2, v0, v2

    sget-wide v4, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->EXCEPTION_INTERVAL_NANOS:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 104
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->lastExceptionInstantNanos:J

    .line 105
    monitor-exit p0

    return v3

    .line 106
    :cond_0
    iget v2, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->exceptionCount:I

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 107
    iget v2, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->exceptionCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->exceptionCount:I

    .line 108
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->lastExceptionInstantNanos:J

    .line 109
    monitor-exit p0

    return v3

    .line 111
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 113
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->acquirePermit()Z

    move-result v0

    .line 60
    .local v0, "allowed":Z
    if-eqz v0, :cond_0

    .line 61
    sget-object v1, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "error"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->acquirePermit()Z

    move-result v0

    .line 74
    .local v0, "allowed":Z
    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1, p1, p2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->ignoreExceptions()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    instance-of v1, p2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v1, p1, p2}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p3, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "event",
            "error"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->acquirePermit()Z

    move-result v0

    .line 92
    .local v0, "allowed":Z
    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1, p1, p3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->appender:Lorg/apache/logging/log4j/core/Appender;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/Appender;->ignoreExceptions()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    instance-of v1, p3, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v1, p1, p3}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method public getAppender()Lorg/apache/logging/log4j/core/Appender;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/DefaultErrorHandler;->appender:Lorg/apache/logging/log4j/core/Appender;

    return-object v0
.end method
