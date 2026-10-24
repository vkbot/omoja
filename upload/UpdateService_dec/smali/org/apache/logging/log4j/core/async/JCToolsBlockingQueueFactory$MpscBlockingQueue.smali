.class final Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;
.super Lorg/jctools/queues/MpscArrayQueue;
.source "JCToolsBlockingQueueFactory.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MpscBlockingQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpscArrayQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;


# direct methods
.method constructor <init>(ILorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "waitStrategy"    # Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "capacity",
            "waitStrategy"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/MpscArrayQueue;-><init>(I)V

    .line 64
    iput-object p2, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    .line 65
    return-void
.end method

.method static synthetic lambda$drainTo$0(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "c",
            "e"
        }
    .end annotation

    .line 74
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 1
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "c",
            "maxElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$MpscBlockingQueue$GcLYsnfua9A_lNXzJSQIqg_qX9Y;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/async/-$$Lambda$JCToolsBlockingQueueFactory$MpscBlockingQueue$GcLYsnfua9A_lNXzJSQIqg_qX9Y;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->offerIfBelowThreshold(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "e",
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 80
    .local v0, "idleCounter":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 82
    .local v1, "timeoutNanos":J
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const/4 v3, 0x1

    return v3

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 85
    const/4 v3, 0x0

    return v3

    .line 87
    :cond_1
    iget-object v3, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-static {v3, v0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->access$000(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;I)I

    move-result v0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "idleCounter":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 97
    .local v1, "timeoutNanos":J
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, "result":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_0

    .line 99
    return-object v3

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 101
    const/4 v4, 0x0

    return-object v4

    .line 103
    :cond_1
    iget-object v4, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-static {v4, v0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->access$000(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;I)I

    move-result v0

    .line 104
    .end local v3    # "result":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 112
    .local v0, "idleCounter":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->access$000(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;I)I

    move-result v0

    .line 116
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public remainingCapacity()I
    .locals 2

    .line 128
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;, "Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue<TE;>;"
    const/16 v0, 0x64

    .line 135
    .local v0, "idleCounter":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 137
    return-object v1

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$MpscBlockingQueue;->waitStrategy:Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;

    invoke-static {v2, v0}, Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;->access$000(Lorg/apache/logging/log4j/core/async/JCToolsBlockingQueueFactory$WaitStrategy;I)I

    move-result v0

    .line 140
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method
