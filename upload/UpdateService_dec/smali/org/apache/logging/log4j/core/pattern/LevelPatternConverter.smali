.class public Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "LevelPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;,
        Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$SimpleLevelPatternConverter;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "LevelPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "p",
        "level"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;

.field private static final OPTION_LENGTH:Ljava/lang/String; = "length"

.field private static final OPTION_LOWER:Ljava/lang/String; = "lowerCase"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$SimpleLevelPatternConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$SimpleLevelPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    const-string v0, "Level"

    const-string v1, "level"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;

    .line 36
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;-><init>()V

    return-void
.end method

.method private static left(Lorg/apache/logging/log4j/Level;I)Ljava/lang/String;
    .locals 2
    .param p0, "level"    # Lorg/apache/logging/log4j/Level;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "length"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 114
    return-object v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;
    .locals 14
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 61
    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 64
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "levelMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/Level;Ljava/lang/String;>;"
    const v1, 0x7fffffff

    .line 66
    .local v1, "length":I
    const/4 v2, 0x0

    .line 67
    .local v2, "lowerCase":Z
    const/4 v3, 0x0

    aget-object v4, p0, v3

    sget-object v5, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "definitions":[Ljava/lang/String;
    array-length v5, v4

    move v6, v3

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v5, :cond_6

    aget-object v8, v4, v6

    .line 69
    .local v8, "def":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "pair":[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "key":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "value":Ljava/lang/String;
    const-string v12, "length"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 77
    invoke-static {v11}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 78
    :cond_2
    const-string v12, "lowerCase"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 79
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 81
    :cond_3
    invoke-static {v10, v7}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v7

    .line 82
    .local v7, "level":Lorg/apache/logging/log4j/Level;
    if-nez v7, :cond_4

    .line 83
    sget-object v12, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v13, "Invalid Level {}"

    invoke-interface {v12, v13, v10}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 85
    :cond_4
    invoke-interface {v0, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 71
    .end local v7    # "level":Lorg/apache/logging/log4j/Level;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_5
    :goto_1
    sget-object v7, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v10, "Invalid option {}"

    invoke-interface {v7, v10, v8}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    nop

    .line 68
    .end local v8    # "def":Ljava/lang/String;
    .end local v9    # "pair":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7fffffff

    if-ne v1, v5, :cond_7

    if-nez v2, :cond_7

    .line 90
    sget-object v3, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;

    return-object v3

    .line 92
    :cond_7
    invoke-static {}, Lorg/apache/logging/log4j/Level;->values()[Lorg/apache/logging/log4j/Level;

    move-result-object v5

    array-length v6, v5

    :goto_3
    if-ge v3, v6, :cond_a

    aget-object v8, v5, v3

    .line 93
    .local v8, "level":Lorg/apache/logging/log4j/Level;
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 94
    invoke-static {v8, v1}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;->left(Lorg/apache/logging/log4j/Level;I)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "left":Ljava/lang/String;
    if-eqz v2, :cond_8

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_8
    move-object v10, v9

    :goto_4
    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v8    # "level":Lorg/apache/logging/log4j/Level;
    .end local v9    # "left":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 98
    :cond_a
    new-instance v3, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;

    invoke-direct {v3, v0, v7}, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$LevelMapLevelPatternConverter;-><init>(Ljava/util/Map;Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter$1;)V

    return-object v3

    .line 62
    .end local v0    # "levelMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/logging/log4j/Level;Ljava/lang/String;>;"
    .end local v1    # "length":I
    .end local v2    # "lowerCase":Z
    .end local v4    # "definitions":[Ljava/lang/String;
    :cond_b
    :goto_5
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LevelPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "output"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Overridden by subclasses"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStyleClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 132
    instance-of v0, p1, Lorg/apache/logging/log4j/core/LogEvent;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/LogEvent;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const-string v0, "level"

    return-object v0
.end method
