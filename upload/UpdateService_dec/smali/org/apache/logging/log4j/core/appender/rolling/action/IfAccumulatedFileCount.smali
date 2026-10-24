.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;
.super Ljava/lang/Object;
.source "IfAccumulatedFileCount.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfAccumulatedFileCount"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private count:I

.field private final nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

.field private final threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private varargs constructor <init>(I[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 3
    .param p1, "thresholdParam"    # I
    .param p2, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "thresholdParam",
            "nestedConditions"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-lez p1, :cond_0

    .line 47
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->threshold:I

    .line 48
    invoke-static {p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->copy([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 49
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count must be a positive integer but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs createFileCountCondition(I[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;
    .locals 2
    .param p0, "threshold"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultInt = 0x7fffffff
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
            "threshold",
            "nestedConditions"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 102
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 103
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "IfAccumulatedFileCount invalid or missing threshold value."

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;-><init>(I[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 9
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

    .line 67
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->count:I

    iget v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->threshold:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 68
    .local v0, "result":Z
    if-eqz v0, :cond_1

    const-string v1, ">"

    goto :goto_1

    :cond_1
    const-string v1, "<="

    :goto_1
    move-object v7, v1

    .line 69
    .local v7, "match":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "ACCEPTED"

    goto :goto_2

    :cond_2
    const-string v1, "REJECTED"

    :goto_2
    move-object v4, v1

    .line 70
    .local v4, "accept":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->threshold:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 70
    const-string v3, "IfAccumulatedFileCount {}: {} count \'{}\' {} threshold \'{}\'"

    move-object v5, p2

    invoke-interface/range {v2 .. v8}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    if-eqz v0, :cond_3

    .line 73
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->accept([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v1

    return v1

    .line 75
    :cond_3
    return v0
.end method

.method public beforeFileTreeWalk()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->count:I

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->beforeFileTreeWalk([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    .line 87
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

    .line 56
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThresholdCount()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->threshold:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "nested":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfAccumulatedFileCount(exceeds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAccumulatedFileCount;->threshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
