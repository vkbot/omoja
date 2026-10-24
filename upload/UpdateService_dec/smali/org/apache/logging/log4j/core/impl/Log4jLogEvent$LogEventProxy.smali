.class Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;
.super Ljava/lang/Object;
.source "Log4jLogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEventProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77d265804da13c03L


# instance fields
.field private final contextData:Lorg/apache/logging/log4j/util/StringMap;

.field private final contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

.field private final isEndOfBatch:Z

.field private final isLocationRequired:Z

.field private final level:Lorg/apache/logging/log4j/Level;

.field private final loggerFQCN:Ljava/lang/String;

.field private final loggerName:Ljava/lang/String;

.field private final marker:Lorg/apache/logging/log4j/Marker;

.field private marshalledMessage:Ljava/rmi/MarshalledObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/rmi/MarshalledObject<",
            "Lorg/apache/logging/log4j/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final transient message:Lorg/apache/logging/log4j/message/Message;

.field private messageString:Ljava/lang/String;

.field private final nanoOfMillisecond:I

.field private final transient nanoTime:J

.field private final source:Ljava/lang/StackTraceElement;

.field private final threadId:J

.field private final threadName:Ljava/lang/String;

.field private final threadPriority:I

.field private final transient thrown:Ljava/lang/Throwable;

.field private final thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

