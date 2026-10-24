.class public final Lorg/apache/logging/log4j/core/pattern/NanoTimePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "NanoTimePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "NanoTimePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "N",
        "nano"
    }
.end annotation


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 38
    const-string v0, "Nanotime"

    const-string v1, "nanotime"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/NanoTimePatternConverter;
    .locals 1
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
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/NanoTimePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/NanoTimePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "output"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getNanoTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method
