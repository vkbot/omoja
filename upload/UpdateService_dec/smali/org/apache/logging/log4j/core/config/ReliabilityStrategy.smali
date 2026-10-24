.class public interface abstract Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
.super Ljava/lang/Object;
.source "ReliabilityStrategy.java"


# virtual methods
.method public abstract afterLogEvent()V
.end method

.method public abstract beforeStopAppenders()V
.end method

.method public abstract beforeStopConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation
.end method

.method public abstract getActiveLoggerConfig(Lorg/apache/logging/log4j/util/Supplier;)Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;)",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;"
        }
    .end annotation
.end method

.method public abstract log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reconfigured",
            "loggerName",
            "fqcn",
            "marker",
            "level",
            "data",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract log(Lorg/apache/logging/log4j/util/Supplier;Lorg/apache/logging/log4j/core/LogEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reconfigured",
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/util/Supplier<",
            "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
            ">;",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")V"
        }
    .end annotation
.end method
