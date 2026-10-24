.class public final Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "VariablesNotEmptyReplacementConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "notEmpty"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "notEmpty",
        "varsNotEmpty",
        "variablesNotEmpty"
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


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formatters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "notEmpty"

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;->formatters:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;
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

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 60
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of options on varsNotEmpty. Expected 1 received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 61
    return-object v1

    .line 63
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 64
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No pattern supplied on varsNotEmpty"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 65
    return-object v1

    .line 67
    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v1

    .line 68
    .local v1, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    new-instance v2, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;

    invoke-direct {v2, v0}, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;-><init>(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 7
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

    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 78
    .local v0, "start":I
    const/4 v1, 0x1

    .line 79
    .local v1, "allVarsEmpty":Z
    const/4 v2, 0x0

    .line 80
    .local v2, "hasVars":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;->formatters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 81
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/VariablesNotEmptyReplacementConverter;->formatters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 82
    .local v4, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 83
    .local v5, "formatterStart":I
    invoke-virtual {v4, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 84
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->getConverter()Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->isVariable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v6, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    move v1, v6

    .line 80
    .end local v4    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .end local v5    # "formatterStart":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 90
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 92
    :cond_4
    return-void
.end method
