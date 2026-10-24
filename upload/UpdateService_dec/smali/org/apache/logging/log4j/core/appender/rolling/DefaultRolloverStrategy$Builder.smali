.class public Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
.super Ljava/lang/Object;
.source "DefaultRolloverStrategy.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;",
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

.field private fileIndex:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "fileIndex"
    .end annotation
.end field

.field private max:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "max"
    .end annotation
.end field

.field private min:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "min"
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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;
    .locals 15

    .line 121
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->fileIndex:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "nomax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/high16 v0, -0x80000000

    .line 123
    .local v0, "minIndex":I
    const v1, 0x7fffffff

    .line 124
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .local v2, "useMax":Z
    goto :goto_2

    .line 126
    .end local v0    # "minIndex":I
    .end local v1    # "maxIndex":I
    .end local v2    # "useMax":Z
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->fileIndex:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v2, v0

    .line 127
    .restart local v2    # "useMax":Z
    const/4 v0, 0x1

    .line 128
    .restart local v0    # "minIndex":I
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->min:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 129
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    if-ge v0, v1, :cond_2

    .line 131
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Minimum window size too small. Limited to 1"

    invoke-interface {v1, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    .line 135
    :cond_2
    const/4 v1, 0x7

    .line 136
    .restart local v1    # "maxIndex":I
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->max:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 137
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    if-ge v1, v0, :cond_4

    .line 139
    const/4 v3, 0x7

    if-ge v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    move v1, v3

    .line 140
    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/AbstractRolloverStrategy;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Maximum window size must be greater than the minimum windows size. Set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 144
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->compressionLevelStr:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "trimmedCompressionLevelStr":Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 147
    .local v4, "compressionLevel":I
    iget-object v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v5

    goto :goto_3

    :cond_6
    new-instance v5, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;-><init>()V

    :goto_3
    move-object v10, v5

    .line 148
    .local v10, "nonNullStrSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    new-instance v14, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;

    iget-object v11, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    iget-boolean v12, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    iget-object v13, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->tempCompressedFilePattern:Ljava/lang/String;

    move-object v5, v14

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v4

    invoke-direct/range {v5 .. v13}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;-><init>(IIZILorg/apache/logging/log4j/core/lookup/StrSubstitutor;[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;ZLjava/lang/String;)V

    return-object v14
.end method

.method public getCompressionLevelStr()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->compressionLevelStr:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lorg/apache/logging/log4j/core/config/Configuration;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    return-object v0
.end method

.method public getCustomActions()[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    return-object v0
.end method

.method public getFileIndex()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->fileIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->max:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->min:Ljava/lang/String;

    return-object v0
.end method

.method public getTempCompressedFilePattern()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->tempCompressedFilePattern:Ljava/lang/String;

    return-object v0
.end method

.method public isStopCustomActionsOnError()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    return v0
.end method

.method public withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
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

    .line 209
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->compressionLevelStr:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
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

    .line 269
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 270
    return-object p0
.end method

.method public withCustomActions([Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
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

    .line 224
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->customActions:[Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    .line 225
    return-object p0
.end method

.method public withFileIndex(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
    .locals 0
    .param p1, "fileIndex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileIndex"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->fileIndex:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public withMax(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
    .locals 0
    .param p1, "max"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "max"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->max:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public withMin(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
    .locals 0
    .param p1, "min"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "min"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->min:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public withStopCustomActionsOnError(Z)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
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

    .line 239
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->stopCustomActionsOnError:Z

    .line 240
    return-object p0
.end method

.method public withTempCompressedFilePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;
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

    .line 254
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->tempCompressedFilePattern:Ljava/lang/String;

    .line 255
    return-object p0
.end method
