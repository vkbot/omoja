.class Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;
.super Ljava/lang/Object;
.source "AbstractJacksonLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadOnlyLogEventWrapper"
.end annotation


# instance fields
.field private final event:Lorg/apache/logging/log4j/core/LogEvent;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    .line 401
    return-void
.end method


# virtual methods
.method public getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    return-object v0
.end method

.method public getContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getContextMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Lorg/apache/logging/log4j/core/time/Instant;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getInstant()Lorg/apache/logging/log4j/core/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerFqcn()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerFqcn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarker()Lorg/apache/logging/log4j/Marker;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getMessage()Lorg/apache/logging/log4j/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSource()Ljava/lang/StackTraceElement;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .line 470
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getThreadPriority()I

    move-result v0

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 450
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEndOfBatch()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->isEndOfBatch()Z

    move-result v0

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->isIncludeLocation()Z

    move-result v0

    return v0
.end method

.method public setEndOfBatch(Z)V
    .locals 0
    .param p1, "endOfBatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endOfBatch"
        }
    .end annotation

    .line 501
    return-void
.end method

.method public setIncludeLocation(Z)V
    .locals 0
    .param p1, "locationRequired"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationRequired"
        }
    .end annotation

    .line 506
    return-void
.end method

.method public toImmutable()Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;->event:Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/LogEvent;->toImmutable()Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    return-object v0
.end method
