.class public Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;
.source "SizeBasedTriggeringPolicy.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "SizeBasedTriggeringPolicy"
    printObject = true
.end annotation


# static fields
.field private static final MAX_FILE_SIZE:J = 0xa00000L


# instance fields
.field private manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

.field private final maxFileSize:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    .line 44
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->maxFileSize:J

    .line 45
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "maxFileSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxFileSize"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractTriggeringPolicy;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->maxFileSize:J

    .line 54
    return-void
.end method

.method public static createPolicy(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;
    .locals 3
    .param p0, "size"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 97
    const-wide/32 v0, 0xa00000

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->parse(Ljava/lang/String;J)J

    move-result-wide v0

    .line 98
    .local v0, "maxSize":J
    :goto_0
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public getMaxFileSize()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->maxFileSize:J

    return-wide v0
.end method

.method public initialize(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)V
    .locals 0
    .param p1, "aManager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "aManager"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    .line 67
    return-void
.end method

.method public isTriggeringEvent(Lorg/apache/logging/log4j/core/LogEvent;)Z
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->maxFileSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "triggered":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->manager:Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->updateTime()V

    .line 81
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeBasedTriggeringPolicy(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/SizeBasedTriggeringPolicy;->maxFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
