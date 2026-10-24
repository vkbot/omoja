.class public final Lorg/apache/logging/log4j/core/pattern/FileDatePatternConverter;
.super Ljava/lang/Object;
.source "FileDatePatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "FileConverter"
    name = "FileDatePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "d",
        "date"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/PatternConverter;
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

    .line 44
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    :goto_0
    const-string v0, "yyyy-MM-dd"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    move-result-object v0

    return-object v0
.end method
