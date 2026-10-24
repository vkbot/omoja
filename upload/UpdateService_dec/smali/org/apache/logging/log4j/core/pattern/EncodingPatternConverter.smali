.class public final Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "EncodingPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "encode"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "enc",
        "encode"
    }
.end annotation


# instance fields
.field private final escapeFormat:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

.field private final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;)V
    .locals 1
    .param p2, "escapeFormat"    # Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formatters",
            "escapeFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;",
            ")V"
        }
    .end annotation

    .line 52
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "encode"

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->formatters:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->escapeFormat:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    .line 55
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;
    .locals 4
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

    .line 72
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 78
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied on escape"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 79
    return-object v1

    .line 81
    :cond_1
    array-length v1, p1

    if-ge v1, v2, :cond_2

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->HTML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    goto :goto_0

    :cond_2
    const-class v1, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    sget-object v3, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->HTML:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    .line 82
    invoke-static {v1, v2, v3}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    :goto_0
    nop

    .line 83
    .local v1, "escapeFormat":Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v2

    .line 84
    .local v2, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    new-instance v3, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;

    invoke-direct {v3, v0, v1}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;-><init>(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;)V

    return-object v3

    .line 73
    .end local v0    # "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v1    # "escapeFormat":Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;
    .end local v2    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    :cond_3
    :goto_1
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    array-length v2, p1

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    const-string v3, "Incorrect number of options on escape. Expected 1 or 2, but received {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-object v1
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

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 94
    .local v0, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->formatters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->formatters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-virtual {v2, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->escapeFormat:Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;

    invoke-virtual {v1, p2, v0}, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter$EscapeFormat;->escape(Ljava/lang/StringBuilder;I)V

    .line 98
    return-void
.end method

.method public handlesThrowable()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/EncodingPatternConverter;->formatters:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$4iGCoit9Ghj1xFD_JjQLhRE1Hkc;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/-$$Lambda$jyJcBELTWTAx_RdKXmal5JXBskw;

    .line 61
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0
.end method
