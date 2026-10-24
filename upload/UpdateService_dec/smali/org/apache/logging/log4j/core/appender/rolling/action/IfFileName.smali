.class public final Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;
.super Ljava/lang/Object;
.source "IfFileName.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "IfFileName"
    printObject = true
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

.field private final pathMatcher:Ljava/nio/file/PathMatcher;

.field private final syntaxAndPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V
    .locals 2
    .param p1, "glob"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "glob",
            "regex",
            "nestedConditions"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify either a path glob or a regular expression. Both cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->createSyntaxAndPatternString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->syntaxAndPattern:Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->syntaxAndPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->pathMatcher:Ljava/nio/file/PathMatcher;

    .line 67
    invoke-static {p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->copy([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 68
    return-void
.end method

.method public static varargs createNameCondition(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;
    .locals 1
    .param p0, "glob"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "glob"
        .end annotation
    .end param
    .param p1, "regex"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "regex"
        .end annotation
    .end param
    .param p2, "nestedConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathConditions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "glob",
            "regex",
            "nestedConditions"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    return-object v0
.end method

.method static createSyntaxAndPatternString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "glob"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "glob",
            "regex"
        }
    .end annotation

    .line 71
    if-eqz p0, :cond_1

    .line 72
    const-string v0, "glob:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string v0, "regex:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 8
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

    .line 101
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->pathMatcher:Ljava/nio/file/PathMatcher;

    invoke-interface {v0, p2}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    .line 103
    .local v0, "result":Z
    if-eqz v0, :cond_0

    const-string v1, "matches"

    goto :goto_0

    :cond_0
    const-string v1, "does not match"

    :goto_0
    move-object v6, v1

    .line 104
    .local v6, "match":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "ACCEPTED"

    goto :goto_1

    :cond_1
    const-string v1, "REJECTED"

    :goto_1
    move-object v4, v1

    .line 105
    .local v4, "accept":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->syntaxAndPattern:Ljava/lang/String;

    const-string v3, "IfFileName {}: \'{}\' {} relative path \'{}\'"

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    if-eqz v0, :cond_2

    .line 107
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->accept([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result v1

    return v1

    .line 109
    :cond_2
    return v0
.end method

.method public beforeFileTreeWalk()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/IfAll;->beforeFileTreeWalk([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)V

    .line 120
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

    .line 90
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxAndPattern()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->syntaxAndPattern:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->nestedConditions:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "nested":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfFileName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/IfFileName;->syntaxAndPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
