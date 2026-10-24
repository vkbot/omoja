.class public Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;
.super Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;
.source "DeleteAction.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "Delete"
    printObject = true
.end annotation


# instance fields
.field private final pathSorter:Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

.field private final scriptCondition:Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;

.field private final testMode:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZIZLorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V
    .locals 6
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "followSymbolicLinks"    # Z
    .param p3, "maxDepth"    # I
    .param p4, "testMode"    # Z
    .param p5, "sorter"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;
    .param p6, "pathConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
    .param p7, "scriptCondition"    # Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;
    .param p8, "subst"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
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
            "testMode",
            "sorter",
            "pathConditions",
            "scriptCondition",
            "subst"
        }
    .end annotation

    .line 65
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;-><init>(Ljava/lang/String;ZI[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    .line 66
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->testMode:Z

    .line 67
    const-string v0, "sorter"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->pathSorter:Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

    .line 68
    iput-object p7, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->scriptCondition:Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;

    .line 69
    if-nez p7, :cond_1

    if-eqz p6, :cond_0

    array-length v0, p6

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Missing Delete conditions: unconditional Delete not supported"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unconditional Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method private callScript()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->getSortedPaths()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "sortedPaths":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    const-string v1, "Sorted paths:"

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->trace(Ljava/lang/String;Ljava/util/List;)V

    .line 98
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->scriptCondition:Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->getBasePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;->selectFilesToDelete(Ljava/nio/file/Path;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    return-object v1
.end method

.method public static createDeleteAction(Ljava/lang/String;ZIZLorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;
    .locals 11
    .param p0, "basePath"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "basePath"
        .end annotation
    .end param
    .param p1, "followLinks"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "followLinks"
        .end annotation
    .end param
    .param p2, "maxDepth"    # I
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultInt = 0x1
            value = "maxDepth"
        .end annotation
    .end param
    .param p3, "testMode"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "testMode"
        .end annotation
    .end param
    .param p4, "sorterParameter"    # Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathSorter"
        .end annotation
    .end param
    .param p5, "pathConditions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "PathConditions"
        .end annotation
    .end param
    .param p6, "scriptCondition"    # Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "ScriptCondition"
        .end annotation
    .end param
    .param p7, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "basePath",
            "followLinks",
            "maxDepth",
            "testMode",
            "sorterParameter",
            "pathConditions",
            "scriptCondition",
            "config"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 211
    if-nez p4, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathSortByModificationTime;-><init>(Z)V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p4

    .line 212
    .local v7, "sorter":Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;

    .line 213
    invoke-interface/range {p7 .. p7}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v10

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;-><init>(Ljava/lang/String;ZIZLorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    .line 212
    return-object v0
.end method

.method private deleteSelectedFiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selectedForDeletion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    .local p1, "selectedForDeletion":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    const-string v0, "Paths the script selected for deletion:"

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->trace(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;

    .line 105
    .local v1, "pathWithAttributes":Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 106
    .local v2, "path":Ljava/nio/file/Path;
    :goto_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Deleting {} (TEST MODE: file not actually deleted)"

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->delete(Ljava/nio/file/Path;)V

    .line 111
    .end local v1    # "pathWithAttributes":Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    .end local v2    # "path":Ljava/nio/file/Path;
    :goto_2
    goto :goto_0

    .line 112
    :cond_2
    return-void
.end method

.method private executeScript()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->callScript()Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "selectedForDeletion":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 88
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Script returned null list (no files to delete)"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->deleteSelectedFiles(Ljava/util/List;)V

    .line 92
    return v1
.end method

.method private trace(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "sortedPaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p2, "sortedPaths":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;)V

    .line 149
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;

    .line 150
    .local v1, "pathWithAttributes":Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 151
    .end local v1    # "pathWithAttributes":Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method protected createFileVisitor(Ljava/nio/file/Path;Ljava/util/List;)Ljava/nio/file/FileVisitor;
    .locals 2
    .param p1, "visitorBaseDir"    # Ljava/nio/file/Path;
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

    .line 178
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;>;"
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->testMode:Z

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeletingVisitor;-><init>(Ljava/nio/file/Path;Ljava/util/List;Z)V

    return-object v0
.end method

.method protected delete(Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Deleting {}"

    invoke-interface {v0, v1, p1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 123
    return-void
.end method

.method public execute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->scriptCondition:Lorg/apache/logging/log4j/core/appender/rolling/action/ScriptCondition;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->executeScript()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->execute()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public execute(Ljava/nio/file/FileVisitor;)Z
    .locals 7
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

    .line 132
    .local p1, "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<Ljava/nio/file/Path;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->getSortedPaths()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "sortedPaths":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    const-string v1, "Sorted paths:"

    invoke-direct {p0, v1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->trace(Ljava/lang/String;Ljava/util/List;)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;

    .line 137
    .local v2, "element":Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_1

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "ioex":Ljava/io/IOException;
    sget-object v4, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    const-string v6, "Error in post-rollover Delete when visiting {}"

    invoke-interface {v4, v6, v5, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/nio/file/FileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 142
    .end local v2    # "element":Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;
    .end local v3    # "ioex":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 144
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method getSortedPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->pathSorter:Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;-><init>(Lorg/apache/logging/log4j/core/appender/rolling/action/PathSorter;)V

    .line 162
    .local v0, "sort":Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;
    invoke-super {p0, v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction;->execute(Ljava/nio/file/FileVisitor;)Z

    .line 163
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/action/SortingVisitor;->getSortedPaths()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "sortedPaths":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/appender/rolling/action/PathWithAttributes;>;"
    return-object v1
.end method

.method public isTestMode()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/DeleteAction;->testMode:Z

    return v0
.end method
