.class public interface abstract Lorg/apache/logging/log4j/core/impl/LocationAwareLogEventFactory;
.super Ljava/lang/Object;
.source "LocationAwareLogEventFactory.java"


# virtual methods
.method public abstract createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
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
            "loggerName",
            "marker",
            "fqcn",
            "location",
            "level",
            "data",
            "properties",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Marker;",
            "Ljava/lang/String;",
            "Ljava/lang/StackTraceElement;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/message/Message;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/logging/log4j/core/LogEvent;"
        }
    .end annotation
.end method
