.class public Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
.source "DefaultRolloverStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "DefaultRolloverStrategy"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_WINDOW_SIZE:I = 0x7

.field private static final MIN_WINDOW_SIZE:I = 0x1


# instance fields
.field private final compressionLevel:I

.field private final customActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final maxIndex:I

.field private final minIndex:I

.field private final stopCustomActionsOnError:Z

.field private final tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

.field private final useMax:Z


# direct methods
.method protected constructor <init>(IIZILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Z)V
    .locals 9
    .param p1, "minIndex"    # I
    .param p2, "maxIndex"    # I
    .param p3, "useMax"    # Z
    .param p4, "compressionLevel"    # I
    .param p5, "strSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p6, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p7, "stopCustomActionsOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "minIndex",
            "maxIndex",
            "useMax",
            "compressionLevel",
            "strSubstitutor",
            "customActions",
            "stopCustomActionsOnError"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;-><init>(IIZILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLjava/lang/String;)V

    .line 347
    return-void
.end method

.method protected constructor <init>(IIZILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLjava/lang/String;)V
    .locals 1
    .param p1, "minIndex"    # I
    .param p2, "maxIndex"    # I
    .param p3, "useMax"    # Z
    .param p4, "compressionLevel"    # I
    .param p5, "strSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p6, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p7, "stopCustomActionsOnError"    # Z
    .param p8, "tempCompressedFilePatternString"    # Ljava/lang/String;
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
            "minIndex",
            "maxIndex",
            "useMax",
            "compressionLevel",
            "strSubstitutor",
            "customActions",
            "stopCustomActionsOnError",
            "tempCompressedFilePatternString"
        }
    .end annotation

    .line 362
    invoke-direct {p0, p5}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;-><init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    .line 363
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->minIndex:I

    .line 364
    iput p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->maxIndex:I

    .line 365
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->useMax:Z

    .line 366
    iput p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->compressionLevel:I

    .line 367
    iput-boolean p7, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->stopCustomActionsOnError:Z

    .line 368
    if-nez p6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->customActions:Ljava/util/List;

    .line 369
    if-eqz p8, :cond_1

    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-direct {v0, p8}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    .line 371
    return-void
.end method

