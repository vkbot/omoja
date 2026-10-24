.class public final Lorg/apache/logging/log4j/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# static fields
.field public static final EVENT_MARKER:Lorg/apache/logging/log4j/Marker;

.field private static final FQCN:Ljava/lang/String;

.field private static final LOGGER:Lorg/apache/logging/log4j/spi/ExtendedLogger;

.field private static final NAME:Ljava/lang/String; = "EventLogger"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-string v0, "EVENT"

    invoke-static {v0}, Lorg/apache/logging/log4j/MarkerManager;->getMarker(Ljava/lang/String;)Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/EventLogger;->EVENT_MARKER:Lorg/apache/logging/log4j/Marker;

    .line 34
    const-class v0, Lorg/apache/logging/log4j/EventLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/EventLogger;->FQCN:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getContext(Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object v0

    const-string v1, "EventLogger"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/spi/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/EventLogger;->LOGGER:Lorg/apache/logging/log4j/spi/ExtendedLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static logEvent(Lorg/apache/logging/log4j/message/StructuredDataMessage;)V
    .locals 6
    .param p0, "msg"    # Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/EventLogger;->LOGGER:Lorg/apache/logging/log4j/spi/ExtendedLogger;

    sget-object v1, Lorg/apache/logging/log4j/EventLogger;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    sget-object v3, Lorg/apache/logging/log4j/EventLogger;->EVENT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/ExtendedLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public static logEvent(Lorg/apache/logging/log4j/message/StructuredDataMessage;Lorg/apache/logging/log4j/Level;)V
    .locals 6
    .param p0, "msg"    # Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "level"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/apache/logging/log4j/EventLogger;->LOGGER:Lorg/apache/logging/log4j/spi/ExtendedLogger;

    sget-object v1, Lorg/apache/logging/log4j/EventLogger;->FQCN:Ljava/lang/String;

    sget-object v3, Lorg/apache/logging/log4j/EventLogger;->EVENT_MARKER:Lorg/apache/logging/log4j/Marker;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lorg/apache/logging/log4j/spi/ExtendedLogger;->logIfEnabled(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
