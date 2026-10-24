.class public interface abstract Lorg/apache/logging/log4j/core/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
.end method

.method public abstract getContextMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
.end method

.method public abstract getInstant()Lorg/apache/logging/log4j/core/time/Instant;
.end method

.method public abstract getLevel()Lorg/apache/logging/log4j/Level;
.end method

.method public abstract getLoggerFqcn()Ljava/lang/String;
.end method

.method public abstract getLoggerName()Ljava/lang/String;
.end method

.method public abstract getMarker()Lorg/apache/logging/log4j/Marker;
.end method

.method public abstract getMessage()Lorg/apache/logging/log4j/message/Message;
.end method

.method public abstract getNanoTime()J
.end method

.method public abstract getSource()Ljava/lang/StackTraceElement;
.end method

.method public abstract getThreadId()J
.end method

.method public abstract getThreadName()Ljava/lang/String;
.end method

.method public abstract getThreadPriority()I
.end method

.method public abstract getThrown()Ljava/lang/Throwable;
.end method

.method public abstract getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
.end method

.method public abstract getTimeMillis()J
.end method

.method public abstract isEndOfBatch()Z
.end method

.method public abstract isIncludeLocation()Z
.end method

.method public abstract setEndOfBatch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endOfBatch"
        }
    .end annotation
.end method

.method public abstract setIncludeLocation(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationRequired"
        }
    .end annotation
.end method

.method public abstract toImmutable()Lorg/apache/logging/log4j/core/LogEvent;
.end method
