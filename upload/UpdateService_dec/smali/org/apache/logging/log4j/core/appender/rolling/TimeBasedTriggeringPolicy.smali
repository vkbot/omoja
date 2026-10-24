.class public final Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;
.source "TimeBasedTriggeringPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "TimeBasedTriggeringPolicy"
    printObject = true
.end annotation


# instance fields
.field private final interval:I

.field private manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

.field private final maxRandomDelayMillis:J

.field private final modulate:Z

.field private nextRolloverMillis:J


# direct methods
.method private constructor <init>(IZJ)V
    .locals 0
    .param p1, "interval"    # I
    .param p2, "modulate"    # Z
    .param p3, "maxRandomDelayMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "interval",
            "modulate",
            "maxRandomDelayMillis"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    .line 91
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->interval:I

    .line 92
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->modulate:Z

    .line 93
    iput-wide p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->maxRandomDelayMillis:J

    .line 94
    return-void
.end method

.method synthetic constructor <init>(IZJLorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$1;

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;-><init>(IZJ)V

    return-void
.end method

.method public static createPolicy(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;
    .locals 2
    .param p0, "interval"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "interval"
        .end annotation
    .end param
    .param p1, "modulate"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "modulate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "interval",
            "modulate"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;

    move-result-object v0

    .line 153
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->withInterval(I)Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;

    move-result-object v0

    .line 154
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->withModulate(Z)Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 160
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getInterval()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->interval:I

    return v0
.end method

.method public getNextRolloverMillis()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->nextRolloverMillis:J

    return-wide v0
.end method

.method public initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 9
    .param p1, "aManager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aManager"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    .line 111
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileTime()J

    move-result-wide v0

    .line 112
    .local v0, "current":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v4

    iget v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->interval:I

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->modulate:Z

    invoke-virtual {v4, v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->getNextTime(JIZ)J

    .line 118
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setTimeBased(Z)V

    .line 120
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    const-wide/16 v5, 0x1

    iget-wide v7, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->maxRandomDelayMillis:J

    add-long/2addr v7, v5

    invoke-virtual {v4, v2, v3, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v2

    .line 121
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v4

    iget v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->interval:I

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->modulate:Z

    invoke-virtual {v4, v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->getNextTime(JIZ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->nextRolloverMillis:J

    .line 122
    return-void
.end method

.method public isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 9
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v0

    .line 132
    .local v0, "nowMillis":J
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->nextRolloverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 133
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    iget-wide v7, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->maxRandomDelayMillis:J

    add-long/2addr v7, v5

    invoke-virtual {v2, v3, v4, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    .line 134
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v4

    iget v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->interval:I

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->modulate:Z

    invoke-virtual {v4, v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->getNextTime(JIZ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->nextRolloverMillis:J

    .line 135
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->setCurrentFileTime(J)V

    .line 136
    const/4 v2, 0x1

    return v2

    .line 138
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeBasedTriggeringPolicy(nextRolloverMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->nextRolloverMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modulate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/TimeBasedTriggeringPolicy;->modulate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
