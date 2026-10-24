.class public Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
.super Ljava/lang/Object;
.source "AsyncLoggerConfigDisruptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log4jEventWrapper"
.end annotation


# instance fields
.field private event:Lorg/apache/logging/log4j/core/LogEvent;

.field private loggerConfig:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/impl/MutableLogEvent;)V
    .locals 0
    .param p1, "mutableLogEvent"    # Lorg/apache/logging/log4j/core/impl/MutableLogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mutableLogEvent"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/LogEvent;

    .line 66
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;)Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->loggerConfig:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 66
    iput-object p1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->loggerConfig:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->loggerConfig:Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    .line 82
    iget-object v1, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    instance-of v2, v1, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/impl/MutableLogEvent;->clear()V

    goto :goto_0

    .line 85
    :cond_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    .line 87
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDisruptor$Log4jEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
