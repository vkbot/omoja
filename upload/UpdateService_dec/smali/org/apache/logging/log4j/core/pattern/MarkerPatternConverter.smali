.class public final Lorg/apache/logging/log4j/core/pattern/MarkerPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "MarkerPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "MarkerPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "marker"
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
    const-string v0, "Marker"

    const-string v1, "marker"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/MarkerPatternConverter;
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

    .line 48
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/MarkerPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/MarkerPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
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

    .line 56
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getMarker()Lorg/apache/logging/log4j/Marker;

    move-result-object v0

    .line 57
    .local v0, "marker":Lorg/apache/logging/log4j/Marker;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {p2, v0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method
