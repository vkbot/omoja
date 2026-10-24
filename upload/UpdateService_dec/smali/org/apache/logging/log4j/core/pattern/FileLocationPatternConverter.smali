.class public final Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "FileLocationPatternConverter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "FileLocationPatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "F",
        "file"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "File Location"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;
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
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/FileLocationPatternConverter;

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
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getSource()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 59
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    return-void
.end method
