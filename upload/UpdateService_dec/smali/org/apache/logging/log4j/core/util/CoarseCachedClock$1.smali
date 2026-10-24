.class Lorg/apache/logging/log4j/core/util/CoarseCachedClock$1;
.super Lorg/apache/logging/log4j/core/util/Log4jThread;
.source "CoarseCachedClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/CoarseCachedClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/util/CoarseCachedClock;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/util/CoarseCachedClock;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            "this$0",
            "name"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock$1;->this$0:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CoarseCachedClock$1;->this$0:Lorg/apache/logging/log4j/core/util/CoarseCachedClock;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/CoarseCachedClock;->access$002(Lorg/apache/logging/log4j/core/util/CoarseCachedClock;J)J

    .line 38
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0
.end method
