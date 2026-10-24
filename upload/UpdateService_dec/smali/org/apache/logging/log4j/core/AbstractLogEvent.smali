.class public abstract Lorg/apache/logging/log4j/core/AbstractLogEvent;
.super Ljava/lang/Object;
.source "AbstractLogEvent.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LogEvent;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile instant:Lorg/apache/logging/log4j/core/time/MutableInstant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 52
    const/4 v0, 0x0

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

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/logging/log4j/ThreadContext;->EMPTY_STACK:Lorg/apache/logging/log4j/spi/ThreadContextStack;

    return-object v0
.end method

.method public getInstant()Lorg/apache/logging/log4j/core/time/Instant;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/AbstractLogEvent;->getMutableInstant()Lorg/apache/logging/log4j/core/time/MutableInstant;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoggerFqcn()Ljava/lang/String;
    .locals 1

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarker()Lorg/apache/logging/log4j/Marker;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Lorg/apache/logging/log4j/message/Message;
    .locals 1

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getMutableInstant()Lorg/apache/logging/log4j/core/time/MutableInstant;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/AbstractLogEvent;->instant:Lorg/apache/logging/log4j/core/time/MutableInstant;

    return-object v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 162
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSource()Ljava/lang/StackTraceElement;
    .locals 1

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .line 100
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .locals 1

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .locals 1

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 125
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEndOfBatch()Z
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isIncludeLocation()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public setEndOfBatch(Z)V
    .locals 0
    .param p1, "endOfBatch"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "endOfBatch"
        }
    .end annotation

    .line 153
    return-void
.end method

.method public setIncludeLocation(Z)V
    .locals 0
    .param p1, "locationRequired"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "locationRequired"
        }
    .end annotation

    .line 158
    return-void
.end method

.method public toImmutable()Lorg/apache/logging/log4j/core/LogEvent;
    .locals 0

    .line 47
    return-object p0
.end method
