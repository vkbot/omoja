.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;
.super Ljava/lang/Object;
.source "IfAny.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfAny"
    printObject = true
.end annotation


# instance fields
.field private final components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# direct methods
.method private varargs constructor <init>([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 1
    .param p1, "filters"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filters"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "filters"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 40
    return-void
.end method

.method public static varargs createOrCondition([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;
    .locals 1
    .param p0, "components"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathConditions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "components"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 80
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;-><init>([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 6
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

    .line 52
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 53
    .local v4, "component":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    invoke-interface {v4, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    const/4 v0, 0x1

    return v0

    .line 52
    .end local v4    # "component":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return v2
.end method

.method public beforeFileTreeWalk()V
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 67
    .local v3, "condition":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->beforeFileTreeWalk()V

    .line 66
    .end local v3    # "condition":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public getDeleteFilters()[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IfAny"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAny;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
