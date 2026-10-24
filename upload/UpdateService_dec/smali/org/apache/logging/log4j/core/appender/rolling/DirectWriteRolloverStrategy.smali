.class public Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;
.super Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;
.source "DirectWriteRolloverStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "DirectWriteRolloverStrategy"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_MAX_FILES:I = 0x7


# instance fields
.field private final compressionLevel:I

.field private volatile currentFileName:Ljava/lang/String;

.field private final customActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/appender/rolling/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFiles:I

.field private nextIndex:I

.field private final stopCustomActionsOnError:Z

.field private final tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

.field private volatile usePrevTime:Z


# direct methods
.method protected constructor <init>(IILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Z)V
    .locals 7
    .param p1, "maxFiles"    # I
    .param p2, "compressionLevel"    # I
    .param p3, "strSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p4, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p5, "stopCustomActionsOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxFiles",
            "compressionLevel",
            "strSubstitutor",
            "customActions",
            "stopCustomActionsOnError"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;-><init>(IILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLjava/lang/String;)V

    .line 254
    return-void
.end method

.method protected constructor <init>(IILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLjava/lang/String;)V
    .locals 1
    .param p1, "maxFiles"    # I
    .param p2, "compressionLevel"    # I
    .param p3, "strSubstitutor"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p4, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p5, "stopCustomActionsOnError"    # Z
    .param p6, "tempCompressedFilePatternString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxFiles",
            "compressionLevel",
            "strSubstitutor",
            "customActions",
            "stopCustomActionsOnError",
            "tempCompressedFilePatternString"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;-><init>(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->nextIndex:I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->usePrevTime:Z

    .line 269
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->maxFiles:I

    .line 270
    iput p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->compressionLevel:I

    .line 271
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->stopCustomActionsOnError:Z

    .line 272
    if-nez p4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->customActions:Ljava/util/List;

    .line 273
    if-eqz p6, :cond_1

    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    invoke-direct {v0, p6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    .line 275
    return-void
.end method

.method public static createStrategy(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;
    .locals 1
    .param p0, "maxFiles"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "maxFiles"
        .end annotation
    .end param
    .param p1, "compressionLevelStr"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "compressionLevel"
        .end annotation
    .end param
    .param p2, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Actions"
        .end annotation
    .end param
    .param p3, "stopCustomActionsOnError"    # Z
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultBoolean = true
            value = "stopCustomActionsOnError"
        .end annotation
    .end param
    .param p4, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxFiles",
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

    .line 220
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withMaxFiles(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withCustomActions([Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withStopCustomActionsOnError(Z)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 196
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;-><init>()V

    return-object v0
.end method

.method private purge(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I
    .locals 5
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/SortedMap;

    move-result-object v0

    .line 299
    .local v0, "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->maxFiles:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Found {} eligible files, max is  {}"

    invoke-interface {v1, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->maxFiles:I

    if-lt v1, v2, :cond_0

    .line 302
    :try_start_0
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 303
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 304
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unable to delete {}"

    invoke-interface {v2, v4, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public clearCurrentFileName()V
    .locals 1

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->currentFileName:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 278
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->compressionLevel:I

    return v0
.end method

.method public getCurrentFileName(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/lang/String;
    .locals 7
    .param p1, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "manager"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->currentFileName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 316
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->getEligibleFiles(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/util/SortedMap;

    move-result-object v0

    .line 317
    .local v0, "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->nextIndex:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 318
    .local v1, "fileIndex":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xff

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getPatternProcessor()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v2, v6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;ZLjava/lang/Object;)V

    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->suffixLength(Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, "suffixLength":I
    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "name":Ljava/lang/String;
    :goto_1
    iput-object v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->currentFileName:Ljava/lang/String;

    .line 324
    .end local v0    # "eligibleFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/nio/file/Path;>;"
    .end local v1    # "fileIndex":I
    .end local v2    # "suffixLength":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->currentFileName:Ljava/lang/String;

    return-object v0
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

    .line 282
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->customActions:Ljava/util/List;

    return-object v0
.end method

.method public getMaxFiles()I
    .locals 1

    .line 286
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->maxFiles:I

    return v0
.end method

.method public getTempCompressedFilePattern()Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    return-object v0
.end method

.method public isStopCustomActionsOnError()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->stopCustomActionsOnError:Z

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

    .line 341
    move-object/from16 v0, p0

    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rolling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->currentFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 342
    iget v1, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->maxFiles:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 343
    return-object v2

    .line 345
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 346
    .local v3, "startNanos":J
    invoke-direct/range {p0 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->purge(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)I

    move-result v1

    .line 347
    .local v1, "fileIndex":I
    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    long-to-double v5, v5

    .line 349
    .local v5, "durationMillis":D
    sget-object v7, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-string v9, "DirectWriteRolloverStrategy.purge() took {} milliseconds"

    invoke-interface {v7, v9, v8}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    .end local v5    # "durationMillis":D
    :cond_1
    const/4 v5, 0x0

    .line 352
    .local v5, "compressAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->getCurrentFileName(Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "sourceName":Ljava/lang/String;
    move-object v7, v6

    .line 354
    .local v7, "compressedName":Ljava/lang/String;
    iput-object v2, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->currentFileName:Ljava/lang/String;

    .line 355
    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->nextIndex:I

    .line 356
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileExtension()Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v8

    .line 357
    .local v8, "fileExtension":Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    const/4 v9, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_4

    .line 358
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->getExtension()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 359
    iget-object v12, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    if-eqz v12, :cond_3

    .line 360
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v12, "buf":Ljava/lang/StringBuilder;
    iget-object v13, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->tempCompressedFilePattern:Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;

    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->strSubstitutor:Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v12, v15}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 363
    .local v13, "tmpCompressedName":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v14, "tmpCompressedNameFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 365
    .local v15, "parentFile":Ljava/io/File;
    if-eqz v15, :cond_2

    .line 366
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 368
    :cond_2
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    new-array v10, v9, [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    iget v9, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->compressionLevel:I

    .line 369
    invoke-virtual {v8, v6, v13, v11, v9}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->createCompressAction(Ljava/lang/String;Ljava/lang/String;ZI)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v10, v16

    new-instance v9, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;

    move/from16 v17, v1

    .end local v1    # "fileIndex":I
    .local v17, "fileIndex":I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v14, v1, v11}, Lorg/apache/logging/log4j/core/appender/rolling/action/FileRenameAction;-><init>(Ljava/io/File;Ljava/io/File;Z)V

    aput-object v9, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1, v11}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;-><init>(Ljava/util/List;Z)V

    move-object v5, v2

    .line 374
    .end local v12    # "buf":Ljava/lang/StringBuilder;
    .end local v13    # "tmpCompressedName":Ljava/lang/String;
    .end local v14    # "tmpCompressedNameFile":Ljava/io/File;
    .end local v15    # "parentFile":Ljava/io/File;
    goto :goto_0

    .line 375
    .end local v17    # "fileIndex":I
    .restart local v1    # "fileIndex":I
    :cond_3
    move/from16 v17, v1

    .end local v1    # "fileIndex":I
    .restart local v17    # "fileIndex":I
    iget v1, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->compressionLevel:I

    invoke-virtual {v8, v6, v7, v11, v1}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->createCompressAction(Ljava/lang/String;Ljava/lang/String;ZI)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v5

    goto :goto_0

    .line 357
    .end local v17    # "fileIndex":I
    .restart local v1    # "fileIndex":I
    :cond_4
    move/from16 v17, v1

    .line 380
    .end local v1    # "fileIndex":I
    .restart local v17    # "fileIndex":I
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->isAttributeViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 384
    invoke-virtual {v1, v7}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withBasePath(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFollowLinks(Z)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v11}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withMaxDepth(I)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;

    .line 387
    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withPathConditions([Lorg/apache/logging/log4j/core/appender/rolling/action/PathCondition;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 388
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withSubst(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 389
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFilePermissions()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFilePermissions(Ljava/util/Set;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 390
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 391
    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/action/PosixViewAttributeAction;

    move-result-object v1

    .line 394
    .local v1, "posixAttributeViewAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v1, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v2, v9, v10}, Lorg/apache/logging/log4j/core/appender/rolling/action/CompositeAction;-><init>(Ljava/util/List;Z)V

    move-object v5, v2

    .line 397
    .end local v1    # "posixAttributeViewAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    :cond_5
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->customActions:Ljava/util/List;

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->stopCustomActionsOnError:Z

    invoke-virtual {v0, v5, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->merge(Lorg/apache/logging/log4j/core/appender/rolling/action/Action;Ljava/util/List;Z)Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    move-result-object v1

    .line 398
    .local v1, "asyncAction":Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10, v9, v1}, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;-><init>(Ljava/lang/String;ZLorg/apache/logging/log4j/core/appender/rolling/action/Action;Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectWriteRolloverStrategy(maxFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->maxFiles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
