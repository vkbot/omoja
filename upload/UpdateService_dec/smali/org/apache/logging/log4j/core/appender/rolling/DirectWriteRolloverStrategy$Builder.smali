.class public Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
.super Ljava/lang/Object;
.source "DirectWriteRolloverStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field private compressionLevelStr:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "compressionLevel"
    .end annotation
.end field

.field private config:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Actions"
    .end annotation
.end field

.field private maxFiles:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "maxFiles"
    .end annotation
.end field

.field private stopCustomActionsOnError:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "stopCustomActionsOnError"
    .end annotation
.end field

.field private tempCompressedFilePattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "tempCompressedFilePattern"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;
    .locals 10

    .line 88
    const v0, 0x7fffffff

    .line 89
    .local v0, "maxIndex":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->maxFiles:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 90
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    if-gez v0, :cond_0

    .line 92
    const v0, 0x7fffffff

    goto :goto_0

    .line 93
    :cond_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 94
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Maximum files too small. Limited to 7"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x7

    .line 98
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->compressionLevelStr:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 99
    .local v8, "compressionLevel":I
    new-instance v9, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    iget-boolean v6, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->tempCompressedFilePattern:Ljava/lang/String;

    move-object v1, v9

    move v2, v0

    move v3, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;-><init>(IILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLjava/lang/String;)V

    return-object v9
.end method

.method public getCompressionLevelStr()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->compressionLevelStr:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getCustomActions()[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    return-object v0
.end method

.method public getMaxFiles()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->maxFiles:Ljava/lang/String;

    return-object v0
.end method

.method public getTempCompressedFilePattern()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->tempCompressedFilePattern:Ljava/lang/String;

    return-object v0
.end method

.method public isStopCustomActionsOnError()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    return v0
.end method

.method public withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 0
    .param p1, "compressionLevelStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "compressionLevelStr"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->compressionLevelStr:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 0
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 190
    return-object p0
.end method

.method public withCustomActions([Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 0
    .param p1, "customActions"    # [Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "customActions"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    .line 145
    return-object p0
.end method

.method public withMaxFiles(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 0
    .param p1, "maxFiles"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxFiles"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->maxFiles:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public withStopCustomActionsOnError(Z)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 0
    .param p1, "stopCustomActionsOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stopCustomActionsOnError"
        }
    .end annotation

    .line 159
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    .line 160
    return-object p0
.end method

.method public withTempCompressedFilePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;
    .locals 0
    .param p1, "tempCompressedFilePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tempCompressedFilePattern"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->tempCompressedFilePattern:Ljava/lang/String;

    .line 175
    return-object p0
.end method
