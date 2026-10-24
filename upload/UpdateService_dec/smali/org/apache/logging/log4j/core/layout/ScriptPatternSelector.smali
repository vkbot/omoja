.class public Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;
.super Ljava/lang/Object;
.source "ScriptPatternSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/PatternSelector;
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "patternSelector"
    name = "ScriptPatternSelector"
    printObject = true
.end annotation


# static fields
.field private static LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

.field private final defaultPattern:Ljava/lang/String;

.field private final formatterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final patternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requiresLocation:Z

.field private final script:Lorg/apache/logging/log4j/core/script/AbstractScript;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZ)V
    .locals 18
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p3, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p4, "defaultPattern"    # Ljava/lang/String;
    .param p5, "alwaysWriteExceptions"    # Z
    .param p6, "disableAnsi"    # Z
    .param p7, "noConsoleNoAnsi"    # Z
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
            "config",
            "script",
            "properties",
            "defaultPattern",
            "alwaysWriteExceptions",
            "disableAnsi",
            "noConsoleNoAnsi"
        }
    .end annotation

    .line 162
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->formatterMap:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->patternMap:Ljava/util/Map;

    .line 163
    move-object/from16 v7, p2

    iput-object v7, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 164
    move-object/from16 v8, p1

    iput-object v8, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 165
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v9

    .line 166
    .local v9, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    const/4 v0, 0x0

    .line 167
    .local v0, "needsLocation":Z
    array-length v10, v2

    const/4 v11, 0x0

    move/from16 v17, v11

    move v11, v0

    move/from16 v0, v17

    .end local v0    # "needsLocation":Z
    .local v11, "needsLocation":Z
    :goto_0
    const-string v12, "\'"

    const-string v13, "Cannot parse pattern \'"

    if-ge v0, v10, :cond_1

    aget-object v14, v2, v0

    .line 169
    .local v14, "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15, v4, v5, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v15

    .line 170
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 171
    .local v2, "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    iget-object v7, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->formatterMap:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v7, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->patternMap:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getKey()Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v10

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-nez v11, :cond_0

    array-length v8, v2

    if-ge v7, v8, :cond_0

    .line 174
    aget-object v8, v2, v7

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v8

    .line 173
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .end local v7    # "i":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    :cond_0
    nop

    .line 167
    .end local v14    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move/from16 v10, v16

    goto :goto_0

    .line 176
    .restart local v14    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 181
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v14    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :cond_1
    :try_start_1
    invoke-virtual {v9, v3, v4, v5, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    iput-object v2, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 183
    iput-object v3, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultPattern:Ljava/lang/String;

    .line 184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-nez v11, :cond_2

    iget-object v7, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 185
    iget-object v7, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v7

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v2    # "i":I
    :cond_2
    nop

    .line 190
    iput-boolean v11, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->requiresLocation:Z

    .line 191
    return-void

    .line 187
    :catch_1
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/layout/ScriptPatternSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p3, "x2"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$1;

    .line 47
    invoke-direct/range {p0 .. p7}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 18
    .param p1, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p2, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p3, "defaultPattern"    # Ljava/lang/String;
    .param p4, "alwaysWriteExceptions"    # Z
    .param p5, "disableAnsi"    # Z
    .param p6, "noConsoleNoAnsi"    # Z
    .param p7, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "script",
            "properties",
            "defaultPattern",
            "alwaysWriteExceptions",
            "disableAnsi",
            "noConsoleNoAnsi",
            "config"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->formatterMap:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->patternMap:Ljava/util/Map;

    .line 200
    iput-object v2, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    .line 201
    move-object/from16 v8, p7

    iput-object v8, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 202
    instance-of v0, v2, Lorg/apache/logging/log4j/core/script/ScriptRef;

    if-nez v0, :cond_0

    .line 203
    invoke-interface/range {p7 .. p7}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/script/ScriptManager;->addScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Z

    .line 205
    :cond_0
    invoke-static/range {p7 .. p7}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v9

    .line 206
    .local v9, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    const/4 v0, 0x0

    .line 207
    .local v0, "needsLocation":Z
    array-length v10, v3

    const/4 v11, 0x0

    move/from16 v17, v11

    move v11, v0

    move/from16 v0, v17

    .end local v0    # "needsLocation":Z
    .local v11, "needsLocation":Z
    :goto_0
    const-string v12, "\'"

    const-string v13, "Cannot parse pattern \'"

    if-ge v0, v10, :cond_2

    aget-object v14, v3, v0

    .line 209
    .local v14, "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15, v5, v6, v7}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v15

    .line 210
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 211
    .local v2, "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    iget-object v3, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->formatterMap:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v3, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->patternMap:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getKey()Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v10

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-nez v11, :cond_1

    array-length v8, v2

    if-ge v3, v8, :cond_1

    .line 214
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v8

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    .end local v2    # "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .end local v3    # "i":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    :cond_1
    nop

    .line 207
    .end local v14    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move/from16 v10, v16

    goto :goto_0

    .line 216
    .restart local v14    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 221
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v14    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :cond_2
    :try_start_1
    invoke-virtual {v9, v4, v5, v6, v7}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    iput-object v2, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 223
    iput-object v4, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultPattern:Ljava/lang/String;

    .line 224
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-nez v11, :cond_3

    iget-object v3, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 225
    iget-object v3, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v3

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 229
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v2    # "i":I
    :cond_3
    nop

    .line 230
    iput-boolean v11, v1, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->requiresLocation:Z

    .line 231
    return-void

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createSelector(Lorg/apache/logging/log4j/core/script/AbstractScript;[Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;
    .locals 2
    .param p0, "script"    # Lorg/apache/logging/log4j/core/script/AbstractScript;
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p2, "defaultPattern"    # Ljava/lang/String;
    .param p3, "alwaysWriteExceptions"    # Z
    .param p4, "noConsoleNoAnsi"    # Z
    .param p5, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "script",
            "properties",
            "defaultPattern",
            "alwaysWriteExceptions",
            "noConsoleNoAnsi",
            "configuration"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->newBuilder()Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    move-result-object v0

    .line 285
    .local v0, "builder":Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->setScript(Lorg/apache/logging/log4j/core/script/AbstractScript;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    .line 286
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->setProperties([Lorg/apache/logging/log4j/core/layout/PatternMatch;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    .line 287
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    .line 288
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    .line 289
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    .line 290
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    .line 291
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;->build()Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;

    move-result-object v1

    return-object v1
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;
    .locals 2
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 261
    new-instance v0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$Builder;-><init>(Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector$1;)V

    return-object v0
.end method


# virtual methods
.method public getFormatters(Lorg/apache/logging/log4j/core/LogEvent;)[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 240
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 241
    .local v0, "bindings":Ljavax/script/SimpleBindings;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/script/SimpleBindings;->putAll(Ljava/util/Map;)V

    .line 242
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    const-string v2, "substitutor"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "logEvent"

    invoke-virtual {v0, v1, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getScriptManager()Lorg/apache/logging/log4j/core/script/ScriptManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->script:Lorg/apache/logging/log4j/core/script/AbstractScript;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/script/AbstractScript;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/script/ScriptManager;->execute(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 246
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    return-object v2

    .line 248
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->formatterMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 250
    .local v2, "patternFormatter":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    if-nez v2, :cond_1

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    return-object v3
.end method

.method public requiresLocation()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->requiresLocation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 298
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->patternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    const-string v5, "\""

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 299
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 300
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_0
    const-string v4, "key=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", pattern=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v1, 0x0

    .line 304
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 305
    :cond_1
    if-nez v1, :cond_2

    .line 306
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_2
    const-string v2, "default=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/ScriptPatternSelector;->defaultPattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
