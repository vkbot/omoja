.class Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;
.super Lorg/apache/logging/log4j/core/util/Log4jThread;
.source "AsyncAppenderEventDispatcher.java"


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final STOP_EVENT:Lorg/apache/logging/log4j/core/LogEvent;

.field private static final THREAD_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final appenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation
.end field

.field private final errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final stoppedRef:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->STOP_EVENT:Lorg/apache/logging/log4j/core/LogEvent;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->THREAD_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/AppenderControl;Ljava/util/List;Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "errorAppender"    # Lorg/apache/logging/log4j/core/config/AppenderControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "errorAppender",
            "appenders",
            "queue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p3, "appenders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/AppenderControl;>;"
    .local p4, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lorg/apache/logging/log4j/core/LogEvent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncAppenderEventDispatcher-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->THREAD_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/Log4jThread;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->setDaemon(Z)V

    .line 56
    iput-object p2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 57
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->appenders:Ljava/util/List;

    .line 58
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->stoppedRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    return-void
.end method

.method private dispatchAll()V
    .locals 3

    .line 79
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->stoppedRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LogEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "event":Lorg/apache/logging/log4j/core/LogEvent;
    nop

    .line 88
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->STOP_EVENT:Lorg/apache/logging/log4j/core/LogEvent;

    if-ne v0, v1, :cond_0

    .line 89
    goto :goto_1

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/LogEvent;->setEndOfBatch(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->dispatch(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 93
    .end local v0    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->interrupt()V

    .line 94
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} has stopped."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method private dispatchRemaining()V
    .locals 5

    .line 98
    const/4 v0, 0x0

    .line 101
    .local v0, "eventCount":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/LogEvent;

    .line 102
    .local v1, "event":Lorg/apache/logging/log4j/core/LogEvent;
    if-nez v1, :cond_0

    .line 103
    nop

    .line 113
    .end local v1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 115
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 113
    const-string v4, "{} has processed the last {} remaining event(s)."

    invoke-interface {v1, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    return-void

    .line 106
    .restart local v1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    :cond_0
    sget-object v2, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->STOP_EVENT:Lorg/apache/logging/log4j/core/LogEvent;

    if-ne v1, v2, :cond_1

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/LogEvent;->setEndOfBatch(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->dispatch(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 111
    nop

    .end local v1    # "event":Lorg/apache/logging/log4j/core/LogEvent;
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_0
.end method


# virtual methods
.method dispatch(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 8
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "succeeded":Z
    const/4 v1, 0x0

    .local v1, "appenderIndex":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->appenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->appenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 130
    .local v2, "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v0, 0x1

    .line 138
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v3

    .line 135
    .local v3, "error":Ljava/lang/Throwable;
    sget-object v4, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 137
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppenderName()Ljava/lang/String;

    move-result-object v6

    .line 135
    const-string v7, "{} has failed to call appender {}"

    invoke-interface {v4, v7, v5, v6, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .end local v2    # "control":Lorg/apache/logging/log4j/core/config/AppenderControl;
    .end local v3    # "error":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "appenderIndex":I
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

    if-eqz v1, :cond_1

    .line 144
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->callAppender(Lorg/apache/logging/log4j/core/LogEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    goto :goto_2

    .line 145
    :catchall_1
    move-exception v1

    .line 148
    .local v1, "error":Ljava/lang/Throwable;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 150
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->errorAppender:Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppenderName()Ljava/lang/String;

    move-result-object v4

    .line 148
    const-string v5, "{} has failed to call the error appender {}"

    invoke-interface {v2, v5, v3, v4, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .end local v1    # "error":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-void
.end method

.method getAppenders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->appenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;->INSTANCE:Lorg/apache/logging/log4j/core/appender/-$$Lambda$3FIKALDHkjS0iQUF6DSmEXsf_VA;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 73
    sget-object v0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} has started."

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->dispatchAll()V

    .line 75
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->dispatchRemaining()V

    .line 76
    return-void
.end method

.method stop(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timeoutMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->stoppedRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 160
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 161
    sget-object v1, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} is signaled to stop."

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :cond_0
    :goto_0
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->STOP_EVENT:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 177
    .local v1, "added":Z
    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->interrupt()V

    .line 182
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/AsyncAppenderEventDispatcher;->join(J)V

    .line 184
    return-void
.end method
