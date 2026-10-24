.class public Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;
.super Ljava/lang/Object;
.source "RingBufferLogEventHandler.java"

# interfaces
.implements Lcom/lmax/disruptor/SequenceReportingEventHandler;
.implements Lcom/lmax/disruptor/LifecycleAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lmax/disruptor/SequenceReportingEventHandler<",
        "Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;",
        ">;",
        "Lcom/lmax/disruptor/LifecycleAware;"
    }
.end annotation


# static fields
.field private static final NOTIFY_PROGRESS_THRESHOLD:I = 0x32


# instance fields
.field private counter:I

.field private sequenceCallback:Lcom/lmax/disruptor/Sequence;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->threadId:J

    return-void
.end method

.method private notifyCallback(J)V
    .locals 2
    .param p1, "sequence"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 64
    iget v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->counter:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->sequenceCallback:Lcom/lmax/disruptor/Sequence;

    invoke-virtual {v0, p1, p2}, Lcom/lmax/disruptor/Sequence;->set(J)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->counter:I

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getThreadId()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->threadId:J

    return-wide v0
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "event",
            "sequence",
            "endOfBatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    check-cast p1, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->onEvent(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;JZ)V

    return-void
.end method

.method public onEvent(Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;JZ)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;
    .param p2, "sequence"    # J
    .param p4, "endOfBatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "event",
            "sequence",
            "endOfBatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->isPopulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1, p4}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->execute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->clear()V

    .line 59
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->notifyCallback(J)V

    .line 60
    nop

    .line 61
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/RingBufferLogEvent;->clear()V

    .line 59
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->notifyCallback(J)V

    throw v0
.end method

.method public onShutdown()V
    .locals 0

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->threadId:J

    .line 82
    return-void
.end method

.method public setSequenceCallback(Lcom/lmax/disruptor/Sequence;)V
    .locals 0
    .param p1, "sequenceCallback"    # Lcom/lmax/disruptor/Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sequenceCallback"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/RingBufferLogEventHandler;->sequenceCallback:Lcom/lmax/disruptor/Sequence;

    .line 40
    return-void
.end method
