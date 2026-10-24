.class public final Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;
.source "ExtendedThrowablePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "ExtendedThrowablePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "xEx",
        "xThrowable",
        "xException"
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

    .line 43
    const-string v0, "ExtendedThrowable"

    const-string v1, "throwable"

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)V

    .line 44
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;
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

    .line 55
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)V

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

    .line 63
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    move-result-object v6

    .line 64
    .local v6, "proxy":Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getThrown()Ljava/lang/Throwable;

    move-result-object v7

    .line 65
    .local v7, "throwable":Ljava/lang/Throwable;
    if-nez v7, :cond_0

    if-eqz v6, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->anyLines()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    if-nez v6, :cond_1

    .line 67
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/ThrowablePatternConverter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 68
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 71
    .local v8, "len":I
    if-lez v8, :cond_2

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getIgnorePackages()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    .line 75
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getTextRenderer()Lorg/apache/logging/log4j/core/pattern/TextRenderer;

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;->getSuffix(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/ExtendedThrowablePatternConverter;->options:Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ThrowableFormatOptions;->getSeparator()Ljava/lang/String;

    move-result-object v5

    .line 74
    move-object v0, v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;->formatExtendedStackTraceTo(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/apache/logging/log4j/core/pattern/TextRenderer;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v8    # "len":I
    :cond_3
    return-void
.end method
