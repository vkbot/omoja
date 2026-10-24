.class public final Lorg/apache/logging/log4j/core/util/CoarseCachedClock;
.super Ljava/lang/Object;
.source "CoarseCachedClock.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Clock;


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static volatile instance:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;


# instance fields
.field private volatile millis:J

.field private final updater:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->millis:J

    .line 31
    new-instance v0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock$1;

    const-string v1, "CoarseCachedClock Updater Thread"

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/util/CoarseCachedClock$1;-><init>(Lorg/apache/logging/log4j/core/util/CoarseCachedClock;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->updater:Ljava/lang/Thread;

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->updater:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method static synthetic access$002(Lorg/apache/logging/log4j/core/util/CoarseCachedClock;J)J
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/CoarseCachedClock;
    .param p1, "x1"    # J

    .line 25
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->millis:J

    return-wide p1
.end method

.method public static instance()Lorg/apache/logging/log4j/core/util/CoarseCachedClock;
    .locals 3

    .line 55
    sget-object v0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->instance:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    .line 56
    .local v0, "result":Lorg/apache/logging/log4j/core/util/CoarseCachedClock;
    if-nez v0, :cond_1

    .line 57
    sget-object v1, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v2, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->instance:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    move-object v0, v2

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v2, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;-><init>()V

    move-object v0, v2

    sput-object v2, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->instance:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    .line 62
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 64
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->millis:J

    return-wide v0
.end method
