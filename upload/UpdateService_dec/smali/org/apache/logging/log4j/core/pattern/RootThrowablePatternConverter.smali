.class public final Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;
.source "RootThrowablePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "RootThrowablePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "rEx",
        "rThrowable",
        "rException"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "options"    # [Ljava/lang/String;
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

    .line 44
    const-string v0, "RootThrowable"

    const-string v1, "throwable"

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 45
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;
    .locals 1
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

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 9
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

    .line 64
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v0

    .line 65
    .local v0, "proxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    .line 66
    .local v1, "throwable":Ljava/lang/Throwable;
    if-eqz v1, :cond_6

    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->anyLines()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getIgnorePackages()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getTextRenderer()Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->getSuffix(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->getCauseStackTraceAsString(Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "trace":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 73
    .local v3, "len":I
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->allLines()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 77
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v4, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "array":[Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    array-length v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->minLines(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 80
    .local v6, "limit":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-gt v7, v6, :cond_5

    .line 81
    aget-object v8, v5, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    if-ge v7, v6, :cond_4

    .line 83
    iget-object v8, p0, Lorg/apache/logging/log4j/core/pattern/RootThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 86
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v2    # "trace":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "array":[Ljava/lang/String;
    .end local v6    # "limit":I
    :cond_6
    :goto_2
    return-void
.end method
