.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;
.super Ljava/lang/Object;
.source "IfAll.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfAll"
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

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 40
    return-void
.end method

.method public static accept([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 5
    .param p0, "list"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .param p1, "baseDir"    # Ljava/nio/file/Path;
    .param p2, "relativePath"    # Ljava/nio/file/Path;
    .param p3, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "list",
            "baseDir",
            "relativePath",
            "attrs"
        }
    .end annotation

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 73
    .local v3, "component":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    invoke-interface {v3, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    return v1

    .line 72
    .end local v3    # "component":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static beforeFileTreeWalk([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 3
    .param p0, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nestedConditions"
        }
    .end annotation

    .line 96
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 97
    .local v2, "condition":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    invoke-interface {v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->beforeFileTreeWalk()V

    .line 96
    .end local v2    # "condition":Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public static varargs createAndCondition([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;
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

    .line 110
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;-><init>([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 2
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

    .line 54
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->accept([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v0

    return v0

    .line 55
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public beforeFileTreeWalk()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->beforeFileTreeWalk([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    .line 88
    return-void
.end method

.method public getDeleteFilters()[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IfAll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->components:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
