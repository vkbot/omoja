.class public Lorg/apache/logging/log4j/core/async/DefaultAsyncQueueFullPolicy;
.super Ljava/lang/Object;
.source "DefaultAsyncQueueFullPolicy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/async/AsyncQueueFullPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoute(JLorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;
    .locals 3
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

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 34
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/apache/logging/log4j/core/util/Log4jThread;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/async/EventRoute;->ENQUEUE:Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v1

    .line 40
    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/logging/log4j/core/async/EventRoute;->SYNCHRONOUS:Lorg/apache/logging/log4j/core/async/EventRoute;

    return-object v1
.end method
