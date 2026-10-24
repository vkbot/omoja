.class public Lorg/apache/logging/log4j/core/util/ExecutorServices;
.super Ljava/lang/Object;
.source "ExecutorServices.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/ExecutorServices;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureInitialized()V
    .locals 0

    .line 82
    return-void
.end method

.method public static shutdown(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/lang/String;)Z
    .locals 11
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "executorService",
            "timeout",
            "timeUnit",
            "source"
        }
    .end annotation

    .line 48
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 52
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-lez v3, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v4

    aput-object p0, v2, v0

    const/4 v0, 0x2

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p3, v2, v0

    .line 54
    const-string v0, "%s can\'t shutdown %s when timeout = %,d and timeUnit = %s."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2
    :goto_0
    cmp-long v1, p1, v1

    if-lez v1, :cond_5

    .line 60
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 61
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 63
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    sget-object v5, Lorg/apache/logging/log4j/core/util/ExecutorServices;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "{} pool {} did not terminate after {} {}"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v7, p4

    move-object v8, p0

    move-object v10, p3

    invoke-interface/range {v5 .. v10}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_3
    return v4

    .line 69
    :catch_0
    move-exception v1

    .line 71
    .local v1, "ie":Ljava/lang/InterruptedException;
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 74
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    goto :goto_1

    .line 76
    :cond_5
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 78
    :goto_1
    return v0

    .line 49
    :cond_6
    :goto_2
    return v0
.end method