.field private final timeMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/LogEvent;Z)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "includeLocation"
        }
    .end annotation

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerFqcn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerFQCN:Ljava/lang/String;

    .line 959
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marker:Lorg/apache/logging/log4j/Marker;

    .line 960
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->level:Lorg/apache/logging/log4j/Level;

    .line 961
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerName:Ljava/lang/String;

    .line 963
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    .line 964
    .local v0, "temp":Lorg/apache/logging/log4j/message/Message;
    instance-of v1, v0, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/message/ReusableMessage;

    .line 965
    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->memento(Lorg/apache/logging/log4j/message/ReusableMessage;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->message:Lorg/apache/logging/log4j/message/Message;

    .line 967
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getInstant()Lorg/apache/logging/log4j/core/time/Instant;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochMillisecond()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->timeMillis:J

    .line 968
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getInstant()Lorg/apache/logging/log4j/core/time/Instant;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/time/Instant;->getNanoOfMillisecond()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoOfMillisecond:I

    .line 969
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrown:Ljava/lang/Throwable;

    .line 970
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 971
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->memento(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 972
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 973
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->source:Ljava/lang/StackTraceElement;

    .line 974
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadId:J

    .line 975
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadName:Ljava/lang/String;

    .line 976
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadPriority:I

    .line 977
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isLocationRequired:Z

    .line 978
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isEndOfBatch:Z

    .line 979
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoTime:J

    .line 980
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;Z)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    .param p2, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "includeLocation"
        }
    .end annotation

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$2700(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerFQCN:Ljava/lang/String;

    .line 936
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$2800(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marker:Lorg/apache/logging/log4j/Marker;

    .line 937
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$2900(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->level:Lorg/apache/logging/log4j/Level;

    .line 938
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3000(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerName:Ljava/lang/String;

    .line 939
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/logging/log4j/message/ReusableMessage;

    if-eqz v0, :cond_0

    .line 940
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/ReusableMessage;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->memento(Lorg/apache/logging/log4j/message/ReusableMessage;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_0
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->message:Lorg/apache/logging/log4j/message/Message;

    .line 942
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/core/time/MutableInstant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getEpochMillisecond()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->timeMillis:J

    .line 943
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/core/time/MutableInstant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->getNanoOfMillisecond()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoOfMillisecond:I

    .line 944
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrown:Ljava/lang/Throwable;

    .line 945
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    .line 946
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    .line 947
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    .line 948
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->source:Ljava/lang/StackTraceElement;

    .line 949
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadId:J

    .line 950
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadName:Ljava/lang/String;

    .line 951
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->getThreadPriority()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadPriority:I

    .line 952
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isLocationRequired:Z

    .line 953
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isEndOfBatch:Z

    .line 954
    invoke-static {p1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->access$3600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoTime:J

    .line 955
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/Marker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marker:Lorg/apache/logging/log4j/Marker;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerFQCN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->level:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->message:Lorg/apache/logging/log4j/message/Message;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadPriority:I

    return v0
.end method

.method static synthetic access$2100(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->source:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->timeMillis:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoOfMillisecond:I

    return v0
.end method

.method static synthetic access$2400(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isEndOfBatch:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isLocationRequired:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;

    .line 902
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method private static marshall(Lorg/apache/logging/log4j/message/Message;)Ljava/rmi/MarshalledObject;
    .locals 2
    .param p0, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/Message;",
            ")",
            "Ljava/rmi/MarshalledObject<",
            "Lorg/apache/logging/log4j/message/Message;",
            ">;"
        }
    .end annotation

    .line 994
    :try_start_0
    new-instance v0, Ljava/rmi/MarshalledObject;

    invoke-direct {v0, p0}, Ljava/rmi/MarshalledObject;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static memento(Lorg/apache/logging/log4j/message/ReusableMessage;)Lorg/apache/logging/log4j/message/Message;
    .locals 1
    .param p0, "message"    # Lorg/apache/logging/log4j/message/ReusableMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 983
    invoke-interface {p0}, Lorg/apache/logging/log4j/message/ReusableMessage;->memento()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method

.method private static memento(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/util/StringMap;
    .locals 1
    .param p0, "data"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 987
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataFactory;->createContextData()Lorg/apache/logging/log4j/util/StringMap;

    move-result-object v0

    .line 988
    .local v0, "result":Lorg/apache/logging/log4j/util/StringMap;
    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/util/StringMap;->putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V

    .line 989
    return-object v0
.end method

.method private message()Lorg/apache/logging/log4j/message/Message;
    .locals 2

    .line 1020
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marshalledMessage:Ljava/rmi/MarshalledObject;

    if-eqz v0, :cond_0

    .line 1022
    :try_start_0
    invoke-virtual {v0}, Ljava/rmi/MarshalledObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1023
    :catch_0
    move-exception v0

    .line 1027
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->messageString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-interface {v0}, Lorg/apache/logging/log4j/message/Message;->getFormattedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->messageString:Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->message:Lorg/apache/logging/log4j/message/Message;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marshall(Lorg/apache/logging/log4j/message/Message;)Ljava/rmi/MarshalledObject;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marshalledMessage:Ljava/rmi/MarshalledObject;

    .line 1003
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1004
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 25

    .line 1011
    move-object/from16 v0, p0

    new-instance v22, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-object/from16 v1, v22

    iget-object v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerName:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->marker:Lorg/apache/logging/log4j/Marker;

    iget-object v4, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->loggerFQCN:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->level:Lorg/apache/logging/log4j/Level;

    invoke-direct/range {p0 .. p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->message()Lorg/apache/logging/log4j/message/Message;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrown:Ljava/lang/Throwable;

    iget-object v8, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->thrownProxy:Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextData:Lorg/apache/logging/log4j/util/StringMap;

    iget-object v10, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->contextStack:Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    iget-wide v11, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadId:J

    iget-object v13, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadName:Ljava/lang/String;

    iget v14, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->threadPriority:I

    iget-object v15, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->source:Ljava/lang/StackTraceElement;

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->timeMillis:J

    move-wide/from16 v16, v1

    iget v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoOfMillisecond:I

    move/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->nanoTime:J

    move-wide/from16 v19, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v21}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Lorg/apache/logging/log4j/core/impl/ThrowableProxy;Lorg/apache/logging/log4j/util/StringMap;Lorg/apache/logging/log4j/ThreadContext$ContextStack;JLjava/lang/String;ILjava/lang/StackTraceElement;JIJLorg/apache/logging/log4j/core/impl/Log4jLogEvent$1;)V

    move-object/from16 v1, v22

    .line 1014
    .local v1, "result":Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;
    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isEndOfBatch:Z

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setEndOfBatch(Z)V

    .line 1015
    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$LogEventProxy;->isLocationRequired:Z

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->setIncludeLocation(Z)V

    .line 1016
    return-object v1
.end method
