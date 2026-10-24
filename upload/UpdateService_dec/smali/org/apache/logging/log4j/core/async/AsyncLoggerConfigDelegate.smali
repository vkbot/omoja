.class public interface abstract Lorg/apache/logging/log4j/core/async/AsyncLoggerConfigDelegate;
.super Ljava/lang/Object;
.source "AsyncLoggerConfigDelegate.java"


# virtual methods
.method public abstract createRingBufferAdmin(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/jmx/RingBufferAdmin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "contextName",
            "loggerConfigName"
        }
    .end annotation
.end method

.method public abstract enqueueEvent(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "asyncLoggerConfig"
        }
    .end annotation
.end method

.method public abstract getEventRoute(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/async/EventRoute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setLogEventFactory(Lorg/apache/logging/log4j/core/impl/LogEventFactory;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logEventFactory"
        }
    .end annotation
.end method

.method public abstract tryEnqueue(Lorg/apache/logging/log4j/core/LogEvent;Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "asyncLoggerConfig"
        }
    .end annotation
.end method
