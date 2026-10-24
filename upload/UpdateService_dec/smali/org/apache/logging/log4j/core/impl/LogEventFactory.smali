.class public interface abstract Lorg/apache/logging/log4j/core/impl/LogEventFactory;
.super Ljava/lang/Object;
.source "LogEventFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/impl/LocationAwareLogEventFactory;


# virtual methods
.method public createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 8
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p8, "t"    # Ljava/lang/Throwable;
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

    .line 46
    .local p7, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-interface/range {v0 .. v7}, Lorg/apache/logging/log4j/core/impl/LogEventFactory;->createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public abstract createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
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
            "loggerName",
            "marker",
            "fqcn",
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
