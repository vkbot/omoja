.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;
.super Ljava/lang/Object;
.source "IfNot.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfNot"
    printObject = true
.end annotation


# instance fields
.field private final negate:Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 1
    .param p1, "negate"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "negate"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "filter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;->negate:Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 38
    return-void
.end method

.method public static createNotCondition(Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;
    .locals 1
    .param p0, "condition"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathConditions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "condition"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 71
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p1, "baseDir"    # Ljava/nio/file/Path;
    .param p2, "relativePath"    # Ljava/nio/file/Path;
    .param p3, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "baseDir",
            "relativePath",
            "attrs"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;->negate:Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public beforeFileTreeWalk()V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;->negate:Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->beforeFileTreeWalk()V

    .line 60
    return-void
.end method

.method public getWrappedFilter()Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;->negate:Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IfNot("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfNot;->negate:Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
