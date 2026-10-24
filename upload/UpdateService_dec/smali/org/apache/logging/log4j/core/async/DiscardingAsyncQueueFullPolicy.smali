.class public Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;
.super Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;
.source "DiscardingAsyncQueueFullPolicy.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final discardCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final thresholdLevel:Lorg/apache/logging/log4j/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .param p1, "thresholdLevel"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thresholdLevel"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->discardCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    const-string v0, "thresholdLevel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->thresholdLevel:Lorg/apache/logging/log4j/Level;

    .line 46
    return-void
.end method

.method public static getDiscardCount(Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;)J
    .locals 2
    .param p0, "router"    # Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "router"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->discardCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 66
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public getRoute(JLorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;
    .locals 4
    .param p1, "backgroundThreadId"    # J
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "backgroundThreadId",
            "level"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->thresholdLevel:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p3, v0}, Lorg/apache/logging/log4j/Level;->isLessSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->discardCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->thresholdLevel:Lorg/apache/logging/log4j/Level;

    const-string v2, "Async queue is full, discarding event with level {}. This message will only appear once; future events from {} are silently discarded until queue capacity becomes available."

    invoke-interface {v0, v2, p3, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/async/EventRoute;->DISCARD:Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v0

    .line 59
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;->getRoute(JLorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;

    move-result-object v0

    return-object v0
.end method

.method public getThresholdLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/DiscardingAsyncQueueFullPolicy;->thresholdLevel:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method
