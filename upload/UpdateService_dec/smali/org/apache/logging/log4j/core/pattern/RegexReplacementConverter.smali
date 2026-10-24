.class public final Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "RegexReplacementConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "replace"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "replace"
    }
.end annotation


# instance fields
.field private final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/util/regex/Pattern;

.field private final substitution:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "substitution"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "formatters",
            "pattern",
            "substitution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "replace"

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->pattern:Ljava/util/regex/Pattern;

    .line 50
    iput-object p3, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->substitution:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->formatters:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;
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

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 64
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of options on replace. Expected 3 received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 65
    return-object v1

    .line 67
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 68
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied on replace"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 69
    return-object v1

    .line 71
    :cond_1
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-nez v3, :cond_2

    .line 72
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No regular expression supplied on replace"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 73
    return-object v1

    .line 75
    :cond_2
    const/4 v3, 0x2

    aget-object v4, p1, v3

    if-nez v4, :cond_3

    .line 76
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No substitution supplied on replace"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 77
    return-object v1

    .line 79
    :cond_3
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 80
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v2

    .line 81
    .local v2, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    new-instance v4, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;

    aget-object v3, p1, v3

    invoke-direct {v4, v0, v1, v3}, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;-><init>(Ljava/util/List;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "toAppendTo"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->formatters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 93
    .local v2, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v2, p1, v0}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 94
    .end local v2    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/RegexReplacementConverter;->substitution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    return-void
.end method
