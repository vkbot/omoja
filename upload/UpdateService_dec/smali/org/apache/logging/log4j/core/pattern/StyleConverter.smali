.class public final Lorg/apache/logging/log4j/core/pattern/StyleConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "StyleConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/AnsiConverter;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "style"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "style"
    }
.end annotation


# instance fields
.field private final defaultStyle:Ljava/lang/String;

.field private final noAnsi:Z

.field private final patternFormatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final style:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "noAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "patternFormatters",
            "style",
            "noAnsi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 61
    .local p1, "patternFormatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "style"

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->patternFormatters:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->style:Ljava/lang/String;

    .line 64
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getDefaultStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->defaultStyle:Ljava/lang/String;

    .line 65
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->noAnsi:Z

    .line 66
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/StyleConverter;
    .locals 8
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

    .line 79
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 83
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of options on style. Expected at least 1, received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 84
    return-object v0

    .line 86
    :cond_1
    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_2

    .line 87
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied for style converter"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 90
    :cond_2
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-nez v3, :cond_3

    .line 91
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No style attributes supplied for style converter"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 92
    return-object v0

    .line 94
    :cond_3
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v0

    .line 95
    .local v0, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    aget-object v4, p1, v2

    sget-object v5, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "style":Ljava/lang/String;
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "disableAnsi=true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 98
    .local v5, "disableAnsi":Z
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "noConsoleNoAnsi=true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 99
    .local v6, "noConsoleNoAnsi":Z
    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_4
    move v1, v2

    .line 100
    .local v1, "hideAnsi":Z
    :cond_5
    new-instance v2, Lorg/apache/logging/log4j/core/pattern/StyleConverter;

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/logging/log4j/core/pattern/StyleConverter;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    return-object v2
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

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "start":I
    const/4 v1, 0x0

    .line 110
    .local v1, "end":I
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->noAnsi:Z

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 112
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->style:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 117
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->patternFormatters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 118
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->patternFormatters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-virtual {v4, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->noAnsi:Z

    if-nez v2, :cond_3

    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->defaultStyle:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_3
    :goto_1
    return-void
.end method

.method public handlesThrowable()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->patternFormatters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 134
    .local v1, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->handlesThrowable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    .end local v1    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "[style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", defaultStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->defaultStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", patternFormatters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->patternFormatters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", noAnsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/pattern/StyleConverter;->noAnsi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