.method public static createStrategy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;
    .locals 1
    .param p0, "max"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "max"
        .end annotation
    .end param
    .param p1, "min"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "min"
        .end annotation
    .end param
    .param p2, "fileIndex"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "fileIndex"
        .end annotation
    .end param
    .param p3, "compressionLevelStr"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "compressionLevel"
        .end annotation
    .end param
    .param p4, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Actions"
        .end annotation
    .end param
    .param p5, "stopCustomActionsOnError"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "stopCustomActionsOnError"
        .end annotation
    .end param
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            0x10
        }
        names = {
            "max",
            "min",
            "fileIndex",
            "compressionLevelStr",
            "customActions",
            "stopCustomActionsOnError",
            "config"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 305
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withMin(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withMax(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withFileIndex(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withCustomActions([Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withStopCustomActionsOnError(Z)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 276
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;-><init>()V

    return-object v0
.end method

.method private purge(IILorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I
    .locals 1
    .param p1, "lowIndex"    # I
    .param p2, "highIndex"    # I
    .param p3, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "lowIndex",
            "highIndex",
            "manager"
        }
    .end annotation

    .line 402
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->useMax:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->purgeAscending(IILorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->purgeDescending(IILorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private purgeAscending(IILorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I
    .locals 16
    .param p1, "lowIndex"    # I
    .param p2, "highIndex"    # I
    .param p3, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "lowIndex",
            "highIndex",
            "manager"
        }
    .end annotation

    .line 415
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/SortedMap;

    move-result-object v4

    .line 416
    .local v4, "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    sub-int v0, v2, p1

    const/4 v5, 0x1

    add-int/lit8 v6, v0, 0x1

    .line 418
    .local v6, "maxFiles":I
    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v8, v1, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->maxIndex:I

    if-lt v0, v8, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v8, v0

    .line 419
    .local v8, "renameFiles":Z
    :goto_1
    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 421
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v9, "Eligible files: {}"

    invoke-interface {v0, v9, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 423
    .local v0, "key":Ljava/lang/Integer;
    sget-object v9, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Deleting {}"

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/file/Path;

    invoke-interface {v11}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/file/Path;

    invoke-static {v9}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 425
    invoke-interface {v4, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    const/4 v8, 0x1

    .line 430
    .end local v0    # "key":Ljava/lang/Integer;
    goto :goto_1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v9, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Unable to delete {}, {}"

    invoke-interface {v9, v12, v10, v11, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 433
    .local v9, "buf":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_4

    .line 434
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 435
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v11

    iget-object v12, v1, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v9, v13}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 438
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/file/Path;

    invoke-interface {v11}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 439
    .local v11, "currentName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 440
    .local v12, "renameTo":Ljava/lang/String;
    invoke-virtual {v1, v12}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->suffixLength(Ljava/lang/String;)I

    move-result v13

    .line 441
    .local v13, "suffixLength":I
    if-lez v13, :cond_2

    invoke-virtual {v1, v11}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->suffixLength(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    .line 442
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-virtual {v12, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 444
    :cond_2
    new-instance v14, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/nio/file/Path;

    invoke-interface {v15}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v15

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15, v7, v5}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    move-object v7, v14

    .line 446
    .local v7, "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    const/4 v14, -0x1

    :try_start_1
    sget-object v15, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "DefaultRolloverStrategy.purgeAscending executing {}"

    invoke-interface {v15, v5, v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    invoke-interface {v7}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->execute()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_3

    .line 448
    return v14

    .line 453
    :cond_3
    nop

    .line 454
    .end local v7    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v11    # "currentName":Ljava/lang/String;
    .end local v12    # "renameTo":Ljava/lang/String;
    .end local v13    # "suffixLength":I
    const/4 v5, 0x1

    const/4 v7, 0x0

    goto :goto_2

    .line 450
    .restart local v7    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .restart local v11    # "currentName":Ljava/lang/String;
    .restart local v12    # "renameTo":Ljava/lang/String;
    .restart local v13    # "suffixLength":I
    :catch_1
    move-exception v0

    .line 451
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v15, "Exception during purge in RollingFileAppender"

    invoke-interface {v5, v15, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    return v14

    .line 457
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v11    # "currentName":Ljava/lang/String;
    .end local v12    # "renameTo":Ljava/lang/String;
    .end local v13    # "suffixLength":I
    :cond_4
    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 458
    invoke-interface {v4}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_5

    invoke-interface {v4}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move/from16 v0, p1

    .line 457
    :goto_3
    return v0
.end method

.method private purgeDescending(IILorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I
    .locals 16
    .param p1, "lowIndex"    # I
    .param p2, "highIndex"    # I
    .param p3, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "lowIndex",
            "highIndex",
            "manager"
        }
    .end annotation

    .line 472
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Z)Ljava/util/SortedMap;

    move-result-object v4

    .line 473
    .local v4, "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    sub-int v0, p2, p1

    const/4 v5, 0x1

    add-int/lit8 v6, v0, 0x1

    .line 474
    .local v6, "maxFiles":I
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v7, "Eligible files: {}"

    invoke-interface {v0, v7, v4}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    :goto_0
    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 477
    :try_start_0
    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 478
    .local v0, "key":Ljava/lang/Integer;
    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    invoke-static {v7}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 479
    invoke-interface {v4, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    nop

    .end local v0    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v7, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v4}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unable to delete {}, {}"

    invoke-interface {v7, v10, v8, v9, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 486
    .local v7, "buf":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 487
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v9

    iget-object v10, v1, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v7, v11}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 490
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/file/Path;

    invoke-interface {v9}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 491
    .local v9, "currentName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 492
    .local v10, "renameTo":Ljava/lang/String;
    invoke-virtual {v1, v10}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->suffixLength(Ljava/lang/String;)I

    move-result v11

    .line 493
    .local v11, "suffixLength":I
    if-lez v11, :cond_1

    invoke-virtual {v1, v9}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->suffixLength(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1

    .line 494
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v10, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 496
    :cond_1
    new-instance v12, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/file/Path;

    invoke-interface {v13}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13, v14, v5}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    .line 498
    .local v12, "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    const/4 v13, -0x1

    :try_start_1
    sget-object v14, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v15, "DefaultRolloverStrategy.purgeDescending executing {}"

    invoke-interface {v14, v15, v12}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    invoke-interface {v12}, Lorg/apache/logging/log4j/core/appender/rolling/action/Action;->execute()Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v14, :cond_2

    .line 500
    return v13

    .line 505
    :cond_2
    nop

    .line 506
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v9    # "currentName":Ljava/lang/String;
    .end local v10    # "renameTo":Ljava/lang/String;
    .end local v11    # "suffixLength":I
    .end local v12    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    goto :goto_1

    .line 502
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .restart local v9    # "currentName":Ljava/lang/String;
    .restart local v10    # "renameTo":Ljava/lang/String;
    .restart local v11    # "suffixLength":I
    .restart local v12    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    :catch_1
    move-exception v0

    .line 503
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "Exception during purge in RollingFileAppender"

    invoke-interface {v2, v5, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    return v13

    .line 508
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v9    # "currentName":Ljava/lang/String;
    .end local v10    # "renameTo":Ljava/lang/String;
    .end local v11    # "suffixLength":I
    .end local v12    # "action":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    :cond_3
    return p1
.end method


# virtual methods
.method public getCompressionLevel()I
    .locals 1

    .line 374
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->compressionLevel:I

    return v0
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->customActions:Ljava/util/List;

    return-object v0
.end method

.method public getMaxIndex()I
    .locals 1

    .line 382
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->maxIndex:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    .line 386
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->minIndex:I

    return v0
.end method

.method public getTempCompressedFilePattern()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    return-object v0
.end method

.method public isStopCustomActionsOnError()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->stopCustomActionsOnError:Z

    return v0
.end method

.method public isUseMax()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->useMax:Z

    return v0
.end method

.method public rollover(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;
    .locals 18
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 521
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 522
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget v2, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->minIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_1

    .line 523
    invoke-virtual/range {p0 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/SortedMap;

    move-result-object v2

    .line 524
    .local v2, "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_0

    :cond_0
    move v5, v4

    .line 525
    .local v5, "fileIndex":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 526
    .end local v2    # "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    move-object/from16 v8, p1

    goto :goto_1

    .line 527
    .end local v5    # "fileIndex":I
    :cond_1
    iget v2, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->maxIndex:I

    if-gez v2, :cond_2

    .line 528
    return-object v3

    .line 530
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 531
    .local v5, "startNanos":J
    iget v2, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->minIndex:I

    iget v7, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->maxIndex:I

    move-object/from16 v8, p1

    invoke-direct {v0, v2, v7, v8}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->purge(IILorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I

    move-result v2

    .line 532
    .local v2, "fileIndex":I
    if-gez v2, :cond_3

    .line 533
    return-object v3

    .line 535
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v7

    iget-object v9, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v1, v10}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 536
    sget-object v7, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v7}, Lorg/apache/logging/log4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 537
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    long-to-double v9, v9

    .line 538
    .local v9, "durationMillis":D
    sget-object v7, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v12, "DefaultRolloverStrategy.purge() took {} milliseconds"

    invoke-interface {v7, v12, v11}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    .end local v5    # "startNanos":J
    .end local v9    # "durationMillis":D
    :cond_4
    move v5, v2

    .end local v2    # "fileIndex":I
    .local v5, "fileIndex":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "currentFileName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "renameTo":Ljava/lang/String;
    move-object v7, v6

    .line 546
    .local v7, "compressedName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 548
    .local v9, "compressAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileExtension()Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v10

    .line 549
    .local v10, "fileExtension":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v10, :cond_7

    .line 550
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v13, "renameToFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v6, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 552
    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    if-eqz v14, :cond_6

    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v1, v12, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 554
    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    iget-object v15, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v15, v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, "tmpCompressedName":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v14, "tmpCompressedNameFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 558
    .local v15, "parentFile":Ljava/io/File;
    if-eqz v15, :cond_5

    .line 559
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 561
    :cond_5
    new-instance v12, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    new-array v4, v11, [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    iget v11, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->compressionLevel:I

    .line 562
    move-object/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .local v17, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v10, v6, v3, v1, v11}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->createCompressAction(Ljava/lang/String;Ljava/lang/String;ZI)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v4, v16

    new-instance v11, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;

    invoke-direct {v11, v14, v13, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    aput-object v11, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v12, v4, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;-><init>(Ljava/util/List;Z)V

    move-object v9, v12

    .line 567
    .end local v3    # "tmpCompressedName":Ljava/lang/String;
    .end local v14    # "tmpCompressedNameFile":Ljava/io/File;
    .end local v15    # "parentFile":Ljava/io/File;
    goto :goto_2

    .line 568
    .end local v17    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v17, v1

    move v1, v4

    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v17    # "buf":Ljava/lang/StringBuilder;
    iget v3, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->compressionLevel:I

    invoke-virtual {v10, v6, v7, v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->createCompressAction(Ljava/lang/String;Ljava/lang/String;ZI)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v9

    goto :goto_2

    .line 549
    .end local v13    # "renameToFile":Ljava/io/File;
    .end local v17    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v17, v1

    .line 573
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v17    # "buf":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 574
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Attempt to rename file {} to itself will be ignored"

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;-><init>(Ljava/lang/String;ZLorg/apache/logging/log4j/core/appender/rolling/action/Action;Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)V

    return-object v1

    .line 578
    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isAttributeViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 581
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 582
    invoke-virtual {v1, v7}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withBasePath(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 583
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFollowLinks(Z)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 584
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withMaxDepth(I)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 585
    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withPathConditions([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 586
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withSubst(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 587
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFilePermissions()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFilePermissions(Ljava/util/Set;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 588
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 589
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    move-result-object v1

    .line 592
    .local v1, "posixAttributeViewAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    new-instance v3, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    const/4 v11, 0x0

    aput-object v9, v4, v11

    const/4 v12, 0x1

    aput-object v1, v4, v12

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;-><init>(Ljava/util/List;Z)V

    move-object v9, v3

    .line 595
    .end local v1    # "posixAttributeViewAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    :cond_9
    new-instance v1, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isRenameEmptyFiles()Z

    move-result v11

    invoke-direct {v1, v3, v4, v11}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    .line 598
    .local v1, "renameAction":Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;
    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->customActions:Ljava/util/List;

    iget-boolean v4, v0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->stopCustomActionsOnError:Z

    invoke-virtual {v0, v9, v3, v4}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->merge(Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Ljava/util/List;Z)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v3

    .line 599
    .local v3, "asyncAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    new-instance v4, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;

    const/4 v11, 0x0

    invoke-direct {v4, v2, v11, v1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;-><init>(Ljava/lang/String;ZLorg/apache/logging/log4j/core/appender/rolling/action/Action;Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultRolloverStrategy(min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->minIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->maxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->useMax:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
