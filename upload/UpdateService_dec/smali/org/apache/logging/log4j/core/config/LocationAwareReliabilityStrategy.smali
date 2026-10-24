.class public interface abstract Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;
.super Ljava/lang/Object;
.source "LocationAwareReliabilityStrategy.java"


# virtual methods
.method public abstract log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "location",
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
            "Ljava/lang/StackTraceElement;",
            "Lorg/apache/logging/log4j/Marker;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
