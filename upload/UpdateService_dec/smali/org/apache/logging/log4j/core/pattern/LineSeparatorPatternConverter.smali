.class public final Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "LineSeparatorPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "LineSeparatorPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "n"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    const-string v0, "Line Sep"

    const-string v1, "lineSep"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;
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

    .line 52
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LineSeparatorPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "ignored"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ignored",
            "output"
        }
    .end annotation

    .line 68
    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method

.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "ignored"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ignored",
            "toAppendTo"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    return-void
.end method

.method public isVariable()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method
