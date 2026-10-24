.class public Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;
.super Ljava/lang/Object;
.source "DefaultLogEventFactory.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/impl/LogEventFactory;
.implements Lorg/apache/logging/log4j/core/impl/LocationAwareLogEventFactory;


# static fields
.field private static final instance:Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;->instance:Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;->instance:Lorg/apache/logging/log4j/core/impl/DefaultLogEventFactory;

    return-object v0
.end method


# virtual methods
.method public createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 10
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "level"    # Lorg/apache/logging/log4j/Level;
    .param p6, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p8, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
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

    .line 74
    .local p7, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    new-instance v9, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)V

    return-object v9
.end method

.method public createEvent(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 9
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "level"    # Lorg/apache/logging/log4j/Level;
    .param p5, "data"    # Lorg/apache/logging/log4j/message/Message;
    .param p7, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
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

    .line 54
    .local p6, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/config/Property;>;"
    new-instance v8, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/util/List;Ljava/lang/Throwable;)V

    return-object v8
.end method
