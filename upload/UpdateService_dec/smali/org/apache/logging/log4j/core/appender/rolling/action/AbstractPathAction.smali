.class public abstract Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;
.source "AbstractPathAction.java"


# instance fields
.field private final basePathString:Ljava/lang/String;

.field private final maxDepth:I

.field private final options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation
.end field

.field private final pathConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;"
        }
    .end annotation
.end field

.field private final subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V
    .locals 1
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "followSymbolicLinks"    # Z
    .param p3, "maxDepth"    # I
    .param p4, "pathFilters"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .param p5, "subst"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "basePath",
            "followSymbolicLinks",
            "maxDepth",
            "pathFilters",
            "subst"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractAction;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->basePathString:Ljava/lang/String;

    .line 60
    if-eqz p2, :cond_0

    sget-object v0, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->options:Ljava/util/Set;

    .line 62
    iput p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->maxDepth:I

    .line 63
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->pathConditions:Ljava/util/List;

    .line 64
    iput-object p5, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract createFileVisitor(Ljava/nio/file/Path;Ljava/util/List;)Ljava/nio/file/FileVisitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "visitorBaseDir",
            "conditions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;)",
            "Ljava/nio/file/FileVisitor<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public execute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->getBasePath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->pathConditions:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->createFileVisitor(Ljava/nio/file/Path;Ljava/util/List;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->execute(Ljava/nio/file/FileVisitor;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/nio/file/FileVisitor;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "visitor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/FileVisitor<",
            "Ljava/nio/file/Path;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    .local p1, "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<Ljava/nio/file/Path;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 74
    .local v0, "start":J
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Starting {}"

    invoke-interface {v2, v3, p0}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->getBasePath()Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->options:Ljava/util/Set;

    iget v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->maxDepth:I

    invoke-static {v2, v3, v4, p1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v2, v2

    .line 79
    .local v2, "duration":D
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    long-to-double v6, v6

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "{} complete in {} seconds"

    invoke-interface {v4, v7, v5, v6}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    const/4 v4, 0x1

    return v4
.end method

.method public getBasePath()Ljava/nio/file/Path;
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->getBasePathString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getBasePathString()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->basePathString:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->maxDepth:I

    return v0
.end method

.method public getOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->options:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPathConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->pathConditions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->subst:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    return-object v0
.end method

.method public isFollowSymbolicLinks()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->options:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[basePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->getBasePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->options:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->maxDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->pathConditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
