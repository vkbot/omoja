.class public final Lorg/apache/logging/log4j/core/util/CachedClock;
.super Ljava/lang/Object;
.source "CachedClock.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Clock;


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final UPDATE_THRESHOLD:I = 0x3e8

.field private static volatile instance:Lorg/apache/logging/log4j/core/util/CachedClock;


# instance fields
.field private count:S

.field private volatile millis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/CachedClock;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->millis:J

    .line 34
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->count:S

    .line 37
    new-instance v0, Lorg/apache/logging/log4j/core/util/Log4jThread;

    new-instance v1, Lorg/apache/logging/log4j/core/util/-$$Lambda$CachedClock$dszjm6OSjuGY6lWi3WVm3obO1wk;

    invoke-direct {v1, p0}, Lorg/apache/logging/log4j/core/util/-$$Lambda$CachedClock$dszjm6OSjuGY6lWi3WVm3obO1wk;-><init>(Lorg/apache/logging/log4j/core/util/CachedClock;)V

    const-string v2, "CachedClock Updater Thread"

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 46
    .local v0, "updater":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method

.method public static instance()Lorg/apache/logging/log4j/core/util/CachedClock;
    .locals 3

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/util/CachedClock;->instance:Lorg/apache/logging/log4j/core/util/CachedClock;

    .line 53
    .local v0, "result":Lorg/apache/logging/log4j/core/util/CachedClock;
    if-nez v0, :cond_1

    .line 54
    sget-object v1, Lorg/apache/logging/log4j/core/util/CachedClock;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/core/util/CachedClock;->instance:Lorg/apache/logging/log4j/core/util/CachedClock;

    move-object v0, v2

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v2, Lorg/apache/logging/log4j/core/util/CachedClock;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/util/CachedClock;-><init>()V

    move-object v0, v2

    sput-object v2, Lorg/apache/logging/log4j/core/util/CachedClock;->instance:Lorg/apache/logging/log4j/core/util/CachedClock;

    .line 59
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 61
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 79
    iget-short v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->count:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->count:S

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->millis:J

    .line 81
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->count:S

    .line 83
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->millis:J

    return-wide v0
.end method

.method public synthetic lambda$new$0$CachedClock()V
    .locals 4

    .line 39
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    .local v0, "time":J
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/CachedClock;->millis:J

    .line 43
    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 44
    .end local v0    # "time":J
    goto :goto_0
.end method
