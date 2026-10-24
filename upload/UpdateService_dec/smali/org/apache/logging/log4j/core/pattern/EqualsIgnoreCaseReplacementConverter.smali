.class public final Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;
.super Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;
.source "EqualsIgnoreCaseReplacementConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "equalsIgnoreCase"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "equalsIgnoreCase"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/PatternParser;)V
    .locals 7
    .param p2, "testString"    # Ljava/lang/String;
    .param p3, "substitution"    # Ljava/lang/String;
    .param p4, "parser"    # Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "formatters",
            "testString",
            "substitution",
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/pattern/PatternParser;",
            ")V"
        }
    .end annotation

    .line 77
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v1, "equalsIgnoreCase"

    const-string v2, "equalsIgnoreCase"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/pattern/EqualsBaseReplacementConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/PatternParser;)V

    .line 78
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;
    .locals 5
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "options"
        }
    .end annotation

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 46
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of options on equalsIgnoreCase. Expected 3 received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 47
    return-object v1

    .line 49
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 50
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied on equalsIgnoreCase"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 51
    return-object v1

    .line 53
    :cond_1
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-nez v3, :cond_2

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No test string supplied on equalsIgnoreCase"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 55
    return-object v1

    .line 57
    :cond_2
    const/4 v3, 0x2

    aget-object v4, p1, v3

    if-nez v4, :cond_3

    .line 58
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No substitution supplied on equalsIgnoreCase"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 59
    return-object v1

    .line 61
    :cond_3
    aget-object v1, p1, v2

    .line 62
    .local v1, "p":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v2

    .line 63
    .local v2, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    new-instance v4, Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;

    aget-object v3, p1, v3

    invoke-direct {v4, v0, v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/EqualsIgnoreCaseReplacementConverter;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/pattern/PatternParser;)V

    return-object v4
.end method


# virtual methods
.method protected equals(Ljava/lang/String;Ljava/lang/StringBuilder;II)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "buff"    # Ljava/lang/StringBuilder;
    .param p3, "from"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "str",
            "buff",
            "from",
            "len"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/logging/log4j/util/StringBuilders;->equalsIgnoreCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
