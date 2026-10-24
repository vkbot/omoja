.class public Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;
.super Ljava/lang/Object;
.source "LevelPatternSelector.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/layout/PatternSelector;
.implements Lorg/apache/logging/log4j/core/impl/LocationAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "patternSelector"
    name = "LevelPatternSelector"
    printObject = true
.end annotation


# static fields
.field private static LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 7
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p2, "defaultPattern"    # Ljava/lang/String;
    .param p3, "alwaysWriteExceptions"    # Z
    .param p4, "noConsoleNoAnsi"    # Z
    .param p5, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "properties",
            "defaultPattern",
            "alwaysWriteExceptions",
            "noConsoleNoAnsi",
            "config"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;-><init>([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/config/Configuration;)V

    .line 132
    return-void
.end method

.method private constructor <init>([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 18
    .param p1, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p2, "defaultPattern"    # Ljava/lang/String;
    .param p3, "alwaysWriteExceptions"    # Z
    .param p4, "disableAnsi"    # Z
    .param p5, "noConsoleNoAnsi"    # Z
    .param p6, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "properties",
            "defaultPattern",
            "alwaysWriteExceptions",
            "disableAnsi",
            "noConsoleNoAnsi",
            "config"
        }
    .end annotation

    .line 136
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->formatterMap:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->patternMap:Ljava/util/Map;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "needsLocation":Z
    invoke-static/range {p6 .. p6}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v7

    .line 139
    .local v7, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    array-length v8, v2

    const/4 v9, 0x0

    move/from16 v17, v9

    move v9, v0

    move/from16 v0, v17

    .end local v0    # "needsLocation":Z
    .local v9, "needsLocation":Z
    :goto_0
    const-string v10, "\'"

    const-string v11, "Cannot parse pattern \'"

    if-ge v0, v8, :cond_1

    aget-object v12, v2, v0

    .line 141
    .local v12, "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :try_start_0
    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13, v4, v5, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v13

    .line 143
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v14, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 144
    .local v14, "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    iget-object v15, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->formatterMap:Ljava/util/Map;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-nez v9, :cond_0

    array-length v15, v14

    if-ge v2, v15, :cond_0

    .line 146
    aget-object v15, v14, v2

    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v15

    move v9, v15

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->patternMap:Ljava/util/Map;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getKey()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v8

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 139
    .end local v12    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v14    # "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    move/from16 v8, v16

    goto :goto_0

    .line 150
    .restart local v12    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/apache/logging/log4j/core/layout/PatternMatch;->getPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 155
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v12    # "property":Lorg/apache/logging/log4j/core/layout/PatternMatch;
    :cond_1
    :try_start_1
    invoke-virtual {v7, v3, v4, v5, v6}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    iput-object v2, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 158
    iput-object v3, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultPattern:Ljava/lang/String;

    .line 159
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-nez v9, :cond_2

    iget-object v8, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    array-length v8, v8

    if-ge v2, v8, :cond_2

    .line 160
    iget-object v8, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->requiresLocation()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v8

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v2    # "i":I
    :cond_2
    nop

    .line 165
    iput-boolean v9, v1, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->requiresLocation:Z

    .line 166
    return-void

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method synthetic constructor <init>([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$1;)V
    .locals 0
    .param p1, "x0"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$1;

    .line 42
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;-><init>([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZZLorg/apache/logging/log4j/core/config/Configuration;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createSelector([Lorg/apache/logging/log4j/core/layout/PatternMatch;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;
    .locals 2
    .param p0, "properties"    # [Lorg/apache/logging/log4j/core/layout/PatternMatch;
    .param p1, "defaultPattern"    # Ljava/lang/String;
    .param p2, "alwaysWriteExceptions"    # Z
    .param p3, "noConsoleNoAnsi"    # Z
    .param p4, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "properties",
            "defaultPattern",
            "alwaysWriteExceptions",
            "noConsoleNoAnsi",
            "configuration"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->newBuilder()Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    move-result-object v0

    .line 215
    .local v0, "builder":Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->setProperties([Lorg/apache/logging/log4j/core/layout/PatternMatch;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    .line 216
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    .line 217
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    .line 218
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    .line 219
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    .line 220
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;->build()Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;

    move-result-object v1

    return-object v1
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 194
    new-instance v0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector$Builder;-><init>()V

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

    .line 175
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    .line 176
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    if-nez v0, :cond_0

    .line 177
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    return-object v1

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->formatterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->formatterMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    return-object v1

    .line 183
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultFormatters:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    return-object v1
.end method

.method public requiresLocation()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->requiresLocation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 227
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->patternMap:Ljava/util/Map;

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

    .line 228
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
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

    .line 232
    const/4 v1, 0x0

    .line 233
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 234
    :cond_1
    if-nez v1, :cond_2

    .line 235
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_2
    const-string v2, "default=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/LevelPatternSelector;->defaultPattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
