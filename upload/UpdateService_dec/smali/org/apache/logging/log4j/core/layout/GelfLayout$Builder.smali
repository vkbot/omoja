.class public Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;
.source "GelfLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/GelfLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/GelfLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AdditionalField"
    .end annotation
.end field

.field private compressionThreshold:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeMapMessage:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeNewLineDelimiter:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeNullDelimiter:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeStacktrace:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeThreadContext:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private mapMessageExcludes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private mapMessageIncludes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private mapPrefix:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private messagePattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private omitEmptyFields:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PatternSelector"
    .end annotation
.end field

.field private threadContextExcludes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private threadContextIncludes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private threadContextPrefix:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 176
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;-><init>()V

    .line 128
    sget-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->GZIP:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    .line 131
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionThreshold:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeStacktrace:Z

    .line 137
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeThreadContext:Z

    .line 158
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeMapMessage:Z

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextPrefix:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapPrefix:Ljava/lang/String;

    .line 177
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    .line 178
    return-void
.end method

.method private createChecker(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .locals 8
    .param p1, "excludes"    # Ljava/lang/String;
    .param p2, "includes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "excludes",
            "includes"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    const/4 v0, 0x0

    .line 210
    .local v0, "checker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 211
    sget-object v2, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "array":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 213
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v3, "excludeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 215
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v6    # "str":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    :cond_0
    new-instance v4, Lorg/apache/logging/log4j/core/layout/internal/ExcludeChecker;

    invoke-direct {v4, v3}, Lorg/apache/logging/log4j/core/layout/internal/ExcludeChecker;-><init>(Ljava/util/List;)V

    move-object v0, v4

    .line 220
    .end local v2    # "array":[Ljava/lang/String;
    .end local v3    # "excludeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz p2, :cond_3

    .line 221
    sget-object v2, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "array":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_3

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v3, "includeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 225
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_2
    new-instance v1, Lorg/apache/logging/log4j/core/layout/internal/IncludeChecker;

    invoke-direct {v1, v3}, Lorg/apache/logging/log4j/core/layout/internal/IncludeChecker;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 230
    .end local v2    # "array":[Ljava/lang/String;
    .end local v3    # "includeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 231
    sget-object v0, Lorg/apache/logging/log4j/core/layout/internal/ListChecker;->NOOP_CHECKER:Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;

    .line 233
    :cond_4
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 119
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/GelfLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/GelfLayout;
    .locals 23

    .line 182
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextExcludes:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextIncludes:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->createChecker(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    move-result-object v1

    .line 183
    .local v1, "mdcChecker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    iget-object v2, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapMessageExcludes:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapMessageIncludes:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->createChecker(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    move-result-object v2

    .line 184
    .local v2, "mapChecker":Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    const/4 v3, 0x0

    .line 185
    .local v3, "patternLayout":Lorg/apache/logging/log4j/core/layout/PatternLayout;
    iget-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->messagePattern:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    if-eqz v4, :cond_0

    .line 186
    sget-object v4, Lorg/apache/logging/log4j/core/layout/AbstractLayout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "A message pattern and PatternSelector cannot both be specified on GelfLayout, ignoring message pattern"

    invoke-interface {v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 188
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->messagePattern:Ljava/lang/String;

    .line 190
    :cond_0
    iget-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->messagePattern:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 191
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->messagePattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    iget-boolean v5, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeStacktrace:Z

    .line 192
    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    .line 193
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v3

    .line 196
    :cond_1
    iget-object v4, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    if-eqz v4, :cond_2

    .line 197
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    iget-boolean v5, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeStacktrace:Z

    .line 198
    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->withConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/layout/PatternLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/PatternLayout;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_0

    .line 196
    :cond_2
    move-object/from16 v21, v3

    .line 202
    .end local v3    # "patternLayout":Lorg/apache/logging/log4j/core/layout/PatternLayout;
    .local v21, "patternLayout":Lorg/apache/logging/log4j/core/layout/PatternLayout;
    :goto_0
    new-instance v22, Lorg/apache/logging/log4j/core/layout/GelfLayout;

    move-object/from16 v3, v22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->host:Ljava/lang/String;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    iget v8, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionThreshold:I

    iget-boolean v9, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeStacktrace:Z

    iget-boolean v10, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeThreadContext:Z

    iget-boolean v11, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeMapMessage:Z

    iget-boolean v12, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeNullDelimiter:Z

    iget-boolean v13, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeNewLineDelimiter:Z

    iget-boolean v14, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->omitEmptyFields:Z

    iget-object v15, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextPrefix:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapPrefix:Ljava/lang/String;

    move-object/from16 v19, v15

    const/16 v20, 0x0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v21

    invoke-direct/range {v3 .. v20}, Lorg/apache/logging/log4j/core/layout/GelfLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;IZZZZZZLorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Lorg/apache/logging/log4j/core/layout/PatternLayout;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/GelfLayout$1;)V

    return-object v22
.end method

.method public getAdditionalFields()[Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .locals 1

    .line 263
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    return-object v0
.end method

.method public getCompressionThreshold()I
    .locals 1

    .line 245
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionThreshold:I

    return v0
.end method

.method public getCompressionType()Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .locals 1

    .line 241
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 237
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeNewLineDelimiter()Z
    .locals 1

    .line 259
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeNewLineDelimiter:Z

    return v0
.end method

.method public isIncludeNullDelimiter()Z
    .locals 1

    .line 256
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeNullDelimiter:Z

    return v0
.end method

.method public isIncludeStacktrace()Z
    .locals 1

    .line 249
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeStacktrace:Z

    return v0
.end method

.method public isIncludeThreadContext()Z
    .locals 1

    .line 253
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeThreadContext:Z

    return v0
.end method

.method public setAdditionalFields([Lorg/apache/logging/log4j/core/util/KeyValuePair;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "additionalFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/util/KeyValuePair;",
            ")TB;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->additionalFields:[Lorg/apache/logging/log4j/core/util/KeyValuePair;

    .line 345
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setCompressionThreshold(I)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "compressionThreshold"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "compressionThreshold"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionThreshold:I

    .line 293
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setCompressionType(Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "compressionType"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "compressionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;",
            ")TB;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->compressionType:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    .line 283
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->host:Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setIncludeMapMessage(Z)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "includeMapMessage"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeMapMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeMapMessage:Z

    .line 395
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setIncludeNewLineDelimiter(Z)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "includeNewLineDelimiter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeNewLineDelimiter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeNewLineDelimiter:Z

    .line 335
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setIncludeNullDelimiter(Z)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "includeNullDelimiter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeNullDelimiter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeNullDelimiter:Z

    .line 325
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setIncludeStacktrace(Z)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "includeStacktrace"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeStacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeStacktrace:Z

    .line 304
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setIncludeThreadContext(Z)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "includeThreadContext"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeThreadContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->includeThreadContext:Z

    .line 314
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setMapMessageExcludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "mapMessageExcludes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mapMessageExcludes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapMessageExcludes:Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setMapMessageIncludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "mapMessageIncludes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mapMessageIncludes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapMessageIncludes:Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setMapPrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    if-eqz p1, :cond_0

    .line 437
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->mapPrefix:Ljava/lang/String;

    .line 439
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setMdcExcludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "mdcExcludes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mdcExcludes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextExcludes:Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setMdcIncludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "mdcIncludes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mdcIncludes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextIncludes:Ljava/lang/String;

    .line 375
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setMessagePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->messagePattern:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "patternSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/layout/PatternSelector;",
            ")TB;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    .line 365
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method

.method public setThreadContextPrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;, "Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder<TB;>;"
    if-eqz p1, :cond_0

    .line 425
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->threadContextPrefix:Ljava/lang/String;

    .line 427
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$Builder;

    return-object v0
.end method
