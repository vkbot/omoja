.class public final Lorg/apache/logging/log4j/core/async/AsyncQueueFullMessageUtil;
.super Ljava/lang/Object;
.source "AsyncQueueFullMessageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static logWarningToStatusLogger()V
    .locals 2

    .line 36
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    .line 37
    const-string v1, "LOG4J2-2031: Log4j2 logged an event out of order to prevent deadlock caused by domain objects logging from their toString method when the async queue is full"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;)V

    .line 39
    return-void
.end method
