.class public final Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "RepeatPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "repeat"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        ":|",
        "repeat"
    }
.end annotation


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .line 75
    const-string v0, "repeat"

    invoke-direct {p0, v0, v0}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->result:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private format(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "toAppendTo"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    return-void
.end method

.method public static newInstance(Lorg/apache/logging/log4j/core/config/Configuration;[Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;
    .locals 6
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

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect number of options on repeat. Expected 2 received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 46
    return-object v1

    .line 48
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 49
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No string supplied on repeat"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 50
    return-object v1

    .line 52
    :cond_1
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-nez v3, :cond_2

    .line 53
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No repeat count supplied on repeat"

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 54
    return-object v1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    .local v1, "count":I
    aget-object v3, p1, v0

    .line 59
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    aget-object v4, p1, v2

    invoke-static {v4}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 60
    aget-object v0, p1, v0

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/util/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "The repeat count is not an integer: {}"

    invoke-interface {v4, v5, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;

    invoke-direct {v0, v3}, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "obj",
            "toAppendTo"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->format(Ljava/lang/StringBuilder;)V

    .line 87
    return-void
.end method

.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 0
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

    .line 96
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/pattern/RepeatPatternConverter;->format(Ljava/lang/StringBuilder;)V

    .line 97
    return-void
.end method
