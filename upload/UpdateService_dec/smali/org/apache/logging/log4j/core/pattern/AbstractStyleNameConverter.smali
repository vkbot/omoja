.class public abstract Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "AbstractStyleNameConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Yellow;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$White;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Red;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Magenta;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Green;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Cyan;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Blue;,
        Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter$Black;
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

.field private final style:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "styling"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "formatters",
            "styling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    .local p2, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const-string v0, "style"

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->formatters:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->style:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected static newInstance(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p3, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "asnConverterClass",
            "name",
            "config",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 327
    .local p0, "asnConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2, p3}, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->toPatternFormatterList(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 328
    .local v0, "formatters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternFormatter;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    return-object v1

    .line 332
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 333
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 334
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static toPatternFormatterList(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/pattern/PatternFormatter;",
            ">;"
        }
    .end annotation

    .line 349
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->createPatternParser(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v2

    .line 354
    .local v2, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    if-nez v2, :cond_1

    .line 355
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No PatternParser created for config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", options="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 356
    return-object v1

    .line 358
    :cond_1
    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 350
    .end local v2    # "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No pattern supplied on style for config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 351
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

    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 368
    .local v0, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->formatters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 369
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->formatters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;

    .line 370
    .local v2, "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    invoke-virtual {v2, p1, p2}, Lorg/apache/logging/log4j/core/pattern/PatternFormatter;->format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V

    .line 368
    .end local v2    # "formatter":Lorg/apache/logging/log4j/core/pattern/PatternFormatter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 373
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/AbstractStyleNameConverter;->style:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getDefaultStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_1
    return-void
.end method
