.class public final Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "MaxLengthConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "maxLength"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "maxLength",
        "maxLen"
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

.field private final maxLength:I


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 3
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formatters",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;I)V"
        }
    .end annotation

    .line 80
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "MaxLength"

    const-string v1, "maxLength"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p2, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->maxLength:I

    .line 82
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->formatters:Ljava/util/List;

    .line 83
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "new MaxLengthConverter with {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;
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

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Incorrect number of options on maxLength: expected 2 received {}: {}"

    invoke-interface {v0, v3, v2, p1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-object v1

    .line 56
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied on maxLength"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 58
    return-object v1

    .line 60
    :cond_1
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-nez v3, :cond_2

    .line 61
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No length supplied on maxLength"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 62
    return-object v1

    .line 64
    :cond_2
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v1

    .line 65
    .local v1, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    new-instance v3, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;

    aget-object v2, p1, v2

    const/16 v4, 0x64

    invoke-static {v2, v4}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v3, v0, v2}, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;-><init>(Ljava/util/List;I)V

    return-object v3
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 5
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

    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 90
    .local v0, "initialLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->formatters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->formatters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 92
    .local v2, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v2, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v4, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->maxLength:I

    add-int/2addr v4, v0

    if-le v3, v4, :cond_0

    .line 94
    goto :goto_1

    .line 90
    .end local v2    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->maxLength:I

    add-int v3, v0, v2

    if-le v1, v3, :cond_2

    .line 98
    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/MaxLengthConverter;->maxLength:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 100
    const-string v1, "..."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_2
    return-void
.end method
