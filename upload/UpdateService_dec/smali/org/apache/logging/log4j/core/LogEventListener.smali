.class public Lorg/apache/logging/log4j/core/LogEventListener;
.super Ljava/lang/Object;
.source "LogEventListener.java"

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field protected static final LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;


# instance fields
.field private final context:Lorg/apache/logging/log4j/core/LoggerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/LogEventListener;->LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/LoggerContext;->getContext(Z)Lorg/apache/logging/log4j/core/LoggerContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/LogEventListener;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 34
    return-void
.end method


# virtual methods
.method public log(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 37
    if-nez p1, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/LogEventListener;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/LoggerContext;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object v0

    .line 41
    .local v0, "logger":Lorg/apache/logging/log4j/core/Logger;
    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logEvent(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 44
    :cond_1
    return-void
.end method
