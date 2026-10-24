.class final enum Lorg/apache/logging/log4j/core/async/EventRoute$1;
.super Lorg/apache/logging/log4j/core/async/EventRoute;
.source "EventRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/async/EventRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/async/EventRoute;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/async/EventRoute$1;)V

    return-void
.end method


# virtual methods
.method public logMessage(Lorg/apache/logging/log4j/core/appender/AsyncAppender;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "asyncAppender"    # Lorg/apache/logging/log4j/core/appender/AsyncAppender;
    .param p2, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "asyncAppender",
            "logEvent"
        }
    .end annotation

    .line 51
    invoke-virtual {p1, p2}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;->logMessageInBackgroundThread(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 52
    return-void
.end method

.method public logMessage(Lorg/apache/logging/log4j/core/async/AsyncLogger;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "asyncLogger"    # Lorg/apache/logging/log4j/core/async/AsyncLogger;
    .param p2, "fqcn"    # Ljava/lang/String;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .param p4, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "asyncLogger",
            "fqcn",
            "level",
            "marker",
            "message",
            "thrown"
        }
    .end annotation

    .line 42
    return-void
.end method

.method public logMessage(Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "asyncLoggerConfig"    # Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;
    .param p2, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "asyncLoggerConfig",
            "event"
        }
    .end annotation

    .line 46
    invoke-virtual {p1, p2}, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;->logInBackgroundThread(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 47
    return-void
.end method
