.class public Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
.super Ljava/lang/Object;
.source "PatternLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/PatternLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializerBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;",
        ">;"
    }
.end annotation


# instance fields
.field private alwaysWriteExceptions:Z

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;

.field private defaultPattern:Ljava/lang/String;

.field private disableAnsi:Z

.field private noConsoleNoAnsi:Z

.field private pattern:Ljava/lang/String;

.field private patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

.field private replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .locals 10

    .line 467
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->pattern:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->defaultPattern:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    return-object v1

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    if-nez v0, :cond_6

    .line 472
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v0

    .line 473
    .local v0, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->pattern:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->defaultPattern:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->pattern:Ljava/lang/String;

    :goto_0
    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->alwaysWriteExceptions:Z

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->disableAnsi:Z

    iget-boolean v5, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->noConsoleNoAnsi:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v2

    .line 475
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    sget-object v3, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 476
    .local v3, "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    const/4 v4, 0x0

    .line 477
    .local v4, "hasFormattingInfo":Z
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 478
    .local v7, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->getFormattingInfo()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v8

    .line 479
    .local v8, "info":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    if-eqz v8, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->getDefault()Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    move-result-object v9

    if-eq v8, v9, :cond_2

    .line 480
    const/4 v4, 0x1

    .line 481
    goto :goto_2

    .line 477
    .end local v7    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .end local v8    # "info":Lorg/apache/logging/log4j/core/pattern/FormattingInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 484
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    new-instance v5, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;

    invoke-direct {v5, v3, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternFormatterPatternSerializer;-><init>([Lorg/apache/logging/log4j/core/pattern/PatternFormatter;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V

    goto :goto_3

    :cond_4
    new-instance v5, Lorg/apache/logging/log4j/core/layout/PatternLayout$NoFormatPatternSerializer;

    invoke-direct {v5, v3, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$NoFormatPatternSerializer;-><init>([Lorg/apache/logging/log4j/core/pattern/PatternFormatter;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V

    .line 487
    .local v5, "serializer":Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;
    :goto_3
    iget-object v6, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    if-nez v6, :cond_5

    move-object v6, v5

    goto :goto_4

    :cond_5
    new-instance v6, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;

    iget-object v7, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-direct {v6, v5, v7, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializerWithReplacement;-><init>(Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v6

    .line 488
    .end local v0    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    .end local v3    # "formatters":[Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    .end local v4    # "hasFormattingInfo":Z
    .end local v5    # "serializer":Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSerializer;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse pattern \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 492
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    new-instance v2, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    invoke-direct {v2, v0, v3, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$PatternSelectorSerializer;-><init>(Lorg/apache/logging/log4j/core/layout/PatternSelector;Lorg/apache/logging/log4j/core/pattern/RegexReplacement;Lorg/apache/logging/log4j/core/layout/PatternLayout$1;)V

    return-object v2
.end method

.method public setAlwaysWriteExceptions(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "alwaysWriteExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alwaysWriteExceptions"
        }
    .end annotation

    .line 521
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->alwaysWriteExceptions:Z

    .line 522
    return-object p0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 496
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 497
    return-object p0
.end method

.method public setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "defaultPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "defaultPattern"
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->defaultPattern:Ljava/lang/String;

    .line 512
    return-object p0
.end method

.method public setDisableAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "disableAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "disableAnsi"
        }
    .end annotation

    .line 526
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->disableAnsi:Z

    .line 527
    return-object p0
.end method

.method public setNoConsoleNoAnsi(Z)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "noConsoleNoAnsi"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "noConsoleNoAnsi"
        }
    .end annotation

    .line 531
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->noConsoleNoAnsi:Z

    .line 532
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->pattern:Ljava/lang/String;

    .line 507
    return-object p0
.end method

.method public setPatternSelector(Lorg/apache/logging/log4j/core/layout/PatternSelector;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "patternSelector"    # Lorg/apache/logging/log4j/core/layout/PatternSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "patternSelector"
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->patternSelector:Lorg/apache/logging/log4j/core/layout/PatternSelector;

    .line 517
    return-object p0
.end method

.method public setReplace(Lorg/apache/logging/log4j/core/pattern/RegexReplacement;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;
    .locals 0
    .param p1, "replace"    # Lorg/apache/logging/log4j/core/pattern/RegexReplacement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "replace"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->replace:Lorg/apache/logging/log4j/core/pattern/RegexReplacement;

    .line 502
    return-object p0
.end method
