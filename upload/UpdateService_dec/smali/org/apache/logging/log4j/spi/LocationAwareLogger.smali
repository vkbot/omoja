.class public interface abstract Lorg/apache/logging/log4j/spi/LocationAwareLogger;
.super Ljava/lang/Object;
.source "LocationAwareLogger.java"


# virtual methods
.method public abstract logMessage(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
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
            "level",
            "marker",
            "fqcn",
            "location",
            "message",
            "throwable"
        }
    .end annotation
.end method
