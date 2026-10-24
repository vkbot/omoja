.class Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;
.super Ljava/lang/Object;
.source "AsyncLoggerConfigDisruptor.java"

# interfaces
.implements Lcom/lmax/disruptor/SequenceReportingEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Log4jEventWrapperHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lmax/disruptor/SequenceReportingEventHandler<",
        "Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOTIFY_PROGRESS_THRESHOLD:I = 0x32


# instance fields
.field private counter:I

.field private sequenceCallback:Lcom/lmax/disruptor/Sequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$1;

    .line 98
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;-><init>()V

    return-void
.end method

.method private notifyIntermediateProgress(J)V
    .locals 2
    .param p1, "sequence"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 123
    iget v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->counter:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->sequenceCallback:Lcom/lmax/disruptor/Sequence;

    invoke-virtual {v0, p1, p2}, Lcom/lmax/disruptor/Sequence;->set(J)V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->counter:I

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
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

    .line 98
    check-cast p1, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->onEvent(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;JZ)V

    return-void
.end method

.method public onEvent(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;JZ)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
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

    .line 111
    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$000(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    invoke-interface {v0, p4}, Lorg/apache/logging/log4j/core/LogEvent;->setEndOfBatch(Z)V

    .line 112
    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$100(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;)Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->access$000(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->logToAsyncLoggerConfigsOnCurrentThread(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 113
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->clear()V

    .line 115
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->notifyIntermediateProgress(J)V

    .line 116
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

    .line 105
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapperHandler;->sequenceCallback:Lcom/lmax/disruptor/Sequence;

    .line 106
    return-void
.end method
