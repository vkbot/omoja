.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;
.super Ljava/lang/Object;
.source "IfAccumulatedFileSize.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfAccumulatedFileSize"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private accumulatedSize:J

.field private final nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

.field private final thresholdBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private varargs constructor <init>(J[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 3
    .param p1, "thresholdSize"    # J
    .param p3, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "thresholdSize",
            "nestedConditions"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 48
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->thresholdBytes:J

    .line 49
    invoke-static {p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->copy([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 50
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count must be a positive integer but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs createFileSizeCondition(Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;
    .locals 3
    .param p0, "size"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "exceeds"
        .end annotation
    .end param
    .param p1, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathConditions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "size",
            "nestedConditions"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 104
    if-nez p0, :cond_0

    .line 105
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "IfAccumulatedFileSize missing mandatory size threshold."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 107
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/FileSize;->parse(Ljava/lang/String;J)J

    move-result-wide v0

    .line 108
    .local v0, "threshold":J
    :goto_0
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;-><init>(J[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v2
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 10
    .param p1, "basePath"    # Ljava/nio/file/Path;
    .param p2, "relativePath"    # Ljava/nio/file/Path;
    .param p3, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "basePath",
            "relativePath",
            "attrs"
        }
    .end annotation

    .line 68
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->accumulatedSize:J

    invoke-interface {p3}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->accumulatedSize:J

    .line 69
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->thresholdBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, ">"

    goto :goto_1

    :cond_1
    const-string v1, "<="

    :goto_1
    move-object v7, v1

    .line 71
    .local v7, "match":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "ACCEPTED"

    goto :goto_2

    :cond_2
    const-string v1, "REJECTED"

    :goto_2
    move-object v4, v1

    .line 72
    .local v4, "accept":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-wide v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->accumulatedSize:J

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v8, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->thresholdBytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 72
    const-string v3, "IfAccumulatedFileSize {}: {} accumulated size \'{}\' {} thresholdBytes \'{}\'"

    move-object v5, p2

    invoke-interface/range {v2 .. v8}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    if-eqz v0, :cond_3

    .line 75
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->accept([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v1

    return v1

    .line 77
    :cond_3
    return v0
.end method

.method public beforeFileTreeWalk()V
    .locals 2

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->accumulatedSize:J

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->beforeFileTreeWalk([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    .line 89
    return-void
.end method

.method public getNestedConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThresholdBytes()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->thresholdBytes:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 113
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "nested":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfAccumulatedFileSize(exceeds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileSize;->thresholdBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
