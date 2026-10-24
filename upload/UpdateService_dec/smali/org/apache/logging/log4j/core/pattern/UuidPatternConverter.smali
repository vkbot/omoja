.class public final Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "UuidPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "UuidPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "u",
        "uuid"
    }
.end annotation


# instance fields
.field private final isRandom:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isRandom"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isRandom"
        }
    .end annotation

    .line 38
    const-string v0, "u"

    const-string v1, "uuid"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;->isRandom:Z

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;
    .locals 4
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 49
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;-><init>(Z)V

    return-object v0

    .line 53
    :cond_0
    array-length v0, p0

    const/4 v2, 0x1

    const-string v3, "RANDOM"

    if-gt v0, v2, :cond_1

    aget-object v0, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p0, v1

    const-string v2, "Time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "UUID Pattern Converter only accepts a single option with the value \"RANDOM\" or \"TIME\""

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 56
    :cond_2
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;

    aget-object v1, p0, v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
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
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/pattern/UuidPatternConverter;->isRandom:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/logging/log4j/core/util/UuidUtil;->getTimeBasedUuid()Ljava/util/UUID;

    move-result-object v0

    .line 65
    .local v0, "uuid":Ljava/util/UUID;
    :goto_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method
