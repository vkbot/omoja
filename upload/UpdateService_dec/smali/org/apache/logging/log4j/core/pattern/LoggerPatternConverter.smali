.class public final Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;
.source "LoggerPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "LoggerPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "c",
        "logger"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;

    return-void
.end method

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

    .line 43
    const-string v0, "Logger"

    const-string v1, "logger"

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/logging/log4j/core/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;
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

    .line 54
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;

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

    .line 66
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/pattern/LoggerPatternConverter;->abbreviate(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 67
    return-void
.end method
