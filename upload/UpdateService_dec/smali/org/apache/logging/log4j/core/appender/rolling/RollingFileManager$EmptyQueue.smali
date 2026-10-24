.class Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;
.super Ljava/util/concurrent/ArrayBlockingQueue;
.source "RollingFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ArrayBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 792
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 793
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 784
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;->add(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .line 819
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Runnable;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 822
    const/4 v0, 0x0

    return v0

    .line 820
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many items in collection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "runnable",
            "timeout",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 784
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;->offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "runnable",
            "timeout",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 813
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 784
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager$EmptyQueue;->put(Ljava/lang/Runnable;)V

    return-void
.end method

.method public put(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Unable to insert into queue"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remainingCapacity()I
    .locals 1

    .line 797
    const/4 v0, 0x0

    return v0
.end method
